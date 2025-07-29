#ifndef LIGHT_H
#define LIGHT_H
#include <QObject>
using namespace std;
class Light:public QObject
{
    Q_OBJECT
public:
    explicit Light(QObject *parent =nullptr);
    Q_PROPERTY(bool light_on READ getLight WRITE setLight NOTIFY signal_light);
    Q_PROPERTY(bool light_high READ getLightHigh WRITE setLightHigh NOTIFY signal_light_high);
    Q_PROPERTY(bool light_low READ getLightLow WRITE setLightLow NOTIFY signal_light_low);
    Q_PROPERTY(bool light_right READ getLightRight WRITE setLightRight NOTIFY signal_light_right);
    Q_PROPERTY(bool light_left READ getLightLeft WRITE setLightLeft NOTIFY signal_light_left);
    Q_PROPERTY(bool light_hazard READ getLightHazard WRITE setLightHazard NOTIFY signal_hazard);
private:
    bool mLight;
    bool mLight_high;
    bool mLight_low;
    bool mLight_right;
    bool mLight_left;
    bool mLight_hazard;

public:
    void setLight(bool mode);
    void setLightHigh(bool mode);
    void setLightLow(bool mode);
    void setLightRight(bool mode);
    void setLightLeft(bool mode);
    void setLightHazard(bool mode);

    bool getLight();
    bool getLightHigh();
    bool getLightLow();
    bool getLightRight();
    bool getLightLeft();
    bool getLightHazard();
signals:
    void signal_light(bool mode);
    void signal_light_high(bool mode);
    void signal_light_low(bool mode);
    void signal_light_right(bool mode);
    void signal_light_left(bool mode);
    void signal_hazard(bool mode);
};

#endif // LIGHT_H
