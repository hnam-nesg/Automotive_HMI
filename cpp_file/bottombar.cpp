#include "header_file/bottombar.h"

BottomBar::BottomBar(QObject* parent):QObject(parent) {
    mView3d = false;
}
void BottomBar::setView3d(bool mode)
{
    if(mView3d != mode){
        mView3d = mode;
    }
    emit signal_view3d(mode);
}

void BottomBar::setView_light_door(bool mode)
{
    if(mView_light_door != mode){
        mView_light_door = mode;
    }
    emit signal_light_door(mode);
}

void BottomBar::setView_seat(bool mode)
{
    if(mView_seat != mode){
        mView_seat = mode;
    }
    emit signal_seat(mode);
}

void BottomBar::setView_media(bool mode)
{
    if(mView_media != mode){
        mView_media = mode;
    }
    emit signal_media(mode);
}

bool BottomBar::getView3d()
{
    return mView3d;
}

bool BottomBar::getView_light_door()
{
    return mView_light_door;
}

bool BottomBar::getView_seat()
{
    return mView_seat;
}

bool BottomBar::getView_media()
{
    return mView_media;
}


