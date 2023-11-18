#include "sender_thread.h"

Sender::Sender(ServerProtocol &p, Queue<std::shared_ptr<Dto>> &q) : protocol(p), queue(q), was_closed(false) {}

void Sender::run()
{
    bool se_envio;
    while (not was_closed)
    {
        std::shared_ptr<Dto> dto = queue.pop();

        if (dto->is_alive())
        {
            se_envio = send(dto);
            if (not se_envio)
                break;
        }
        else
        {
            // protocolo.enviarFinalizarPartida(d, was_closed);
            was_closed = true;
        }
    }
    // std::cout<<"SALE DEL SENDER\n";
    // salgo ordenadamente
}

bool Sender::send(std::shared_ptr<Dto> d)
{
    printf("codigo sender: %u\n", d->return_code());

    if (d->return_code() == CLIENTE_ID_CODE)
        return protocol.enviarId(std::dynamic_pointer_cast<ClienteId>(d), was_closed);
    else if (d->return_code() == VIGA_CODE)
        return protocol.enviarVigas(d, was_closed);
    else if (d->return_code() == GUSANO_CODE)
        return protocol.enviarGusano(std::dynamic_pointer_cast<Gusano>(d), was_closed);
    else if (d->return_code() == GUSANOS_CODE)
        return protocol.enviarListaDeGusanos(std::dynamic_pointer_cast<Gusanos>(d), was_closed);
    else if (d->return_code() == LISTA_DE_PARTIDAS_CODE)
        return protocol.enviarListaDePartidas(std::dynamic_pointer_cast<ListaDePartidas>(d), was_closed);
    else if (d->return_code() == INICIAR_PARIDA)
        return protocol.enviarIniciarPartida(d, was_closed);
    else if (d->return_code() == FINALIZAR_CODE)
        return protocol.enviarFinalizarPartida(d, was_closed);
    else if (d->return_code() == PROYECTILES_CODE)
        return protocol.enviarProyectiles(std::dynamic_pointer_cast<Proyectiles>(d), was_closed);
    else if (d->return_code() == GRANADA_VERDE_CODE) // ELIMINAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAR
        return protocol.enviarTrayectoriaDeGranadaVerde(std::dynamic_pointer_cast<GranadaVerde>(d), was_closed);
    else if (d->return_code() == BAZUKA_CODE) // ELIMINAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAR
        return protocol.enviarTrayectoriaDeBazuka(std::dynamic_pointer_cast<Bazuka>(d), was_closed);
    else if (d->return_code() == GRANADA_BANANA_CODE) // ELIMINAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAR
        return protocol.enviarTrayectoriaDeGranadaBanana(std::dynamic_pointer_cast<GranadaBanana>(d), was_closed);
    else if (d->return_code() == GRANADA_SANTA_CODE) // ELIMINAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAR
        return protocol.enviarTrayectoriaDeGranadaSanta(std::dynamic_pointer_cast<GranadaSanta>(d), was_closed);
    else if (d->return_code() == DINAMITA_CODE) // ELIMINAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAR
        return protocol.enviarTrayectoriaDeDinamita(std::dynamic_pointer_cast<Dinamita>(d), was_closed);
    else if (d->return_code() == ATAQUE_AEREO_CODE) // ELIMINAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAR
        return protocol.enviarTrayectoriaDeMisil(std::dynamic_pointer_cast<Misil>(d), was_closed);
    else
        std::cerr << "Codigo de envio desconocido\n";
    return false;
}
