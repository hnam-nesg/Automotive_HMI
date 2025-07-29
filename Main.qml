import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import QtQuick3D
import QtMultimedia
import "./QML/Media"
import "./QML/Model"
import "./QML"
Window{
    id:root
    width: 1920
    height: 1080
    visible: true
    visibility: Window.FullScreen
    title: qsTr("DashBoard")

    property var activeCamera: carModel.activeCamera8
    property var view_name: ["View_Rear","View_FR","View_RR","View_RL","View_FL","View_Front"]

    property bool light_door: false
    property bool seat: false
    property bool music: false

    Rectangle{
        id: modelCar
        height: parent.height
        width: parent.width
        color:"gray"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        View3D {
            id: view3d
            anchors.fill: parent
            environment: SceneEnvironment {
                id: environment
                backgroundMode: SceneEnvironment.SkyBox
                clearColor: "transparent"
                lightProbe: Texture {
                    source: button_dayNight.checked ? "qrc:/asset/EveningSkyHDRI018B_4K-HDR.exr" : "qrc:/asset/sunflowers_puresky_4k.hdr"
                }
                antialiasingMode: SceneEnvironment.MSAA
                //antialiasingQuality: SceneEnvironment.AntialiasingHigh
            }
            Parking {
                id: carModel
                scale: Qt.vector3d(3, 3, 3)
            }
            // MouseArea {
            //     id: view3dmouse
            //     anchors.fill: parent
            //     property real lastX: 0
            //     onPressed: {
            //         lastX = mouse.x
            //     }
            //     onPositionChanged: {
            //         let dx = mouse.x - lastX
            //         lastX = mouse.x
            //         carModel.rootNode.eulerRotation = Qt.vector3d(
            //             carModel.rootNode.eulerRotation.x,
            //             carModel.rootNode.eulerRotation.y,
            //             carModel.rootNode.eulerRotation.z + dx * 0.5
            //         )
            //     }
            // }

            camera: root.activeCamera
            states: [
                State {
                    name: "View_FL"
                    PropertyChanges {
                        target: root.activeCamera
                        position.x: carModel.activeCamera1.position.x
                        position.y: carModel.activeCamera1.position.y
                        position.z: carModel.activeCamera1.position.z
                        eulerRotation.x: carModel.activeCamera1.eulerRotation.x
                        eulerRotation.y: carModel.activeCamera1.eulerRotation.y
                        eulerRotation.z: carModel.activeCamera1.eulerRotation.z
                    }
                },
                State {
                    name: "View_RL"
                    PropertyChanges {
                        target: root.activeCamera
                        position.x: carModel.activeCamera2.position.x
                        position.y: carModel.activeCamera2.position.y
                        position.z: carModel.activeCamera2.position.z
                        eulerRotation.x: carModel.activeCamera2.eulerRotation.x
                        eulerRotation.y: carModel.activeCamera2.eulerRotation.y
                        eulerRotation.z: carModel.activeCamera2.eulerRotation.z
                    }
                },
                State {
                    name: "View_FR"
                    PropertyChanges {
                        target: root.activeCamera
                        position.x: carModel.activeCamera3.position.x
                        position.y: carModel.activeCamera3.position.y
                        position.z: carModel.activeCamera3.position.z
                        eulerRotation.x: carModel.activeCamera3.eulerRotation.x
                        eulerRotation.y: carModel.activeCamera3.eulerRotation.y
                        eulerRotation.z: carModel.activeCamera3.eulerRotation.z
                    }
                },
                State {
                    name: "View_RR"
                    PropertyChanges {
                        target: root.activeCamera
                        position.x: carModel.activeCamera4.position.x
                        position.y: carModel.activeCamera4.position.y
                        position.z: carModel.activeCamera4.position.z
                        eulerRotation.x: carModel.activeCamera4.eulerRotation.x
                        eulerRotation.y: carModel.activeCamera4.eulerRotation.y
                        eulerRotation.z: carModel.activeCamera4.eulerRotation.z
                    }
                },
                State {
                    name: "View_Front"
                    PropertyChanges {
                        target: root.activeCamera
                        position.x: carModel.activeCamera5.position.x
                        position.y: carModel.activeCamera5.position.y
                        position.z: carModel.activeCamera5.position.z
                        eulerRotation.x: carModel.activeCamera5.eulerRotation.x
                        eulerRotation.y: carModel.activeCamera5.eulerRotation.y
                        eulerRotation.z: carModel.activeCamera5.eulerRotation.z
                    }
                },
                State {
                    name: "View_Rear"
                    PropertyChanges {
                        target: root.activeCamera
                        position.x: carModel.activeCamera6.position.x
                        position.y: carModel.activeCamera6.position.y
                        position.z: carModel.activeCamera6.position.z
                        eulerRotation.x: carModel.activeCamera6.eulerRotation.x
                        eulerRotation.y: carModel.activeCamera6.eulerRotation.y
                        eulerRotation.z: carModel.activeCamera6.eulerRotation.z
                    }
                }
            ]
            transitions: [
                Transition {
                    from: "*"
                    to: "*"
                    ParallelAnimation {
                        NumberAnimation { properties: "position.x, position.y, position.z"; duration: 1000; easing.type: Easing.InOutQuad }
                        NumberAnimation { properties: "eulerRotation.x, eulerRotation.y, eulerRotation.z"; duration: 1000; easing.type: Easing.InOutQuad }
                    }
                }
            ]
        }

        Rectangle {
            id: rect_music;x: ["View_FL", "View_RR", "View_Front"].includes(view3d.state) ? 1408 : 171;y: 80;width: 341;height: 650;color: "#18bbe4e3";radius: 20;border.width: 0
            Behavior on x{NumberAnimation{duration: 1000;easing.type: Easing.InOutQuad}}
            Image {
                id: image_music;x: 33;y: 56;width: 275;height: 276;opacity: 0.8;source: "qrc:/asset/Image/fa8e2e6b824623c57f657a368de26d54.jpg";fillMode: Image.PreserveAspectFit
                scale: button_music.pressed ? 0.8 : 1
                Behavior on scale{NumberAnimation{duration:200;easing.type: Easing.InOutQuad}}
                Button {
                    id: button_music
                    opacity: 0
                    anchors.fill: parent
                    checked: false
                    checkable: true
                    enabled: true
                    onCheckedChanged:{
                        button_home.checked = true
                        root.music = true
                        root.light_door = false
                        root.seat = false
                    }
                }
            }
            Item{
                x: 0
                y: 496
                width: 341
                height: 154
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                ButtonControl {
                    id: button_next;x: 217;y: 20;width1: 80;height1: 80;opacity: 0.9
                    icon_default: "qrc:/asset/Image/next.png"
                    icon_pressed: "qrc:/asset/Image/hold-next.png"
                    icon_released: "qrc:/asset/Image/next.png"
                    scale: pressed ? 0.8 : 1
                    Behavior on scale {NumberAnimation{duration: 200;easing.type: Easing.Liner}}
                    onClicked: {
                        if (media_settings.shuffer.status===1) {
                            var newIndex = Math.floor(Math.random() * media_settings.mediaPlaylist.count)
                            while (newIndex === media_settings.mediaPlaylist.currentIndex) {
                                newIndex = Math.floor(Math.random() * media_settings.mediaPlaylist.count)
                            }
                            media_settings.mediaPlaylist.currentIndex = newIndex
                        }
                        else if(media_settings.mediaPlaylist.currentIndex >=0 && media_settings.mediaPlaylist.currentIndex < media_settings.mediaPlaylist.model.count - 1){
                            media_settings.mediaPlaylist.currentIndex +=1
                        }
                        else if (media_settings.mediaPlaylist.currentIndex === media_settings.mediaPlaylist.model.count - 1){
                            media_settings.mediaPlaylist.currentIndex = 0
                        }
                        button_play.source = "qrc:/asset/Image/pause.png"
                    }
                }
                ButtonControl {
                    id: button_prev;x: 45;y: 20;width1: 80;height1: 80;opacity: 0.9
                    icon_default: "qrc:/asset/Image/prev.png"
                    icon_pressed: "qrc:/asset/Image/hold-prev.png"
                    icon_released: "qrc:/asset/Image/prev.png"
                    scale: pressed ? 0.8 : 1
                    Behavior on scale {NumberAnimation{duration: 200;easing.type: Easing.Liner}}
                    onClicked: {
                        //media_settings.player.playlist.previous()
                        if (media_settings.shuffer.status===1) {
                            var newIndex = Math.floor(Math.random() * media_settings.mediaPlaylist.count)
                            while (newIndex === media_settings.mediaPlaylist.currentIndex) {
                                newIndex = Math.floor(Math.random() * media_settings.mediaPlaylist.count)
                            }
                            media_settings.mediaPlaylist.currentIndex = newIndex
                        }
                        else if(media_settings.mediaPlaylist.currentIndex >0 && media_settings.mediaPlaylist.currentIndex <= media_settings.mediaPlaylist.model.count - 1){
                            media_settings.mediaPlaylist.currentIndex -= 1
                        }
                        else if (media_settings.mediaPlaylist.currentIndex === 0){
                            media_settings.mediaPlaylist.currentIndex = media_settings.mediaPlaylist.model.count - 1
                        }
                        button_play.source = "qrc:/asset/Image/pause.png"
                    }
                }
                ButtonControl {
                    id: button_play;x: 131;y: 20;width1: 80;height1: 80;opacity: 0.9
                    scale: pressed ? 0.8 : 1
                    Behavior on scale {NumberAnimation{duration: 200;easing.type: Easing.Liner}}
                    icon_default: media_settings.player.playbackState == media_settings.MediaPlayer.PlayingState ?  "qrc:/asset/Image/pause.png" : "qrc:/asset/Image/play.png"
                    icon_pressed: media_settings.player.playbackState == media_settings.MediaPlayer.PlayingState ?  "qrc:/asset/Image/hold-play.png" : "qrc:/asset/Image/hold-pause.png"
                    icon_released: media_settings.player.playbackState == media_settings.MediaPlayer.PlayingState ?  "qrc:/asset/Image/play.png" : "qrc:/asset/Image/pause.png"
                    onClicked: {
                        switch(media_settings.player.playbackState){
                        case media_settings.MediaPlayer.PlayingState: media_settings.player.pause(); mediaModel.play_pause = "qrc:/asset/Image/play.png"; break;
                        case media_settings.MediaPlayer.PausedState: media_settings.player.play(); mediaModel.play_pause = "qrc:/asset/Image/pause.png"; break;
                        case media_settings.MediaPlayer.StoppedState: media_settings.player.play(); mediaModel.play_pause = "qrc:/asset/Image/pause.png"; break;
                        }
                    }
                }
            }

            // Image {
            //     id: image_empty_progress;x: 21;y: 460;width: 300;height: 20;source: "qrc:/asset/Image/progress_bar_bg.png"
            //     fillMode: Image.PreserveAspectFit

            //     Image {
            //         id: image_full_progress;x: 0;y: 0;width: 200;height: 20;source: "qrc:/asset/Image/progress_bar.png"
            //         fillMode: Image.PreserveAspectFit

            //         ProgressBar {
            //             id: progressBar
            //             opacity: 0
            //             value: 0.5
            //             anchors.fill: parent
            //         }

            //         Image {
            //             id: image_point;x: 194;width: 15;height: 20;anchors.verticalCenter: parent.verticalCenter;source: "qrc:/asset/Image/point.png"
            //             anchors.verticalCenterOffset: 0
            //             fillMode: Image.PreserveAspectFit

            //             Image {
            //                 id: image_center_ponit;visible: true;anchors.fill: parent;source: "qrc:/asset/Image/center_point.png";fillMode: Image.PreserveAspectFit
            //             }
            //         }
            //     }
            // }
            Slider{
                id: progressBar
                x: 21
                y: 460
                width: 300
                enabled: media_settings.player.seekable
                value: media_settings.player.duration > 0 ? media_settings.player.position / media_settings.player.duration : 0
                background: Rectangle {
                    x: progressBar.leftPadding
                    y: progressBar.topPadding + progressBar.availableHeight / 2 - height / 2
                    implicitWidth: 200
                    implicitHeight: 2
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
                    width: 16; height: 16
                    anchors.verticalCenter: parent.verticalCenter
                    x: progressBar.leftPadding + progressBar.visualPosition * (progressBar.availableWidth - width)
                    y: progressBar.topPadding + progressBar.availableHeight / 2 - height / 2
                    source: "qrc:/asset/Image/point.png"
                    Image {
                        anchors.centerIn: parent;width: 12; height: 12
                        //anchors.fill: parent
                        source: "qrc:/asset/Image/center_point.png"
                    }
                }
                onMoved: {
                    media_settings.player.position = media_settings.player.duration * progressBar.position
                }
            }

            Rectangle{
                id: textFrame_singer
                width: 200
                height: 50
                x: 133
                y: 406
                color: "transparent"
                clip: true
                Item{
                    id: marqueeGroup1
                    width: singer_name1.width+textFrame_singer.width/2
                    height: singer_name1.height
                    y: (textFrame_singer.height - height) / 2
                    x: animX
                    Text {
                        id: singer_name1
                        color: "#ffffff"
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("Bray")
                        font.pixelSize: 20
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        styleColor: "#ffffff"
                        font.styleName: "Bold Italic"
                        font.family: "Verdana"
                    }
                    Text {
                        id: singer_name2
                        color: "#ffffff"
                        anchors.verticalCenter: parent.verticalCenter
                        text: singer_name1.text
                        font.pixelSize: 20
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        styleColor: "#ffffff"
                        font.styleName: "Bold Italic"
                        font.family: "Verdana"
                        x: singer_name1.width+textFrame_singer.width/2
                    }
                    NumberAnimation on x {
                        id: marqueeAnim1
                        from: 0
                        to: -(singer_name1.width+textFrame_singer.width/2)
                        duration: 5000
                        loops: Animation.Infinite
                        running: true
                    }
                    property real animX: 0
                }
            }

            Rectangle{
                id: textFrame
                width: 300
                height: 36
                x: 21
                y: 364
                color: "transparent"
                clip: true
                Item{
                    id: marqueeGroup
                    width: song_title1.width+textFrame.width/2
                    height: song_title1.height
                    y: (textFrame.height - height) / 2
                    x: animX
                    Text {
                        id: song_title1
                        anchors.verticalCenter: parent.verticalCenter
                        color: "#ffffff"
                        text: qsTr("Album Cho Bảo")
                        font.pixelSize: 25
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        font.styleName: "Bold Italic"
                        font.family: "Verdana"
                    }
                    Text {
                        id: song_title2
                        anchors.verticalCenter: parent.verticalCenter
                        color: "#ffffff"
                        text: song_title1.text
                        font.pixelSize: 25
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        font.styleName: "Bold Italic"
                        font.family: "Verdana"
                        x: song_title1.width+textFrame.width/2
                    }
                    NumberAnimation on x {
                        id: marqueeAnim
                        from: 0
                        to: -(song_title1.width+textFrame.width/2)
                        duration: 5000
                        loops: Animation.Infinite
                        running: true
                    }
                    property real animX: 0
                }
            }
        }

        Rectangle {
            id: rect_setting;x: ["View_FL", "View_RR", "View_Front"].includes(view3d.state) ? 1408 : 171;y: 748;width: 341;height: 202
            color: "#18bbe4e3";radius: 20;border.width: 0
            Behavior on x{NumberAnimation{duration: 1000;easing.type: Easing.InOutQuad}}
            Text {
                id: temp
                x: 229
                y: 146
                width: 112
                height: 56
                color: "#ffffff"
                text: "24ºC"
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.styleName: "Bold Italic"
                font.italic: false
                font.weight: Font.Normal
                font.underline: false
                font.bold: true
                font.family: "Verdana"
            }

            Text {
                id: nation
                x: 161
                y: 102
                width: 158
                height: 62
                color: "#ffffff"
                text: "VietNam"
                font.pixelSize: 30
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.styleName: "Bold Italic"
                font.weight: Font.Normal
                font.underline: false
                font.italic: false
                font.family: "Verdana"
                font.bold: true
            }

            Image {
                id: image_location
                x: 127
                y: 116
                width: 42
                height: 34
                source: "qrc:/asset/Image/icons8-location-50.png"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: day_info
                x: 0
                y: 18
                width: 219
                height: 56
                color: "#ffffff"
                text: Qt.formatTime(new Date(), "h:mm") + " " + Qt.formatDate(new Date(), "dddd")
                font.letterSpacing: 0
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.wordSpacing: -3
                font.styleName: "Bold Italic"
                font.family: "Verdana"
            }
            Timer {
                interval: 1000
                running: true
                repeat: true
                onTriggered: {
                    day_info.text = Qt.formatTime(new Date(), "h:mm") + " " + Qt.formatDate(new Date(), "dddd")
                }
            }

            Rectangle {
                id: rect_daynight; x: 225; y: 12; width: 100; height: 100; color: "#18bbe4e3"; radius: 20; border.width: 0
                scale: button_dayNight.pressed ? 0.8 : 1
                Behavior on scale { NumberAnimation { duration: 100; easing.type: Easing.InOutQuad } }

                Image {
                    id: image_daynight;width: 80;height: 80;source: button_dayNight.checked ? "qrc:/asset/Image/moon.png" : "qrc:/asset/Image/sun.png";anchors.centerIn: parent
                    fillMode: Image.PreserveAspectFit
                }

                Button {
                    id: button_dayNight;opacity: 0;checkable: true;enabled: true;anchors.fill: parent
                }
            }

            Rectangle {
                id: rect_home; x: 15; y: 83; width: 100; height: 100; color: "#18bbe4e3"; radius: 20; border.width: 0
                scale: button_home.pressed ? 0.8 : 1
                Behavior on scale { NumberAnimation { duration: 100; easing.type: Easing.InOutQuad } }
                Button {
                    id: button_home; x: 163; y: 0; opacity: 0; visible: true; anchors.fill: parent
                    checkable: true; antialiasing: true
                }

                Image {
                    id: image_home
                    width: 75
                    height: 75
                    source: "qrc:/asset/Image/icons8-home-50.png"
                    anchors.verticalCenterOffset: 1
                    anchors.horizontalCenterOffset: 1
                    anchors.centerIn: parent
                    fillMode: Image.PreserveAspectFit                   
                }
            }
        }

        Rectangle {
            id: rect_switch_view; x: ["View_FL", "View_RR", "View_Front"].includes(view3d.state) ? 36 : 1676; y: 24; width: 208; height: 100; color: "#18bbe4e3"; radius: 20; border.width: 0
            scale: button_switch_view.pressed ? 0.8 : 1
            Behavior on scale { NumberAnimation { duration: 100; easing.type: Easing.InOutQuad } }
            Behavior on x{NumberAnimation{duration: 1000;easing.type: Easing.InOutQuad}}
            Button {
                property int currentIndex: 0
                id: button_switch_view; x: 163; y: 186; opacity: 0; visible: true; anchors.fill: parent
                highlighted: false; focus: true; checked: true; checkable: true; antialiasing: true
                onCheckedChanged:{
                    view3d.state = root.view_name[currentIndex]
                    currentIndex = (currentIndex+1) % 6
                }
            }

            Image {
                id: image_switch_view
                anchors.fill: parent
                source: "qrc:/asset/Image/mercedes.png"
                fillMode: Image.PreserveAspectFit

            }
        }
        Car_Door_Light {
            id: door_light_settings
            x: 0;y: 0
            width: 1920
            height: 880
            visible: button_home.checked && root.light_door

        }

        Seat_Climate{
            id: seat_climate_settings
            width: 1920
            height: 880
            visible: button_home.checked && root.seat
        }

        BottomBar {
            id: bottom_bar
            x: 0;y: 880
            width: 1920
            height: 200
            visible: button_home.checked
        }
        Rectangle{
            width: 1920
            height: 880
            color: "black"
            visible: button_home.checked && root.music
            Media{
                id: media_settings
                anchors.centerIn: parent
                visible: button_home.checked && root.music
            }
        }
    }
    Connections{
        target: bar
        function onSignal_view3d(mode){
            media_settings.drawer.visible = false
            button_home.checked = mode
        }
        function onSignal_light_door(mode){
            media_settings.drawer.visible = false
            root.light_door = mode
            root.seat = !mode
            root.music = !mode
        }
        function onSignal_seat(mode){
            media_settings.drawer.visible = false
            root.seat = mode
            root.light_door = !mode
            root.music = !mode
        }
        function onSignal_media(mode){
            root.music = mode
            root.seat = !mode
            root.light_door = !mode
        }
    }
    Connections{
        target: mediaModel
        function onPlayerChangedTitle(title){
            song_title1.text = title
        }
        function onPlayerChangedIcon(icon){
            image_music.source = icon
        }
        function onPlayerChangedSinger(singer){
            singer_name1.text = singer
        }
        function onSignal_play_pause(icon){
            button_play.source = icon
        }
    }
}

