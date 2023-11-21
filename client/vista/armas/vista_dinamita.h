#ifndef ANIMACION_DINAMITA_H
#define ANIMACION_DINAMITA_H

#include <SDL2pp/SDL2pp.hh>

#include "vista_arma.h"
#include "client_apuntado.h"

class AnimacionDinamita: public Arma
{

private:
    Animation movimiento;
    Explosion explosion;

    int tiempo;

public:
    AnimacionDinamita(SDL2pp::Renderer &renderer);

    void update(float nuevoX, float nuevoY, int nuevoEstado, int nuevoAngulo = 0, int nuevaDireccion = 0, int nuevoTiempo = 0, int id = 0) override;
    
    void render(SDL2pp::Renderer &renderer, float camaraLimiteIzquierdo, float camaraLimiteSuperior, int direccion) override;
    void renderizar_tiempo(SDL2pp::Renderer &renderer);

    void set_tiempo(int tiempoElegido) override;
    int get_tiempo() override;
};

#endif // ANIMACION_DINAMITA_H
