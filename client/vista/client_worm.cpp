#include "client_worm.h"

#define ANCHO_SPRITE 60
#define ALTO_SPRITE 60

#define OFFSET 30 // Definimos un offset ya que debemos hacer un corrimiento en 'x' e 'y' ya que las fisicas modeladas con Box2D
                  // tienen el (0,0) de los cuerpos en el centro

Worm::Worm(SDL2pp::Renderer &renderer, SDL2pp::Color &color, float x, float y, int vida): animacion(std::make_shared<SDL2pp::Texture>(renderer, SDL2pp::Surface(DATA_PATH "/worm_walk.png").SetColorKey(true, 0))), 
                                                                                          apuntado(renderer), 
                                                                                          proyectil(renderer),
                                                                                          estado(MOVIENDOSE),
                                                                                          apuntadoActivado(false), 
                                                                                          x(x), 
                                                                                          y(y), 
                                                                                          vida(vida),
                                                                                          turno(false),
                                                                                          mirandoIzquierda(true), 
                                                                                          color(color),
                                                                                          configuraciones(YAML::LoadFile("/configuracion.yml")) {}

// Notar que el manejo de eventos y la actualización de modelo ocurren en momentos distintos.

/******************** ACTUALIZACION Y RENDERIZADO ********************/

void Worm::update(int it, float nuevoX, float nuevoY, int nuevaVida)
{

    if (this->estado == EQUIPANDO_ARMA) {
        this->animacion.update(it);
    }

    // if (this->estado == MOVIENDOSE) {
    if ((nuevoX != this->x) || (nuevoY != this->y)) {

        this->animacion.update(it);

        if (nuevoX > this->x) {
            mirar_derecha();
        
        } else if (nuevoX < this->x) {
            mirar_izquierda();
        }

        this->x = nuevoX;
        this->y = nuevoY;
        this->vida = nuevaVida;
    }
}

void Worm::update_estado(SDL2pp::Renderer &renderer, int nuevoEstado, int tipoDeArma) {
    this->estado = nuevoEstado;
    
    if (nuevoEstado == MOVIENDOSE) {
        std::shared_ptr<SDL2pp::Texture> nuevaTextura = std::make_shared<SDL2pp::Texture>(renderer, SDL2pp::Surface(DATA_PATH "/worm_walk.png").SetColorKey(true, 0));
        this->animacion.cambiar(nuevaTextura);
    }

    else if (nuevoEstado == EQUIPANDO_ARMA) {
        std::string sprite_worm = configuraciones["armas"][tipoDeArma]["sprite_worm"].as<std::string>();
        std::shared_ptr<SDL2pp::Texture> nuevaTextura = std::make_shared<SDL2pp::Texture>(renderer, SDL2pp::Surface(DATA_PATH + sprite_worm).SetColorKey(true, 0));

        this->animacion.cambiar(nuevaTextura);
        this->animacion.no_repetir_animacion();

        this->apuntadoActivado = configuraciones["armas"][tipoDeArma]["mira"].as<bool>();

        if (this->apuntadoActivado) {
            std::string sprite_apuntado = configuraciones["armas"][tipoDeArma]["sprite_apuntado"].as<std::string>();
            std::shared_ptr<SDL2pp::Texture> armaTextura = std::make_shared<SDL2pp::Texture>(renderer, SDL2pp::Surface(DATA_PATH + sprite_apuntado).SetColorKey(true, 0));
            this->apuntado.cambiar(armaTextura);
        }

        bool armaTeledirigida = configuraciones["armas"][tipoDeArma]["teledirigido"].as<bool>();

        if (not armaTeledirigida) {
            std::string sprite_proyectil = configuraciones["armas"][tipoDeArma]["sprite_proyectil"].as<std::string>();
            std::shared_ptr<SDL2pp::Texture> proyectilTextura = std::make_shared<SDL2pp::Texture>(renderer, SDL2pp::Surface(DATA_PATH + sprite_proyectil).SetColorKey(true, 0));
            
            this->proyectil.cambiar(proyectilTextura);
        }

        this->tipoDeArma = tipoDeArma;
    } 
}

void Worm::render(SDL2pp::Renderer &renderer, Camara &camara, float camaraCentroX, float camaraLimiteIzquierdo, float camaraLimiteSuperior)
{
    SDL_RendererFlip flip = this->mirandoIzquierda ? SDL_FLIP_NONE : SDL_FLIP_HORIZONTAL;

    if (this->estado == APUNTANDO) {
        this->apuntado.render(renderer, this->turno ? (camaraCentroX - OFFSET) : (x - OFFSET - camaraLimiteIzquierdo), this->turno ? (y - OFFSET - camaraLimiteSuperior) : (y - OFFSET - camaraLimiteSuperior), this->mirandoIzquierda);
    
    } else {
        this->animacion.render(renderer, this->turno ? SDL2pp::Rect(camaraCentroX - OFFSET, y - OFFSET - camaraLimiteSuperior, ANCHO_SPRITE, ALTO_SPRITE) : SDL2pp::Rect(x - OFFSET - camaraLimiteIzquierdo, y - OFFSET - camaraLimiteSuperior, ANCHO_SPRITE, ALTO_SPRITE), flip);
    }

    this->proyectil.render(renderer, camara.getLimiteIzquierdo() * 24, camara.getLimiteSuperior() * 24);
    this->render_vida(renderer, camaraCentroX, camaraLimiteIzquierdo, camaraLimiteSuperior);

    if ((this->estado == EQUIPANDO_ARMA) && (this->animacion.completa())) {

        if (this->apuntadoActivado) {
            this->estado = APUNTANDO;
        } 

    }
}

void Worm::render_vida(SDL2pp::Renderer &renderer, float camaraCentroX, float camaraLimiteIzquierdo, float camaraLimiteSuperior) {
    SDL2pp::Font font(DATA_PATH "/Vera.ttf", 14);
    SDL2pp::Color blanco(255, 255, 255, 255); 

    SDL2pp::Texture borde(renderer, SDL2pp::Surface(DATA_PATH "/borde.png").SetColorKey(true, 0));

    renderer.Copy(
        borde,
        SDL2pp::NullOpt,
        SDL2pp::Rect(this->turno ? (camaraCentroX + 10 - OFFSET) : (this->x - 19 - camaraLimiteIzquierdo),
                     this->turno ? (this->y - 45 - camaraLimiteSuperior) : (this->y - 45 - camaraLimiteSuperior), 
                     35, 25)
    );

    SDL2pp::Rect contenedor(this->turno ? (camaraCentroX + 13 - OFFSET) : (this->x - 16 - camaraLimiteIzquierdo),
                            this->turno ? (this->y - 42 - camaraLimiteSuperior) : (this->y - 42 - camaraLimiteSuperior), 
                            28, 18);
	renderer.SetDrawColor(this->color); 
	renderer.FillRect(contenedor);

	SDL2pp::Surface surface = font.RenderText_Solid(std::to_string(this->vida), blanco);
	SDL2pp::Texture texture(renderer, surface);

    SDL2pp::Rect mensaje(this->turno ? (camaraCentroX + 13 - OFFSET) : (this->x - 16 - camaraLimiteIzquierdo),
                         this->turno ? (this->y - 42 - camaraLimiteSuperior) : (this->y - 42 - camaraLimiteSuperior), 
                         surface.GetWidth(), surface.GetHeight());
	renderer.Copy(texture, SDL2pp::NullOpt, mensaje);
}

/******************** TURNO ********************/

void Worm::desactivar_turno() {
    this->turno = false;
}

void Worm::activar_turno() {
    this->turno = true;
}

/******************** DIRECCION ********************/

void Worm::mirar_derecha() {
    this->mirandoIzquierda = false;
}

void Worm::mirar_izquierda() {
    this->mirandoIzquierda = true;
}

/******************** ARMA ********************/

int Worm::get_tipo_de_arma() {
    return this->tipoDeArma;
}

/******************** PROYECTIL ********************/

void Worm::update_proyectil(float nuevoX, float nuevoY, int nuevoAngulo, int nuevaDireccion) {
    this->proyectil.update(nuevoX, nuevoY,  nuevoAngulo, nuevaDireccion);
}

void Worm::set_flag_proyectil(int flag) {
    this->proyectil.set_flag(flag);
}

int Worm::get_flag_proyectil() {
    return this->proyectil.get_flag();
}

void Worm::set_tiempo(int tiempo) {
    this->proyectil.set_tiempo(tiempo);
}

int Worm::get_tiempo() {
    return this->proyectil.get_tiempo();
}

/******************** ANGULO ********************/

void Worm::aumentar_angulo() {
    if (this->estado == APUNTANDO) {
        this->apuntado.aumentar_angulo();
    }
}

void Worm::decrementar_angulo() {
    if (this->estado == APUNTANDO) {
        this->apuntado.decrementar_angulo();
    }
}

int Worm::get_angulo() {
    return this->apuntado.get_angulo();
}

/******************** POTENCIA ********************/

void Worm::aumentar_potencia() {
    if (this->estado == APUNTANDO) {
        this->apuntado.aumentar_potencia();
    }
}

int Worm::get_potencia() {
    if (this->estado == APUNTANDO) {
        return this->apuntado.get_potencia();
    } 

    return 0;
}

/******************** GETTERS GENERALES ********************/

int Worm::get_vida() {
    return this->vida;
}

float Worm::get_x() {
    return this->x;
}

float Worm::get_y() {
    return this->y;
}

int Worm::get_estado() {
    return this->estado;
}
