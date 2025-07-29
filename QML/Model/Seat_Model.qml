import QtQuick
import QtQuick3D

Node {
    id: node

    property alias seay_backrest1: seay_backrest1
    property alias seat_pocket1: seat_pocket1
    property alias seat_base1: seat_base1
    property alias seay_backrest2: seay_backrest2
    property alias seat_pocket2: seat_pocket2
    property alias seat_base2: seat_base2

    Node {
        id: rootNode
        x: 36.203
        y: 0
        z: -115.66043
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: 0
        objectName: "RootNode"
        Model {
            id: seay_backrest
            objectName: "seay backrest"
            x: -5.846825122833252
            y: 162.58079528808594
            z: 25.30283546447754
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "qrc:/asset/meshes/seay_backrest_mesh.mesh"
            materials: black_plastic_002_material
        }
        Model {
            id: seat_pocket
            objectName: "Seat pocket"
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "qrc:/asset/meshes/plane_008_mesh.mesh"
            materials: [
                black_lether__smooth_material
            ]
        }
        Model {
            id: seat_base
            objectName: "SEat base"
            x: -5.846825122833252
            y: 127.96637725830078
            z: 44.48672103881836
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "qrc:/asset/meshes/seat_base_mesh.mesh"
            materials: black_plastic_002_material
        }
        Node {
            id: mirror_empty
            objectName: "MIrror empty"
            x: -5.846825122833252
            y: 133.35476684570312
            z: 25.30283546447754
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: -11.4971
            scale.y: -11.4971
            scale.z: -11.4971
        }
        Model {
            id: backrest_control
            objectName: "Backrest control"
            x: -26.470815658569336
            y: 120.17303466796875
            z: 47.919673919677734
            rotation: Qt.quaternion(0.703456, -0.0717632, -0.703456, 0.0717632)
            scale.x: 87.6036
            scale.y: 93.5615
            scale.z: 100
            source: "qrc:/asset/meshes/backrest_control_mesh.mesh"
            materials: [
                black_plastic_002_material,
                chromehead_material
            ]
        }
        Model {
            id: seat_base_control
            objectName: "Seat base control"
            x: -26.44721221923828
            y: 118.04698944091797
            z: 50.58028793334961
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
            scale.x: 86.6553
            scale.y: 100
            scale.z: 100
            source: "qrc:/asset/meshes/seat_base_control_mesh.mesh"
            materials: [
                black_plastic_002_material,
                chromehead_material
            ]
        }
        Model {
            id: lumber_control
            objectName: "lumber control"
            x: -26.345304489135742
            y: 120.70008850097656
            z: 53.968597412109375
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
            scale.x: 9.33224
            scale.y: 9.33224
            scale.z: 9.33224
            source: "qrc:/asset/meshes/lumber_control_mesh.mesh"
            materials: [
                black_plastic_002_material,
                chromehead_material
            ]
        }
        Model {
            id: headrest_control
            objectName: "headrest control"
            x: -26.463708877563477
            y: 121.71463012695312
            z: 49.43026351928711
            rotation: Qt.quaternion(0.705182, -0.0521322, -0.705182, 0.0521321)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "qrc:/asset/meshes/headrest_control_mesh.mesh"
            materials: [
                black_plastic_002_material,
                chromehead_material
            ]
        }
        Model {
            id: seat_frame
            objectName: "Seat frame"
            x: -5.846825122833252
            y: 108.17389678955078
            z: 45.35845947265625
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 100
            scale.y: 100
            scale.z: 100
            source: "qrc:/asset/meshes/cube_mesh.mesh"
            materials: [
                blackplastic_material
            ]
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: main_lether__002_material
            objectName: "main lether..002"
            baseColor: "#ff6b0101"
            roughness: 0.67090904712677
        }

        PrincipledMaterial {
            id: main_lether_plain_material
            objectName: "main lether plain"
            baseColor: "#ff5c0201"
            roughness: 0.5727272629737854
        }

        PrincipledMaterial {
            id: seat_strips_material
            objectName: "seat strips"
            baseColor: "#ff010101"
            roughness: 0.41999995708465576
        }

        PrincipledMaterial {
            id: black_lether__smooth_material
            objectName: "Black lether. smooth"
            baseColor: "#091208"
            roughness: 0.7036363482475281
        }

        PrincipledMaterial {
            id: ________seat_back_plastic_material
            objectName: "]]]]]]]]seat back plastic"
            baseColor: "#ff020202"
            roughness: 0.6672727465629578
        }

        PrincipledMaterial {
            id: chromehead_material
            objectName: "chromehead"
            baseColor: "#ffcccccc"
            roughness: 0.2563636302947998
        }

        PrincipledMaterial {
            id: black_plastic_002_material
            objectName: "black plastic.002"
            baseColor: "#ff000000"
            roughness: 0.5
        }

        PrincipledMaterial {
            id: blackplastic_material
            objectName: "Blackplastic"
            baseColor: "#ff020202"
            roughness: 0.6672727465629578
        }
    }

    Node {
        id: rootNode1
        x: 0
        y: 0
        z: 0
        objectName: "RootNode"
        eulerRotation.z: -0.00003
        eulerRotation.y: 0
        eulerRotation.x: 0
        Model {
            id: seay_backrest1
            x: -5.847
            y: 162.581
            source: "qrc:/asset/meshes/seay_backrest_mesh.mesh"
            z: 25.30284
            scale.z: 100
            scale.y: 100
            scale.x: 100
            objectName: "seay backrest"
            materials: black_plastic_002_material
        }

        Model {
            id: seat_pocket1
            source: "qrc:/asset/meshes/plane_008_mesh.mesh"
            scale.z: 100
            scale.y: 100
            scale.x: 100
            objectName: "Seat pocket"
            materials: [
                black_lether__smooth_material
            ]
        }

        Model {
            id: seat_base1
            x: -5.847
            y: 127.966
            source: "qrc:/asset/meshes/seat_base_mesh.mesh"
            z: 44.48672
            scale.z: 100
            scale.y: 100
            scale.x: 100
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            objectName: "SEat base"
            materials: black_plastic_002_material
        }

        Node {
            id: mirror_empty1
            x: -5.847
            y: 133.355
            z: 25.30284
            scale.z: -11.4971
            scale.y: -11.4971
            scale.x: -11.4971
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            objectName: "MIrror empty"
        }

        Model {
            id: backrest_control1
            x: -26.471
            y: 120.173
            source: "qrc:/asset/meshes/backrest_control_mesh.mesh"
            z: 47.91967
            scale.z: 100
            scale.y: 93.5615
            scale.x: 87.6036
            rotation: Qt.quaternion(0.703456, -0.0717632, -0.703456, 0.0717632)
            objectName: "Backrest control"
            materials: [
                black_plastic_002_material,
                chromehead_material
            ]
        }

        Model {
            id: seat_base_control1
            x: -26.447
            y: 118.047
            source: "qrc:/asset/meshes/seat_base_control_mesh.mesh"
            z: 50.58029
            scale.z: 100
            scale.y: 100
            scale.x: 86.6553
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
            objectName: "Seat base control"
            materials: [
                black_plastic_002_material,
                chromehead_material
            ]
        }

        Model {
            id: lumber_control1
            x: -26.345
            y: 120.7
            source: "qrc:/asset/meshes/lumber_control_mesh.mesh"
            z: 53.9686
            scale.z: 9.33224
            scale.y: 9.33224
            scale.x: 9.33224
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
            objectName: "lumber control"
            materials: [
                black_plastic_002_material,
                chromehead_material
            ]
        }

        Model {
            id: headrest_control1
            x: -26.464
            y: 121.715
            source: "qrc:/asset/meshes/headrest_control_mesh.mesh"
            z: 49.43026
            scale.z: 100
            scale.y: 100
            scale.x: 100
            rotation: Qt.quaternion(0.705182, -0.0521322, -0.705182, 0.0521321)
            objectName: "headrest control"
            materials: [
                black_plastic_002_material,
                chromehead_material
            ]
        }

        Model {
            id: seat_frame1
            x: -5.847
            y: 108.174
            source: "qrc:/asset/meshes/cube_mesh.mesh"
            z: 45.35846
            scale.z: 100
            scale.y: 100
            scale.x: 100
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            objectName: "Seat frame"
            materials: [
                blackplastic_material
            ]
        }
    }

    Node {
        id: rootNode2
        x: 74
        y: -0
        z: -0
        objectName: "RootNode"
        eulerRotation.z: -0.00003
        eulerRotation.y: 0
        eulerRotation.x: 0
        Model {
            id: seay_backrest2
            x: -5.847
            y: 162.581
            source: "qrc:/asset/meshes/seay_backrest_mesh.mesh"
            z: 25.30284
            scale.z: 100
            scale.y: 100
            scale.x: 100
            objectName: "seay backrest"
            materials: black_plastic_002_material
        }

        Model {
            id: seat_pocket2
            source: "qrc:/asset/meshes/plane_008_mesh.mesh"
            scale.z: 100
            scale.y: 100
            scale.x: 100
            objectName: "Seat pocket"
            materials: [
                black_lether__smooth_material
            ]
        }

        Model {
            id: seat_base2
            x: -5.847
            y: 127.966
            source: "qrc:/asset/meshes/seat_base_mesh.mesh"
            z: 44.48672
            scale.z: 100
            scale.y: 100
            scale.x: 100
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            objectName: "SEat base"
            materials: black_plastic_002_material
        }

        Node {
            id: mirror_empty2
            x: -5.847
            y: 133.355
            z: 25.30284
            scale.z: -11.4971
            scale.y: -11.4971
            scale.x: -11.4971
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            objectName: "MIrror empty"
        }

        Model {
            id: backrest_control2
            x: -26.471
            y: 120.173
            source: "qrc:/asset/meshes/backrest_control_mesh.mesh"
            z: 47.91967
            scale.z: 100
            scale.y: 93.5615
            scale.x: 87.6036
            rotation: Qt.quaternion(0.703456, -0.0717632, -0.703456, 0.0717632)
            objectName: "Backrest control"
            materials: [
                black_plastic_002_material,
                chromehead_material
            ]
        }

        Model {
            id: seat_base_control2
            x: -26.447
            y: 118.047
            source: "qrc:/asset/meshes/seat_base_control_mesh.mesh"
            z: 50.58029
            scale.z: 100
            scale.y: 100
            scale.x: 86.6553
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
            objectName: "Seat base control"
            materials: [
                black_plastic_002_material,
                chromehead_material
            ]
        }

        Model {
            id: lumber_control2
            x: -26.345
            y: 120.7
            source: "qrc:/asset/meshes/lumber_control_mesh.mesh"
            z: 53.9686
            scale.z: 9.33224
            scale.y: 9.33224
            scale.x: 9.33224
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
            objectName: "lumber control"
            materials: [
                black_plastic_002_material,
                chromehead_material
            ]
        }

        Model {
            id: headrest_control2
            x: -26.464
            y: 121.715
            source: "qrc:/asset/meshes/headrest_control_mesh.mesh"
            z: 49.43026
            scale.z: 100
            scale.y: 100
            scale.x: 100
            rotation: Qt.quaternion(0.705182, -0.0521322, -0.705182, 0.0521321)
            objectName: "headrest control"
            materials: [
                black_plastic_002_material,
                chromehead_material
            ]
        }

        Model {
            id: seat_frame2
            x: -5.847
            y: 108.174
            source: "qrc:/asset/meshes/cube_mesh.mesh"
            z: 45.35846
            scale.z: 100
            scale.y: 100
            scale.x: 100
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            objectName: "Seat frame"
            materials: [
                blackplastic_material
            ]
        }
    }

    Node {
        id: rootNode3
        x: 0
        y: 0
        z: -115
        objectName: "RootNode"
        eulerRotation.z: -0.00003
        eulerRotation.y: 0
        eulerRotation.x: 0
        Model {
            id: seay_backrest3
            x: -5.847
            y: 162.581
            source: "qrc:/asset/meshes/seay_backrest_mesh.mesh"
            z: 25.30284
            scale.z: 100
            scale.y: 100
            scale.x: 100
            objectName: "seay backrest"
            materials: black_plastic_002_material
        }

        Model {
            id: seat_pocket3
            source: "qrc:/asset/meshes/plane_008_mesh.mesh"
            scale.z: 100
            scale.y: 100
            scale.x: 100
            objectName: "Seat pocket"
            materials: [
                black_lether__smooth_material
            ]
        }

        Model {
            id: seat_base3
            x: -5.847
            y: 127.966
            source: "qrc:/asset/meshes/seat_base_mesh.mesh"
            z: 44.48672
            scale.z: 100
            scale.y: 100
            scale.x: 100
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            objectName: "SEat base"
            materials: black_plastic_002_material
        }

        Node {
            id: mirror_empty3
            x: -5.847
            y: 133.355
            z: 25.30284
            scale.z: -11.4971
            scale.y: -11.4971
            scale.x: -11.4971
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            objectName: "MIrror empty"
        }

        Model {
            id: backrest_control3
            x: -26.471
            y: 120.173
            source: "qrc:/asset/meshes/backrest_control_mesh.mesh"
            z: 47.91967
            scale.z: 100
            scale.y: 93.5615
            scale.x: 87.6036
            rotation: Qt.quaternion(0.703456, -0.0717632, -0.703456, 0.0717632)
            objectName: "Backrest control"
            materials: [
                black_plastic_002_material,
                chromehead_material
            ]
        }

        Model {
            id: seat_base_control3
            x: -26.447
            y: 118.047
            source: "qrc:/asset/meshes/seat_base_control_mesh.mesh"
            z: 50.58029
            scale.z: 100
            scale.y: 100
            scale.x: 86.6553
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
            objectName: "Seat base control"
            materials: [
                black_plastic_002_material,
                chromehead_material
            ]
        }

        Model {
            id: lumber_control3
            x: -26.345
            y: 120.7
            source: "qrc:/asset/meshes/lumber_control_mesh.mesh"
            z: 53.9686
            scale.z: 9.33224
            scale.y: 9.33224
            scale.x: 9.33224
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
            objectName: "lumber control"
            materials: [
                black_plastic_002_material,
                chromehead_material
            ]
        }

        Model {
            id: headrest_control3
            x: -26.464
            y: 121.715
            source: "qrc:/asset/meshes/headrest_control_mesh.mesh"
            z: 49.43026
            scale.z: 100
            scale.y: 100
            scale.x: 100
            rotation: Qt.quaternion(0.705182, -0.0521322, -0.705182, 0.0521321)
            objectName: "headrest control"
            materials: [
                black_plastic_002_material,
                chromehead_material
            ]
        }

        Model {
            id: seat_frame3
            x: -5.847
            y: 108.174
            source: "qrc:/asset/meshes/cube_mesh.mesh"
            z: 45.35846
            scale.z: 100
            scale.y: 100
            scale.x: 100
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            objectName: "Seat frame"
            materials: [
                blackplastic_material
            ]
        }
    }

    Node {
        id: rootNode4
        x: 74
        y: 0
        z: -115
        objectName: "RootNode"
        eulerRotation.z: -0.00003
        eulerRotation.y: 0
        eulerRotation.x: 0
        Model {
            id: seay_backrest4
            x: -5.847
            y: 162.581
            source: "qrc:/asset/meshes/seay_backrest_mesh.mesh"
            z: 25.30284
            scale.z: 100
            scale.y: 100
            scale.x: 100
            objectName: "seay backrest"
            materials: black_plastic_002_material
        }

        Model {
            id: seat_pocket4
            source: "qrc:/asset/meshes/plane_008_mesh.mesh"
            scale.z: 100
            scale.y: 100
            scale.x: 100
            objectName: "Seat pocket"
            materials: [
                    black_lether__smooth_material
                ]
        }

        Model {
            id: seat_base4
            x: -5.847
            y: 127.966
            source: "qrc:/asset/meshes/seat_base_mesh.mesh"
            z: 44.48672
            scale.z: 100
            scale.y: 100
            scale.x: 100
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            objectName: "SEat base"
            materials: black_plastic_002_material
        }

        Node {
            id: mirror_empty4
            x: -5.847
            y: 133.355
            z: 25.30284
            scale.z: -11.4971
            scale.y: -11.4971
            scale.x: -11.4971
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            objectName: "MIrror empty"
        }

        Model {
            id: backrest_control4
            x: -26.471
            y: 120.173
            source: "qrc:/asset/meshes/backrest_control_mesh.mesh"
            z: 47.91967
            scale.z: 100
            scale.y: 93.5615
            scale.x: 87.6036
            rotation: Qt.quaternion(0.703456, -0.0717632, -0.703456, 0.0717632)
            objectName: "Backrest control"
            materials: [
                    black_plastic_002_material,
                    chromehead_material
                ]
        }

        Model {
            id: seat_base_control4
            x: -26.447
            y: 118.047
            source: "qrc:/asset/meshes/seat_base_control_mesh.mesh"
            z: 50.58029
            scale.z: 100
            scale.y: 100
            scale.x: 86.6553
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
            objectName: "Seat base control"
            materials: [
                    black_plastic_002_material,
                    chromehead_material
                ]
        }

        Model {
            id: lumber_control4
            x: -26.345
            y: 120.7
            source: "qrc:/asset/meshes/lumber_control_mesh.mesh"
            z: 53.9686
            scale.z: 9.33224
            scale.y: 9.33224
            scale.x: 9.33224
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
            objectName: "lumber control"
            materials: [
                    black_plastic_002_material,
                    chromehead_material
                ]
        }

        Model {
            id: headrest_control4
            x: -26.464
            y: 121.715
            source: "qrc:/asset/meshes/headrest_control_mesh.mesh"
            z: 49.43026
            scale.z: 100
            scale.y: 100
            scale.x: 100
            rotation: Qt.quaternion(0.705182, -0.0521322, -0.705182, 0.0521321)
            objectName: "headrest control"
            materials: [
                    black_plastic_002_material,
                    chromehead_material
                ]
        }

        Model {
            id: seat_frame4
            x: -5.847
            y: 108.174
            source: "qrc:/asset/meshes/cube_mesh.mesh"
            z: 45.35846
            scale.z: 100
            scale.y: 100
            scale.x: 100
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            objectName: "Seat frame"
            materials: [
                    blackplastic_material
                ]
        }
    }
    SpotLight {
        id: spotlight
        x: 33.905
        y: 450.938
        innerConeAngle: 30
        coneAngle: 55
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: -90
        z: 8.37897
        brightness: 700
    }

    PerspectiveCamera {
        id: perspectiveCamera
        x: 184.83
        y: 202.299
        eulerRotation.z: -1.10408
        eulerRotation.y: 45.90182
        eulerRotation.x: -19.42486
        z: 143.62633
    }

    // Animations:
}

/*##^##
Designer {
    D{i:0;cameraSpeed3d:7;cameraSpeed3dMultiplier:1;matPrevEnvDoc:"SkyBox";matPrevEnvValueDoc:"preview_studio";matPrevModelDoc:"#Sphere"}
D{i:22}D{i:32}D{i:42}D{i:52}
}
##^##*/
