import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Page {
    id: feedbackPage
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
                    text: "Отзывы и обратная связь"
                    anchors.centerIn: parent
                    font.pixelSize: 20
                    font.bold: true
                    font.family: "Rubik"
                    color: "#ffffff"
                }
            }

            ListView {
                Layout.fillWidth: true
                Layout.preferredHeight: 300
                spacing: 10
                model: ListModel {
                    ListElement { name: "Алексей"; date: "27.12.2024"; feedback: "Отличный сервис!"; rating: 5 }
                    ListElement { name: "Марина"; date: "26.12.2024"; feedback: "Машина приехала быстро, спасибо!"; rating: 4 }
                    ListElement { name: "Дмитрий"; date: "25.12.2024"; feedback: "Не очень понравилось, водитель опоздал."; rating: 3 }
                }
                delegate: Rectangle {
                    width: parent.width - 40
                    height: 120
                    radius: 10
                    color: "#ffffff"
                    border.color: "#ced4da"
                    border.width: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                    ColumnLayout {
                        anchors.fill: parent
                        anchors.margins: 10
                        spacing: 5

                        Text {
                            text: model.name + " (" + model.date + ")"
                            font.pixelSize: 16
                            font.bold: true
                            color: "#495057"
                        }
                        Text {
                            text: model.feedback
                            font.pixelSize: 14
                            color: "#495057"
                            wrapMode: Text.Wrap
                        }
                        RowLayout {
                            spacing: 5
                            Repeater {
                                model: model.rating
                                Image {
                                    source: "img/star.png"
                                    width: 16
                                    height: 16
                                    fillMode: Image.PreserveAspectFit
                                }
                            }
                        }
                    }
                }
            }

            Rectangle {
                Layout.fillWidth: true
                height: 200
                color: "#ffffff"
                radius: 10
                border.color: "#ced4da"
                border.width: 1
                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 10
                    spacing: 10

                    Text {
                        text: "Оставьте свой отзыв:"
                        font.pixelSize: 16
                        font.bold: true
                        color: "#495057"
                    }

                    TextArea {
                        id: feedbackInput
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        placeholderText: "Напишите ваш отзыв здесь..."
                        font.pixelSize: 14
                        wrapMode: Text.Wrap
                    }

                    Button {
                        text: "Отправить"
                        font.pixelSize: 16
                        background: Rectangle {
                            color: "#28a745"
                            radius: 10
                        }
                        contentItem: Text {
                            text: "Отправить"
                            color: "#ffffff"
                            font.pixelSize: 16
                            anchors.centerIn: parent
                        }
                        onClicked: {
                            if (feedbackInput.text.trim() !== "") {
                                console.log("Отзыв отправлен: " + feedbackInput.text);
                                feedbackInput.text = "";
                            } else {
                                console.log("Поле отзыва пустое");
                            }
                        }
                    }
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
