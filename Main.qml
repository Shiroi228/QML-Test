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
    }
}
