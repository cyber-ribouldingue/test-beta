// qml/Main.qml
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("TestApp")

    Rectangle {
        anchors.fill: parent
        color: "#f9f9f9"

        ColumnLayout {
            anchors.centerIn: parent
            spacing: 20

            Text {
                text: qsTr("Hello World!")
                font.pixelSize: 28
                color: "#333"
                horizontalAlignment: Text.AlignHCenter
                Layout.alignment: Qt.AlignHCenter
            }

            Button {
                text: qsTr("Click me")
                onClicked: console.log("Button clicked")
            }
        }
    }
}
