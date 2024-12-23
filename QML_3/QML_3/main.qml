import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQuick.Window 2.15


Window {
    visible: true
    color: "#f5f5f5"
    title: qsTr("Task_for_Signal")
    width: 320
    height: 480
    minimumWidth: 200
    minimumHeight: 300

    ColumnLayout {
        anchors.fill: parent

        RowLayout {
            My_Comp {
                id: header
                comText: "Header"
            }
        }

        RowLayout {
            Layout.preferredHeight: parent.height * 0.8
            My_Comp {
                id: content
                comColor: "#f5f5f5"
                Layout.margins: 7
            }
        }

        RowLayout {
            My_Comp {
                id: btn1
                comText: "1"
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        header.comText = "Header 1"
                        content.comText = "Item 1 Content"
                        btn2.comOpacity = 0.5
                        btn3.comOpacity = 0.5
                        btn1.comOpacity = 1
                    }
                }
            }

            My_Comp {
                id: btn2
                comText: "2"
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        header.comText = "Header 2"
                        content.comText = "Item 2 Content"
                        btn1.comOpacity = 0.5
                        btn3.comOpacity = 0.5
                        btn2.comOpacity = 1
                    }
                }
            }

            My_Comp {
                id: btn3
                comText: "3"
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        header.comText = "Header 3"
                        content.comText = "Item 3 Content"
                        btn1.comOpacity = 0.5
                        btn2.comOpacity = 0.5
                        btn3.comOpacity = 1
                    }
                }
            }
        }
    }
}
