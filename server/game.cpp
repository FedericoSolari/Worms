#include "game.h"
#include <chrono>
#include <thread>


void mundo()
{
    b2Vec2 gravity(0.0f, -10.0f);
    b2World world(gravity);
    // creo el piso
    b2BodyDef groundBodyDef;
    groundBodyDef.position.Set(0.0f, -10.0f);
    b2Body *groundBody = world.CreateBody(&groundBodyDef);
    b2PolygonShape groundBox;
    groundBox.SetAsBox(50.0f, 10.0f);
    groundBody->CreateFixture(&groundBox, 0.0f);
    // creo el cuerpo dinamico
    b2BodyDef bodyDef;
    bodyDef.type = b2_dynamicBody;
    bodyDef.position.Set(0.0f, 4.0f);
    b2Body *body = world.CreateBody(&bodyDef);
    b2PolygonShape dynamicBox;
    dynamicBox.SetAsBox(1.0f, 1.0f);
    b2FixtureDef fixtureDef;
    fixtureDef.shape = &dynamicBox;
    fixtureDef.density = 1.0f;
    fixtureDef.friction = 0.3f;
    body->CreateFixture(&fixtureDef);
    float timeStep = 1.0f / 60.0f;
    int32 velocityIterations = 6;
    int32 positionIterations = 2;
    for (int32 i = 0; i < 60; ++i)
    {
        world.Step(timeStep, velocityIterations, positionIterations);
        b2Vec2 position = body->GetPosition();
        float angle = body->GetAngle();
        printf("%4.2f %4.2f %4.2f\n", position.x, position.y, angle);
    }
    body->SetLinearVelocity(b2Vec2(10, 0));
    for (int32 i = 0; i < 60; ++i)
    {
        world.Step(timeStep, velocityIterations, positionIterations);
        b2Vec2 position = body->GetPosition();
        float angle = body->GetAngle();
        printf("%4.2f %4.2f %4.2f\n", position.x, position.y, angle);
    }
}

Game::Game(Queue<Dto *> &queue, Broadcaster &broadcaster) : common_queue(queue),
                                                            broadcaster(broadcaster),
                                                            world(World()),
                                                            game_finished(false)
{
    // mundo();
    world.addBeam(0, 9, 0, LONG);

    /* AGUA */

    world.addBeam(0, 0, 0, LONG);
    world.addBeam(6, 0, 0, LONG);
    world.addBeam(12, 0, 0, LONG);

    /*******/

    // world.addBeam(6, 9, 0, LONG);
    // world.addBeam(12, 9, 0, LONG);
    // world.addBeam(18, 9, 0, LONG);
    // world.addBeam(24, 9, 0, LONG);
    // world.addBeam(30, 9, 0, LONG);

    world.addWorm(0, 10);

    /*b2World *mundo = new b2World(b2Vec2(0.0f, -10.0f));
    Worm worm(mundo, 10, 100, 0);
    float timeStep = 1.0f / 60.0f;
    for (int i = 0; i < 1000; i++) {
        std::cout << "worm x = " << worm.getXCoordinate() << " y = " << worm.getYCoordinate() << "\n";
        mundo->Step(timeStep, 10, 10);
    }*/
}

void Game::run()
{
    while (not game_finished)
    {   
        Dto *dto;
        if (common_queue.try_pop(dto)) {
            executeCommand(dto);
        }
        //Dto *dto = common_queue.pop();
        update();
        std::this_thread::sleep_for(std::chrono::milliseconds(8));
        // broadcast();
    }
}

void Game::update()
{   
    world.step();
    /*Worm *worm = world.getWorms().front();
    uint16_t x = worm->getXCoordinate() * 100;
    uint16_t y = worm->getYCoordinate() * 100;
    uint8_t id = worm->getId();
    Gusano *g = new Gusano(id, x, y);
    broadcaster.AddGusanoToQueues(g);*/
}

void Game::sendWorms(Queue<Dto *> &q)
{
    for (Worm *w : world.getWorms())
    {
        std::cout << "x = " << (int)(w->getXCoordinate() * 100) << "\n";
        std::cout << "y = " << (int)(w->getYCoordinate() * 100) << "\n";
        Gusano *g = new Gusano((w->getId()),
                               (int)(w->getXCoordinate() * 100),
                               (int)(w->getYCoordinate() * 100));

        q.push(g);
    }
}

void Game::sendMap(Queue<Dto *> &q)
{
    std::list<Viga *> vs;
    // por cada viga manda un Dto Viga a los senders
    for (auto &beam : world.getBeams())
    {
        // cambiar los parametros a float
        Viga *viga = new Viga((int)(beam.getXCoordinate() * 100),
                              (int)(beam.getYCoordinate() * 100),
                              (int)(beam.getWidth() * 100),
                              (int)(beam.getHeight() * 100));

        vs.push_back(viga);
    }
    Vigas *vigas = new Vigas(vs);
    q.push(vigas); // agrego a la cola una lista de viga
}

void Game::moveWormRight()
{
    world.getWorms().front()->moveRight();
    //std::cout << "posicion gusano = " << world.getWorms().front()->getXCoordinate() << "\n";
}

void Game::stop()
{
    game_finished = true;
}

void Game::executeCommand(Dto *dto)
{
    uint8_t code = dto->return_code();
    if (code == MOVER_A_DERECHA_CODE)
    {
        moveWormRight();
        Worm *worm = world.getWorms().front();
        uint16_t x = worm->getXCoordinate() * 100;
        uint16_t y = worm->getYCoordinate() * 100;
        uint8_t id = worm->getId();
        Gusano *g = new Gusano(id, x, y);
        broadcaster.AddGusanoToQueues(g);
    }
}

void Game::broadcast()
{
}
