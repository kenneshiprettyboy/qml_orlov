import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15

Page {
    id: loginPage

    Rectangle {
        anchors.fill: parent
        color: "#f0f4f8"

        Canvas {
            anchors.fill: parent
            onPaint: {
                var ctx = getContext("2d");
                var gradient = ctx.createLinearGradient(0, 0, width, height);
                gradient.addColorStop(0, "#ffecd2");
                gradient.addColorStop(1, "#fcb69f");
                ctx.fillStyle = gradient;
                ctx.fillRect(0, 0, width, height);
            }
        }
    }

    ColumnLayout {
        width: 300
        anchors.centerIn: parent
        spacing: 16

        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            color: "#ffcf48"
            radius: 5
            width: parent.width
            height: 100
            RowLayout {
                anchors.centerIn: parent
                spacing: 5

                Text {
                    text: "DUGAR & PAVEL"
                    font.pixelSize: 32
                    font.family: "Rubik"
                    font.bold: true
                    color: "#4b6584"
                }
            }
        }

        Rectangle {
            radius: 5
            border.color: "#ddd"
            border.width: 1
            height: 350
            Layout.fillWidth: true
            ColumnLayout {
                anchors.fill: parent
                spacing: 16
                TextField {
                    anchors.horizontalCenter: parent.horizontalCenter
                    id: usernameInput
                    placeholderText: "Введите логин"
                    font.pixelSize: 18
                    font.family: "Rubik"
                    background: Rectangle {
                        anchors.horizontalCenter: parent.horizontalCenter
                        color: "#ffffff"
                        radius: 12
                        border.color: "#ccc"
                        border.width: 1
                        width: 200
                    }
                }
                TextField {
                    anchors.horizontalCenter: parent.horizontalCenter
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    id: passwordInput
                    placeholderText: "Введите пароль"
                    echoMode: TextInput.Password
                    font.pixelSize: 18
                    font.family: "Rubik"
                    background: Rectangle {
                        anchors.horizontalCenter: parent.horizontalCenter
                        color: "#ffffff"
                        radius: 12
                        border.color: "#ccc"
                        border.width: 1
                        width: 200
                    }
                }
                Button {
                    anchors.horizontalCenter: parent.horizontalCenter
                    id: loginButton
                    text: "Войти"
                    font.pixelSize: 18
                    font.family: "Rubik"
                    Layout.fillWidth: true
                    background: Rectangle {
                        anchors.horizontalCenter: parent.horizontalCenter
                        color: "#4b6584"
                        radius: 12
                        width: 200
                    }
                    contentItem: Text {
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        text: "Войти"
                        color: "#ffffff"
                        font.pixelSize: 18
                    }
                    onClicked: stackView.push(Qt.resolvedUrl("ProfilePage.qml"))
                }
            }
        }

        ColumnLayout {
            spacing: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 45

            MouseArea {
                onClicked: console.log("Регистрация")
                Text {
                    leftPadding: 95
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: "Регистрация"
                    font.pixelSize: 16
                    font.family: "Rubik"
                    color: "#4b6584"
                    font.bold: true
                }
            }

            MouseArea {
                onClicked: console.log("Гостевой вход")
                Text {
                    font.pixelSize: 16
                    font.family: "Rubik"
                    color: "#4b6584"
                }
            }
        }
    }
}
