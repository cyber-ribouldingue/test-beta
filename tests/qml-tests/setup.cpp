#include "setup.h"
#include <QQmlContext>

void Setup::qmlEngineAvailable(QQmlEngine *engine)
{
    // Exemple : injection d'une propriété de contexte pour les tests
    engine->rootContext()->setContextProperty("testMode", true);
}
