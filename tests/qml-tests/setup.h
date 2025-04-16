#ifndef SETUP_H
#define SETUP_H

#include <QObject>

class Setup : public QObject
{
    Q_OBJECT
public:
    Setup();
    virtual ~Setup() = default; // ✅ Destructeur virtuel ajouté
};

#endif // SETUP_H
