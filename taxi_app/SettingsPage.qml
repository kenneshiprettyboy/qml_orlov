import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Page {
    id: settingsPage
    width: 400
    height: 800

    Rectangle {
        anchors.fill: parent
        color: "#f8f9fa"

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 20
            spacing: 24

            Rectangle {
                color: "#ffc107"
                height: 60
                width: parent.width
                radius: 10
                Text {
                    text: "Настройки"
                    anchors.centerIn: parent
                    font.pixelSize: 20
                    font.bold: true
                    font.family: "Rubik"
                    color: "#ffffff"
                }
            }

            Rectangle {
                Layout.fillWidth: true
                height: 260
                color: "#ffffff"
                radius: 12
                border.color: "#ced4da"
                border.width: 1
                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 16
                    spacing: 12

                    Text {
                        text: "Личные данные"
                        font.pixelSize: 18
                        font.bold: true
                        color: "#495057"
                    }

                    TextField {
                        placeholderText: "Имя"
                        font.pixelSize: 14
                        Layout.fillWidth: true
                    }

                    TextField {
                        placeholderText: "Телефон"
                        font.pixelSize: 14
                        Layout.fillWidth: true
                    }

                    TextField {
                        placeholderText: "Email"
                        font.pixelSize: 14
                        Layout.fillWidth: true
                    }

                    Button {
                        text: "Сохранить изменения"
                        font.pixelSize: 16
                        background: Rectangle {
                            color: "#28a745"
                            radius: 12
                        }
                        contentItem: Text {
                            text: "Сохранить изменения"
                            color: "#ffffff"
                            font.pixelSize: 16
                            anchors.centerIn: parent
                        }
                    }
                }
            }

            Rectangle {
                Layout.fillWidth: true
                height: 180
                color: "#ffffff"
                radius: 12
                border.color: "#ced4da"
                border.width: 1
                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 16
                    spacing: 12

                    Text {
                        text: "Уведомления"
                        font.pixelSize: 18
                        font.bold: true
                        color: "#495057"
                    }

                    RowLayout {
                        spacing: 10
                        Layout.fillWidth: true
                        Text {
                            text: "Уведомления о заказах"
                            font.pixelSize: 14
                            color: "#495057"
                        }
                        Switch {
                            checked: true
                            Layout.alignment: Qt.AlignRight
                        }
                    }

                    RowLayout {
                        spacing: 10
                        Layout.fillWidth: true
                        Text {
                            text: "Уведомления о промоакциях"
                            font.pixelSize: 14
                            color: "#495057"
                        }
                        Switch {
                            checked: false
                            Layout.alignment: Qt.AlignRight
                        }
                    }

                    RowLayout {
                        spacing: 10
                        Layout.fillWidth: true
                        Text {
                            text: "Системные уведомления"
                            font.pixelSize: 14
                            color: "#495057"
                        }
                        Switch {
                            checked: true
                            Layout.alignment: Qt.AlignRight
                        }
                    }
                }
            }

            Rectangle {
                Layout.fillWidth: true
                height: 120
                color: "#ffffff"
                radius: 12
                border.color: "#ced4da"
                border.width: 1
                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 16
                    spacing: 12

                    Text {
                        text: "Тема интерфейса"
                        font.pixelSize: 18
                        font.bold: true
                        color: "#495057"
                    }

                    RowLayout {
                        spacing: 20
                        Button {
                            text: "Светлая"
                            font.pixelSize: 14
                            background: Rectangle {
                                color: "#ffc107"
                                radius: 12
                            }
                            contentItem: Text {
                                text: "Светлая"
                                color: "#ffffff"
                                font.pixelSize: 14
                                anchors.centerIn: parent
                            }
                        }
                        Button {
                            text: "Тёмная"
                            font.pixelSize: 14
                            background: Rectangle {
                                color: "#6c757d"
                                radius: 12
                            }
                            contentItem: Text {
                                text: "Тёмная"
                                color: "#ffffff"
                                font.pixelSize: 14
                                anchors.centerIn: parent
                            }
                        }
                    }
                }
            }

            RowLayout {
                spacing: 20
                Layout.alignment: Qt.AlignHCenter

                Button {
                    text: "Сброс настроек"
                    font.pixelSize: 16
                    background: Rectangle {
                        color: "#d9534f"
                        radius: 12
                    }
                    contentItem: Text {
                        text: "Сброс настроек"
                        color: "#ffffff"
                        font.pixelSize: 16
                        anchors.centerIn: parent
                    }
                }
                Button {
                    text: "Выйти"
                    font.pixelSize: 16
                    background: Rectangle {
                        color: "#6c757d"
                        radius: 12
                    }
                    contentItem: Text {
                        text: "Выйти"
                        color: "#ffffff"
                        font.pixelSize: 16
                        anchors.centerIn: parent
                    }
                }
            }
        }
    }
}
