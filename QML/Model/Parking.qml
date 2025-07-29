import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    property alias rootNode: garage_FLOOR_obj_cleaner_materialmerger_gles
    property bool check: false
    property alias activeCamera1: perspectiveCamera
    property alias activeCamera2: perspectiveCamera1
    property alias activeCamera3: perspectiveCamera2
    property alias activeCamera4: perspectiveCamera3
    property alias activeCamera5: perspectiveCamera4
    property alias activeCamera6: perspectiveCamera5
    property alias activeCamera7: perspectiveCamera6
    property alias activeCamera8: perspectiveCamera7
    property url textureData: "qrc:/asset/maps/textureData.png"
    property url textureData9: "qrc:/asset/maps/textureData9.png"
    property url textureData11: "qrc:/asset/maps/textureData11.png"
    Texture {
        id: _0_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData
    }
    Texture {
        id: _1_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData9
    }
    Texture {
        id: _2_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData11
    }

    // Nodes:
    Node {
        id: sketchfab_model
        x: -0
        y: 2.048
        z: 0
        objectName: "Sketchfab_model"
        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        scale.x: 3.12661
        scale.y: 3.12661
        scale.z: 3.12661
        Node {
            id: garage_FLOOR_obj_cleaner_materialmerger_gles
            objectName: "GARAGE FLOOR.obj.cleaner.materialmerger.gles"
            Model {
                id: object_2
                x: 0
                y: 0
                objectName: "Object_2"
                source: "qrc:/asset/meshes/object_0_mesh.mesh"
                z: 0
                materials: [
                    mat_1_material
                ]
            }
            Model {
                id: object_4
                x: 1.677
                y: -632.109
                objectName: "Object_2"
                source: "qrc:/asset/meshes/object_0_mesh.mesh"
                z: 0
                materials: [
                    mat_1_material
                ]
            }
            Model {
                id: object_5
                x: -1.677
                y: 632.109
                objectName: "Object_2"
                source: "qrc:/asset/meshes/object_0_mesh.mesh"
                z: 0
                materials: [
                    mat_1_material
                ]
            }
            Model {
                id: object_6
                x: -720.096
                y: 632.109
                objectName: "Object_2"
                source: "qrc:/asset/meshes/object_0_mesh.mesh"
                z: 0
                materials: [
                    mat_1_material
                ]
            }
            Model {
                id: object_7
                x: -720.096
                y: 2.559
                objectName: "Object_2"
                source: "qrc:/asset/meshes/object_0_mesh.mesh"
                z: 0.00008
                materials: [
                    mat_1_material
                ]
            }
            Model {
                id: object_8
                x: -720.096
                y: -632.109
                objectName: "Object_2"
                source: "qrc:/asset/meshes/object_0_mesh.mesh"
                z: 0
                materials: [
                    mat_1_material
                ]
            }
            Model {
                id: object_9
                x: 720.096
                y: 632.109
                objectName: "Object_2"
                source: "qrc:/asset/meshes/object_0_mesh.mesh"
                z: 0
                materials: [
                    mat_1_material
                ]
            }
            Model {
                id: object_10
                x: 720.096
                y: -2.559
                objectName: "Object_2"
                source: "qrc:/asset/meshes/object_0_mesh.mesh"
                z: 0.00008
                materials: [
                    mat_1_material
                ]
            }
            Model {
                id: object_11
                x: 720.096
                y: -632.109
                objectName: "Object_2"
                source: "qrc:/asset/meshes/object_0_mesh.mesh"
                z: 0
                materials: [
                    mat_1_material
                ]
            }
            Model {
                id: object_3
                objectName: "Object_3"
                source: node.check ? "qrc:/asset/meshes/object_1_mesh.mesh" : ""
                materials: [
                    glass_material
                ]
            }
            Mercedes {
                id: mercedes
                x: 100
                eulerRotation.z: 0
                eulerRotation.y: 0
                eulerRotation.x: 90
                scale.z: 1
                scale.y: 1
                scale.x: 1
            }
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: mat_1_material
            objectName: "Mat.1"
            baseColorMap: _0_texture
            metalnessMap:  _1_texture
            roughnessMap: _1_texture
            metalness: 0.810373067855835
            roughness: 1
            normalMap: null//_2_texture
            normalStrength: 0//0.5185247659683228
            occlusionMap: _1_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: glass_material
            objectName: "glass"
            metalness: 0.43948251008987427
            roughness: 0.20178726315498352
            emissiveFactor.x: 0.428089
            emissiveFactor.y: 0.889914
            emissiveFactor.z: 1
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
            clearcoatAmount: 1
            clearcoatRoughnessAmount: 0.03999999910593033
        }
    }

    SpotLight {
        id: spotlight
        x: -2.294
        y: 1516.832
        coneAngle: 90
        innerConeAngle: 39
        z: 1.90704
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: -90
        castsShadow: true
        shadowMapQuality: Light.ShadowMapQualityHigh
        // shadowFactor: 30.0
        // shadowBias: 0.001
        // shadowMapFar: 50.0
        brightness: node.check ? 20000 : 10000
    }
    PerspectiveCamera {
        id: perspectiveCamera1
        x: 116.547
        y: 96.879
        eulerRotation.z: 0.00001
        eulerRotation.y: -39.03755
        eulerRotation.x: -0
        z: 294.54309
    }
    PerspectiveCamera {
        id: perspectiveCamera
        x: 114.968
        y: 101.077
        eulerRotation.z: 0.02835
        eulerRotation.y: -156.59715
        eulerRotation.x: 1.15566
        z: -345.38516
    }

    PerspectiveCamera {
        id: perspectiveCamera2
        x: 542.232
        y: 99.101
        eulerRotation.z: 0.00001
        eulerRotation.y: 152.81546
        eulerRotation.x: -0.00004
        z: -340.61737
    }

    PerspectiveCamera {
        id: perspectiveCamera3
        x: 547.363
        y: 103.461
        eulerRotation.z: 0.00002
        eulerRotation.y: 41.57489
        eulerRotation.x: -0.00001
        z: 303.88928
    }
    PerspectiveCamera {
        id: perspectiveCamera4
        x: -202.507
        y: 249.789
        eulerRotation.z: 0.14524
        eulerRotation.y: -132.62102
        eulerRotation.x: -10.80104
        z: -439.67902
    }
    // PerspectiveCamera {
    //     id: perspectiveCamera5
    //     x: 324.141
    //     y: 350
    //     eulerRotation.z: 0
    //     eulerRotation.y: 179.71471
    //     eulerRotation.x: -30
    //     z: -474.68756
    // }
    PerspectiveCamera {
        id: perspectiveCamera5
        x: 750.135
        y: 230.303
        eulerRotation.z: 0.00004
        eulerRotation.y: 54.36928
        eulerRotation.x: -19.85312
        z: 337.92703
    }
    PerspectiveCamera {
        id: perspectiveCamera6
        x: 750.135
        y: 230.303
        eulerRotation.z: 0.00004
        eulerRotation.y: 54.36928
        eulerRotation.x: -19.85312
        z: 337.92703
    }
    PerspectiveCamera {
        id: perspectiveCamera7
        x: 542.232
        y: 99.101
        eulerRotation.z: 0.00001
        eulerRotation.y: 152.81546
        eulerRotation.x: -0.00004
        z: -340.61737
    }

    PointLight {
        id: pointLight
        x: -60.307
        y: 430
        brightness: node.check ? 50 : 0
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: 0
        z: -279.16916
    }

    PointLight {
        id: pointLight1
        x: -450.344
        y: 430
        z: -274.92065
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: 0
        brightness: node.check ? 50 : 0
    }

    PointLight {
        id: pointLight2
        x: -60.307
        y: 430
        brightness: node.check ? 50 : 0
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: 0
        z: -279.16916
    }

    PointLight {
        id: pointLight13
        x: 330
        y: 430
        z: -274.92065
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: 0
        brightness: node.check ? 50 : 0
    }

    PointLight {
        id: pointLight4
        x: 720
        y: 430
        brightness: node.check ? 50 : 0
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: 0
        z: -279.16916
    }

    PointLight {
        id: pointLight5
        x: 1101.359
        y: 430
        z: -274.92065
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: 0
        brightness: node.check ? 50 : 0
    }

    PointLight {
        id: pointLight6
        x: 1101.4
        y: 430
        z: 274.89999
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: 0
        brightness: node.check ? 50 : 0
    }

    PointLight {
        id: pointLight7
        x: 720
        y: 430
        z: 279.2
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: 0
        brightness: node.check ? 50 : 0
    }

    PointLight {
        id: pointLight8
        x: 330
        y: 430
        z: 274.92
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: 0
        brightness: node.check ? 50 : 0
    }

    PointLight {
        id: pointLight9
        x: -60
        y: 430
        z: 279.2
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: 0
        brightness: node.check ? 50 : 0
    }

    PointLight {
        id: pointLight10
        x: -450
        y: 430
        z: 279.2
        eulerRotation.z: 0
        eulerRotation.y: 0
        eulerRotation.x: 0
        brightness: node.check ? 50 : 0
    }
    // Connections{
    //     target: light
    //     function onSignal_light(mode){
    //         node.check = mode
    //     }
    // }

    // Animations:
}

/*##^##
Designer {
    D{i:0;cameraSpeed3d:7;cameraSpeed3dMultiplier:1;matPrevEnvDoc:"SkyBox";matPrevEnvValueDoc:"preview_studio";matPrevModelDoc:"#Sphere"}
}
##^##*/
