import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15

Page {
    id: mainScreen

    Rectangle {
        anchors.fill: parent
        color: "#f8f9fa"

        ColumnLayout {
            anchors.fill: parent
            spacing: 20

            // Заголовок
            Rectangle {
                color: "#ffc107"
                height: 60
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width
                Text {
                    anchors.centerIn: parent
                    text: "Главный экран"
                    font.pixelSize: 20
                    font.bold: true
                    font.family: "Rubik"
                    color: "#ffffff"
                }
            }

            // Карта
            Rectangle {
                width: parent.width
                height: parent.height * 0.6
                anchors.top: parent.top
                color: "transparent"

                Image {
                    source: "img/map.jpg"
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                }
            }

            // Секция с заказами
            Rectangle {
                width: 360
                anchors.horizontalCenter: parent.horizontalCenter
                Layout.fillWidth: true
                color: "#ffffff"
                radius: 12
                border.color: "#ced4da"
                border.width: 1
                height: 250
                ColumnLayout {
                    anchors.fill: parent
                    spacing: 10
                    Layout.margins: 10

                    Text {
                        text: "Текущие заказы:"
                        font.pixelSize: 18
                        font.bold: true
                        font.family: "Rubik"
                        color: "#495057"
                        Layout.alignment: Qt.AlignHCenter
                    }

                    ListView {
                        Layout.fillWidth: true
                        height: 200
                        model: ListModel {
                            ListElement { title: "ул. Ленина, 100"; price: "150₽" }
                            ListElement { title: "ул. Победы, 20"; price: "250₽" }
                            ListElement { title: "ул. Горького, 3"; price: "200₽" }
                        }
                        delegate: Rectangle {
                            height: 60
                            color: "#f8f9fa"
                            radius: 8
                            border.color: "#adb5bd"
                            border.width: 1
                            RowLayout {
                                anchors.fill: parent
                                anchors.horizontalCenter: parent.horizontalCenter
                                spacing: 10

                                // Название заказа
                                ColumnLayout {
                                    Layout.fillWidth: true
                                    spacing: 4
                                    Layout.alignment: Qt.AlignHCenter
                                    Text {
                                        text: model.title
                                        font.pixelSize: 14
                                        color: "#212529"
                                        font.bold: true
                                        Layout.alignment: Qt.AlignHCenter
                                    }
                                    Text {
                                        text: model.price
                                        font.pixelSize: 12
                                        color: "#868e96"
                                        Layout.alignment: Qt.AlignHCenter
                                    }
                                }

                                // Кнопки
                                RowLayout {
                                    spacing: 5

                                    Button {
                                        text: "Принять"
                                        font.pixelSize: 14
                                        width: 80
                                        background: Rectangle {
                                            color: "#009900"
                                            radius: 8
                                        }
                                        contentItem: Text {
                                            text: "Принять"
                                            color: "#ffffff"
                                            font.pixelSize: 14
                                            anchors.centerIn: parent
                                        }
                                    }

                                    Button {
                                        text: "Отмена"
                                        font.pixelSize: 14
                                        width: 80
                                        background: Rectangle {
                                            color: "#d9534f"
                                            radius: 8
                                        }
                                        contentItem: Text {
                                            text: "Отмена"
                                            color: "#ffffff"
                                            font.pixelSize: 14
                                            anchors.centerIn: parent
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

        }
    }
}
