import QtQuick
import QtQuick.Controls
import QtQuick3D
import "./Model"

Rectangle {
    id: rectangle
    width: 1920
    height: 880
    color: "#000000"
    View3D {
        id: view3d
        anchors.fill: parent
        environment: SceneEnvironment {
            id: environment
            backgroundMode: SceneEnvironment.SkyBox
            clearColor: "transparent"
            lightProbe: Texture {
                source: "qrc:/asset/sunflowers_puresky_4k.hdr"
            }
            antialiasingMode: SceneEnvironment.MSAA
        }
        Mercedes {
            id: carModel
            scale: Qt.vector3d(3, 3, 3)
        }

        Image {
            id: image_glassFL_down
            x: 494
            y: 420
            width: 100
            height: 40
            source: button_FLdown.pressed ? "qrc:/asset/Image/ico_arrow_d_p.png" : "qrc:/asset/Image/ico_arrow_d_n.png"
            fillMode: Image.PreserveAspectFit
            Button {
                id: button_FLdown
                opacity: 0
                anchors.fill: parent
                checkable: true
                enabled: true
                onCheckedChanged:{
                    door.choice_glass(0, true)
                }
            }
        }

        Button {
            id: button_trunk
            x: 863
            y: 709
            width: 194
            height: 56
            opacity: 0
            checkable: true
            enabled: true
            onCheckedChanged:{
                door.choice_door(5, checked)
            }
        }

        Button {
            id: button_RL
            x: checked ? 770 : 836
            y: checked ? 471 : 497
            width: 39
            height: 135
            opacity: 0
            checkable: true
            enabled: true
            rotation: checked ? 0 : 47
            onCheckedChanged:{
                door.choice_door(2, checked)
            }

        }

        Button {
            id: button_FL
            x: checked ? 763 : 836
            y: checked ? 345 : 374
            width: 40
            height: 117
            opacity: 0
            checkable: true
            enabled: true
            rotation: checked ? 0 : 42
            onCheckedChanged:{
                door.choice_door(0, checked)
            }
        }

        Button {
            id: button_FR
            x: checked ? 1113 : 1047
            y: checked ? 339 : 365
            width: 40
            height: 117
            opacity: 0
            checkable: true
            enabled: true
            rotation: checked ? 0 : -44
            onCheckedChanged:{
                door.choice_door(1, checked)
            }
        }

        Button {
            id: button_RR
            x: checked ? 1110 : 1048
            y: checked ? 483 : 497
            width: 39
            height: 135
            opacity: 0
            checkable: true
            enabled: true
            rotation: checked ? 0 : -46
            onCheckedChanged:{
                door.choice_door(3, checked)
            }
        }

        Button {
            id: button_Hood
            x: 847
            y: 164
            width: 226
            height: 132
            opacity: 0
            checkable: true
            enabled: true
            onCheckedChanged:{
                door.choice_door(4, checked)
            }
        }

        Image {
            id: image_glassFL_up
            x: 494
            y: 374
            width: 100
            height: 40
            source: button_FLup.pressed ? "qrc:/asset/Image/ico_arrow_u_p.png" : "qrc:/asset/Image/ico_arrow_u_n.png"
            fillMode: Image.PreserveAspectFit

            Button {
                id: button_FLup
                opacity: 0
                anchors.fill: parent
                checkable: true
                enabled: true
                onCheckedChanged:{
                    door.choice_glass(0, false)
                }
            }
        }

        Warning_button {
            id: image_brakehand
            x: 128
            y: 31
            roundIcon: true
            iconWidth: 75
            iconHeight: 75
            checkable: true
            setIcon: "qrc:/asset/Image/icons/icons-left-checked/mdi_car-handbrake.svg"
            SequentialAnimation {
                running: image_brakehand.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: image_brakehand.roundIcon ? image_brakehand.roundIconSource : image_brakehand.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: image_brakehand.roundIcon ? image_brakehand.roundIconSource : image_brakehand.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
            //fillMode: Image.PreserveAspectFit
        }

        Warning_button {
            id: image_engine
            x: 128
            y: 144
            roundIcon: true
            iconWidth: 75
            iconHeight: 75
            checkable: true
            setIcon: "qrc:/asset/Image/icons/icons-left-checked/ph_engine-bold.svg"
            //fillMode: Image.PreserveAspectFit
            SequentialAnimation {
                running: image_engine.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: image_engine.roundIcon ? image_engine.roundIconSource : image_engine.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: image_engine.roundIcon ? image_engine.roundIconSource : image_engine.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
        }

        Warning_button {
            id: image_oil
            x: 128
            y: 257
            roundIcon: true
            iconWidth: 75
            iconHeight: 75
            checkable: true
            setIcon: "qrc:/asset/Image/icons/icons-left-checked/mdi_oil.svg"
            //fillMode: Image.PreserveAspectFit
            SequentialAnimation {
                running: image_oil.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: image_oil.roundIcon ? image_oil.roundIconSource : image_oil.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: image_oil.roundIcon ? image_oil.roundIconSource : image_oil.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
        }

        Warning_button {
            id: image_parking
            x: 128
            y: 365
            roundIcon: true
            iconWidth: 75
            iconHeight: 75
            checkable: true
            setIcon: "qrc:/asset/Image/icons/icons-right-checked/mdi_car-brake-parking.svg"
            //fillMode: Image.PreserveAspectFit
            SequentialAnimation {
                running: image_parking.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: image_parking.roundIcon ? image_parking.roundIconSource : image_parking.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: image_parking.roundIcon ? image_parking.roundIconSource : image_parking.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
        }

        Warning_button {
            id: image_seatbelt
            x: 128
            y: 486
            roundIcon: true
            iconWidth: 75
            iconHeight: 75
            checkable: true
            setIcon: "qrc:/asset/Image/icons/icons-right-checked/mdi_seatbelt.svg"
            //fillMode: Image.PreserveAspectFit
            SequentialAnimation {
                running: image_seatbelt.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: image_seatbelt.roundIcon ? image_seatbelt.roundIconSource : image_seatbelt.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: image_seatbelt.roundIcon ? image_seatbelt.roundIconSource : image_seatbelt.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
        }

        Warning_button {
            id: image_battery
            x: 128
            y: 596
            roundIcon: true
            iconWidth: 75
            iconHeight: 75
            checkable: true
            setIcon: "qrc:/asset/Image/icons/icons-left-checked/mdi_car-battery.svg"
            //fillMode: Image.PreserveAspectFit
            SequentialAnimation {
                running: image_battery.checked
                loops: Animation.Infinite
                OpacityAnimator {
                    target: image_battery.roundIcon ? image_battery.roundIconSource : image_battery.iconSource
                    from: 0;
                    to: 1;
                    duration: 500
                }
                OpacityAnimator {
                    target: image_battery.roundIcon ? image_battery.roundIconSource : image_battery.iconSource
                    from: 1;
                    to: 0;
                    duration: 500
                }
            }
        }

        Image {
            id: image_light_dimmed
            x: 1650
            y: 257
            width: 75
            height: 75
            source: "qrc:/asset/Image/icons/icons-right-checked/mdi_car-light-dimmed.svg"
            fillMode: Image.PreserveAspectFit
            opacity: 0.2
            scale: button_light_dimmed.pressed ? 0.8 : 1
            Behavior on scale{NumberAnimation{duration: 200;easing.type: Easing.InOutQuad}}
            Button {
                id: button_light_dimmed
                opacity: 0
                anchors.fill: parent
                checkable: true
                enabled: true
                onCheckedChanged:{
                    light.light_low = checked
                    image_light_dimmed.opacity = checked ? 1 : 0.2
                }
            }
        }

        Image {
            id: image_hazard
            x: 1650
            y: 144
            width: 75
            height: 75
            source: "qrc:/asset/Image/icons8-hazard-64 (1).png"
            fillMode: Image.PreserveAspectFit
            opacity: 0.2
            scale: button_hazard.pressed ? 0.8 : 1
            Behavior on scale{NumberAnimation{duration: 200;easing.type: Easing.InOutQuad}}
            Button {
                id: button_hazard
                opacity: 0
                anchors.fill: parent
                checkable: true
                enabled: true
                onCheckedChanged:{
                    light.light_hazard = checked
                    image_hazard.opacity = checked ? 1 : 0.2
                }
            }
        }

        Image {
            id: image_light_high
            x: 1650
            y: 31
            width: 75
            height: 75
            source: "qrc:/asset/Image/icons/icons-right-checked/mdi_car-light-high.svg"
            fillMode: Image.PreserveAspectFit
            opacity: 0.2
            scale: button_light_high.pressed ? 0.8 : 1
            Behavior on scale{NumberAnimation{duration: 200;easing.type: Easing.InOutQuad}}
            Button {
                id: button_light_high
                opacity: 0
                anchors.fill: parent
                checkable: true
                enabled: true
                onCheckedChanged:{
                    light.light_high = checked
                    image_light_high.opacity = checked ? 1 : 0.2

                }
            }
        }

        Image {
            id: image_lock_glass
            x: 506
            y: 192
            width: 75
            height: 75
            source: button_lock_glass.checked ? "qrc:/asset/Image/icons8-secure-50.png" : "qrc:/asset/Image/icons8-unlock-private-50.png"
            fillMode: Image.PreserveAspectFit
            scale: button_lock_glass.pressed ? 0.8 : 1
            Behavior on scale{NumberAnimation{duration: 200;easing.type: Easing.InOutQuad}}
            Button {
                id: button_lock_glass
                opacity: 0
                anchors.fill: parent
                checkable: true
                enabled: true
                onCheckedChanged:{
                    button_FLup.enabled = !checked
                    button_FRup.enabled = !checked
                    button_RLup.enabled = !checked
                    button_RRup.enabled = !checked
                    button_FLdown.enabled = !checked
                    button_FRdown.enabled = !checked
                    button_RLdown.enabled = !checked
                    button_RRdown.enabled = !checked
                }
            }
        }

        Image {
            id: image_lock_door
            x: 1314
            y: 192
            width: 75
            height: 75
            source: button_lock_door.checked ? "qrc:/asset/Image/icons8-secure-50.png" : "qrc:/asset/Image/icons8-unlock-private-50.png"
            fillMode: Image.PreserveAspectFit
            scale: button_lock_door.pressed ? 0.8 : 1
            Behavior on scale{NumberAnimation{duration: 200;easing.type: Easing.InOutQuad}}
            Button {
                id: button_lock_door
                opacity: 0
                anchors.fill: parent
                checkable: true
                enabled: true
                onCheckedChanged:{
                    button_FL.enabled = !checked
                    button_FR.enabled = !checked
                    button_RL.enabled = !checked
                    button_RR.enabled = !checked
                }
            }
        }

        Image {
            id: image_glassRL_up
            x: 494
            y: 515
            width: 100
            height: 40
            source: button_RLup.pressed ? "qrc:/asset/Image/ico_arrow_u_p.png" : "qrc:/asset/Image/ico_arrow_u_n.png"
            fillMode: Image.PreserveAspectFit

            Button {
                id: button_RLup
                opacity: 0
                anchors.fill: parent
                checkable: true
                enabled: true
                onCheckedChanged:{
                    door.choice_glass(2, false)
                }
            }
        }

        Image {
            id: image_glassRL_down
            x: 494
            y: 561
            width: 100
            height: 40
            source: button_RLdown.pressed ? "qrc:/asset/Image/ico_arrow_d_p.png" : "qrc:/asset/Image/ico_arrow_d_n.png"
            fillMode: Image.PreserveAspectFit

            Button {
                id: button_RLdown
                opacity: 0
                anchors.fill: parent
                checkable: true
                enabled: true
                onCheckedChanged:{
                    door.choice_glass(2, true)
                }
            }
        }

        Image {
            id: image_glassFR_down
            x: 1302
            y: 413
            width: 100
            height: 40
            source: button_FRdown.pressed ? "qrc:/asset/Image/ico_arrow_d_p.png" : "qrc:/asset/Image/ico_arrow_d_n.png"
            fillMode: Image.PreserveAspectFit

            Button {
                id: button_FRdown
                opacity: 0
                anchors.fill: parent
                checkable: true
                enabled: true
                onCheckedChanged:{
                    door.choice_glass(1, true)
                }
            }
        }

        Image {
            id: image_glassRR_down
            x: 1302
            y: 561
            width: 100
            height: 40
            source: button_RRdown.pressed ? "qrc:/asset/Image/ico_arrow_d_p.png" : "qrc:/asset/Image/ico_arrow_d_n.png"
            fillMode: Image.PreserveAspectFit

            Button {
                id: button_RRdown
                opacity: 0
                anchors.fill: parent
                checkable: true
                enabled: true
                onCheckedChanged:{
                    door.choice_glass(3, true)
                }
            }
        }

        Image {
            id: image_glassFR_up
            x: 1302
            y: 367
            width: 100
            height: 40
            source: button_FRup.pressed ? "qrc:/asset/Image/ico_arrow_u_p.png" : "qrc:/asset/Image/ico_arrow_u_n.png"
            fillMode: Image.PreserveAspectFit

            Button {
                id: button_FRup
                opacity: 0
                anchors.fill: parent
                checkable: true
                enabled: true
                onCheckedChanged:{
                    door.choice_glass(1, false)
                }
            }
        }

        Image {
            id: image_glassRR_up
            x: 1302
            y: 521
            width: 100
            height: 40
            source: button_RRup.pressed ? "qrc:/asset/Image/ico_arrow_u_p.png" : "qrc:/asset/Image/ico_arrow_u_n.png"
            fillMode: Image.PreserveAspectFit

            Button {
                id: button_RRup
                opacity: 0
                anchors.fill: parent
                checkable: true
                enabled: true
                onCheckedChanged:{
                    door.choice_glass(3, false)
                }
            }
        }
    }
}
