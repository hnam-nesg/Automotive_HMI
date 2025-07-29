import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtMultimedia
Item {
    id: root

    MediaPlayer{
        id: player
        property bool shuffer: false
        source: ""
        audioOutput: audio
        onPlaybackStateChanged: {
            if (player.playbackState == MediaPlayer.StoppedState && position == duration && repeater.status ==0){
                if (shuffer.status==1) {
                    var newIndex = Math.floor(Math.random() * mediaPlaylist.count)
                    while (newIndex === mediaPlaylist.currentIndex) {
                        newIndex = Math.floor(Math.random() * mediaPlaylist.count)
                    }
                    mediaPlaylist.currentIndex = newIndex
                } else if(mediaPlaylist.currentIndex < mediaPlaylist.count - 1 ) {
                    mediaPlaylist.currentIndex = mediaPlaylist.currentIndex + 1;
                }
                else{
                    mediaPlaylist.currentIndex = 0
                }
            }
            else if (player.playbackState == MediaPlayer.StoppedState && position == duration && repeater.status == 1){
                position = 0
                player.play()
            }
        }

        autoPlay: true
    }
    AudioOutput{
        id: audio
        volume: 1
    }

    Text {
        id: audioTitle
        anchors.top: parent.top
        anchors.topMargin: 100/9 //20
        anchors.left: parent.left
        anchors.leftMargin: 32/3 //20
        text: album_art_view.currentItem.myData.title
        color: "white"
        font.pixelSize: 96/5 //36
        onTextChanged: {
            textChangeAni.targets = [audioTitle,audioSinger]
            textChangeAni.restart()
        }
    }
    Text {
        id: audioSinger
        anchors.top: audioTitle.bottom
        anchors.left: audioTitle.left
        text: album_art_view.currentItem.myData.singer
        color: "white"
        font.pixelSize: 256/15 //32
    }

    NumberAnimation {
        id: textChangeAni
        property: "opacity"
        from: 0
        to: 1
        duration: 400
        easing.type: Easing.InOutQuad
    }
    Text {
        id: audioCount
        anchors.top: parent.top
        anchors.topMargin: 100/9 //20
        anchors.right: parent.right
        anchors.rightMargin: 32/3 //20
        text: album_art_view.count
        color: "white"
        font.pixelSize: 96/5 //36
    }
    Image {
        anchors.top: parent.top
        anchors.topMargin: 115/9 //23
        anchors.right: audioCount.left
        anchors.rightMargin: 16/3 //10
        source: "qrc:/App/Media/Image/music.png"
    }

    Component {
        id: appDelegate
        Item {
            property variant myData: model
            width: 640/3 //400
            height: 2000/9 //400
            scale: PathView.iconScale
            // Image {
            //     id: myIcon
            //     width: parent.width
            //     height: parent.height
            //     y: 100/9 //20
            //     anchors.horizontalCenter: parent.horizontalCenter
            //     source: album_art
            // }

            // MouseArea {
            //     anchors.fill: parent
            //     onClicked: album_art_view.currentIndex = index
            // }

            Image {
                id: myIcon
                width: parent.width
                height: parent.height
                y: 100/9 //20
                anchors.horizontalCenter: parent.horizontalCenter
                source: model.icon
                smooth: true
                Behavior on width { NumberAnimation { duration: 300 } }
                Behavior on height { NumberAnimation { duration: 300 } }
            }

            MouseArea {
                anchors.fill: parent
                onClicked:{
                    album_art_view.currentIndex = index
                }
            }
        }
    }

    PathView {
        id: album_art_view
        anchors.left: parent.left
        anchors.leftMargin: (parent.width - 1100)/2
        anchors.top: parent.top
        anchors.topMargin: 1500/9 //300
        preferredHighlightBegin: 0.5
        preferredHighlightEnd: 0.5
        focus: true
        model: myModel
        delegate: appDelegate
        pathItemCount: 3
        path: Path {
            startX: 16/3 //10
            startY: 250/9 //50
            PathAttribute { name: "iconScale"; value: 0.5 }
            PathLine { x: 880/3; y: 250/9 } //550 50
            PathAttribute { name: "iconScale"; value: 1.0 }
            PathLine { x: 5280/9; y: 250/9 } //1100 50
            PathAttribute { name: "iconScale"; value: 0.5 }
        }
        // currentIndex: player.playlist.currentIndex
        // onCurrentIndexChanged: {
        //     if (currentIndex !== player.playlist.currentIndex) {
        //         player.playlist.currentIndex = currentIndex
        //     }
        // }
        highlightRangeMode: PathView.StrictlyEnforceRange
        onCurrentIndexChanged: {
            player.playlist.currentIndex = album_art_view.currentIndex
        }

    }

    function str_pad_left(string,pad,length) {
        return (new Array(length+1).join(pad)+string).slice(-length);
    }

    function getTime(time){
        time = time/1000
        let minutes = Math.floor(time / 60 );
        let seconds = Math.floor(time - minutes * 60);

        return str_pad_left(minutes,'0',2)+':'+str_pad_left(seconds,'0',2);
    }
    //Progress
    Text {
        id: currentTime
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 1250/9 //250
        anchors.right: progressBar.left
        anchors.rightMargin: 96/9 //20
        text: root.getTime(player.position)
        color: "white"
        font.pixelSize: 64/5 //24
    }
    Slider{
        id: progressBar
        width: 2176/5*playlist.position // (1491 - 675)
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 1225/9 //245
        anchors.horizontalCenter: parent.horizontalCenter
        from: 0
        to: player.duration
        value: player.position
        background: Rectangle {
            x: progressBar.leftPadding
            y: progressBar.topPadding + progressBar.availableHeight / 2 - height / 2
            implicitWidth: 960/9 //200
            implicitHeight: 20/9 //4
            width: progressBar.availableWidth
            height: implicitHeight
            radius: 2
            color: "gray"

            Rectangle {
                width: progressBar.visualPosition * parent.width
                height: parent.height
                color: "white"
                radius: 2
            }
        }
        handle: Image {
            anchors.verticalCenter: parent.verticalCenter
            x: progressBar.leftPadding + progressBar.visualPosition * (progressBar.availableWidth - width)
            y: progressBar.topPadding + progressBar.availableHeight / 2 - height / 2
            source: "qrc:/App/Media/Image/point.png"
            Image {
                anchors.centerIn: parent
                source: "qrc:/App/Media/Image/center_point.png"
            }
        }
        onMoved: {
            // if (player.seekable){
            //     player.setPosition(Math.floor(position*player.duration))
            // }
            player.position = player.duration * progressBar.position
        }
    }
    Text {
        id: totalTime
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 1250/9 //250
        anchors.left: progressBar.right
        anchors.leftMargin: 96/9 //20
        text: root.getTime(player.duration)
        color: "white"
        font.pixelSize: 64/5 //24
    }
    //Media control
    SwitchButton {
        id: shuffer
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 600/9 //120
        anchors.left: currentTime.left
        icon_off: "qrc:/App/Media/Image/shuffle.png"
        icon_on: "qrc:/App/Media/Image/shuffle-1.png"
        status: /*player.playlist.playbackMode === Playlist.Random ? 1 : 0*/ player.shuffer
        onClicked: {
            // console.log(player.playlist.playbackMode)
            // if (player.playlist.playbackMode === Playlist.Random) {
            //     player.playlist.playbackMode = Playlist.Sequential
            // } else {
            //     player.playlist.playbackMode = Playlist.Random
            // }
        }
    }
    ButtonControl {
        id: prev
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 600/9 //120
        anchors.right: play.left
        icon_default: "qrc:/App/Media/Image/prev.png"
        icon_pressed: "qrc:/App/Media/Image/hold-prev.png"
        icon_released: "qrc:/App/Media/Image/prev.png"
        onClicked: {
            //player.playlist.previous()
            if (shuffer.status==1) {
                var newIndex = Math.floor(Math.random() * mediaPlaylist.count)
                while (newIndex === mediaPlaylist.currentIndex) {
                    newIndex = Math.floor(Math.random() * mediaPlaylist.count)
                }
                mediaPlaylist.currentIndex = newIndex
            }
            else if(mediaPlaylist.currentIndex >0 && mediaPlaylist.currentIndex <= mediaPlaylist.model.count - 1){
                mediaPlaylist.currentIndex -=1
            }
            else if (mediaPlaylist.currentIndex === 0){
                mediaPlaylist.currentIndex = mediaPlaylist.model.count - 1
            }
        }
    }
    ButtonControl {
        // id: play
        // anchors.verticalCenter: prev.verticalCenter
        // anchors.horizontalCenter: parent.horizontalCenter
        // icon_default: player.state === MediaPlayer.PlayingState ?  "qrc:/App/Media/Image/pause.png" : "qrc:/App/Media/Image/play.png"
        // icon_pressed: player.state === MediaPlayer.PlayingState ?  "qrc:/App/Media/Image/hold-pause.png" : "qrc:/App/Media/Image/hold-play.png"
        // icon_released: player.state === MediaPlayer.PlayingState ?  "qrc:/App/Media/Image/pause.png" : "qrc:/App/Media/Image/play.png"
        // onClicked: {
        //     if (player.state !== MediaPlayer.PlayingState){
        //         player.play()
        //     } else {
        //         player.pause()
        //     }
        // }
        // Connections {
        //     target: player
        //     onStateChanged:{
        //         play.source = player.state === MediaPlayer.PlayingState ?  "qrc:/App/Media/Image/pause.png" : "qrc:/App/Media/Image/play.png"
        //     }
        // }
        id: play
        anchors.verticalCenter: prev.verticalCenter
        anchors.left: prev.right
        icon_default: player.playbackState == MediaPlayer.PlayingState ?  "qrc:/Image/pause.png" : "qrc:/Image/play.png"
        icon_pressed: player.playbackState == MediaPlayer.PlayingState ?  "qrc:/Image/hold-play.png" : "qrc:/Image/hold-pause.png"
        icon_released: player.playbackState == MediaPlayer.PlayingState ?  "qrc:/Image/play.png" : "qrc:/Image/pause.png"
        onClicked: {
            switch(player.playbackState){
            case MediaPlayer.PlayingState: player.pause();  break;
            case MediaPlayer.PausedState: player.play(); break;
            case MediaPlayer.StoppedState: player.play();  break;
            }
        }
    }
    ButtonControl {
        id: next
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 600/9 //120
        anchors.left: play.right
        icon_default: "qrc:/App/Media/Image/next.png"
        icon_pressed: "qrc:/App/Media/Image/hold-next.png"
        icon_released: "qrc:/App/Media/Image/next.png"
        onClicked: {
            //player.playlist.next()
            if (shuffer.status==1) {
                var newIndex = Math.floor(Math.random() * mediaPlaylist.count)
                while (newIndex === mediaPlaylist.currentIndex) {
                    newIndex = Math.floor(Math.random() * mediaPlaylist.count)
                }
                mediaPlaylist.currentIndex = newIndex
            }
            else if(mediaPlaylist.currentIndex >=0 && mediaPlaylist.currentIndex < mediaPlaylist.model.count - 1){
                mediaPlaylist.currentIndex +=1
            }
            else if (mediaPlaylist.currentIndex === mediaPlaylist.model.count - 1){
                mediaPlaylist.currentIndex = 0
            }
        }
    }
    SwitchButton {
        id: repeater
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 600/9 //120
        anchors.right: totalTime.right
        icon_on: "qrc:/App/Media/Image/repeat1_hold.png"
        icon_off: "qrc:/App/Media/Image/repeat.png"
        status: player.playlist.playbackMode === Playlist.Loop ? 1 : 0
        onClicked: {
            // console.log(player.playlist.playbackMode)
            // if (player.playlist.playbackMode === Playlist.Loop) {
            //     player.playlist.playbackMode = Playlist.Sequential
            // } else {
            //     player.playlist.playbackMode = Playlist.Loop
            // }
        }
    }

    Component.onCompleted: {
        player.play()
    }

     Connections{
         target: player.playlist
         onCurrentIndexChanged: {
             album_art_view.currentIndex = index;
         }
     }
}
