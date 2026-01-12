import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button {
        id: myButton
        anchors.centerIn: parent

        text: "Click me"
        onClicked: {
            myMessageDialog_Warn.open()
        }
    }

    MessageDialog {
        id: myMessageDialog_Inf
        text: "Information dialog"
        title: "Info"

        onAccepted: {
            console.log("Dialog OK")
        }
    }

    MessageDialog {
        id: myMessageDialog_Warn
        text: "Warning dialog"
        title: "Warning"

        buttons: MessageDialog.Yes | MessageDialog.No


        onAccepted: {
            console.log("Warning Yes")
        }

        onRejected:  {
            console.log("Warning No")
        }
    }


}
