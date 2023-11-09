#ifndef PARTIDA_VISTA_H
#define PARTIDA_VISTA_H

#include <iostream>
#include <exception>
#include <algorithm>
#include <map>
#include <memory>

#include <SDL2pp/SDL2pp.hh>

#include "client_worm.h"
#include "client.h"
#include "viga.h"
#include "mover.h"
#include "dto.h"
#include "client_camara.h"

using namespace SDL2pp;

class Partida
{
private:
    Client &cliente;

    std::vector<std::shared_ptr<Viga>> vigas;
    std::map<int, Worm *> worms;

    int id_gusano_actual;

    unsigned int tiempoInicial;
    unsigned int tiempoActual;  
    unsigned int tiempoRestante; 

    std::map<int, SDL2pp::Texture *> texturas;
    
    Camara camara;

public:
    Partida(Client &cliente);

    int iniciar();
    void guardar_vigas();
    void guardar_worms(SDL2pp::Renderer &renderer, std::map<int, SDL2pp::Color> &colores);

    bool handleEvents(SDL2pp::Renderer &renderer);

    void renderizar(SDL2pp::Renderer &renderer, SDL2pp::Font &font);
    void renderizar_temporizador(SDL2pp::Renderer &renderer, SDL2pp::Font &font);
    void renderizar_mapa(SDL2pp::Renderer &renderer);
    void renderizar_worms(SDL2pp::Renderer &renderer);

    bool actualizar(SDL2pp::Renderer &renderer, int it);

    float metros_a_pixeles(float metros);
    float centimetros_a_metros(float centimetros);

    void liberar_memoria();
};

#endif
