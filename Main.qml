import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {
        anchors.centerIn: parent
        spacing: 30

        RadioButton
        {
            id: myRadioButton_1
            text: "Option 1"
            font.pointSize: 20
            font.bold: true
            height: 60
            background: Rectangle {
                border.width: 3
                border.color: "#ff0000"
                radius: 5
            }
            indicator: Rectangle {
                id: myRadioButton_1_indicator
                implicitHeight: 40
                implicitWidth: 40
                radius: width / 2
                x: 10
                y: ((myRadioButton_1.height - myRadioButton_1_indicator.height) / 2)

                color: myRadioButton_1.checked ? "green" : "white"
                border.color: "black"
                border.width: 2
                anchors.margins: 5

            }

            onCheckedChanged: {
                console.log("Option 1")
            }
        }

        RadioButton
        {
            id: myRadioButton_2
            text: "Option 2"
            font.pointSize: 20
            font.bold: true
            height: 60
            background: Rectangle {
                border.width: 3
                border.color: "#ff0000"
                radius: 5
            }
            indicator: Rectangle {
                id: myRadioButton_2_indicator
                implicitHeight: 40
                implicitWidth: 40
                radius: width / 2
                x: 10
                y: ((myRadioButton_1.height - myRadioButton_1_indicator.height) / 2)

                color: myRadioButton_1.checked ? "green" : "white"
                border.color: "black"
                border.width: 2
                anchors.margins: 5

            }

            onCheckedChanged: {
                console.log("Option 2")
            }
        }

        RadioButton
        {
            id: myRadioButton_3
            text: "Option 3"
            font.pointSize: 20
            font.bold: true
            height: 60
            background: Rectangle {
                border.width: 3
                border.color: "#ff0000"
                radius: 5
            }

            indicator: Rectangle {
                id: myRadioButton_3_indicator
                implicitHeight: 40
                implicitWidth: 40
                radius: width / 2
                x: 10
                y: ((myRadioButton_1.height - myRadioButton_1_indicator.height) / 2)

                color: myRadioButton_1.checked ? "green" : "white"
                border.color: "black"
                border.width: 2
                anchors.margins: 5

            }

            onCheckedChanged: {
                console.log("Option 3")
            }
        }
    }
}
