#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "./model/dirEntryModel.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    qmlRegisterType<DirEntryModel>("Models", 1, 0, "DirEntryModel");
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
