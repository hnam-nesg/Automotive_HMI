import QtQuick
import QtQuick3D
import QtQuick.Controls
import "./Model"

Rectangle {
    id: rectangle
    x: 0
    y: 0
    width: 1920
    height: 880
    color: "#000000"
    View3D {
        id: view3d
        anchors.fill: parent
        environment: SceneEnvironment {
            id: environment
            backgroundMode: SceneEnvironment.Color
            clearColor: "black"
            lightProbe: Texture {
                source: "qrc:/asset/EveningSkyHDRI018B_4K-HDR.exr"
            }
            antialiasingMode: SceneEnvironment.MSAA
        }
        Seat_Model {
            id: carModel
            scale: Qt.vector3d(3, 3, 3)
        }
        Slider {
            id: slide_driver_x;x: 778;y: 480;width: 200;height: 160;opacity: 0;rotation: 312.03;from:0;to:100;stepSize: 1;value: 50;property real lastValue: 0
            onPressedChanged: {
                lastValue = value
            }
            onValueChanged: {
                let dx = lastValue - value
                lastValue = value
                carModel.seay_backrest2.position = Qt.vector3d(
                            carModel.seay_backrest2.position.x,
                            carModel.seay_backrest2.position.y,
                            carModel.seay_backrest2.position.z + dx * 0.2
                            )
                carModel.seat_pocket2.position = Qt.vector3d(
                            carModel.seat_pocket2.position.x,
                            carModel.seat_pocket2.position.y,
                            carModel.seat_pocket2.position.z + dx * 0.2
                            )
                carModel.seat_base2.position = Qt.vector3d(
                            carModel.seat_base2.position.x,
                            carModel.seat_base2.position.y,
                            carModel.seat_base2.position.z + dx * 0.2
                            )
            }
        }
        Slider {
            id: slide_driver_y;from: -40;to: 0;stepSize: 1;x: 884;y: 288;width: 220;height: 150;opacity: 0;rotation: 90;property real lastValue: 0
            onPressedChanged: {
                lastValue = value
            }
            onValueChanged: {
                let dx = lastValue - value
                lastValue = value
                carModel.seay_backrest2.position = Qt.vector3d(
                            carModel.seay_backrest2.position.x,
                            carModel.seay_backrest2.position.y + dx * 0.2,
                            carModel.seay_backrest2.position.z
                            )
                carModel.seat_pocket2.position = Qt.vector3d(
                            carModel.seat_pocket2.position.x,
                            carModel.seat_pocket2.position.y + dx * 0.2,
                            carModel.seat_pocket2.position.z
                            )
                carModel.seat_base2.position = Qt.vector3d(
                            carModel.seat_base2.position.x,
                            carModel.seat_base2.position.y + dx * 0.2,
                            carModel.seat_base2.position.z
                            )
            }
        }
        Slider {
            id: slide_passenger_x;x: 638;y: 414;width: 150;height: 100;rotation: -39.472;opacity: 0;from: 0;to: 100;value: 50;property real lastValue: 0
            onPressedChanged: {
                lastValue = value
            }
            onValueChanged: {
                let dx = lastValue - value
                lastValue = value
                carModel.seay_backrest1.position = Qt.vector3d(
                            carModel.seay_backrest1.position.x,
                            carModel.seay_backrest1.position.y,
                            carModel.seay_backrest1.position.z + dx * 0.2
                            )
                carModel.seat_pocket1.position = Qt.vector3d(
                            carModel.seat_pocket1.position.x,
                            carModel.seat_pocket1.position.y,
                            carModel.seat_pocket1.position.z + dx * 0.2
                            )
                carModel.seat_base1.position = Qt.vector3d(
                            carModel.seat_base1.position.x,
                            carModel.seat_base1.position.y,
                            carModel.seat_base1.position.z + dx * 0.2
                            )
            }
        }

        Slider {
            id: slide_passenger_y;x: 690;y: 258;height: 100;rotation: 90;opacity: 0;from: -40;to: 0;property real lastValue: 0
            onPressedChanged: {
                lastValue = value
            }
            onValueChanged: {
                let dx = lastValue - value
                lastValue = value
                carModel.seay_backrest1.position = Qt.vector3d(
                            carModel.seay_backrest1.position.x,
                            carModel.seay_backrest1.position.y + dx * 0.2,
                            carModel.seay_backrest1.position.z
                            )
                carModel.seat_pocket1.position = Qt.vector3d(
                            carModel.seat_pocket1.position.x,
                            carModel.seat_pocket1.position.y + dx * 0.2,
                            carModel.seat_pocket1.position.z
                            )
                carModel.seat_base1.position = Qt.vector3d(
                            carModel.seat_base1.position.x,
                            carModel.seat_base1.position.y + dx * 0.2,
                            carModel.seat_base1.position.z
                            )
            }
        }
        Image {
            id: image_fan_max
            x: 1723
            y: 148
            width: 50
            height: 50
            source: "qrc:/asset/Image/maxfan.png"
            opacity: level_fan.pressed ? 0.8 : 0.05
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: image_fan_min
            x: 1723
            y: 555
            width: 50
            height: 50
            source: "qrc:/asset/Image/minfan.png"
            opacity: level_fan.pressed ? 0.8 : 0.05
            fillMode: Image.PreserveAspectFit
        }
        Text {
            id: text_level_fan
            x: 1760
            y: 478 - level_fan.value*3
            width: 70
            height: 50
            color: "#d3c9c9"
            text: level_fan.value
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            clip: true
            font.family: "Verdana"
            font.styleName: "Bold Italic"
            visible: level_fan.pressed
        }

        Slider {
            id: level_fan
            x: 1598
            y: 348
            width: 300
            height: 60
            value: 0
            stepSize: 1
            to: 100
            rotation: 270
            opacity: pressed ? 0.8 : 0.05
        }
    }
    Item {
        id: item1
        x: 210
        y: 650
        width: 1500
        height: 200
        property int temp_driver: 22
        property int temp_passenger: 20
        Text {
            id: temp_driver
            x: 150
            y: 40
            width: 200
            height: 60
            color: "#ffffff"
            text: item1.temp_driver + "ºC"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Verdana"
            font.styleName: "Bold Italic"
        }

        Text {
            id: driver
            x: 150
            y: 100
            width: 200
            height: 60
            color: "#ffffff"
            text: qsTr("Driver")
            font.pixelSize: 35
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.styleName: "Bold Italic"
            font.family: "Verdana"
        }

        Timer {
            id: repeatTimer
            interval: 100
            repeat: true
            running: false
            onTriggered: {
                if(button_passenger_up.pressed && item1.temp_passenger !== 30) item1.temp_passenger += 1
                else if (button_passenger_down.pressed && item1.temp_passenger !== 14) item1.temp_passenger -= 1
                else if (button_driver_up.pressed && item1.temp_driver !== 30) item1.temp_driver += 1
                else if (button_driver_down.pressed && item1.temp_driver !== 14) item1.temp_driver -= 1
            }
        }

        Image {
            id: image_driver_up
            x: 350
            y: 50
            width: 50
            height: 50
            source: button_driver_up.pressed ? "qrc:/asset/Image/ico_arrow_u_p.png" : "qrc:/asset/Image/ico_arrow_u_n.png"
            fillMode: Image.PreserveAspectFit

            Button {
                id: button_driver_up
                opacity: 0
                anchors.fill: parent
                checkable: true
                onPressed: {
                    repeatTimer.start()
                }
                onReleased: {
                    repeatTimer.stop()
                }
            }
        }

        Image {
            id: image_driver_down
            x: 350
            y: 100
            width: 50
            height: 50
            source: button_driver_down.pressed ? "qrc:/asset/Image/ico_arrow_d_p.png" : "qrc:/asset/Image/ico_arrow_d_n.png"
            fillMode: Image.PreserveAspectFit

            Button {
                id: button_driver_down
                opacity: 0
                anchors.fill: parent
                onPressed: {
                    repeatTimer.start()
                }
                onReleased: {
                    repeatTimer.stop()
                }
            }
        }

        Text {
            id: temp_passenger
            x: 1100
            y: 40
            width: 270
            height: 60
            color: "#ffffff"
            text: item1.temp_passenger + "ºC"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.styleName: "Bold Italic"
            font.family: "Verdana"
        }

        Text {
            id: passenger
            x: 1100
            y: 100
            width: 270
            height: 60
            color: "#ffffff"
            text: qsTr("Passenger")
            font.pixelSize: 35
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.styleName: "Bold Italic"
            font.family: "Verdana"
        }

        Image {
            id: image_passenger_up
            x: 1050
            y: 50
            width: 50
            height: 50
            source: button_passenger_up.pressed ? "qrc:/asset/Image/ico_arrow_u_p.png" : "qrc:/asset/Image/ico_arrow_u_n.png"
            fillMode: Image.PreserveAspectFit

            Button {
                id: button_passenger_up
                opacity: 0
                anchors.fill: parent
                checkable: true
                onPressed: {
                    repeatTimer.start()
                }
                onReleased: {
                    repeatTimer.stop()
                }
            }
        }

        Image {
            id: image_passenger_down
            x: 1050
            y: 100
            width: 50
            height: 50
            source: button_passenger_down.pressed ? "qrc:/asset/Image/ico_arrow_d_p.png" : "qrc:/asset/Image/ico_arrow_d_n.png"
            fillMode: Image.PreserveAspectFit

            Button {
                id: button_passenger_down
                opacity: 0
                anchors.fill: parent
                checkable: true
                onPressed: {
                    repeatTimer.start()
                }
                onReleased: {
                    repeatTimer.stop()
                }
            }
        }

        Text {
            id: text5
            x: 600
            y: 25
            width: 300
            height: 150
            color: "#ffffff"
            text: "Auto\nClimate"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.styleName: "Bold Italic"
            font.family: "Verdana"
            scale: button_auto.pressed ? 0.8 : 1
            Behavior on scale{NumberAnimation{duration: 200; easing.type: Easing.InOutQuad}}

            Button {
                id: button_auto
                opacity: 0
                anchors.fill: parent
                checkable: true
            }
        }
    }

}
