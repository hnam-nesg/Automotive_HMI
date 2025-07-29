#ifndef DOOR_H
#define DOOR_H

#include <QObject>
using namespace std;
class Door:public QObject
{
    Q_OBJECT
public:
    explicit Door(QObject *parent =nullptr);
private:
    bool mDoor;
    bool mGlass;
signals:
    void signal_door(int door, bool mode);
    void signal_glass(int glass, bool mode);
public slots:
    void choice_door(int door, bool mode);
    void choice_glass(int glass, bool mode);
};


#endif // DOOR_H
