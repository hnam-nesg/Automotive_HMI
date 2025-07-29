import QtQuick
import QtQuick.Controls


Rectangle {
    id: rectangle
    x: 0
    y: 880
    width: 1920
    height: 200
    color: "#1e1e1e"
    border.color: "#000000"

    property alias view3d_mouse: view3d_mouse
    property alias light_door_mouse: light_door_mouse
    property alias seat_mouse: seat_mouse

    Rectangle {
        id: rect_view3d
        x: 310
        y: 0
        width: 100
        height: 100
        color: "#00ffffff"
        radius: 20
        scale: view3d_mouse.pressed ? 0.8 : 1
        Behavior on scale{NumberAnimation{duration: 200; easing.type: Easing.InOutQuad}}
        Image {
            id: image_view3d
            width: 50
            height: 50
            source: "qrc:/asset/Image/icons8-3d-touch-50 (1).png"
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: view3d_mouse
            anchors.fill: parent
            onClicked: {
                bar.view3d = false
            }
        }
    }

    Rectangle {
        id: rect_light_door
        x: 610
        y: 0
        width: 100
        height: 100
        color: "#00ffffff"
        radius: 20
        scale: light_door_mouse.pressed ? 0.8 : 1
        Behavior on scale{NumberAnimation{duration: 200; easing.type: Easing.InOutQuad}}
        Image {
            id: image_light_door
            width: 50
            height: 50
            source: "qrc:/asset/Image/icons8-car-50.png"
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: light_door_mouse
            anchors.fill: parent
            onClicked: {
                bar.view_light_door = true
            }
        }
    }

    Rectangle {
        id: rect_seat
        x: 910
        y: 0
        width: 100
        height: 100
        color: "#00ffffff"
        radius: 20
        scale: seat_mouse.pressed ? 0.8 : 1
        Behavior on scale{NumberAnimation{duration: 200; easing.type: Easing.InOutQuad}}
        Image {
            id: image_seat
            width: 50
            height: 50
            source: "qrc:/asset/Image/icons8-seat-50.png"
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: seat_mouse
            anchors.fill: parent
            onClicked: {
                bar.view_seat = true
            }
        }
    }

    Rectangle {
        id: rect_navigation
        x: 1210
        y: 0
        width: 100
        height: 100
        color: "#00ffffff"
        radius: 20
        scale: navigation_mouse.pressed ? 0.8 : 1
        Behavior on scale{NumberAnimation{duration: 200; easing.type: Easing.InOutQuad}}
        Image {
            id: image_navigation
            width: 50
            height: 50
            source: "qrc:/asset/Image/icons8-navigation-50.png"
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: navigation_mouse
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rect_other
        x: 1510
        y: 0
        width: 100
        height: 100
        color: "#00ffffff"
        radius: 20
        scale: other_mouse.pressed ? 0.8 : 1
        Behavior on scale{NumberAnimation{duration: 200; easing.type: Easing.InOutQuad}}
        Image {
            id: image_other
            width: 50
            height: 50
            source: "qrc:/asset/Image/icons8-circled-menu-50.png"
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: other_mouse
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rect_settings
        x: 310
        y: 100
        width: 100
        height: 100
        color: "#00ffffff"
        radius: 20
        scale: settings_mouse.pressed ? 0.8 : 1
        Behavior on scale{NumberAnimation{duration: 200; easing.type: Easing.InOutQuad}}
        Image {
            id: image_settings
            width: 50
            height: 50
            source: "qrc:/asset/Image/icons8-settings-50 (1).png"
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: settings_mouse
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rect_music
        x: 610
        y: 100
        width: 100
        height: 100
        color: "#00ffffff"
        radius: 20
        scale: music_mouse.pressed ? 0.8 : 1
        Behavior on scale{NumberAnimation{duration: 200; easing.type: Easing.InOutQuad}}
        Image {
            id: image_music
            width: 50
            height: 50
            source: "qrc:/asset/Image/icons8-airpods-pro-max-50.png"
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: music_mouse
            anchors.fill: parent
            onClicked:{
                bar.view_media = true
            }
        }
    }

    Rectangle {
        id: rect_message
        x: 1210
        y: 100
        width: 100
        height: 100
        color: "#00ffffff"
        radius: 20
        scale: messgae_mouse.pressed ? 0.8 : 1
        Behavior on scale{NumberAnimation{duration: 200; easing.type: Easing.InOutQuad}}
        Image {
            id: image_message
            width: 50
            height: 50
            source: "qrc:/asset/Image/icons8-chat-bubble-50.png"
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: messgae_mouse
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rect_phone
        x: 910
        y: 100
        width: 100
        height: 100
        color: "#00ffffff"
        radius: 20
        scale: phone_mouse.pressed ? 0.8 : 1
        Behavior on scale{NumberAnimation{duration: 200; easing.type: Easing.InOutQuad}}
        Image {
            id: image_phone
            width: 50
            height: 50
            source: "qrc:/asset/Image/icons8-call-50.png"
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: phone_mouse
            anchors.fill: parent
        }
    }

    Rectangle {
        id: rectangle15
        x: 1510
        y: 100
        width: 100
        height: 100
        color: "#00ffffff"
        radius: 20
        scale: light_door_mouse.pressed ? 0.8 : 1
        Behavior on scale{NumberAnimation{duration: 200; easing.type: Easing.InOutQuad}}
        Image {
            id: image22
            width: 50
            height: 50
            source: "qrc:/asset/Image/icons8-3d-touch-50 (1).png"
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }
}
