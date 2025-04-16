#ifndef SETUP_H
#define SETUP_H

#include <QObject>
#include <QQmlEngine>

class Setup : public QObject
{
    Q_OBJECT

public:
    Setup() = default;
    virtual ~Setup(); // Déclaration du destructeur virtuel

public slots:
    void qmlEngineAvailable(QQmlEngine *engine);
};

#endif // SETUP_H
