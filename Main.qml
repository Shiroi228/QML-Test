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
        text: "Click me"
        font: myFontDialog.currentFont
        onClicked: {
            myFontDialog.open()
        }
    }

    FontDialog {
        id: myFontDialog
        onAccepted: {
            console.log("Weight: " + myFontDialog.currentFont.weight)
            console.log("Is Bold : " +  myFontDialog.currentFont.bold)
            console.log("Is Italic : " +  myFontDialog.currentFont.italic)
            console.log("Is Strikeout : " +  myFontDialog.currentFont.strikeout)
            console.log("Is Underline : " +  myFontDialog.currentFont.underline)

            console.log("Family: " + myFontDialog.currentFont.family)
            console.log("Font size: " + myFontDialog.currentFont.pointSize)
        }
    }


}
