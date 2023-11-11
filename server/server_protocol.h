#ifndef SERVER_PROTOCOL_H
#define SERVER_PROTOCOL_H

#include <cstdint>
#include <cstring>
#include <exception>
#include <functional>
#include <iostream>
#include <string>
#include <vector>
#include <memory>

#include <netinet/in.h>

#include "dto.h"
#include "dead.h"
#include "gusano.h"
#include "viga.h"
#include "mover.h"
#include "batear.h"
#include "saltar.h"
#include "partidas_lista.h"
#include "cliente_id.h"
#include "nueva_partida.h"
#include "granada.h"
#include "bazuka.h"
#include "socket.h"
#include "socket_interface.h"
#include "socket_mock.h"

class ServerProtocol
{
public:
    explicit ServerProtocol(SocketInterface *skt);
    ~ServerProtocol();
    std::shared_ptr<Dto> recibirActividad(bool &was_closed);
    bool enviarId(std::shared_ptr<ClienteId> id, bool &was_closed);
    bool enviarVigas(std::shared_ptr<Dto> vs, bool &was_closed);
    bool enviarGusano(std::shared_ptr<Gusano> g, bool &was_closed);
    bool enviarListaDeGusanos(std::shared_ptr<Gusanos> gs, bool &was_closed);
    bool enviarListaDePartidas(std::shared_ptr<ListaDePartidas> l, bool &was_closed);
    bool enviarIniciarPartida(std::shared_ptr<Dto> dto, bool &was_closed);
    bool enviarFinalizarPartida(std::shared_ptr<Dto> dto, bool &was_closed);
    bool enviarTrayectoriaDeGranadaVerde(std::shared_ptr<GranadaVerde> g, bool &was_closed);
    bool enviarTrayectoriaDeBazuka(std::shared_ptr<Bazuka> b, bool &was_closed);

private:
    SocketInterface *skt;
    std::shared_ptr<Dto> recibirPartidaSeleccionada(uint8_t id, bool &was_closed);
    std::shared_ptr<Dto> recibirAtaqueConBate(uint8_t id, bool &was_closed);
    std::shared_ptr<Dto> recibirAtaqueConGranadaVerde(uint8_t id, bool &was_closed);
    std::shared_ptr<Dto> recibirAtaqueConBazuka(uint8_t id, bool &was_closed);
    std::shared_ptr<Dto> recibirParametrosDeLaPartida(bool &was_closed);
    bool enviarViga(std::shared_ptr<Dto> dto, bool &was_closed);
    bool enviarDatosDelGusano(std::shared_ptr<Gusano> g, bool &was_closed);
    bool enviarCodigoDeElemento(std::shared_ptr<Dto> dto, bool &was_closed);
};
#endif
