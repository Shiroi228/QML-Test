import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Switch {
        id: mySwitch
        text: qsTr("Switch")

        indicator: Rectangle {
            implicitHeight: 25
            implicitWidth: 50

            x: mySwitch.leftPadding
            y: parent.height / 2 - height / 2

            radius: 15
            color: mySwitch.checked ? "green" : "black"
            border.color: mySwitch.checked ? "black" : "green"

            Rectangle {
                x: mySwitch.checked ? parent.width - width : 0

                radius: 15
                width: 25
                height: 25

                color: mySwitch.down ? "red" : "yellow"
                border.color: mySwitch.checked ? (mySwitch.down ? "black" : "green") : "white"
            }
        }

        contentItem: Text {
            text: mySwitch.text
            font: mySwitch.font
            color: mySwitch.down ? "black" : "grey"

            verticalAlignment: Text.AlignVCenter
            leftPadding: mySwitch.indicator.width + mySwitch.spacing
        }

        onCheckedChanged: {
            console.log("Switch is on : ", checked)
        }
    }
}
