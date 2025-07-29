#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "header_file/light.h"
#include "header_file/door.h"
#include "header_file/bottombar.h"
#include "header_file/media.h"
#include <QQuickStyle>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    Light light;
    Door door;
    BottomBar bar;
    Media media;
    QQmlApplicationEngine engine;
    QQuickStyle::setStyle("Material");
    engine.rootContext()->setContextProperty("light", &light);
    engine.rootContext()->setContextProperty("door", &door);
    engine.rootContext()->setContextProperty("bar", &bar);
    engine.rootContext()->setContextProperty("mediaModel", &media);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(QUrl::fromLocalFile("D:/DashBoard/Main.qml"));


    return app.exec();
}
