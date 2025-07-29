#ifndef MEDIA_H
#define MEDIA_H
#include <QObject>
#include <QUrl>

class Media:public QObject{
    Q_OBJECT
    Q_PROPERTY(int player_index READ getCurrentIndex  WRITE setCurrentIndex NOTIFY indexChanged)
    Q_PROPERTY(QString player_source READ getPlayerSource  WRITE setPlayerSource NOTIFY playerChangedSource)
    Q_PROPERTY(QString player_title READ getPlayerTitle  WRITE setPlayerTitle NOTIFY playerChangedTitle)
    Q_PROPERTY(QString player_icon READ getPlayerIcon  WRITE setPlayerIcon NOTIFY playerChangedIcon)
    Q_PROPERTY(QString player_singer READ getPlayerSinger  WRITE setPlayerSinger NOTIFY playerChangedSinger)
    Q_PROPERTY(int player_position READ getPosition WRITE setPosition NOTIFY playerPositionChanged)
    Q_PROPERTY(int player_state READ getPlaybackState WRITE setPlaybackState NOTIFY playerStateChanged)
    Q_PROPERTY(QString source_next READ getSourceNext WRITE setSourceNext NOTIFY playerSourceNext)


public:
    explicit Media(QObject *parent = nullptr);
    int m_index;
    QString m_source;
    QString m_title;
    QString m_icon;
    QString m_singer;
    int m_position;
    int m_state;
    QString m_snext;

private:
    void setCurrentIndex(int index);
    void setPlayerSource(QString source);
    void setPlayerTitle(QString title);
    void setPlayerIcon(QString icon);
    void setPlayerSinger(QString singer);
    void setPosition(int pos);
    void setPlaybackState(int play);
    void setSourceNext(QString source);


    int getCurrentIndex();
    QString getPlayerSource();
    QString getPlayerTitle();
    QString getPlayerIcon();
    QString getPlayerSinger();
    int getPosition();
    int getPlaybackState();
    QString getSourceNext();
signals:
    void indexChanged(int index);
    QString playerChangedSource(QString source);
    QString playerChangedTitle(QString title);
    QString playerChangedIcon(QString icon);
    QString playerChangedSinger(QString singer);
    void playerPositionChanged(int pos);
    void playerStateChanged(int play);
    void playerSourceNext(QString source);

};

#endif // MEDIA_H
