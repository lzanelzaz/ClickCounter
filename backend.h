#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QString>
#include <qqml.h>

class BackEnd : public QObject
{
    Q_OBJECT
    Q_PROPERTY(unsigned count MEMBER count NOTIFY countChanged)
    QML_ELEMENT

public:
    explicit BackEnd(QObject *parent = nullptr);

    unsigned count = 0;

signals:
    void countChanged();
};

#endif // BACKEND_H
