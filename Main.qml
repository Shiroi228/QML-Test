import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: myRect_1
        width: 100
        height: 100

        color: "red"

        PropertyAnimation on x {
            from: 0
            to: width - myRect_1.width
            duration: 1000
            easing.type: Easing.InBounce
        }
    }

    Rectangle {
        id: myRect_2
        width: 100
        height: 100

        color: "blue"

        PropertyAnimation on y {
            from: 0
            to: height - myRect_2.height
            duration: 1000
            easing.type: Easing.OutBounce
        }
    }

    // Rectangle {
    //     id: myRect_3
    //     width: 100
    //     height: 100

    //     color: "green"

    //     PropertyAnimation on Rotation {
    //         from: 0
    //         to: 3600
    //         duration: 1000

    //         loops: Animation.Infinite
    //     }
    // }
}
