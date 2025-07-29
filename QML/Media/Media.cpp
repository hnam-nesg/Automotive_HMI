#include <QObject>
#include <QDebug>
#include "Media.h"

Media::Media(QObject *parent) : QObject(parent){
    m_index =0;
    m_source = "";
    m_title = "";
    m_icon = "";
    m_singer = "";
    m_position = 0;
    m_state = 0;
    m_snext = "";
}

void Media::setCurrentIndex(int index)
{
    if (m_index != index){
        qDebug() << "Current Index: " << index;
        m_index = index;
        emit indexChanged(index);
    }
}

void Media::setPlayerSource(QString source)
{
    if (m_source != source){
        qDebug() << "Player Source: " << source;
        m_source = source;
        emit playerChangedSource(source);
    }
}

void Media::setPlayerTitle(QString title)
{
    if (m_title != title){
        qDebug() << "Player Title: " << title;
        m_title = title;
        emit playerChangedTitle(title);
    }
}

void Media::setPlayerIcon(QString icon)
{
    if (m_icon != icon){
        qDebug() << "Player Icon: " << icon;
        m_icon = icon;
        emit playerChangedIcon(icon);
    }
}

void Media::setPlayerSinger(QString singer)
{
    if (m_singer != singer){
        qDebug() << "Player Singer: " << singer;
        m_singer = singer;
        emit playerChangedSinger(singer);
    }
}

void Media::setPosition(int pos)
{
    if (m_position != pos){
        //qDebug() << "Player Postition: " << pos;
        m_position = pos;
        emit playerPositionChanged(pos);
    }
}

void Media::setPlaybackState(int play)
{
    if(m_state != play){
        qDebug() << "Play State: " << play;
        m_state = play;
        emit playerStateChanged(play);
    }
}

void Media::setSourceNext(QString source)
{
    if(m_snext != source){
        qDebug() << "Source Next: " << source;
        m_snext = source;
        emit playerSourceNext(source);
    }
}

int Media::getCurrentIndex()
{
    return m_index;
}

QString Media::getPlayerSource()
{
    return m_source;
}

QString Media::getPlayerTitle()
{
    return m_title;
}

QString Media::getPlayerIcon()
{
    return m_icon;
}

QString Media::getPlayerSinger()
{
    return m_singer;
}

int Media::getPosition()
{
    return m_position;
}

int Media::getPlaybackState()
{
    return m_state;
}

QString Media::getSourceNext()
{
    return m_snext;
}
