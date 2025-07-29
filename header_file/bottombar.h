#ifndef BOTTOMBAR_H
#define BOTTOMBAR_H

#include <QObject>
    using namespace std;
class BottomBar:public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool view3d READ getView3d WRITE setView3d NOTIFY signal_view3d);
    Q_PROPERTY(bool view_light_door READ getView_light_door WRITE setView_light_door NOTIFY signal_light_door);
    Q_PROPERTY(bool view_seat READ getView_seat WRITE setView_seat NOTIFY signal_seat);
    Q_PROPERTY(bool view_media READ getView_media WRITE setView_media NOTIFY signal_media);
public:
    explicit BottomBar(QObject *parent =nullptr);

    void setView3d(bool mode);
    void setView_light_door(bool mode);
    void setView_seat(bool mode);
    void setView_media(bool mode);

    bool getView3d();
    bool getView_light_door();
    bool getView_seat();
    bool getView_media();
private:
    bool mView3d;
    bool mView_light_door;
    bool mView_seat;
    bool mView_media;
signals:
    void signal_view3d(bool mode);
    void signal_light_door(bool mode);
    void signal_seat(bool mode);
    void signal_media(bool mode);
};

#endif // BOTTOMBAR_H
