import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    FileDialog {
        id: myFileDialog
        nameFilters: ["Image (*.png)"]

        onAccepted: {
            console.log(selectedFile)
        }
    }

    Row {
        anchors.centerIn: parent
        Button {
            id: myButton
            text: "Click me"

            onClicked: {
                myFileDialog.open()
            }
        }

    }

}
