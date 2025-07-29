#include "header_file/door.h"

Door::Door(QObject* parent):QObject(parent) {
    mDoor = false;
}

void Door::choice_door(int door, bool mode)
{
    switch(door){
        case 0:
            emit signal_door(door, mode);
            break;
        case 1:
            emit signal_door(door, mode);
            break;
        case 2:
            emit signal_door(door, mode);
            break;
        case 3:
            emit signal_door(door, mode);
            break;
        case 4:
            emit signal_door(door, mode);
            break;
        case 5:
            emit signal_door(door, mode);
            break;
        case 6:
            emit signal_door(door, mode);
            break;
    }
}

void Door::choice_glass(int glass, bool mode)
{
    switch(glass){
    case 0:
        emit signal_glass(glass, mode);
        break;
    case 1:
        emit signal_glass(glass, mode);
        break;
    case 2:
        emit signal_glass(glass, mode);
        break;
    case 3:
        emit signal_glass(glass, mode);
        break;
    case 4:
        emit signal_glass(glass, mode);
        break;
    }
}
