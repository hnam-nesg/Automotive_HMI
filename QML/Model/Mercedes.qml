import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node
    property alias doorFL: mesh_DoorFL
    property alias doorFR: mesh_DoorFR
    property alias doorRL: mesh_DoorRL
    property alias doorRR: mesh_DoorRR
    property bool light_high: false
    property bool light_low: false
    property bool light_interior: false
    property bool light_signal_left: false
    property bool light_signal_right: false
    property bool hazard: false
    property real bright: 0
    // Resources
    property url textureData: "qrc:/asset/maps/textureData.jpg"
    property url textureData302: "qrc:/asset/maps/textureData302.jpg"
    property url textureData104: "qrc:/asset/maps/textureData104.jpg"
    property url textureData14: "qrc:/asset/maps/textureData14.jpg"
    property url textureData81: "qrc:/asset/maps/textureData81.png"
    property url textureData16: "qrc:/asset/maps/textureData16.png"
    property url textureData106: "qrc:/asset/maps/textureData106.png"
    property url textureData18: "qrc:/asset/maps/textureData18.png"
    property url textureData90: "qrc:/asset/maps/textureData90.png"
    property url textureData86: "qrc:/asset/maps/textureData86.jpg"
    property url textureData108: "qrc:/asset/maps/textureData108.png"
    property url textureData50: "qrc:/asset/maps/textureData50.png"
    property url textureData95: "qrc:/asset/maps/textureData95.jpg"
    property url textureData88: "qrc:/asset/maps/textureData88.png"
    property url textureData41: "qrc:/asset/maps/textureData41.jpg"
    property url textureData193: "qrc:/asset/maps/textureData193.png"
    property url textureData43: "qrc:/asset/maps/textureData43.png"
    property url textureData195: "qrc:/asset/maps/textureData195.png"
    property url textureData97: "qrc:/asset/maps/textureData97.png"
    property url textureData197: "qrc:/asset/maps/textureData197.png"
    property url textureData48: "qrc:/asset/maps/textureData48.png"
    property url textureData202: "qrc:/asset/maps/textureData202.png"
    property url textureData206: "qrc:/asset/maps/textureData206.png"
    property url textureData218: "qrc:/asset/maps/textureData218.jpg"
    property url textureData204: "qrc:/asset/maps/textureData204.png"
    property url textureData220: "qrc:/asset/maps/textureData220.png"
    property url textureData55: "qrc:/asset/maps/textureData55.jpg"
    property url textureData222: "qrc:/asset/maps/textureData222.png"
    property url textureData57: "qrc:/asset/maps/textureData57.png"
    property url textureData227: "qrc:/asset/maps/textureData227.jpg"
    property url textureData59: "qrc:/asset/maps/textureData59.png"
    property url textureData99: "qrc:/asset/maps/textureData99.png"
    property url textureData229: "qrc:/asset/maps/textureData229.png"
    property url textureData231: "qrc:/asset/maps/textureData231.png"
    property url textureData64: "qrc:/asset/maps/textureData64.jpg"
    property url textureData77: "qrc:/asset/maps/textureData77.png"
    property url textureData66: "qrc:/asset/maps/textureData66.png"
    property url textureData281: "qrc:/asset/maps/textureData281.jpg"
    property url textureData68: "qrc:/asset/maps/textureData68.png"
    property url textureData113: "qrc:/asset/maps/textureData113.png"
    property url textureData283: "qrc:/asset/maps/textureData283.png"
    property url textureData285: "qrc:/asset/maps/textureData285.png"
    property url textureData73: "qrc:/asset/maps/textureData73.png"
    property url textureData304: "qrc:/asset/maps/textureData304.png"
    property url textureData75: "qrc:/asset/maps/textureData75.png"
    property url textureData306: "qrc:/asset/maps/textureData306.png"
    Texture {
        id: _20_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData90
    }
    Texture {
        id: _0_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData14
    }
    Texture {
        id: _1_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData16
    }
    Texture {
        id: _2_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData18
    }
    Texture {
        id: _26_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData108
    }
    Texture {
        id: _3_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData41
    }
    Texture {
        id: _4_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData43
    }
    Texture {
        id: _22_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData97
    }
    Texture {
        id: _5_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData48
    }
    Texture {
        id: _6_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData50
    }
    Texture {
        id: _21_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData95
    }
    Texture {
        id: _23_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData99
    }
    Texture {
        id: _7_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData55
    }
    Texture {
        id: _8_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData57
    }
    Texture {
        id: _9_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData59
    }
    Texture {
        id: _27_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData113
    }
    Texture {
        id: _10_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData64
    }
    Texture {
        id: _12_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData68
    }
    Texture {
        id: _24_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData104
    }
    Texture {
        id: _13_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData73
    }
    Texture {
        id: _14_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData75
    }
    Texture {
        id: _15_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData77
    }
    Texture {
        id: _34_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData218
    }
    Texture {
        id: _28_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData193
    }
    Texture {
        id: _35_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData220
    }
    Texture {
        id: _17_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData81
    }
    Texture {
        id: _36_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData222
    }
    Texture {
        id: _29_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData195
    }
    Texture {
        id: _37_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData227
    }
    Texture {
        id: _18_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData86
    }
    Texture {
        id: _38_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData229
    }
    Texture {
        id: _30_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData197
    }
    Texture {
        id: _39_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData231
    }
    Texture {
        id: _16_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData
    }
    Texture {
        id: _11_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData66
    }
    Texture {
        id: _40_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData281
    }
    Texture {
        id: _31_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData202
    }
    Texture {
        id: _41_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData283
    }
    Texture {
        id: _19_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData88
    }
    Texture {
        id: _42_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData285
    }
    Texture {
        id: _32_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData204
    }
    Texture {
        id: _43_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData302
    }
    Texture {
        id: _44_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData304
    }
    Texture {
        id: _33_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData206
    }
    Texture {
        id: _45_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData306
    }
    Texture {
        id: _25_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData106
    }

    // Nodes:
    Node {
        id: sketchfab_model
        scale.z: 30.38831
        scale.y: 30.38831
        scale.x: 30.38831
        objectName: "Sketchfab_model"
        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        Node {
            id: fbx_merge_fbx
            objectName: "fbx_merge.fbx"
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            Node {
                id: object_2
                objectName: "Object_2"
                Node {
                    id: rootNode
                    objectName: "RootNode"
                    Node {
                        id: root
                        objectName: "Root"
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 1
                        scale.y: 1
                        scale.z: 1
                        Node {
                            id: body
                            objectName: "Body"
                            y: -8.418671093579633e-09
                            z: 0.19678828120231628
                            Node {
                                id: brakeFL
                                objectName: "BrakeFL"
                                x: -0.7670765519142151
                                y: 1.4805703163146973
                                z: 0.132601797580719
                                Node {
                                    id: mesh_BrakeFL
                                    objectName: "mesh_BrakeFL"
                                    Node {
                                        id: object_8
                                        objectName: "Object_8"
                                        x: 0.7670765519142151
                                        y: -1.7488422393798828
                                        z: 0.3803955316543579
                                        Model {
                                            id: mesh_BrakeFL_mat_brakes_0
                                            objectName: "mesh_BrakeFL_mat_brakes_0"
                                            source: "qrc:/asset/meshes/mesh_BrakeFL_mat_brakes_0_mesh.mesh"
                                            materials: mmercedesAMG_G63SUVRewardRecycled_2020Paint_Material1_material
                                        }
                                    }
                                }
                            }
                            Node {
                                id: brakeFR
                                objectName: "BrakeFR"
                                x: 0.7670770287513733
                                y: 1.4805703163146973
                                z: 0.132601797580719
                                Node {
                                    id: mesh_BrakeFR
                                    objectName: "mesh_BrakeFR"
                                    Node {
                                        id: object_12
                                        objectName: "Object_12"
                                        x: -0.7670770287513733
                                        y: -1.7488422393798828
                                        z: 0.3803955316543579
                                        Model {
                                            id: mesh_BrakeFR_mat_brakes_0
                                            objectName: "mesh_BrakeFR_mat_brakes_0"
                                            source: "qrc:/asset/meshes/mesh_BrakeFR_mat_brakes_0_mesh.mesh"
                                            materials: mmercedesAMG_G63SUVRewardRecycled_2020Paint_Material1_material
                                        }
                                    }
                                }
                            }
                            Node {
                                id: brakeRL
                                objectName: "BrakeRL"
                                x: -0.7670765519142151
                                y: -1.384366512298584
                                z: 0.132601797580719
                                Node {
                                    id: mesh_BrakeRL
                                    objectName: "mesh_BrakeRL"
                                    Node {
                                        id: object_16
                                        objectName: "Object_16"
                                        x: 0.7670765519142151
                                        y: 1.115926742553711
                                        z: 0.3955559730529785
                                        Model {
                                            id: mesh_BrakeRL_mat_brakes_0
                                            objectName: "mesh_BrakeRL_mat_brakes_0"
                                            source: "qrc:/asset/meshes/mesh_BrakeRL_mat_brakes_0_mesh.mesh"
                                            materials: mmercedesAMG_G63SUVRewardRecycled_2020Paint_Material1_material
                                        }
                                    }
                                }
                            }
                            Node {
                                id: brakeRR
                                objectName: "BrakeRR"
                                x: 0.7670770287513733
                                y: -1.384366512298584
                                z: 0.132601797580719
                                Node {
                                    id: mesh_BrakeRR
                                    objectName: "mesh_BrakeRR"
                                    y: 0.00016760826110839844
                                    z: -0.01516038179397583
                                    Node {
                                        id: object_20
                                        objectName: "Object_20"
                                        x: -0.7670770287513733
                                        y: 1.11592698097229
                                        z: 0.39555591344833374
                                        Model {
                                            id: mesh_BrakeRR_mat_brakes_0
                                            objectName: "mesh_BrakeRR_mat_brakes_0"
                                            source: "qrc:/asset/meshes/mesh_BrakeRR_mat_brakes_0_mesh.mesh"
                                            materials: mmercedesAMG_G63SUVRewardRecycled_2020Paint_Material1_material
                                        }
                                    }
                                }
                            }
                            Node {
                                id: doorFL
                                objectName: "DoorFL"
                                x: -0.905
                                y: 0.888
                                z: 0.5398
                                Node {
                                    id: mesh_DoorFL
                                    eulerRotation.z: 0
                                    eulerRotation.y: -0.00001
                                    eulerRotation.x: -0
                                    objectName: "mesh_DoorFL"
                                    Behavior on eulerRotation.z{
                                        NumberAnimation{duration: 1000; easing.type: Easing.InOutQuad}
                                    }

                                    Node {
                                        id: object_24
                                        objectName: "Object_24"
                                        x: 0.9097137451171875
                                        y: -1.1569385528564453
                                        z: -0.02989959716796875
                                        Model {
                                            id: mesh_DoorFL_mat_rubber_0
                                            objectName: "mesh_DoorFL_mat_rubber_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFL_mat_rubber_0_mesh.mesh"
                                            materials: [
                                                mat_rubber_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorFL_mat_glass_0
                                            objectName: "mesh_DoorFL_mat_glass_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFL_mat_glass_0_mesh.mesh"
                                            materials: [
                                                mesh_DoorFL_mat_glass_0.z < -0.37 ? transparent_glass : mat_glass_material
                                            ]
                                            Behavior on z{
                                                NumberAnimation{duration: 1000; easing.type: Easing.InOutQuad}
                                            }
                                        }
                                        Model {
                                            id: mesh_DoorFL_mat_plastic_0
                                            objectName: "mesh_DoorFL_mat_plastic_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFL_mat_plastic_0_mesh.mesh"
                                            materials: [
                                                mat_plastic_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorFL_mat_chrome_0
                                            objectName: "mesh_DoorFL_mat_chrome_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFL_mat_chrome_0_mesh.mesh"
                                            materials: [
                                                mat_chrome_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorFL_mat_lights_0
                                            objectName: "mesh_DoorFL_mat_lights_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFL_mat_lights_0_mesh.mesh"
                                            materials: [
                                                node.light_signal_left || node.hazard ? glass___Red___Rough_material : mat_lights_material
                                            ]
                                            NumberAnimation on opacity {
                                                duration: 500
                                                from: 1.0
                                                to: 0.0
                                                loops: Animation.Infinite
                                                running: node.light_signal_left || node.hazard
                                                easing.type: Easing.InOutQuad
                                            }
                                        }
                                        Model {
                                            id: mesh_DoorFL_mat_leather_0
                                            objectName: "mesh_DoorFL_mat_leather_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFL_mat_leather_0_mesh.mesh"
                                            materials: [
                                                mat_leather_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorFL_mat_inside_panel_0
                                            objectName: "mesh_DoorFL_mat_inside_panel_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFL_mat_inside_panel_0_mesh.mesh"
                                            materials: [
                                                mat_inside_panel_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorFL_mat_salon_0
                                            objectName: "mesh_DoorFL_mat_salon_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFL_mat_salon_0_mesh.mesh"
                                            eulerRotation.z: 0
                                            eulerRotation.y: 0
                                            eulerRotation.x: 0
                                            materials: [
                                                mat_salon_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorFL_mat_body_0
                                            objectName: "mesh_DoorFL_mat_body_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFL_mat_body_0_mesh.mesh"
                                            materials: mat_body_material
                                        }
                                    }
                                }
                            }
                            Node {
                                id: doorFR
                                objectName: "DoorFR"
                                x: 0.9097139835357666
                                y: 0.8886669874191284
                                z: 0.5428969860076904
                                Node {
                                    id: mesh_DoorFR
                                    eulerRotation.z: 0
                                    eulerRotation.y: 0.00001
                                    eulerRotation.x: -0
                                    objectName: "mesh_DoorFR"
                                    Behavior on eulerRotation.z{
                                        NumberAnimation{duration: 1000; easing.type: Easing.InOutQuad}
                                    }
                                    Node {
                                        id: object_36
                                        objectName: "Object_36"
                                        x: -0.9097139835357666
                                        y: -1.1569385528564453
                                        z: -0.02989959716796875
                                        Model {
                                            id: mesh_DoorFR_mat_body_0
                                            objectName: "mesh_DoorFR_mat_body_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFR_mat_body_0_mesh.mesh"
                                            materials: mat_body_material
                                        }
                                        Model {
                                            id: mesh_DoorFR_mat_rubber_0
                                            objectName: "mesh_DoorFR_mat_rubber_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFR_mat_rubber_0_mesh.mesh"
                                            materials: [
                                                mat_rubber_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorFR_mat_glass_0
                                            objectName: "mesh_DoorFR_mat_glass_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFR_mat_glass_0_mesh.mesh"
                                            materials: [
                                                mesh_DoorFR_mat_glass_0.z < -0.37 ? transparent_glass : mat_glass_material
                                            ]
                                            Behavior on z{
                                                NumberAnimation{duration: 1000; easing.type: Easing.InOutQuad}
                                            }
                                        }
                                        Model {
                                            id: mesh_DoorFR_mat_plastic_0
                                            objectName: "mesh_DoorFR_mat_plastic_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFR_mat_plastic_0_mesh.mesh"
                                            materials: [
                                                mat_plastic_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorFR_mat_chrome_0
                                            objectName: "mesh_DoorFR_mat_chrome_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFR_mat_chrome_0_mesh.mesh"
                                            materials: [
                                                mat_chrome_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorFR_mat_lights_0
                                            objectName: "mesh_DoorFR_mat_lights_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFR_mat_lights_0_mesh.mesh"
                                            materials: [
                                                node.light_signal_right || node.hazard ? glass___Red___Rough_material : mat_lights_material
                                            ]
                                            NumberAnimation on opacity {
                                                duration: 500
                                                from: 1.0
                                                to: 0.0
                                                loops: Animation.Infinite
                                                running: node.light_signal_right || node.hazard
                                                easing.type: Easing.InOutQuad
                                            }
                                        }
                                        Model {
                                            id: mesh_DoorFR_mat_leather_0
                                            objectName: "mesh_DoorFR_mat_leather_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFR_mat_leather_0_mesh.mesh"
                                            materials: [
                                                mat_leather_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorFR_mat_inside_panel_0
                                            objectName: "mesh_DoorFR_mat_inside_panel_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFR_mat_inside_panel_0_mesh.mesh"
                                            materials: [
                                                mat_inside_panel_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorFR_mat_salon_0
                                            objectName: "mesh_DoorFR_mat_salon_0"
                                            source: "qrc:/asset/meshes/mesh_DoorFR_mat_salon_0_mesh.mesh"
                                            materials: [
                                                mat_salon_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: doorRL
                                objectName: "DoorRL"
                                x: -0.8970869779586792
                                y: -0.24632999300956726
                                z: 0.34468701481819153
                                Node {
                                    id: mesh_DoorRL
                                    eulerRotation.z: -0
                                    eulerRotation.y: -0.00001
                                    eulerRotation.x: -0
                                    objectName: "mesh_DoorRL"
                                    Behavior on eulerRotation.z{
                                        NumberAnimation{duration: 1000; easing.type: Easing.InOutQuad}
                                    }
                                    Node {
                                        id: object_48
                                        objectName: "Object_48"
                                        x: 0.8970870971679688
                                        y: -0.021942138671875
                                        z: 0.16831016540527344
                                        Model {
                                            id: mesh_DoorRL_mat_rubber_0
                                            objectName: "mesh_DoorRL_mat_rubber_0"
                                            source: "qrc:/asset/meshes/mesh_DoorRL_mat_rubber_0_mesh.mesh"
                                            materials: [
                                                mat_rubber_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorRL_mat_glass_0
                                            objectName: "mesh_DoorRL_mat_glass_0"
                                            source: "qrc:/asset/meshes/mesh_DoorRL_mat_glass_0_mesh.mesh"
                                            materials: [
                                                mesh_DoorRL_mat_glass_0.z < -0.37 ? transparent_glass : mat_glass_material
                                            ]
                                            Behavior on z{
                                                NumberAnimation{duration: 1000; easing.type: Easing.InOutQuad}
                                            }
                                        }
                                        Model {
                                            id: mesh_DoorRL_mat_plastic_0
                                            objectName: "mesh_DoorRL_mat_plastic_0"
                                            source: "qrc:/asset/meshes/mesh_DoorRL_mat_plastic_0_mesh.mesh"
                                            materials: [
                                                mat_plastic_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorRL_mat_chrome_0
                                            objectName: "mesh_DoorRL_mat_chrome_0"
                                            source: "qrc:/asset/meshes/mesh_DoorRL_mat_chrome_0_mesh.mesh"
                                            materials: [
                                                mat_chrome_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorRL_mat_leather_0
                                            objectName: "mesh_DoorRL_mat_leather_0"
                                            source: "qrc:/asset/meshes/mesh_DoorRL_mat_leather_0_mesh.mesh"
                                            materials: [
                                                mat_leather_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorRL_mat_inside_panel_0
                                            objectName: "mesh_DoorRL_mat_inside_panel_0"
                                            source: "qrc:/asset/meshes/mesh_DoorRL_mat_inside_panel_0_mesh.mesh"
                                            materials: [
                                                mat_inside_panel_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorRL_mat_salon_0
                                            objectName: "mesh_DoorRL_mat_salon_0"
                                            source: "qrc:/asset/meshes/mesh_DoorRL_mat_salon_0_mesh.mesh"
                                            materials: [
                                                mat_salon_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorRL_mat_body_0
                                            objectName: "mesh_DoorRL_mat_body_0"
                                            source: "qrc:/asset/meshes/mesh_DoorRL_mat_body_0_mesh.mesh"
                                            materials: mat_body_material
                                        }
                                    }
                                }
                            }
                            Node {
                                id: doorRR
                                objectName: "DoorRR"
                                x: 0.8970869779586792
                                y: -0.24632999300956726
                                z: 0.34468701481819153
                                Node {
                                    id: mesh_DoorRR
                                    eulerRotation.z: 0
                                    eulerRotation.y: 0.00001
                                    eulerRotation.x: -0
                                    objectName: "mesh_DoorRR"
                                    Behavior on eulerRotation.z{
                                        NumberAnimation{duration: 1000; easing.type: Easing.InOutQuad}
                                    }
                                    Node {
                                        id: object_59
                                        objectName: "Object_59"
                                        x: -0.8970869779586792
                                        y: -0.021942138671875
                                        z: 0.16831016540527344
                                        Model {
                                            id: mesh_DoorRR_mat_body_0
                                            objectName: "mesh_DoorRR_mat_body_0"
                                            source: "qrc:/asset/meshes/mesh_DoorRR_mat_body_0_mesh.mesh"
                                            materials: mat_body_material
                                        }
                                        Model {
                                            id: mesh_DoorRR_mat_rubber_0
                                            objectName: "mesh_DoorRR_mat_rubber_0"
                                            source: "qrc:/asset/meshes/mesh_DoorRR_mat_rubber_0_mesh.mesh"
                                            materials: [
                                                mat_rubber_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorRR_mat_glass_0
                                            objectName: "mesh_DoorRR_mat_glass_0"
                                            source: "qrc:/asset/meshes/mesh_DoorRR_mat_glass_0_mesh.mesh"
                                            materials: [
                                                mesh_DoorRR_mat_glass_0.z < -0.37 ? transparent_glass : mat_glass_material
                                            ]
                                            Behavior on z{
                                                NumberAnimation{duration: 1000; easing.type: Easing.InOutQuad}
                                            }
                                        }
                                        Model {
                                            id: mesh_DoorRR_mat_plastic_0
                                            objectName: "mesh_DoorRR_mat_plastic_0"
                                            source: "qrc:/asset/meshes/mesh_DoorRR_mat_plastic_0_mesh.mesh"
                                            materials: [
                                                mat_plastic_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorRR_mat_chrome_0
                                            objectName: "mesh_DoorRR_mat_chrome_0"
                                            source: "qrc:/asset/meshes/mesh_DoorRR_mat_chrome_0_mesh.mesh"
                                            materials: [
                                                mat_chrome_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorRR_mat_leather_0
                                            objectName: "mesh_DoorRR_mat_leather_0"
                                            source: "qrc:/asset/meshes/mesh_DoorRR_mat_leather_0_mesh.mesh"
                                            materials: [
                                                mat_leather_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorRR_mat_inside_panel_0
                                            objectName: "mesh_DoorRR_mat_inside_panel_0"
                                            source: "qrc:/asset/meshes/mesh_DoorRR_mat_inside_panel_0_mesh.mesh"
                                            materials: [
                                                mat_inside_panel_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_DoorRR_mat_salon_0
                                            objectName: "mesh_DoorRR_mat_salon_0"
                                            source: "qrc:/asset/meshes/mesh_DoorRR_mat_salon_0_mesh.mesh"
                                            materials: [
                                                mat_salon_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: hood
                                objectName: "Hood"
                                y: 0.8496159911155701
                                z: 0.7392359972000122
                                Node {
                                    id: mesh_Hood
                                    objectName: "mesh_Hood"
                                    Behavior on eulerRotation.x{
                                        NumberAnimation{duration: 1000; easing.type: Easing.InOutQuad}
                                    }
                                    Node {
                                        id: object_70
                                        objectName: "Object_70"
                                        x: -5.960464477539063e-08
                                        y: -1.1178874969482422
                                        z: -0.22623825073242188
                                        Model {
                                            id: mesh_Hood_mat_body_0
                                            objectName: "mesh_Hood_mat_body_0"
                                            source: "qrc:/asset/meshes/mesh_Hood_mat_body_0_mesh.mesh"
                                            materials: mat_body_material
                                        }
                                        Model {
                                            id: mesh_Hood_mat_plastic_0
                                            objectName: "mesh_Hood_mat_plastic_0"
                                            source: "qrc:/asset/meshes/mesh_Hood_mat_plastic_0_mesh.mesh"
                                            materials: [
                                                mat_plastic_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_Hood_mat_chrome_0
                                            objectName: "mesh_Hood_mat_chrome_0"
                                            source: "qrc:/asset/meshes/mesh_Hood_mat_chrome_0_mesh.mesh"
                                            materials: [
                                                mat_chrome_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: trunk
                                objectName: "Trunk"
                                y: -1.8027700185775757
                                z: 0.8263980150222778
                                Node {
                                    id: mesh_Trunk
                                    eulerRotation.z: 0
                                    eulerRotation.y: -0
                                    eulerRotation.x: -0
                                    objectName: "mesh_Trunk"
                                    Behavior on eulerRotation.x{
                                        NumberAnimation{duration: 1000; easing.type: Easing.InOutQuad}
                                    }
                                    Node {
                                        id: object_76
                                        objectName: "Object_76"
                                        y: 1.5344982147216797
                                        z: -0.3134002685546875
                                        Model {
                                            id: mesh_Trunk_mat_plastic_0
                                            objectName: "mesh_Trunk_mat_plastic_0"
                                            source: "qrc:/asset/meshes/mesh_Trunk_mat_plastic_0_mesh.mesh"
                                            materials: [
                                                mat_plastic_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_Trunk_mat_chrome_0
                                            objectName: "mesh_Trunk_mat_chrome_0"
                                            source: "qrc:/asset/meshes/mesh_Trunk_mat_chrome_0_mesh.mesh"
                                            materials: mmercedesAMG_G63SUVRewardRecycled_2020Paint_Material1_material
                                        }
                                        Model {
                                            id: mesh_Trunk_mat_lights_glass_0
                                            objectName: "mesh_Trunk_mat_lights_glass_0"
                                            source: "qrc:/asset/meshes/mesh_Trunk_mat_lights_glass_0_mesh.mesh"
                                            materials: [
                                                mat_lights_glass_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_Trunk_mat_lights_glass2_0
                                            objectName: "mesh_Trunk_mat_lights_glass2_0"
                                            source: "qrc:/asset/meshes/mesh_Trunk_mat_lights_glass2_0_mesh.mesh"
                                            materials: [
                                                mat_lights_glass2_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_Trunk_mat_lights_0
                                            objectName: "mesh_Trunk_mat_lights_0"
                                            source: "qrc:/asset/meshes/mesh_Trunk_mat_lights_0_mesh.mesh"
                                            materials: [
                                                node.hazard ? glass___Red___Rough_material : mat_lights_material
                                            ]
                                            NumberAnimation on opacity{
                                                duration: 500
                                                from: 1.0
                                                to: 0.0
                                                loops: Animation.Infinite
                                                easing.type: Easing.InOutQuad
                                                running: node.hazard
                                            }
                                        }
                                        Model {
                                            id: mesh_Trunk_mat_body_0
                                            objectName: "mesh_Trunk_mat_body_0"
                                            source: "qrc:/asset/meshes/mesh_Trunk_mat_body_0_mesh.mesh"
                                            materials: mat_body_material
                                        }
                                    }
                                }
                            }
                            Node {
                                id: wheelFL
                                objectName: "WheelFL"
                                x: -0.7670765519142151
                                y: 1.4805703163146973
                                z: 0.132601797580719
                                Node {
                                    id: mesh_WheelFL
                                    objectName: "mesh_WheelFL"
                                    Node {
                                        id: object_85
                                        objectName: "Object_85"
                                        x: 0.7670765519142151
                                        y: -1.7488422393798828
                                        z: 0.3803955316543579
                                        Model {
                                            id: mesh_WheelFL_mat_wheels_0
                                            objectName: "mesh_WheelFL_mat_wheels_0"
                                            source: "qrc:/asset/meshes/mesh_WheelFL_mat_wheels_0_mesh.mesh"
                                            materials: [
                                                mat_wheels_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_WheelFL_mat_tires_0
                                            objectName: "mesh_WheelFL_mat_tires_0"
                                            source: "qrc:/asset/meshes/mesh_WheelFL_mat_tires_0_mesh.mesh"
                                            materials: [
                                                mat_tires_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: wheelFR
                                objectName: "WheelFR"
                                x: 0.7670770287513733
                                y: 1.4805703163146973
                                z: 0.132601797580719
                                Node {
                                    id: mesh_WheelFR
                                    objectName: "mesh_WheelFR"
                                    Node {
                                        id: object_90
                                        objectName: "Object_90"
                                        x: -0.7670770287513733
                                        y: -1.7488422393798828
                                        z: 0.3803955316543579
                                        Model {
                                            id: mesh_WheelFR_mat_wheels_0
                                            objectName: "mesh_WheelFR_mat_wheels_0"
                                            source: "qrc:/asset/meshes/mesh_WheelFR_mat_wheels_0_mesh.mesh"
                                            materials: [
                                                mat_wheels_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_WheelFR_mat_tires_0
                                            objectName: "mesh_WheelFR_mat_tires_0"
                                            source: "qrc:/asset/meshes/mesh_WheelFR_mat_tires_0_mesh.mesh"
                                            materials: [
                                                mat_tires_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: wheelRL
                                objectName: "WheelRL"
                                x: -0.7670765519142151
                                y: -1.384366512298584
                                z: 0.132601797580719
                                Node {
                                    id: mesh_WheelRR
                                    objectName: "mesh_WheelRR"
                                    x: -0.03472226858139038
                                    Node {
                                        id: object_95
                                        objectName: "Object_95"
                                        x: 0.8017988204956055
                                        y: 1.1160945892333984
                                        z: 0.39532244205474854
                                        Model {
                                            id: mesh_WheelRR_mat_wheels_0
                                            objectName: "mesh_WheelRR_mat_wheels_0"
                                            source: "qrc:/asset/meshes/mesh_WheelRR_mat_wheels_0_mesh.mesh"
                                            materials: [
                                                mat_wheels_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_WheelRR_mat_tires_0
                                            objectName: "mesh_WheelRR_mat_tires_0"
                                            source: "qrc:/asset/meshes/mesh_WheelRR_mat_tires_0_mesh.mesh"
                                            materials: [
                                                mat_tires_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: wheelRR
                                objectName: "WheelRR"
                                x: 0.7670770287513733
                                y: -1.384366512298584
                                z: 0.132601797580719
                                Node {
                                    id: mesh_WheelRR247
                                    objectName: "mesh_WheelRR"
                                    x: 0.03472185134887695
                                    Node {
                                        id: object_100
                                        objectName: "Object_100"
                                        x: -0.8017988801002502
                                        y: 1.1160943508148193
                                        z: 0.3953222632408142
                                        Model {
                                            id: mesh_WheelRR_mat_wheels_0249
                                            objectName: "mesh_WheelRR_mat_wheels_0"
                                            source: "qrc:/asset/meshes/mesh_WheelRR_mat_wheels_0_mesh250.mesh"
                                            materials: [
                                                mat_wheels_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_WheelRR_mat_tires_0251
                                            objectName: "mesh_WheelRR_mat_tires_0"
                                            source: "qrc:/asset/meshes/mesh_WheelRR_mat_tires_0_mesh252.mesh"
                                            materials: [
                                                mat_tires_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: wipper1
                                objectName: "Wipper1"
                                x: -0.6661345958709717
                                y: 0.9278092384338379
                                z: 0.7201446294784546
                                rotation: Qt.quaternion(0.968582, -0.243324, -0.0222225, 0.0463549)
                                Node {
                                    id: mesh_Wipper1
                                    objectName: "mesh_Wipper1"
                                    y: 2.9802322387695312e-08
                                    z: -2.220446049250313e-16
                                    rotation: Qt.quaternion(1, 1.49012e-08, 9.31322e-09, 6.98492e-09)
                                    Node {
                                        id: object_105
                                        objectName: "Object_105"
                                        x: 0.5380299091339111
                                        y: -1.003854751586914
                                        z: -0.787434458732605
                                        rotation: Qt.quaternion(0.968582, 0.243324, 0.0222225, -0.046355)
                                        Model {
                                            id: mesh_Wipper1_mat_plastic_0
                                            objectName: "mesh_Wipper1_mat_plastic_0"
                                            source: "qrc:/asset/meshes/mesh_Wipper1_mat_plastic_0_mesh.mesh"
                                            materials: [
                                                mat_plastic_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: wipper2
                                objectName: "Wipper2"
                                x: 0.031309425830841064
                                y: 0.9950413703918457
                                z: 0.7783725261688232
                                rotation: Qt.quaternion(0.989138, -0.140995, 0.0220491, -0.0352121)
                                scale.x: 1
                                scale.y: 1
                                scale.z: 1
                                Node {
                                    id: wipper2_1
                                    objectName: "Wipper2_1"
                                    x: 0.03511402755975723
                                    y: 0.11254119873046875
                                    z: -0.016107797622680664
                                    rotation: Qt.quaternion(0.997387, -0.07225, -5.23689e-09, -5.04817e-09)
                                    Node {
                                        id: mesh_Wipper2_1
                                        objectName: "mesh_Wipper2_1"
                                        rotation: Qt.quaternion(1, 1.49012e-08, 7.45058e-09, -4.19095e-09)
                                        Node {
                                            id: object_110
                                            objectName: "Object_110"
                                            x: 0.03848126158118248
                                            y: -1.151885747909546
                                            z: -0.7645402550697327
                                            rotation: Qt.quaternion(0.976366, 0.212092, -0.0245355, 0.033527)
                                            scale.x: 1
                                            scale.y: 1
                                            scale.z: 1
                                            Model {
                                                id: mesh_Wipper2_1_mat_plastic_0
                                                objectName: "mesh_Wipper2_1_mat_plastic_0"
                                                source: "qrc:/asset/meshes/mesh_Wipper2_1_mat_plastic_0_mesh.mesh"
                                                materials: [
                                                    mat_plastic_material
                                                ]
                                            }
                                        }
                                    }
                                }
                                Node {
                                    id: wipper2_2
                                    objectName: "Wipper2_2"
                                    x: 0.1979944258928299
                                    y: 0.08520889282226562
                                    z: -0.0038514137268066406
                                    rotation: Qt.quaternion(0.997869, 0.00201731, 0.0530481, 0.0379445)
                                    scale.x: 1
                                    scale.y: 1
                                    scale.z: 1
                                    Node {
                                        id: mesh_Wipper2_2
                                        objectName: "mesh_Wipper2_2"
                                        x: -2.7755575615628914e-17
                                        y: 1.1920928955078125e-07
                                        rotation: Qt.quaternion(1, -2.23517e-07, -2.98023e-08, 1.86264e-09)
                                        Node {
                                            id: object_114
                                            objectName: "Object_114"
                                            x: -0.15246883034706116
                                            y: -1.2146433591842651
                                            z: -0.6125936508178711
                                            rotation: Qt.quaternion(0.987481, 0.135995, -0.0797531, 0.00512871)
                                            Model {
                                                id: mesh_Wipper2_2_mat_plastic_0
                                                objectName: "mesh_Wipper2_2_mat_plastic_0"
                                                source: "qrc:/asset/meshes/mesh_Wipper2_2_mat_plastic_0_mesh.mesh"
                                                materials: [
                                                    mat_plastic_material
                                                ]
                                            }
                                        }
                                    }
                                }
                                Node {
                                    id: mesh_Wipper2
                                    objectName: "mesh_Wipper2"
                                    rotation: Qt.quaternion(1, -2.08616e-07, 3.72529e-09, -9.31323e-09)
                                    Node {
                                        id: object_117
                                        objectName: "Object_117"
                                        x: 0.0735953152179718
                                        y: -1.1375066041946411
                                        z: -0.6066540479660034
                                        rotation: Qt.quaternion(0.989138, 0.140995, -0.0220492, 0.0352121)
                                        Model {
                                            id: mesh_Wipper2_mat_plastic_0
                                            objectName: "mesh_Wipper2_mat_plastic_0"
                                            source: "qrc:/asset/meshes/mesh_Wipper2_mat_plastic_0_mesh.mesh"
                                            materials: [
                                                mat_plastic_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: mesh_Body
                                objectName: "mesh_Body"
                                Node {
                                    id: object_120
                                    objectName: "Object_120"
                                    y: -0.26827192306518555
                                    z: 0.5129973888397217
                                    Model {
                                        id: mesh_Body_mat_body_0
                                        objectName: "mesh_Body_mat_body_0"
                                        source: "qrc:/asset/meshes/mesh_Body_mat_body_0_mesh.mesh"
                                        materials:  mat_body_material
                                    }
                                    Model {
                                        id: mesh_Body_mat_bottom_0
                                        objectName: "mesh_Body_mat_bottom_0"
                                        source: "qrc:/asset/meshes/mesh_Body_mat_bottom_0_mesh.mesh"
                                        materials: [
                                            mat_bottom_material
                                        ]
                                    }
                                    Model {
                                        id: mesh_Body_mat_glass_0
                                        objectName: "mesh_Body_mat_glass_0"
                                        source: "qrc:/asset/meshes/mesh_Body_mat_glass_0_mesh.mesh"
                                        materials: [
                                            mat_glass_material
                                        ]
                                    }
                                    Model {
                                        id: mesh_Body_mat_plastic_0
                                        objectName: "mesh_Body_mat_plastic_0"
                                        source: "qrc:/asset/meshes/mesh_Body_mat_plastic_0_mesh.mesh"
                                        materials: mat_plastic_material
                                    }
                                    Model {
                                        id: mesh_Body_mat_chrome_0
                                        objectName: "mesh_Body_mat_chrome_0"
                                        source: "qrc:/asset/meshes/mesh_Body_mat_chrome_0_mesh.mesh"
                                        materials: mmercedesAMG_G63SUVRewardRecycled_2020Paint_Material1_material
                                    }
                                    Model {
                                        id: mesh_Body_mat_lights_glass_0
                                        objectName: "mesh_Body_mat_lights_glass_0"
                                        source: "qrc:/asset/meshes/mesh_Body_mat_lights_glass_0_mesh.mesh"
                                        materials: [
                                            mat_lights_glass_material
                                        ]
                                    }
                                    Model {
                                        id: mesh_Body_mat_lights_glass2_0
                                        objectName: "mesh_Body_mat_lights_glass2_0"
                                        source: "qrc:/asset/meshes/mesh_Body_mat_lights_glass2_0_mesh.mesh"
                                        materials: [
                                            mat_lights_glass2_material
                                        ]
                                    }
                                    Model {
                                        id: mesh_Body_mat_lights_0
                                        objectName: "mesh_Body_mat_lights_0"
                                        source: "qrc:/asset/meshes/mesh_Body_mat_lights_0_mesh.mesh"
                                        materials: [
                                            node.hazard ? glass___Red___Rough_material : mat_lights_material
                                        ]
                                        NumberAnimation on opacity{
                                            duration: 500
                                            from: 1.0
                                            to: 0.0
                                            loops: Animation.Infinite
                                            easing.type: Easing.InOutQuad
                                            running: node.hazard
                                        }
                                    }
                                    Model {
                                        id: mesh_Body_mat_inside_gauges_0
                                        objectName: "mesh_Body_mat_inside_gauges_0"
                                        source: "qrc:/asset/meshes/mesh_Body_mat_inside_gauges_0_mesh.mesh"
                                        materials: [
                                            mat_inside_gauges_material
                                        ]
                                    }
                                    Model {
                                        id: mesh_Body_mat_leather_0
                                        objectName: "mesh_Body_mat_leather_0"
                                        source: "qrc:/asset/meshes/mesh_Body_mat_leather_0_mesh.mesh"
                                        materials: [
                                            mat_leather_material
                                        ]
                                    }
                                    Model {
                                        id: mesh_Body_mat_inside_panel_0
                                        objectName: "mesh_Body_mat_inside_panel_0"
                                        source: "qrc:/asset/meshes/mesh_Body_mat_inside_panel_0_mesh.mesh"
                                        materials: [
                                            mat_inside_panel_material
                                        ]
                                    }
                                    Model {
                                        id: mesh_Body_mat_salon_0
                                        objectName: "mesh_Body_mat_salon_0"
                                        source: "qrc:/asset/meshes/mesh_Body_mat_salon_0_mesh.mesh"
                                        materials: [
                                            mat_salon_material
                                        ]
                                    }
                                    Model {
                                        id: mesh_Body_mat_rubber_0
                                        objectName: "mesh_Body_mat_rubber_0"
                                        source: "qrc:/asset/meshes/mesh_Body_mat_rubber_0_mesh.mesh"
                                        materials: [
                                            mat_rubber_material
                                        ]
                                    }
                                }
                            }
                            Node {
                                id: pedal001
                                objectName: "Pedal001"
                                x: -0.24541771411895752
                                y: 0.842319667339325
                                z: 0.07426834106445312
                                rotation: Qt.quaternion(1, -2.38419e-07, -2.08432e-14, 8.74228e-08)
                                Node {
                                    id: mesh_Pedal001
                                    objectName: "mesh_Pedal001"
                                    rotation: Qt.quaternion(1, 1.03628e-09, 4.16864e-14, 1.98356e-20)
                                    Node {
                                        id: object_136
                                        objectName: "Object_136"
                                        x: 0.245417520403862
                                        y: -1.1105917692184448
                                        z: 0.43872880935668945
                                        Model {
                                            id: mesh_Pedal001_mat_inside_panel_0
                                            objectName: "mesh_Pedal001_mat_inside_panel_0"
                                            source: "qrc:/asset/meshes/mesh_Pedal001_mat_inside_panel_0_mesh.mesh"
                                            materials: [
                                                mat_inside_panel_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_Pedal001_mat_salon_0
                                            objectName: "mesh_Pedal001_mat_salon_0"
                                            source: "qrc:/asset/meshes/mesh_Pedal001_mat_salon_0_mesh.mesh"
                                            materials: [
                                                mat_salon_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: pedal002
                                objectName: "Pedal002"
                                x: -0.39854738116264343
                                y: 0.974010705947876
                                z: 0.3584114611148834
                                rotation: Qt.quaternion(1, -2.38419e-07, -2.08432e-14, 8.74228e-08)
                                Node {
                                    id: mesh_Pedal002
                                    objectName: "mesh_Pedal002"
                                    rotation: Qt.quaternion(1, 1.15668e-09, 3.54681e-14, 1.68732e-20)
                                    Node {
                                        id: object_141
                                        objectName: "Object_141"
                                        x: 0.39854711294174194
                                        y: -1.2422826290130615
                                        z: 0.15458574891090393
                                        Model {
                                            id: mesh_Pedal002_mat_inside_panel_0
                                            objectName: "mesh_Pedal002_mat_inside_panel_0"
                                            source: "qrc:/asset/meshes/mesh_Pedal002_mat_inside_panel_0_mesh.mesh"
                                            materials: [
                                                mat_inside_panel_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: pedal003
                                objectName: "Pedal003"
                                x: -0.6687833070755005
                                y: 1.0495424270629883
                                z: 0.34945955872535706
                                rotation: Qt.quaternion(1, -2.38419e-07, -2.08432e-14, 8.74228e-08)
                                Node {
                                    id: mesh_Pedal_003
                                    objectName: "mesh_Pedal_003"
                                    rotation: Qt.quaternion(1, 1.15668e-09, 3.54681e-14, 1.68732e-20)
                                    Node {
                                        id: object_145
                                        objectName: "Object_145"
                                        x: 0.6687830686569214
                                        y: -1.317814588546753
                                        z: 0.16353760659694672
                                        Model {
                                            id: mesh_Pedal_003_mat_inside_panel_0
                                            objectName: "mesh_Pedal_003_mat_inside_panel_0"
                                            source: "qrc:/asset/meshes/mesh_Pedal_003_mat_inside_panel_0_mesh.mesh"
                                            materials: [
                                                mat_inside_panel_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: steeringWheel
                                objectName: "SteeringWheel"
                                x: -0.3586313724517822
                                y: 0.48624327778816223
                                z: 0.6277444362640381
                                rotation: Qt.quaternion(0.982149, -0.188104, 5.23072e-06, -2.73112e-05)
                                Node {
                                    id: mesh_SteeringWheel
                                    objectName: "mesh_SteeringWheel"
                                    x: 5.551115123125783e-17
                                    y: -5.551115123125783e-17
                                    z: -1.7881393432617188e-07
                                    rotation: Qt.quaternion(1, 1.49012e-08, -5.69907e-13, 4.13465e-12)
                                    Node {
                                        id: object_149
                                        objectName: "Object_149"
                                        x: 0.35867348313331604
                                        y: -0.658704400062561
                                        z: -0.38540735840797424
                                        rotation: Qt.quaternion(0.982149, 0.188104, -5.20843e-06, 2.73069e-05)
                                        Model {
                                            id: mesh_SteeringWheel_mat_inside_gauges_0
                                            objectName: "mesh_SteeringWheel_mat_inside_gauges_0"
                                            source: "qrc:/asset/meshes/mesh_SteeringWheel_mat_inside_gauges_0_mesh.mesh"
                                            materials: [
                                                mat_inside_gauges_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_SteeringWheel_mat_leather_0
                                            objectName: "mesh_SteeringWheel_mat_leather_0"
                                            source: "qrc:/asset/meshes/mesh_SteeringWheel_mat_leather_0_mesh.mesh"
                                            materials: [
                                                mat_leather_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_SteeringWheel_mat_inside_panel_0
                                            objectName: "mesh_SteeringWheel_mat_inside_panel_0"
                                            source: "qrc:/asset/meshes/mesh_SteeringWheel_mat_inside_panel_0_mesh.mesh"
                                            materials: [
                                                mat_inside_panel_material
                                            ]
                                        }
                                        Model {
                                            id: mesh_SteeringWheel_mat_salon_0
                                            objectName: "mesh_SteeringWheel_mat_salon_0"
                                            source: "qrc:/asset/meshes/mesh_SteeringWheel_mat_salon_0_mesh.mesh"
                                            materials: [
                                                mat_salon_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: gauge_Temp
                                objectName: "Gauge_Temp"
                                x: -0.500646710395813
                                y: 0.6586790084838867
                                z: 0.7322227954864502
                                rotation: Qt.quaternion(2.78513e-05, 0, 0, 1)
                                Node {
                                    id: mesh_Gauge_Temp
                                    objectName: "mesh_Gauge_Temp"
                                    rotation: Qt.quaternion(1, 1.2326e-32, -1.06716e-33, 0)
                                    Node {
                                        id: object_156
                                        objectName: "Object_156"
                                        x: -0.5006983876228333
                                        y: 0.9269230365753174
                                        z: -0.21922552585601807
                                        rotation: Qt.quaternion(-2.783e-05, 0, 0, 1)
                                        Model {
                                            id: mesh_Gauge_Temp_mat_inside_gauges_0
                                            objectName: "mesh_Gauge_Temp_mat_inside_gauges_0"
                                            source: "qrc:/asset/meshes/mesh_Gauge_Temp_mat_inside_gauges_0_mesh.mesh"
                                            materials: [
                                                mat_inside_gauges_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: gauge_Speed
                                objectName: "Gauge_Speed"
                                x: -0.3612712025642395
                                y: 0.659527063369751
                                z: 0.7525022029876709
                                rotation: Qt.quaternion(2.78513e-05, 0, 0, 1)
                                Node {
                                    id: mesh_Gauge_Speed
                                    objectName: "mesh_Gauge_Speed"
                                    rotation: Qt.quaternion(1, 1.2326e-32, -1.06716e-33, 0)
                                    Node {
                                        id: object_160
                                        objectName: "Object_160"
                                        x: -0.36132287979125977
                                        y: 0.9277788400650024
                                        z: -0.23950493335723877
                                        rotation: Qt.quaternion(-2.783e-05, 0, 0, 1)
                                        Model {
                                            id: mesh_Gauge_Speed_mat_inside_gauges_0
                                            objectName: "mesh_Gauge_Speed_mat_inside_gauges_0"
                                            source: "qrc:/asset/meshes/mesh_Gauge_Speed_mat_inside_gauges_0_mesh.mesh"
                                            materials: [
                                                mat_inside_gauges_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: gauge_RPM
                                objectName: "Gauge_RPM"
                                x: -0.2168240249156952
                                y: 0.654598593711853
                                z: 0.7322268486022949
                                rotation: Qt.quaternion(2.78513e-05, 0, 0, 1)
                                Node {
                                    id: mesh_Gauge_RPM
                                    objectName: "mesh_Gauge_RPM"
                                    rotation: Qt.quaternion(1, 1.2326e-32, -1.06716e-33, 0)
                                    Node {
                                        id: object_164
                                        objectName: "Object_164"
                                        x: -0.21687543392181396
                                        y: 0.9228585362434387
                                        z: -0.21922945976257324
                                        rotation: Qt.quaternion(-2.783e-05, 0, 0, 1)
                                        Model {
                                            id: mesh_Gauge_RPM_mat_inside_gauges_0
                                            objectName: "mesh_Gauge_RPM_mat_inside_gauges_0"
                                            source: "qrc:/asset/meshes/mesh_Gauge_RPM_mat_inside_gauges_0_mesh.mesh"
                                            materials: [
                                                mat_inside_gauges_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: gauge_Fuel
                                objectName: "Gauge_Fuel"
                                x: -0.500646710395813
                                y: 0.6586790084838867
                                z: 0.7322227954864502
                                rotation: Qt.quaternion(2.78513e-05, 0, 0, 1)
                                Node {
                                    id: mesh_Gauge_Fuel
                                    objectName: "mesh_Gauge_Fuel"
                                    rotation: Qt.quaternion(1, 1.2326e-32, -1.06716e-33, 0)
                                    Node {
                                        id: object_168
                                        objectName: "Object_168"
                                        x: -0.5006983876228333
                                        y: 0.9269230365753174
                                        z: -0.21922552585601807
                                        rotation: Qt.quaternion(-2.783e-05, 0, 0, 1)
                                        Model {
                                            id: mesh_Gauge_Fuel_mat_inside_gauges_0
                                            objectName: "mesh_Gauge_Fuel_mat_inside_gauges_0"
                                            source: "qrc:/asset/meshes/mesh_Gauge_Fuel_mat_inside_gauges_0_mesh.mesh"
                                            materials: [
                                                mat_inside_gauges_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: brakeDiskRL
                                objectName: "BrakeDiskRL"
                                x: -0.7670765519142151
                                y: -1.384366512298584
                                z: 0.132601797580719
                                Node {
                                    id: mesh_BrakeDiskRL
                                    objectName: "mesh_BrakeDiskRL"
                                    Node {
                                        id: object_172
                                        objectName: "Object_172"
                                        x: 0.7670765519142151
                                        y: 1.115926742553711
                                        z: 0.3955559730529785
                                        Model {
                                            id: mesh_BrakeDiskRL_mat_brakes_0
                                            objectName: "mesh_BrakeDiskRL_mat_brakes_0"
                                            source: "qrc:/asset/meshes/mesh_BrakeDiskRL_mat_brakes_0_mesh.mesh"
                                            materials: [
                                                mat_brakes_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: brakeDiskRR
                                objectName: "BrakeDiskRR"
                                x: 0.7670770287513733
                                y: -1.384366512298584
                                z: 0.132601797580719
                                Node {
                                    id: mesh_BrakeDiskRR
                                    objectName: "mesh_BrakeDiskRR"
                                    x: 0.043533504009246826
                                    Node {
                                        id: object_176
                                        objectName: "Object_176"
                                        x: -0.8106105327606201
                                        y: 1.11592698097229
                                        z: 0.39555591344833374
                                        Model {
                                            id: mesh_BrakeDiskRR_mat_brakes_0
                                            objectName: "mesh_BrakeDiskRR_mat_brakes_0"
                                            source: "qrc:/asset/meshes/mesh_BrakeDiskRR_mat_brakes_0_mesh.mesh"
                                            materials: [
                                                mat_brakes_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: brakeDiskFR
                                objectName: "BrakeDiskFR"
                                x: 0.7670770287513733
                                y: 1.4805703163146973
                                z: 0.132601797580719
                                Node {
                                    id: mesh_BrakeDiskFR
                                    objectName: "mesh_BrakeDiskFR"
                                    Node {
                                        id: object_180
                                        objectName: "Object_180"
                                        x: -0.7670770287513733
                                        y: -1.7488422393798828
                                        z: 0.3803955316543579
                                        Model {
                                            id: mesh_BrakeDiskFR_mat_brakes_0
                                            objectName: "mesh_BrakeDiskFR_mat_brakes_0"
                                            source: "qrc:/asset/meshes/mesh_BrakeDiskFR_mat_brakes_0_mesh.mesh"
                                            materials: [
                                                mat_brakes_material
                                            ]
                                        }
                                    }
                                }
                            }
                            Node {
                                id: brakeDiskFL
                                objectName: "BrakeDiskFL"
                                x: -0.7670765519142151
                                y: 1.4805703163146973
                                z: 0.132601797580719
                                Node {
                                    id: mesh_BrakeDiskFL
                                    objectName: "mesh_BrakeDiskFL"
                                    Node {
                                        id: object_184
                                        objectName: "Object_184"
                                        x: 0.7670765519142151
                                        y: -1.7488422393798828
                                        z: 0.3803955316543579
                                        Model {
                                            id: mesh_BrakeDiskFL_mat_brakes_0
                                            objectName: "mesh_BrakeDiskFL_mat_brakes_0"
                                            source: "qrc:/asset/meshes/mesh_BrakeDiskFL_mat_brakes_0_mesh.mesh"
                                            materials: [
                                                mat_brakes_material
                                            ]
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    // Animations:
    Timeline {
        id: model_open_all_timeline
        objectName: "model_open_all"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 20000
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 20000
            from: 0
            to: 20000
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: hood
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.849616, 0.739236)
            }
        }
        KeyframeGroup {
            target: hood
            property: "rotation"
            keyframeSource: "animations/hood_rotation_0.qad"
        }
        KeyframeGroup {
            target: doorFL
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.909714, 0.888667, 0.542897)
            }
        }
        KeyframeGroup {
            target: doorFL
            property: "rotation"
            keyframeSource: "animations/doorFL_rotation_0.qad"
        }
        KeyframeGroup {
            target: doorFR
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.909714, 0.888667, 0.542897)
            }
        }
        KeyframeGroup {
            target: doorFR
            property: "rotation"
            keyframeSource: "animations/doorFR_rotation_0.qad"
        }
        KeyframeGroup {
            target: doorRL
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.897087, -0.24633, 0.344687)
            }
        }
        KeyframeGroup {
            target: doorRL
            property: "rotation"
            keyframeSource: "animations/doorRL_rotation_0.qad"
        }
        KeyframeGroup {
            target: doorRR
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.897087, -0.24633, 0.344687)
            }
        }
        KeyframeGroup {
            target: doorRR
            property: "rotation"
            keyframeSource: "animations/doorRR_rotation_0.qad"
        }
        KeyframeGroup {
            target: trunk
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, -1.80277, 0.826398)
            }
        }
        KeyframeGroup {
            target: trunk
            property: "rotation"
            keyframeSource: "animations/trunk_rotation_0.qad"
        }
    }
    Timeline {
        id: model_doors_open_timeline
        objectName: "model_doors_open"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 20000
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 20000
            from: 0
            to: 20000
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: doorFL
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.909714, 0.888667, 0.542897)
            }
        }
        KeyframeGroup {
            target: doorFL
            property: "rotation"
            keyframeSource: "animations/doorFL_rotation_1.qad"
        }
        KeyframeGroup {
            target: doorFR
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.909714, 0.888667, 0.542897)
            }
        }
        KeyframeGroup {
            target: doorFR
            property: "rotation"
            keyframeSource: "animations/doorFR_rotation_1.qad"
        }
        KeyframeGroup {
            target: doorRL
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.897087, -0.24633, 0.344687)
            }
        }
        KeyframeGroup {
            target: doorRL
            property: "rotation"
            keyframeSource: "animations/doorRL_rotation_1.qad"
        }
        KeyframeGroup {
            target: doorRR
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.897087, -0.24633, 0.344687)
            }
        }
        KeyframeGroup {
            target: doorRR
            property: "rotation"
            keyframeSource: "animations/doorRR_rotation_1.qad"
        }
    }
    Timeline {
        id: model_hood_and_trunk_open_timeline
        objectName: "model_hood_and_trunk_open"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 20000
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 20000
            from: 0
            to: 20000
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: hood
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.849616, 0.739236)
            }
        }
        KeyframeGroup {
            target: hood
            property: "rotation"
            keyframeSource: "animations/hood_rotation_2.qad"
        }
        KeyframeGroup {
            target: trunk
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, -1.80277, 0.826398)
            }
        }
        KeyframeGroup {
            target: trunk
            property: "rotation"
            keyframeSource: "animations/trunk_rotation_2.qad"
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: mat_lights_glass_material
            objectName: "mat_lights_glass"
            baseColorMap: _28_texture
            metalnessMap: _29_texture
            roughnessMap: _29_texture
            metalness: 1
            roughness: 1
            normalMap: _30_texture
            occlusionMap: _29_texture
            alphaMode: PrincipledMaterial.Blend
            clearcoatAmount: 1
            clearcoatRoughnessAmount: 0.11723333597183228
        }

        PrincipledMaterial {
            id: mat_brakes_material
            objectName: "mat_brakes"
            baseColorMap: _0_texture
            metalnessMap: _1_texture
            roughnessMap: _1_texture
            metalness: 1
            roughness: 1
            normalMap: _2_texture
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: mat_rubber_material
            objectName: "mat_rubber"
            baseColorMap: _3_texture
            roughness: 0.3117988705635071
            normalMap: _4_texture
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: mat_lights_glass2_material
            objectName: "mat_lights_glass2"
            baseColorMap: _31_texture
            metalnessMap: _32_texture
            roughnessMap: _32_texture
            metalness: 1
            roughness: 0.48812389373779297
            normalMap: _33_texture
            occlusionMap: _32_texture
            alphaMode: PrincipledMaterial.Blend
            clearcoatAmount: 0.40300148725509644
        }

        PrincipledMaterial {
            id: mat_glass_material
            objectName: "mat_glass"
            baseColorMap: _5_texture
            metalnessMap: _6_texture
            roughnessMap: _6_texture
            metalness: 1
            occlusionMap: _6_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
            clearcoatAmount: 1
            clearcoatRoughnessAmount: 0.03999999910593033
        }

        PrincipledMaterial {
            id: mat_chrome_material
            objectName: "mat_chrome"
            baseColorMap: _10_texture
            metalnessMap: _11_texture
            roughnessMap: _11_texture
            metalness: 1
            roughness: 0.038191087543964386
            normalMap: _12_texture
            occlusionMap: _11_texture
            alphaMode: PrincipledMaterial.Opaque
            clearcoatAmount: 1
            clearcoatRoughnessAmount: 0.03999999910593033
        }

        PrincipledMaterial {
            id: mat_wheels_material
            objectName: "mat_wheels"
            baseColorMap: _34_texture
            metalnessMap: _35_texture
            roughnessMap: _35_texture
            metalness: 1
            roughness: 1
            normalMap: _36_texture
            occlusionMap: _35_texture
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: mat_lights_material
            objectName: "mat_lights"
            baseColorMap: _13_texture
            metalnessMap: _14_texture
            roughnessMap: _14_texture
            metalness: 1
            roughness: 1
            normalMap: _15_texture
            occlusionMap: _14_texture
            emissiveMap: _16_texture
            emissiveFactor.x: 0.5
            emissiveFactor.y: 0.5
            emissiveFactor.z: 0.5
            alphaMode: PrincipledMaterial.Blend
            transmissionFactor: 1
            transmissionMap: _17_texture
        }

        PrincipledMaterial {
            id: mat_plastic_material
            objectName: "mat_plastic"
            baseColorMap: _7_texture
            metalnessMap: _8_texture
            roughnessMap: _8_texture
            metalness: 1
            roughness: 1
            normalMap: _9_texture
            occlusionMap: _8_texture
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: mat_leather_material
            objectName: "mat_leather"
            baseColorMap: _18_texture
            metalnessMap: _19_texture
            roughnessMap: _19_texture
            metalness: 1
            roughness: 1
            normalMap: _20_texture
            occlusionMap: _19_texture
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: mat_tires_material
            objectName: "mat_tires"
            baseColorMap: _37_texture
            metalnessMap: _38_texture
            roughnessMap: _38_texture
            metalness: 0.2327566295862198
            roughness: 1
            normalMap: _39_texture
            occlusionMap: _38_texture
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: mat_inside_panel_material
            objectName: "mat_inside_panel"
            baseColorMap: _21_texture
            metalnessMap: _22_texture
            roughnessMap: _22_texture
            metalness: 1
            roughness: 1
            normalMap: _23_texture
            occlusionMap: _22_texture
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: mat_salon_material
            objectName: "mat_salon"
            baseColorMap: _24_texture
            metalnessMap: _25_texture
            roughnessMap: _25_texture
            metalness: 1
            roughness: 1
            normalMap: _26_texture
            occlusionMap: _25_texture
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: mat_body_material
            objectName: "mat_body"
            baseColor: "#ff646464"
            metalnessMap: _27_texture
            roughnessMap: _27_texture
            metalness: 1
            roughness: 0.5306851267814636
            occlusionMap: _27_texture
            alphaMode: PrincipledMaterial.Opaque
            clearcoatAmount: 1
            clearcoatRoughnessAmount: 0.02603074163198471
        }

        PrincipledMaterial {
            id: mat_bottom_material
            objectName: "mat_bottom"
            baseColorMap: _40_texture
            metalnessMap: _41_texture
            roughnessMap: _41_texture
            metalness: 1
            roughness: 1
            normalMap: _42_texture
            occlusionMap: _41_texture
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: mat_inside_gauges_material
            objectName: "mat_inside_gauges"
            baseColorMap: _43_texture
            metalnessMap: _44_texture
            roughnessMap: _44_texture
            metalness: 1
            roughness: 1
            normalMap: _45_texture
            occlusionMap: _44_texture
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020_Wheel1A_3D_3DWhee_e9cc5dd1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020_Wheel1A_3D_3DWhee_e9cc5dd1"
            baseColor: "#ff000000"
            metalness: 0.6000000238418579
            roughness: 0.5
            normalMap: _1_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020BadgeA_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020BadgeA_Material1"
            baseColorMap: _2_texture
            normalMap: _3_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Mask
            depthDrawMode: PrincipledMaterial.OpaquePrePassDepthDraw
            alphaCutoff: 1
        }
        PrincipledMaterial {
            id: transparent_glass
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020_CallipersCalliper_f45f821"
            baseColor: "#00ffffff"
            roughness: 0.6230030059814453
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }
        PrincipledMaterial {
            id: calip_C2_material
            objectName: "calip_C2"
            baseColor: "#ff0a0a0a"
            metalness: 0.6384779810905457
            roughness: 0.35200101137161255
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020Base_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020Base_Material1"
            baseColor: "#ff000000"
            roughness: 0.8030499815940857
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020Carbon1_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020Carbon1_Material1"
            baseColorMap: _4_texture
            roughness: 0.47999998927116394
            normalMap: _5_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
            clearcoatAmount: 0.3398109972476959
            clearcoatRoughnessAmount: 0.03999999910593033
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020Coloured_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020Coloured_Material1"
            baseColorMap: _6_texture
            metalnessMap: _7_texture
            roughnessMap: _7_texture
            metalness: 0.5
            roughness: 0.30000001192092896
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020EngineA_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020EngineA_Material1"
            baseColorMap: _8_texture
            metalness: 1
            roughness: 1
            normalMap: _9_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020_CallipersCalliper_d7f9069_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020_CallipersCalliper_d7f9069"
            baseColor: "#ff320000"
            metalness: 0.550000011920929
            normalMap: _0_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020Grille2A_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020Grille2A_Material1"
            baseColorMap: _11_texture
            roughness: 1
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020Grille3A_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020Grille3A_Material1"
            baseColorMap: _12_texture
            metalness: 0.6994310021400452
            roughness: 0.6689540147781372
            normalMap: _13_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020Grille4A_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020Grille4A_Material1"
            baseColorMap: _14_texture
            metalness: 0.5897160172462463
            roughness: 0.6689540147781372
            normalMap: _15_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020Grille5A_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020Grille5A_Material1"
            baseColorMap: _16_texture
            metalness: 0.728457510471344
            roughness: 0.7116209864616394
            normalMap: _17_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020Grille6A_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020Grille6A_Material1"
            baseColorMap: _18_texture
            metalnessMap: _19_texture
            roughnessMap: _19_texture
            metalness: 1
            roughness: 0.3769969940185547
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020Grille7A_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020Grille7A_Material1"
            baseColorMap: _20_texture
            metalnessMap: _21_texture
            roughnessMap: _21_texture
            metalness: 1
            roughness: 0.36419200897216797
            normalMap: _22_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020Grille8A_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020Grille8A_Material1"
            baseColorMap: _23_texture
            metalness: 0.6080020070075989
            roughness: 0.6201919913291931
            normalMap: _24_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020Grille9A_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020Grille9A_Material1"
            baseColorMap: _25_texture
            metalness: 0.6384779810905457
            roughness: 0.6689540147781372
            normalMap: _26_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020InteriorTillingCol_72b3228_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020InteriorTillingCol_72b3228"
            baseColor: "#ff000000"
            roughness: 0.6872400045394897
            normalMap: _27_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020InteriorTillingA_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020InteriorTillingA_Material1"
            baseColorMap: _28_texture
            metalness: 0.5653349757194519
            roughness: 0.7664790153503418
            normalMap: _29_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020InteriorA_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020InteriorA_Material1"
            baseColor: "#ff000000"
            roughness: 0.728457510471344
            normalMap: _30_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020LightA_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020LightA_Material1"
            baseColorMap: _31_texture
            metalnessMap: _32_texture
            roughnessMap: _32_texture
            metalness: 1
            roughness: 0.24838200211524963
            normalMap: _33_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020ManufacturerPlateA_81eee95_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020ManufacturerPlateA_81eee95"
            baseColorMap: _34_texture
            metalness: 1
            roughness: 1
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020Paint_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020Paint_Material1"
            baseColor: "#ffc7c7c7"
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
            clearcoatAmount: 1
            clearcoatRoughnessAmount: 0.4000000059604645
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020Textured2A_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020Textured2A_Material1"
            baseColorMap: _35_texture
            metalnessMap: _36_texture
            roughnessMap: _36_texture
            metalness: 1
            roughness: 0.24228599667549133
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020TexturedA_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020TexturedA_Material1"
            baseColorMap: _37_texture
            metalnessMap: _38_texture
            roughnessMap: _38_texture
            metalness: 1
            roughness: 0.2727630138397217
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020Window_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020Window_Material1"
            baseColor: "#33000000"
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }
        PrincipledMaterial {
            id: orange_glass_material
            objectName: "orange_glass"
            baseColor: "#40490000"
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
            transmissionFactor: 1
        }
        PrincipledMaterial {
            id: red_glass_material
            objectName: "red_glass"
            baseColor: "#40800000"
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
            transmissionFactor: 1
        }
        PrincipledMaterial {
            id: material_material
            objectName: "material"
            baseColorMap: _39_texture
            metalness: 0.2666670083999634
            roughness: 0.3276199996471405
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }
        PrincipledMaterial {
            id: mmercedesAMG_G63SUVRewardRecycled_2020Grille1A_Material1_material
            objectName: "MMercedesAMG_G63SUVRewardRecycled_2020Grille1A_Material1"
            baseColorMap: _10_texture
            metalness: 1
            roughness: 0.6933349967002869
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
        PrincipledMaterial {
            id: newMaterial1
            attenuationColor: "#ffffff"
            roughness: 0.25708
            clearcoatRoughnessAmount: 0.04
            clearcoatAmount: 1
            metalness: 0.4638
            emissiveFactor.x: 1
            emissiveFactor.y: 1
            baseColor: "#ffffff"
            alphaMode: PrincipledMaterial.Opaque
            emissiveFactor.z: 1
            cullMode: PrincipledMaterial.NoCulling
            objectName: "New Material"
        }
        PrincipledMaterial {
            id: glass___Red___Rough_material
            baseColor: "#c8350a"
            objectName: "Glass - Red - Rough"
            roughness: 0.2
            metalness: 0.5
            emissiveFactor: 1
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
    }

    PerspectiveCamera {
        id: perspectiveCamera
        x: 0
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: -90
        z: 0
        y: 200
    }

    SpotLight {
        id: spotlight
        x: -0
        y: 499.997
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: -90
        z: 0.31882
        brightness: 50
    }

    SpotLight {
        id: spotLight_1
        x: 22.439
        y: 19.83
        eulerRotation.z: -0
        eulerRotation.y: 0
        eulerRotation.x: -0
        z: -64.83834
        quadraticFade: 20
        brightness: node.light_high ? 50000 : 0
        castsShadow: true
        //shadowMapQuality: Light.ShadowMapQualityHigh
    }
    SpotLight {
        id: spotLight_2
        x: -22.815
        y: 19.83
        eulerRotation.z: -0
        eulerRotation.y: 0
        eulerRotation.x: -0
        z: -61.13516
        quadraticFade: 20
        brightness: node.light_high ? 50000 : 0
        castsShadow: true
        //shadowMapQuality: Light.ShadowMapQualityHigh
    }
    SpotLight {
        id: spotLight_3
        x: 22.439
        y: 19.83
        eulerRotation.z: -0
        eulerRotation.y: 0
        eulerRotation.x: -15
        z: -64.83834
        quadraticFade: 20
        brightness: node.light_low ? 50000 : 0
        castsShadow: true
        //shadowMapQuality: Light.ShadowMapQualityHigh
    }
    SpotLight {
        id: spotLight_4
        x: -22.815
        y: 19.83
        eulerRotation.z: -0
        eulerRotation.y: 0
        eulerRotation.x: -15
        z: -61.13516
        quadraticFade: 20
        brightness: node.light_low ? 50000 : 0
        castsShadow: true
        //shadowMapQuality: Light.ShadowMapQualityHigh
    }

    SpotLight {
        id: spotLight1
        x: 20.722
        y: 20.201
        eulerRotation.z: -0
        eulerRotation.y: 180
        eulerRotation.x: -4.41557
        z: -68.764
        quadraticFade: 200000000000
        brightness: node.light_high ? 8000 : 0
        castsShadow: true
    }

    SpotLight {
        id: spotLight2
        x: 16.663
        y: 19.229
        z: -69.40885
        quadraticFade: 200000000000000
        eulerRotation.z: -0.83804
        eulerRotation.y: -167.48021
        eulerRotation.x: -2.62194
        castsShadow: true
        brightness: node.light_low ? 8000 : 0
    }

    Model {
        id: sphere
        x: 22.766
        y: 20.106
        source: "#Sphere"
        scale.z: 0.02326
        scale.y: 0.02326
        scale.x: 0.02326
        z: -59.44863
        materials: node.light_high ? newMaterial1 : mat_glass_material
    }

    Model {
        id: sphere1
        x: 17.448
        y: 19.078
        source: "#Sphere"
        scale.z: 0.00962
        scale.y: 0.00962
        scale.x: 0.00962
        z: -62.31736
        materials: node.light_low ? newMaterial1 : mat_glass_material
    }
    Model {
        id: sphere2
        x: -22.766
        y: 20.106
        source: "#Sphere"
        scale.z: 0.02326
        scale.y: 0.02326
        scale.x: 0.02326
        z: -59.44863
        materials: node.light_high ? newMaterial1 : mat_glass_material
    }

    Model {
        id: sphere3
        x: -17.448
        y: 19.078
        source: "#Sphere"
        scale.z: 0.00962
        scale.y: 0.00962
        scale.x: 0.00962
        z: -62.31736
        materials: node.light_low ? newMaterial1 : mat_glass_material
    }

    // SpotLight {
    //     id: spotlight3
    //     x: 28.297
    //     y: 19.984
    //     eulerRotation.z: -31.91599
    //     eulerRotation.y: 119.08849
    //     eulerRotation.x: 1.84286
    //     z: -61.8396
    //     quadraticFade: 20000
    //     brightness: node.light_high ? 1000 : 0
    //     castsShadow: true
    // }

    // SpotLight {
    //     id: spotlight4
    //     x: 18.145
    //     y: 17.834
    //     eulerRotation.z: 0.00002
    //     eulerRotation.y: 132.12119
    //     eulerRotation.x: -0.00003
    //     z: -66.51325
    //     quadraticFade: 2000
    //     brightness: node.light_low ? 1000 : 0
    //     castsShadow: true
    // }
    SpotLight {
        id: spotLight5
        x: -20.722
        y: 20.201
        eulerRotation.z: -0
        eulerRotation.y: 180
        eulerRotation.x: -4.41557
        z: -68.764
        quadraticFade: 200000000000
        brightness: node.light_high ? 8000 : 0
        castsShadow: true
    }

    SpotLight {
        id: spotLight6
        x: -16.663
        y: 19.229
        z: -69.40885
        quadraticFade: 200000000000000
        eulerRotation.z: 0.23992
        eulerRotation.y: 169.78522
        eulerRotation.x: -2.74206
        castsShadow: true
        brightness: node.light_low ? 8000 : 0
    }
    // SpotLight {
    //     id: spotlight7
    //     x: -28.297
    //     y: 19.984
    //     eulerRotation.z: 31.91599
    //     eulerRotation.y: -119.08849
    //     eulerRotation.x: -1.84286
    //     z: -61.8396
    //     quadraticFade: 20000
    //     brightness: node.light_high ? 1000 : 0
    //     castsShadow: true
    // }

    // SpotLight {
    //     id: spotlight8
    //     x: -18.145
    //     y: 17.834
    //     eulerRotation.z: -0.00002
    //     eulerRotation.y: -132.12119
    //     eulerRotation.x: 0.00003
    //     z: -66.51325
    //     quadraticFade: 2000
    //     brightness: node.light_low ? 1000 : 0
    //     castsShadow: true
    // }
    SpotLight {
        id: spotlight_signal_FL
        property bool ha: node.hazard
        x: -37.327
        y: 31.02
        eulerRotation.y: 23.01688
        z: -21.5352
        color: "#c8350a"
        quadraticFade: 10
        brightness: node.bright
        NumberAnimation on brightness{
            duration: 500
            from: 0
            to: 50000
            loops: Animation.Infinite
            easing.type: Easing.InOutQuad
            running: node.light_signal_left || node.hazard
        }
        castsShadow: true
        onHaChanged: {
            if(!node.hazard) brightness = 0
        }
    }
    SpotLight {
        id: spotlight_signal_FR
        property bool ha: node.hazard
        x: 37.327
        y: 31.02
        eulerRotation.y: -23.01688
        z: -21.5352
        color: "#c8350a"
        quadraticFade: 10
        brightness: node.bright
        NumberAnimation on brightness{
            duration: 500
            from: 0
            to: 50000
            loops: Animation.Infinite
            easing.type: Easing.InOutQuad
            running: node.light_signal_right || node.hazard
        }
        castsShadow: true
        onHaChanged: {
            if(!node.hazard) brightness = 0
        }
    }

    SpotLight {
        id: spotlight_signal_RL
        property bool ha: node.hazard
        x: -21.689
        y: 25.12
        eulerRotation.z: 0.00001
        eulerRotation.y: 148.62088
        eulerRotation.x: -0.00004
        z: 68.37111
        color: "#c8350a"
        quadraticFade: 10
        brightness: node.bright
        NumberAnimation on brightness{
            duration: 500
            from: 0
            to: 50000
            loops: Animation.Infinite
            easing.type: Easing.InOutQuad
            running: node.light_signal_left || node.hazard
        }
        castsShadow: true
        onHaChanged: {
            if(!node.hazard) brightness = 0
        }
    }

    SpotLight {
        id: spotlight_signal_RR
        x: 21.689
        y: 25.12
        property bool ha: node.hazard
        eulerRotation.z: -0.00001
        eulerRotation.y: -148.62088
        eulerRotation.x: -0
        z: 68.37111
        color: "#c8350a"
        quadraticFade: 10
        brightness: node.bright
        NumberAnimation on brightness{
            duration: 500
            from: 0
            to: 50000
            loops: Animation.Infinite
            easing.type: Easing.InOutQuad
            running: node.light_signal_right || node.hazard
        }
        castsShadow: true
        onHaChanged: {
            if(!node.hazard) brightness = 0
        }
    }

    SpotLight {
        id: spotlight_interior1
        x: -0.221
        y: 39.326
        z: -13.37906
        eulerRotation.z: 179.99998
        eulerRotation.y: -179.99998
        eulerRotation.x: -66.36419
        quadraticFade: 10
        brightness: node.light_interior ? 10000 : 0
        castsShadow: true
        shadowMapQuality: Light.ShadowMapQualityHigh
    }
    SpotLight {
        id: spotlight_interior2
        x: 0.759
        y: 44.661
        z: 23.56234
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: -90
        quadraticFade: 10
        brightness: node.light_interior ? 10000 : 0
        castsShadow: true
        shadowMapQuality: Light.ShadowMapQualityHigh
    }
    Connections{
        target: door
        function onSignal_door(door, mode){
            switch(door){
            case 0:
                mesh_DoorFL.eulerRotation.z = mode ? -45 : 0
                break;
            case 1:
                mesh_DoorFR.eulerRotation.z = mode ? 45 : 0
                break;
            case 2:
                mesh_DoorRL.eulerRotation.z = mode ? -45 : 0
                break;
            case 3:
                mesh_DoorRR.eulerRotation.z = mode ? 45 : 0
                break;
            case 4:
                mesh_Hood.eulerRotation.x = mode ? 45 : 0
                break;
            case 5:
                mesh_Trunk.eulerRotation.x = mode ? -45 : 0
                break;
            case 6:
                mesh_DoorFL.eulerRotation.z = mode ? -45 : 0
                mesh_DoorFR.eulerRotation.z = mode ? 45 : 0
                mesh_DoorRL.eulerRotation.z = mode ? -45 : 0
                mesh_DoorRR.eulerRotation.z = mode ? 45 : 0
                mesh_Hood.eulerRotation.x = mode ? 45 : 0
                mesh_Trunk.eulerRotation.x = mode ? -45 : 0
            }
        }

        function onSignal_glass(glass, mode){
            switch(glass){
            case 0:
                mesh_DoorFL_mat_glass_0.z = mode ? -0.37364 : 0
                break;
            case 1:
                mesh_DoorFR_mat_glass_0.z = mode ? -0.37364 : 0
                break;
            case 2:
                mesh_DoorRL_mat_glass_0.z = mode ? -0.37364 : 0
                break;
            case 3:
                mesh_DoorRR_mat_glass_0.z = mode ? -0.37364 : 0
                break;
            case 4:
                mesh_DoorFL_mat_glass_0.z = mode ? -0.37364 : 0
                mesh_DoorFR_mat_glass_0.z = mode ? -0.37364 : 0
                mesh_DoorRL_mat_glass_0.z = mode ? -0.37364 : 0
                mesh_DoorRR_mat_glass_0.z = mode ? -0.37364 : 0
                break;
            }
        }
    }
    Connections{
        target: light
        function onSignal_light(mode){
            node.light_interior = mode
        }
        function onSignal_light_high(mode){
            node.light_high = mode
        }
        function onSignal_light_low(mode){
            node.light_low = mode
        }
        function onSignal_light_left(mode){
            node.light_signal_left = mode
        }
        function onSignal_light_right(mode){
            node.light_signal_right = mode
        }
        function onSignal_hazard(mode){
            node.hazard = mode
        }
    }
}

/*##^##
Designer {
    D{i:0;cameraSpeed3d:1;cameraSpeed3dMultiplier:1}
}
##^##*/
