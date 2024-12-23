import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15


Window {
    visible: true
    width: 400
    height: 600
    title: "Task_for_Login_Page"

    Rectangle {
        id: background
        width: parent.width
        height: parent.height

        Column {
            anchors.centerIn: parent
            spacing: 10
            Rectangle {
                implicitWidth: parent.width
                height: 10
                Text {
                    anchors.centerIn: parent
                    text: "Enter your password:"
                    font.pixelSize: 16
                }
            }

            Rectangle {
                color: "white"
                implicitWidth: parent.width
                height: 50
                Text{
                    id : passwordField
                    color: background.color
                }

                Row {
                    spacing: 6
                    anchors.centerIn: parent

                    Repeater {
                        model: 6
                        Label {
                            width: 20
                            height: 20
                            font.pixelSize: 36
                            text: "*"
                            Layout.alignment: Qt.AlignTop
                            color: index < passwordField.text.length ? "black" : "light grey"
                        }
                    }
                }
            }

            GridLayout {
                id: keypad
                rows: 4
                columns: 3
                implicitWidth: parent.width

                Button {
                    text: "1"
                    onClicked: passwordField.text += "1"
                    implicitWidth: 100
                    implicitHeight: 50
                }
                Button {
                    text: "2"
                    onClicked: passwordField.text += "2"
                    implicitWidth: 100
                    implicitHeight: 50
                }
                Button {
                    text: "3"
                    onClicked: passwordField.text += "3"
                    implicitWidth: 100
                    implicitHeight: 50
                }
                Button {
                    text: "4"
                    onClicked: passwordField.text += "4"
                    implicitWidth: 100
                    implicitHeight: 50
                }
                Button {
                    text: "5"
                    onClicked: passwordField.text += "5"
                    implicitWidth: 100
                    implicitHeight: 50
                }
                Button {
                    text: "6"
                    onClicked: passwordField.text += "6"
                    implicitWidth: 100
                    implicitHeight: 50
                }
                Button {
                    text: "7"
                    onClicked: passwordField.text += "7"
                    implicitWidth: 100
                    implicitHeight: 50
                }
                Button {
                    text: "8"
                    onClicked: passwordField.text += "8"
                    implicitWidth: 100
                    implicitHeight: 50
                }
                Button {
                    text: "9"
                    onClicked: passwordField.text += "9"
                    implicitWidth: 100
                    implicitHeight: 50
                }
                Button {
                    text: ""

                    implicitWidth: 100
                    implicitHeight: 50
                }
                Button {
                    text: "0"
                    onClicked: passwordField.text += "0"
                    implicitWidth: 100
                    implicitHeight: 50
                }
                Button {
                    text: "Clear"
                    onClicked: passwordField.text = ""
                    implicitWidth: 100
                    implicitHeight: 50
                }
            }
            Button {
                text: "Log In"
                implicitWidth: 100
                implicitHeight: 50
            }
        }

    }
}
