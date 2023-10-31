#include "sender_thread.h"

Sender::Sender(ServerProtocol &p, Queue<Dto *> &q) : protocol(p), queue(q), was_closed(false) {}

void Sender::run()
{
    while (not was_closed)
    {
        Dto *dto = queue.pop();

        if (dto->is_alive())
            send(dto);
        else
            was_closed = true;

        delete dto;
    }
}

void Sender::send(Dto *d)
{
    if (d->return_code() == CLIENTE_ID_CODE)
        protocol.sendId((ClienteId*)d, was_closed);
    else if (d->return_code() == VIGA_CODE)
        protocol.sendVigas(d, was_closed);
    else if (d->return_code() == GUSANO_CODE)
        protocol.sendWorms((Gusano *)d, was_closed);
    else if (d->return_code() == GUSANOS_CODE)
        protocol.sendAllWorms((Gusanos *)d, was_closed);
    else if (d->return_code() == LISTA_DE_PARTIDAS_CODE)
        protocol.sendPartidas((ListaDePartidas *)d, was_closed);
    else if (d->return_code() == INICIAR_PARIDA)
        protocol.sendIniciarPartida(d, was_closed);
    else
        std::cerr << "Codigo de envio desconocido\n";
}
