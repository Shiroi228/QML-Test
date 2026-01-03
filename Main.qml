import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        spacing: 20
        anchors.centerIn: parent
        width: 640

        Slider {
            id: mySlider
            width: parent.width * 0.8
            from: 0
            to: 1000
            stepSize: 1
            anchors.centerIn: parent

            onValueChanged: {
                console.log("Slider value : ", mySlider.value)
            }

            background: Rectangle {
                x: mySlider.leftPadding
                y: mySlider.topPadding + mySlider.availableHeight / 2 - height / 2
                implicitWidth: 200
                implicitHeight: 20
                width: mySlider.availableWidth
                height: implicitHeight
                radius: height / 2
                color: "#0abeed"

                Rectangle {
                    width: mySlider.visualPosition == 0 ? 0 : mySlider.handle.x + mySlider.handle.width / 2
                    height: parent.height
                    color: "#343434"
                    radius: height / 2
                }
            }

            handle: Rectangle {
                x: mySlider.leftPadding + mySlider.visualPosition * (mySlider.availableWidth - width)
                y: mySlider.topPadding + mySlider.availableHeight / 2 - height / 2
                implicitHeight: 25
                implicitWidth: 25

                radius: implicitWidth / 2
                color: mySlider.pressed ? "green" : "white"
                border.color: red
                border.width: 2

            }
        }

        Text {
            id: myText
            text: "Slider value : " + mySlider.value
            anchors.top: mySlider.bottom
            anchors.horizontalCenter: mySlider.horizontalCenter
        }
    }
}
