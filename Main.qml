import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    SpinBox {
        id: mySpinBox
        anchors.centerIn: parent
        from: 0
        to: 100

        stepSize: 10
        editable: true
        width: 200
        height: 50

        validator: IntValidator {
            bottom: mySpinBox.from
            top: mySpinBox.to
        }

        onValueChanged: {
            console.log("SpinBox value: ", mySpinBox.value)
        }

        contentItem: TextInput {
            text: mySpinBox.textFromValue(mySpinBox.value, mySpinBox.locale)
            font.pointSize: 15
            font.bold: true

            color: "black"
            selectionColor: "blue"
            selectedTextColor: "white"
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
            validator: mySpinBox.validator
        }

        up.indicator: Rectangle {
            implicitHeight: 40
            implicitWidth: 40

            x: mySpinBox.mirrored ? 0 : ((parent.width - width) - 5)
            y: ((parent.height - height) / 2)

            radius: 20
            color: mySpinBox.up.pressed ? "grey" : "white"

            border.width: 3
            border.color: "black"

            Text {
                text: "+"
                color: "black"
                anchors.fill: parent
                fontSizeMode: Text.Fit
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        down.indicator: Rectangle {
            implicitHeight: 40
            implicitWidth: 40

            x: mySpinBox.mirrored ? (parent.width - width) : 5
            y: ((parent.height - height) / 2)

            radius: 20
            color: mySpinBox.down.pressed ? "grey" : "white"

            border.width: 3
            border.color: "black"

            Text {
                text: "-"
                color: "black"
                anchors.fill: parent
                fontSizeMode: Text.Fit
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        background: Rectangle {
            border.width: 3
            border.color: "grey"
            radius: 25
        }
    }
}
