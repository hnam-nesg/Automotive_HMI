import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtMultimedia
import QtQuick.LocalStorage
import "MediaData.js" as JS

Item {
    id: root
    property var db;
    property url sourceNext: ""
    property alias next: next
    property alias play: play
    property alias prev: prev
    property alias player: player
    property alias mediaPlaylist: mediaPlaylist
    property alias appModel: appModel
    property alias shuffer: shuffer
    property alias drawer: drawer
    width: 1024
    height: 548
    function str_pad_left(string,pad,length) {
        return (new Array(length+1).join(pad)+string).slice(-length);
    }

    function getTime(time){
        time = time/1000
        let minutes = Math.floor(time / 60 );
        let seconds = Math.floor(time - minutes * 60);

        return str_pad_left(minutes,'0',2)+':'+str_pad_left(seconds,'0',2);
    }

    MediaPlayer{
        id: player
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
            mediaModel.player_state = player.playbackState;
        }
        onPositionChanged: {
            mediaModel.player_position = player.position
            console.log("Position:" + mediaModel.player_position)
        }

        //autoPlay: true
    }
    AudioOutput{
        id: audio
        volume: 1
    }

    ListModel {
        id: appModel
        ListElement{title: "Gọi Cho Anh Đi"; singer: "AndreeRightHand" ; icon: "qrc:/asset/Image/AndreeRightHand.webp"; source: "qrc:/asset/music/Goi-Cho-Anh-Di.mp3" }
        ListElement{title: "MammaMia"; singer: "Gerdnang" ; icon: "qrc:/asset/Image/mammamia.jpg"; source: "qrc:/asset/music/MammaMia-HIEUTHUHAIHURRYKNGMANBONegavRex-7288215.mp3" }
        ListElement{title: "NOLOVENOLIFE" ; singer: "HIEUTHUHAI" ; icon: "qrc:/asset/Image/HIEUTHUHAI.jpg"; source: "qrc:/asset/music/NOLOVENOLIFE-HIEUTHUHAI-11966374.mp3"}
        ListElement{title: "Không Phải Gu" ; singer: "HIEUTHUHAI" ; icon: "qrc:/asset/Image/HIEUTHUHAI.jpg"; source: "qrc:/asset/music/KhongPhaiGu-HIEUTHUHAI-11966359.mp3"}
        ListElement{title: "Anh Vẫn Luôn Như Vậy"; singer: "Bray"; icon: "qrc:/asset/Image/anhvanluonnhuvay.jpg"; source: "qrc:/asset/music/AnhLuonNhuVay-BRay-11853369.mp3"}
        ListElement{title: "Đa Nghi"; singer: "Ogenus"; icon: "qrc:/asset/Image/Danghi.jpg"; source: "qrc:/asset/music/DaNghi-OgeNus-15942159.mp3"}
        ListElement{title: "Exit Sign"; singer: "HIEUTHUHAI"; icon: "qrc:/asset/Image/d4acc6335d41bd7164173312c6123706.jpg"; source: "qrc:/asset/music/ExitSign-HIEUTHUHAI-11966367.mp3"}
        ListElement{title: "Chúng Ta Của Hiện Tại"; singer: "Sơn Tùng-MTP"; icon: "qrc:/asset/Image/Sontung.webp"; source: "qrc:/asset/music/ChungTaCuaHienTai-SonTungMTP-6892340.mp3"}
        ListElement{title: "Ghé Qua"; singer: "Dick - Huỳnh Công Hiếu"; icon: "qrc:/asset/Image/ghequa.jpg"; source: "qrc:/asset/music/GheQua-TaynguyenSoundTofuPC-7031399.mp3"}
        ListElement{title: "Phù Hộ Cho Con"; singer: "24k Right - Bray - Huỳnh Công Hiếu"; icon: "qrc:/asset/Image/phuhochocon.jpg"; source: "qrc:/asset/music/PhuHoChoCon-24kRightBRayDickHipz-15754317.mp3"}
        ListElement{title: "Anh Đã Lớn Hơn Thế Nhiều"; singer: "Huỳnh Công Hiếu"; icon: "qrc:/asset/Image/AnhDaLonHonTheNhieu.webp"; source: "qrc:/asset/music/Anhdalonhonthenhieu.mp3"}
        ListElement{title: "Bắc Bling"; singer: "Hòa Minzy"; icon: "qrc:/asset/Image/Bacbling.jpg"; source: "qrc:/asset/music/BacBling.mp3"}
        ListElement{title: "Cơn Mưa Xa Dần"; singer: "Sơn Tùng-MTP"; icon: "qrc:/asset/Image/Conmuaxadan.jpg"; source: "qrc:/asset/music/ConMuaXaDan.mp3"}
        ListElement{title: "Chờ Một Người"; singer: "Gill - Captain"; icon: "qrc:/asset/Image/Chomotnguoi.png"; source: "qrc:/asset/music/ChoMotNguoi.mp3"}
        ListElement{title: "Chưa Từng Vì Nhau"; singer: "Karik"; icon: "qrc:/asset/Image/Chuatungvinhau.jpg"; source: "qrc:/asset/music/Chuatungvinhau.mp3"}
        ListElement{title: "Dám Rực Rỡ"; singer: "GREY D - HIEUTHUHAI - Wren Evans - Obito "; icon: "qrc:/asset/Image/DamRucRo.jpg"; source: "qrc:/asset/music/DamRucRo.mp3"}
        ListElement{title: "Đến Bao Giờ"; singer: "Datmaniac - Cá Hồi Hoang"; icon: "qrc:/asset/Image/DenBaoGio.png"; source: "qrc:/asset/music/2018Denbaogio.mp3"}
        ListElement{title: "Đi Tìm Tình Yêu"; singer: "Mono"; icon: "qrc:/asset/Image/Ditimtinhyeu.jpg"; source: "qrc:/asset/music/DiTimTinhYeu.mp3"}
        ListElement{title: "Lần Cuối"; singer: "Karik"; icon: "qrc:/asset/Image/Lancuoi.jpg"; source: "qrc:/asset/music/LanCuoi.mp3"}
        ListElement{title: "Qua Từng Khung Hình"; singer: "Ngắn - Robber"; icon: "qrc:/asset/Image/Quatungkhuhinh.jpg"; source: "qrc:/asset/music/QuaTungKhungHinh.mp3"}
        ListElement{title: "Trước Khi Tuổi Trẻ Này Đóng Lối"; singer: "Dick - Xám"; icon: "qrc:/asset/Image/Truockhituoitrenaydongloi.jpg"; source: "qrc:/asset/music/TruocKhiTuoiTreNayDongLoi.mp3"}
        ListElement{title: "Nắng Ấm Ngang Qua"; singer: "Sơn Tùng-MTP"; icon: "qrc:/asset/Image/Conmuaxadan.jpg"; source: "qrc:/asset/music/NangAmNgangQua.mp3"}
        ListElement{title: "Nói Là Làm"; singer: "Danmy - Karik - Mason"; icon: "qrc:/asset/Image/Noilalam.jpg"; source: "qrc:/asset/music/NoiLaLam.mp3"}
        ListElement{title: "Ngày Nào"; singer: "Datmaniac - Cá Hồi Hoang"; icon: "qrc:/asset/Image/Ngaynao.jpg"; source: "qrc:/asset/music/Ngaynao.mp3"}
        ListElement{title: "Nhật Kí Vào Đời"; singer: "Karik - Thái VG"; icon: "qrc:/asset/Image/Nhatkivaodoi.jpg"; source: "qrc:/asset/music/NhatKiVaoDoi.mp3"}


    }
    AppHeader{
        id: headerItem
        width: parent.width
        height: 70
        playlistButtonStatus: drawer.opened ? 1 : 0
        onClickPlaylistButton: {
            if (!drawer.opened) {
                drawer.open()
            } else {
                drawer.close()
            }
        }
    }
    Image{
        id: playList_bg
        anchors.top: headerItem.bottom
        anchors.bottom: root.bottom
        width: 360
        height: 478
        source: "qrc:/asset/Image/playlist.png"
        opacity: 0.2
    }
    Drawer {
        id: drawer
        modal: false
        closePolicy: Drawer.NoAutoClose
        y: 236
        height: 478
        dim: false // tắt làm mờ nền nha ku tìm lõi con mắt mới biết dcm
        background: Rectangle{
            anchors.fill: parent
            color: "transparent"
        }
    ListView {
        id: mediaPlaylist
        model: appModel
        width: 360
        height: 478
        x: 448
        //anchors.fill: parent
        clip: true
        spacing: 16/15
        currentIndex: 0
        delegate: MouseArea {
            property variant myData: model
            implicitWidth: playlistItem.width
            implicitHeight: playlistItem.height
            Image {
                id: playlistItem
                width: 360
                height: 119.5
                source: "qrc:/asset/Image/playlist.png"
                opacity: 0.5
            }
            Text {
                text: model.title
                anchors.fill: parent
                anchors.leftMargin: 112/3
                verticalAlignment: Text.AlignVCenter
                color: "white"
                font.pixelSize: 256/15
            }
            onClicked: {
                mediaPlaylist.currentIndex = index
            }

            onPressed: {
                playlistItem.source = "qrc:/asset/Image/hold.png"
            }
            onReleased: {
                playlistItem.source = "qrc:/asset/Image/playlist.png"
            }
        }
        highlight: Image {
            source: "qrc:/asset/Image/playlist_item.png"
            Image {
                anchors.left: parent.left
                anchors.leftMargin: 8
                anchors.verticalCenter: parent.verticalCenter
                width: 20
                height: 20
                source: "qrc:/asset/Image/playing.png"
            }
        }
        ScrollBar.vertical: ScrollBar {
            parent: mediaPlaylist.parent
            anchors.top: mediaPlaylist.top
            anchors.left: mediaPlaylist.right
            anchors.bottom: mediaPlaylist.bottom
        }
        onCurrentItemChanged: {
            player.source = mediaPlaylist.currentItem.myData.source
            album_art_view.currentIndex = mediaPlaylist.currentIndex
            player.play()
            play.source = "qrc:/asset/Image/pause.png"

            mediaModel.player_index = mediaPlaylist.currentIndex
            mediaModel.player_source = player.source;
            mediaModel.player_title = mediaPlaylist.model.get(mediaPlaylist.currentIndex).title
            mediaModel.player_singer = mediaPlaylist.model.get(mediaPlaylist.currentIndex).singer
            mediaModel.player_icon = mediaPlaylist.model.get(mediaPlaylist.currentIndex).icon
        }
    }
}
    Text {
        id: audioTitle
        anchors.top: headerItem.bottom
        anchors.topMargin: 100/9
        x: drawer.opened ? 370 : 10
        Behavior on x {NumberAnimation{duration: 300; easing.type: Easing.Linear}}
        text: mediaPlaylist.model.get(mediaPlaylist.currentIndex).title
        color: "white"
        font.pixelSize: 96/5
        onTextChanged: {
            textChangeAni.targets = [audioTitle,audioSinger]
            textChangeAni.restart()
        }
    }
    Text {
        id: audioSinger
        anchors.top: audioTitle.bottom
        anchors.left: audioTitle.left
        x: drawer.opened ? 370 : 10
        Behavior on x {NumberAnimation{duration: 300; easing.type: Easing.Linear}}
        text: mediaPlaylist.model.get(mediaPlaylist.currentIndex).singer
        color: "white"
        font.pixelSize: 256/15
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
        anchors.top: headerItem.bottom
        anchors.topMargin: 100/9
        anchors.right: parent.right
        anchors.rightMargin: 32/3
        text: mediaPlaylist.model.count
        color: "white"
        font.pixelSize: 111/5
    }
    Image {
        anchors.top: headerItem.bottom
        anchors.topMargin: 115/9
        anchors.right: audioCount.left
        anchors.rightMargin: 16/3
        source: "qrc:/asset/Image/music.png"
    }

    Component {
        id: appDelegate
        Item {
            width: 300
            height: 300
            scale: PathView.iconScale
            Image {
                id: myIcon
                width: parent.width
                height: parent.height
                y: 100/9
                anchors.horizontalCenter: parent.horizontalCenter
                source: model.icon
                smooth: true
                scale: drawer.opened ? 0.7 : 1
                Behavior on scale { NumberAnimation { duration: 300; easing.type: Easing.Linear } }
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

    Path {
        id: pathOrginal
        startX: 10
        startY: 10
        PathAttribute { name: "iconScale"; value: 0.5 }
        PathLine { x: 412 ; y: 10 }
        PathAttribute { name: "iconScale"; value: 1.0 }
        PathLine { x: 825; y: 10 }
        PathAttribute { name: "iconScale"; value: 0.5 }
    }
    Path{
        id: pathChanged
        startX: 16/3
        startY: 250/9
        PathAttribute { name: "iconScale"; value: 0.5 }
        PathLine { x: 880/3; y: 250/9 }
        PathAttribute { name: "iconScale"; value: 1.0 }
        PathLine { x: 5280/9; y: 250/9 }
        PathAttribute { name: "iconScale"; value: 0.5 }
    }

    PathView {
        id: album_art_view
        width: drawer.opened ? 664 : 824
        height: 300
        x: drawer.opened ? 400 : 100
        Behavior on x {
            NumberAnimation {
                duration: 300
                easing.type: Easing.Linear
            }}
        y: 230
        preferredHighlightBegin: 0.5
        preferredHighlightEnd: 0.5
        focus: true
        model: appModel
        delegate: appDelegate
        pathItemCount: 3
        path: drawer.opened ? pathChanged : pathOrginal
        highlightRangeMode: PathView.StrictlyEnforceRange
        onCurrentIndexChanged: {
            mediaPlaylist.currentIndex = album_art_view.currentIndex
        }

    }

    Text {
        id: currentTime
        anchors.left: shuffer.left
        anchors.bottom: shuffer.top
        anchors.verticalCenterOffset: 10
        anchors.verticalCenter: progressBar.verticalCenter
        text: root.getTime(player.position)
        color: "white"
        font.pixelSize: 64/5
    }
    Slider{
        id: progressBar
        width: 824
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 105
        anchors.leftMargin: 96/9
        enabled: player.seekable
        value: player.duration > 0 ? player.position / player.duration : 0
        background: Rectangle {
            x: progressBar.leftPadding
            y: progressBar.topPadding + progressBar.availableHeight / 2 - height / 2
            implicitWidth: 200
            implicitHeight: 4
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
        transform: Scale {
            xScale: drawer.opened ? 0.55 : 1.0
            yScale: drawer.opened ? 0.55 : 1.0
        }
        x: drawer.opened ? 465 : 100
        Behavior on scale { NumberAnimation { duration: 300; easing.type: Easing.Linear } }
        Behavior on x { NumberAnimation { duration: 300; easing.type: Easing.Linear }}
        handle: Image {
            anchors.verticalCenter: parent.verticalCenter
            x: progressBar.leftPadding + progressBar.visualPosition * (progressBar.availableWidth - width)
            y: progressBar.topPadding + progressBar.availableHeight / 2 - height / 2
            source: "qrc:/asset/Image/point.png"
            Image {
                anchors.centerIn: parent
                source: "qrc:/asset/Image/center_point.png"
            }
        }
        onMoved: {
            player.position = player.duration * progressBar.position
        }
    }
    Text {
        id: totalTime
        anchors.verticalCenter: progressBar.verticalCenter
        anchors.verticalCenterOffset: 10
        anchors.bottom: repeater.top
        anchors.right: repeater.right
        text: root.getTime(player.duration)
        color: "white"
        font.pixelSize: 64/5
    }

    SwitchButton {
        id: shuffer
        width1: 70
        height1: 40
        x: drawer.opened ? 410 : 50
        Behavior on x {NumberAnimation{duration: 300; easing.type: Easing.Linear}}
        anchors.bottom: root.bottom
        anchors.bottomMargin: 50
        icon_off: "qrc:/asset/Image/shuffle.png"
        icon_on: "qrc:/asset/Image/shuffle-1.png"
        scale: pressed ? 0.8 : 1
        Behavior on scale {NumberAnimation{duration: 200;easing.type: Easing.Liner}}
        status: 0
    }
    ButtonControl {
        id: prev
        width1: 70
        height1: 40
        anchors.right: play.left
        x: -10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        icon_default: "qrc:/asset/Image/prev.png"
        icon_pressed: "qrc:/asset/Image/hold-prev.png"
        icon_released: "qrc:/asset/Image/prev.png"
        scale: pressed ? 0.8 : 1
        Behavior on scale {NumberAnimation{duration: 200;easing.type: Easing.Liner}}
        onClicked: {
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
            mediaModel.play_pause = "qrc:/asset/Image/pause.png"
        }
    }
    ButtonControl {
        id: play
        width1: 70
        height1: 70
        anchors.verticalCenter: prev.verticalCenter
        x: drawer.opened ? 660 : 477
        scale: pressed ? 0.8 : 1
        Behavior on scale {NumberAnimation{duration: 200;easing.type: Easing.Liner}}
        Behavior on x {NumberAnimation{duration: 300; easing.type: Easing.Linear}}
        icon_default: player.playbackState == MediaPlayer.PlayingState ?  "qrc:/asset/Image/pause.png" : "qrc:/asset/Image/play.png"
        icon_pressed: player.playbackState == MediaPlayer.PlayingState ?  "qrc:/asset/Image/hold-play.png" : "qrc:/asset/Image/hold-pause.png"
        icon_released: player.playbackState == MediaPlayer.PlayingState ?  "qrc:/asset/Image/play.png" : "qrc:/asset/Image/pause.png"
        onClicked: {
            switch(player.playbackState){
            case MediaPlayer.PlayingState: player.pause(); mediaModel.play_pause = "qrc:/asset/Image/play.png"; break;
            case MediaPlayer.PausedState: player.play(); mediaModel.play_pause = "qrc:/asset/Image/pause.png"; break;
            case MediaPlayer.StoppedState: player.play(); mediaModel.play_pause = "qrc:/asset/Image/pause.png"; break;
            }
        }
    }
    Connections{
        target: mediaModel
        function onSignal_play_pause(icon){
            play.source = icon
        }
    }

    ButtonControl {
        id: next
        width1: 70
        height1: 40
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        anchors.left: play.right
        x:10
        icon_default: "qrc:/asset/Image/next.png"
        icon_pressed: "qrc:/asset/Image/hold-next.png"
        icon_released: "qrc:/asset/Image/next.png"
        scale: pressed ? 0.8 : 1
        Behavior on scale {NumberAnimation{duration: 200;easing.type: Easing.Liner}}
        onClicked: {
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
            mediaModel.play_pause = "qrc:/asset/Image/pause.png"
        }
    }
    SwitchButton {
        id: repeater
        width1: 70
        height1: 40
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        x: 904
        icon_on: "qrc:/asset/Image/repeat1_hold.png"
        icon_off: "qrc:/asset/Image/repeat.png"
        scale: pressed ? 0.8 : 1
        Behavior on scale {NumberAnimation{duration: 200;easing.type: Easing.Liner}}
        status: 0

    }

    Component.onCompleted: {
        JS.dbInit()
        JS.readData()
        player.stop()

    }
    Component.onDestruction:{
        JS.storeData()
    }
}
