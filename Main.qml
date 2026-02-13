import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs
import QtQuick.Shapes

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    // Shape {
    //     id: myShape
    //     width: parent.width
    //     height: parent.height

    //     ShapePath {
    //         strokeColor: "blue"
    //         strokeWidth: 2
    //         fillColor: "red"

    //         startX: 50; startY: 50

    //         PathLine  {x: 590; y: 50 }
    //         PathLine  {x: 590; y: 430 }
    //         PathLine  {x: 50; y: 430 }
    //         PathLine  {x: 50; y: 50 }
    //     }
    // }

    Rectangle {
        id: myRect
        width: 200
        height: 200

        color: "red"
    }

    SequentialAnimation {
        id: mySequentialAnimation
        running: true
        loops: Animation.Infinite

        NumberAnimation {
            target: myRect
            property: "width"
            from: 200
            to: 300
            duration: 2000
            easing.type: Easing.InOutQuad
        }

        NumberAnimation {
            target: myRect
            property: "height"
            from: 200
            to: 300
            duration: 2000
            easing.type: Easing.InOutQuad
        }

        NumberAnimation {
            target: myRect
            property: "width"
            from: 300
            to: 200
            duration: 2000
            easing.type: Easing.InOutQuad
        }

        NumberAnimation {
            target: myRect
            property: "height"
            from: 300
            to: 200
            duration: 2000
            easing.type: Easing.InOutQuad
        }
    }


    // Path {
    //     id: myPath
    //     startX: 50; startY: 50

    //     PathLine  {x: 590; y: 50 }
    //     PathLine  {x: 590; y: 430 }
    //     PathLine  {x: 50; y: 430 }
    //     PathLine  {x: 50; y: 50 }
    // }

    // PathAnimation {
    //     id: myPathAnimation
    //     target: circle
    //     path: myPath
    //     duration: 4000

    //     loops: Animation.Infinite
    //     running: true
    // }
}
