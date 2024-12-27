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
        spacing: 16

        // Header Tabs
        RowLayout {
            spacing: 10
            Layout.alignment: Qt.AlignHCenter

            Button {
                text: "День"
                Layout.alignment: Qt.AlignHCenter
                background: Rectangle { color: "#FFD700"; radius: 5 }
            }
            Button {
                text: "Неделя"
                Layout.alignment: Qt.AlignHCenter
                background: Rectangle { color: "#FFD700"; radius: 5 }
            }
            Button {
                text: "Месяц"
                Layout.alignment: Qt.AlignHCenter
                background: Rectangle { color: "#FFD700"; radius: 5 }
            }
        }

        // Graph Placeholder
        Rectangle {
            Layout.alignment: Qt.AlignHCenter
            width: parent.width - 32
            height: 100
            color: "#F2F2F2"
            border.color: "#000"
            border.width: 2
            radius: 10
            Text {
                anchors.centerIn: parent
                text: "ГРАФИК"
                color: "#333"
                font.pixelSize: 24
            }
        }

        // Total Expense
        ColumnLayout {
            spacing: 10
            Layout.alignment: Qt.AlignHCenter

            Text {
                text: "7045.62 ₽"
                font.pixelSize: 32
                font.bold: true
                color: "#FFD700"
                horizontalAlignment: Text.AlignHCenter
            }
            RowLayout {
                spacing: 20
                Layout.alignment: Qt.AlignHCenter

                Text { text: "Бензин 1430 ₽"; font.pixelSize: 16; color: "#333" }
                Text { text: "Аренда 410.62 ₽"; font.pixelSize: 16; color: "#333" }
            }
        }

        // Select Period Button
        Button {
            text: "Выбрать период для расчёта расходов"
            Layout.alignment: Qt.AlignHCenter
            background: Rectangle { color: "#FFD700"; radius: 10 }
        }

        // Detailed Expenses
        ColumnLayout {
            spacing: 10
            Layout.alignment: Qt.AlignHCenter
            Repeater {
                model: [
                    { time: "5:45", place: "РОСНЕФТЬ", amount: "405 ₽", icon: "⛽" },
                    { time: "5:45", place: "ЛУКОЙЛ", amount: "4456 ₽", icon: "🍔" },
                    { time: "5:45", place: "АРЕНДА", amount: "2200 ₽", icon: "🏠" },
                    { time: "5:45", place: "ЛУКОЙЛ", amount: "3023 ₽", icon: "🍔" },
                    { time: "5:45", place: "ШАУРМЕНКО", amount: "405 ₽", icon: "🌯" }
                ]

                delegate: RowLayout {
                    spacing: 15
                    Layout.alignment: Qt.AlignHCenter

                    Text {
                        text: modelData.time
                        font.pixelSize: 16
                        color: "#333"
                        width: 50
                    }
                    Rectangle {
                        width: 1
                        height: 40
                        color: "#FFD700"
                    }
                    Text {
                        text: modelData.place
                        font.pixelSize: 16
                        font.bold: true
                        color: "#000"
                        elide: Text.ElideRight
                        width: 120
                    }
                    Rectangle {
                        width: 1
                        height: 40
                        color: "#FFD700"
                    }
                    Text {
                        text: modelData.amount
                        font.pixelSize: 16
                        color: "#333"
                        width: 80
                    }
                    Text {
                        text: modelData.icon
                        font.pixelSize: 20
                        color: "#FFD700"
                        width: 40
                    }
                }
            }
        }
    }

}
