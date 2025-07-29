#include "header_file/light.h"

Light::Light(QObject* parent):QObject(parent) {
    mLight = false;
    mLight_high = false;
    mLight_low = false;
    mLight_right = false;
    mLight_left = false;
    mLight_hazard = false;
}

void Light::setLight(bool mode)
{
    if (mLight != mode){
        mLight = mode;
    }
    emit signal_light(mode);
}

void Light::setLightHigh(bool mode)
{
    if (mLight_high != mode){
        mLight_high = mode;
    }
    emit signal_light_high(mode);
}

void Light::setLightLow(bool mode)
{
    if (mLight_low != mode){
        mLight_low = mode;
    }
    emit signal_light_low(mode);
}

void Light::setLightRight(bool mode)
{
    if(mLight_right != mode){
        mLight_right = mode;
    }
    emit signal_light_right(mode);
}

void Light::setLightLeft(bool mode)
{
    if(mLight_left != mode){
        mLight_left = mode;
    }
    emit signal_light_left(mode);
}

void Light::setLightHazard(bool mode)
{
    if(mLight_hazard != mode){
        mLight_hazard = mode;
    }
    emit signal_hazard(mode);
}

bool Light::getLight()
{
    return mLight;
}

bool Light::getLightHigh()
{
    return mLight_high;
}

bool Light::getLightLow()
{
    return mLight_low;
}

bool Light::getLightRight()
{
    return mLight_right;
}

bool Light::getLightLeft()
{
    return mLight_left;
}

bool Light::getLightHazard()
{
    return mLight_hazard;
}
