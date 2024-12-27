import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Page {
    width: 400
    height: 800

    Rectangle {
        anchors.fill: parent
        color: "#f0f4f8"
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 16
        spacing: 24

        // Header
        Text {
            text: "Статистика водителя"
            font.pixelSize: 28
            font.bold: true
            color: "#FFD700"
            Layout.alignment: Qt.AlignHCenter
        }

        // Driver Info Section
        Rectangle {
            Layout.fillWidth: true
            height: 140
            color: "#FFFFFF"
            border.color: "#FFD700"
            border.width: 2
            radius: 10
            RowLayout {
                spacing: 20
                Layout.alignment: Qt.AlignHCenter

                Image {
                    source: "img/driver_avatar.jpg" // Path to driver's icon
                    width: 100
                    height: 100
                    fillMode: Image.PreserveAspectFit
                    Layout.preferredWidth: 100
                    Layout.preferredHeight: 100
                }
                ColumnLayout {
                    spacing: 5
                    Layout.alignment: Qt.AlignHCenter

                    Text {
                        text: "Имя: Иван Иванов"
                        font.pixelSize: 20
                        color: "#333"
                        font.bold: true
                        Layout.alignment: Qt.AlignHCenter
                    }
                    Text {
                        text: "Машина: Toyota Camry"
                        font.pixelSize: 18
                        color: "#666"
                        Layout.alignment: Qt.AlignHCenter
                    }
                    Text {
                        text: "Стаж: 5 лет"
                        font.pixelSize: 18
                        color: "#666"
                        Layout.alignment: Qt.AlignHCenter
                    }
                }
            }
        }

        // Weekly Earnings Section
        Rectangle {
            Layout.fillWidth: true
            height: 160
            color: "#FFFFFF"
            border.color: "#FFD700"
            border.width: 2
            radius: 10
            ColumnLayout {
                spacing: 10
                Layout.alignment: Qt.AlignHCenter

                Text {
                    text: "Заработок за неделю:"
                    font.pixelSize: 20
                    color: "#333"
                    font.bold: true
                    Layout.alignment: Qt.AlignHCenter
                }
                Text {
                    text: "25,000 ₽"
                    font.pixelSize: 28
                    font.bold: true
                    color: "#FFD700"
                    Layout.alignment: Qt.AlignHCenter
                }
                RowLayout {
                    spacing: 20
                    Layout.alignment: Qt.AlignHCenter

                    Text {
                        text: "Рейсов: 50"
                        font.pixelSize: 18
                        color: "#333"
                        Layout.alignment: Qt.AlignHCenter
                    }
                    Text {
                        text: "Часы: 40"
                        font.pixelSize: 18
                        color: "#333"
                        Layout.alignment: Qt.AlignHCenter
                    }
                }
            }
        }

        // Rating Section
        Rectangle {
            Layout.fillWidth: true
            height: 140
            color: "#FFFFFF"
            border.color: "#FFD700"
            border.width: 2
            radius: 10
            ColumnLayout {
                spacing: 10
                Layout.alignment: Qt.AlignHCenter

                Text {
                    text: "Рейтинг:"
                    font.pixelSize: 20
                    color: "#333"
                    font.bold: true
                    Layout.alignment: Qt.AlignHCenter
                }
                Text {
                    text: "4.9 из 5"
                    font.pixelSize: 28
                    font.bold: true
                    color: "#FFD700"
                    Layout.alignment: Qt.AlignHCenter
                }
            }
        }

        // Buttons
        RowLayout {
            spacing: 20
            Layout.alignment: Qt.AlignHCenter

            Button {
                text: "Подробнее"
                font.pixelSize: 18
                font.bold: true
                background: Rectangle { color: "#FFD700"; radius: 10 }
            }
            Button {
                text: "Назад"
                font.pixelSize: 18
                font.bold: true
                background: Rectangle { color: "#FFD700"; radius: 10 }
                onClicked: pageStack.pop()
            }
        }
    }
}
