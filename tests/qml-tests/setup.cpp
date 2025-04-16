// setup.cpp
#include "setup.h"
#include <QDebug>

void Setup::qmlEngineAvailable(QQmlEngine *engine)
{
    qDebug() << "QML Engine is available";
    // Ajoutez ici les configurations nécessaires pour le moteur QML
}
