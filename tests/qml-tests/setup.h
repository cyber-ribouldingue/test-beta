#pragma once

#include <QObject>
#include <QQmlEngine>

class Setup : public QObject
{
    Q_OBJECT
public:
    Setup() = default;
    virtual ~Setup() = default;

public slots:
    void qmlEngineAvailable(QQmlEngine *engine);
};
