#include <SDL2pp/SDL2pp.hh>

#include <algorithm>
#include <cassert>
#include <iostream>
#include <string>

#include "client_animacion.h"

Animation::Animation(std::shared_ptr<SDL2pp::Texture> textura, bool repetirAnimacion): textura(textura),
                                                                                       currentFrame(0),
                                                                                       numFrames(this->textura->GetHeight() / this->textura->GetWidth()),
                                                                                       size(this->textura->GetWidth()), repetirAnimacion(repetirAnimacion) {
    assert(this->numFrames > 0);
    assert(this->size > 0);
}

void Animation::update(int it) {

    if (this->repetirAnimacion) {
            this->currentFrame = it;
            this->currentFrame = this->currentFrame % this->numFrames; 
    
    } else if (this->currentFrame < this->numFrames - 1) {
        this->currentFrame++;
    }
}

void Animation::render(SDL2pp::Renderer &renderer, const SDL2pp::Rect dst, SDL_RendererFlip &flipType) {
    renderer.Copy(
            *textura,
            SDL2pp::Rect(0, (this->size) * this->currentFrame, this->size, this->size),
            dst,
            0.0,
            SDL2pp::NullOpt,
            flipType
        );
}

void Animation::cambiar(std::shared_ptr<SDL2pp::Texture> nuevaTextura) {
    this->textura = nuevaTextura;
    this->currentFrame = 0;
    this->numFrames = this->textura->GetHeight() / this->textura->GetWidth();
    this->size = this->textura->GetWidth();
    this->repetirAnimacion = true;
}

void Animation::no_repetir_animacion() {
    this->repetirAnimacion = false;
}

bool Animation::completa() {
    return (this->currentFrame == this->numFrames - 1);
}
