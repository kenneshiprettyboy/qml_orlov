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

        // Map Section
        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 400
            color: "#e0e0e0"
            radius: 20
            Image {
                source: "img/map.jpg" // Replace with actual map image path
                anchors.fill: parent
                fillMode: Image.PreserveAspectCrop
            }
        }

        // Location Input Section
        ColumnLayout {
            spacing: 10
            Rectangle {
                Layout.fillWidth: true
                height: 50
                color: "#e0e0e0"
                radius: 10
                RowLayout {
                    anchors.fill: parent
                    spacing: 10
                    Layout.alignment: Qt.AlignVCenter

                    Image {
                        source: "img/location_icon.png" // Placeholder for location icon
                        width: 20
                        height: 20
                        fillMode: Image.PreserveAspectFit
                    }
                    TextField {
                        Layout.fillWidth: true
                        placeholderText: "My location"
                        font.pixelSize: 16
                    }
                }
            }
            Rectangle {
                Layout.fillWidth: true
                height: 50
                color: "#e0e0e0"
                radius: 10
                RowLayout {
                    anchors.fill: parent
                    spacing: 10
                    Layout.alignment: Qt.AlignVCenter

                    Image {
                        source: "img/location_icon.png" // Placeholder for destination icon
                        width: 20
                        height: 20
                        fillMode: Image.PreserveAspectFit
                    }
                    TextField {
                        Layout.fillWidth: true
                        placeholderText: "Where will we go to?"
                        font.pixelSize: 16
                    }
                }
            }
        }

        // Quick Access Buttons Section
        Flow {
            Layout.fillWidth: true
            spacing: 10

            Button {
                text: "Home"
                font.pixelSize: 14
            }
            Button {
                text: "Workplace"
                font.pixelSize: 14
            }
            Button {
                text: "Nearest gas station"
                font.pixelSize: 14
            }
        }

        // Navigation Button
        Button {
            text: "⤴"
            font.pixelSize: 24
            width: 60
            height: 60
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
