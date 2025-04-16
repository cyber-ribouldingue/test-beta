#include "setup.h"
#include <QDebug>

Setup::~Setup() = default; // Définition du destructeur virtuel

void Setup::qmlEngineAvailable(QQmlEngine *engine)
{
    Q_UNUSED(engine);
    qDebug() << "QML Engine is available";
    // Configuration supplémentaire si nécessaire
}
