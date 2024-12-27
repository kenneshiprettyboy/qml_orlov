import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Page {
    id: orderHistoryPage
    width: 400
    height: 800

    Rectangle {
        anchors.fill: parent
        color: "#f8f9fa"

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 20
            spacing: 20

            Rectangle {
                color: "#ffc107"
                height: 60
                width: parent.width
                radius: 10
                Text {
                    text: "История заказов"
                    anchors.centerIn: parent
                    font.pixelSize: 20
                    font.bold: true
                    font.family: "Rubik"
                    color: "#ffffff"
                }
            }

            ListView {
                Layout.fillWidth: true
                Layout.fillHeight: true
                spacing: 10
                clip: true
                model: ListModel {
                    ListElement { date: "27.12.2024"; time: "12:45"; from: "ул. Ленина, 100"; to: "ул. Победы, 20"; amount: "250₽" }
                    ListElement { date: "26.12.2024"; time: "14:30"; from: "ул. Горького, 3"; to: "ул. Крылова, 5"; amount: "200₽" }
                    ListElement { date: "25.12.2024"; time: "10:00"; from: "ул. Чехова, 12"; to: "ул. Маяковского, 8"; amount: "300₽" }
                }
                delegate: Rectangle {
                    width: parent.width - 40
                    height: 100
                    radius: 10
                    color: "#ffffff"
                    border.color: "#ced4da"
                    border.width: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                    RowLayout {
                        anchors.fill: parent
                        anchors.margins: 10
                        spacing: 10

                        ColumnLayout {
                            spacing: 5
                            Layout.alignment: Qt.AlignVCenter
                            Text {
                                text: "Дата: " + model.date + " " + model.time
                                font.pixelSize: 14
                                font.family: "Rubik"
                                color: "#495057"
                            }
                            Text {
                                text: "Откуда: " + model.from
                                font.pixelSize: 14
                                font.family: "Rubik"
                                color: "#495057"
                            }
                            Text {
                                text: "Куда: " + model.to
                                font.pixelSize: 14
                                font.family: "Rubik"
                                color: "#495057"
                            }
                        }

                        Rectangle {
                            width: 100
                            height: 40
                            radius: 5
                            color: "#ffc107"
                            anchors.verticalCenter: parent.verticalCenter
                            Text {
                                anchors.centerIn: parent
                                text: model.amount
                                font.pixelSize: 14
                                font.bold: true
                                color: "#ffffff"
                            }
                        }
                    }
                }
            }

            RowLayout {
                spacing: 20
                Layout.alignment: Qt.AlignHCenter

                Button {
                    text: "Очистить историю"
                    font.pixelSize: 16
                    background: Rectangle {
                        color: "#d9534f"
                        radius: 10
                    }
                    contentItem: Text {
                        text: "Очистить историю"
                        color: "#ffffff"
                        font.pixelSize: 16
                        anchors.centerIn: parent
                    }
                }
                Button {
                    text: "Назад"
                    font.pixelSize: 16
                    background: Rectangle {
                        color: "#6c757d"
                        radius: 10
                    }
                    contentItem: Text {
                        text: "Назад"
                        color: "#ffffff"
                        font.pixelSize: 16
                        anchors.centerIn: parent
                    }
                    onClicked: stackView.pop()
                }
            }
        }
    }
}
