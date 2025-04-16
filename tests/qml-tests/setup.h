// setup.h
#ifndef SETUP_H
#define SETUP_H

#include <QObject>
#include <QQmlEngine>

class Setup : public QObject
{
    Q_OBJECT

public:
    Setup() {}
    virtual ~Setup() {} // Destructeur virtuel ajouté

public slots:
    void qmlEngineAvailable(QQmlEngine *engine);
};

#endif // SETUP_H
