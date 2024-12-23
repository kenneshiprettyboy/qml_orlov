import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3


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
            MyComp {
                id: header
                comText: "Header"
                Text {
                    id:arrow
                    text: "<-"
                    font.pixelSize: 30
                    font.bold: true
                    opacity:0;
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            row_footer.state = ""
                        }
                    }
                }
            }
        }

        RowLayout {
            Layout.preferredHeight: parent.height * 0.8
            MyComp {
                id: content
                comColor: "#f5f5f5"
                Layout.margins: 7
            }
        }

        RowLayout {
            id: row_footer
            state: ""

            MyComp {
                id: btn1
                comText: "1"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (row_footer.state !== "btn1")
                            row_footer.state = "btn1";
                        else
                            row_footer.state = "";
                    }
                }
            }

            MyComp {
                id: btn2
                comText: "2"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (row_footer.state !== "btn2")
                            row_footer.state = "btn2";
                        else
                            row_footer.state = "";
                    }
                }
            }

            MyComp {
                id: btn3
                comText: "3"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (row_footer.state !== "btn3")
                            row_footer.state = "btn3";
                        else
                            row_footer.state = "";
                    }
                }
            }

            states: [
                State {
                    name: "btn1"
                    PropertyChanges { target: btn1; comColor: "red"; }
                    PropertyChanges { target: btn2; comOpacity: 0.4; }
                    PropertyChanges { target: btn3; comOpacity: 0.4; }
                    PropertyChanges { target: header; comText: "Header 1"; }
                    PropertyChanges { target: content; comText: "Item 1 Content"; }
                },
                State {
                    name: "btn2"
                    PropertyChanges { target: btn1; comOpacity: 0.4; }
                    PropertyChanges { target: btn2; comColor: "red"; }
                    PropertyChanges { target: btn3; comOpacity: 0.4; }
                    PropertyChanges { target: header; comText: "Header 2";  }
                    PropertyChanges { target: content; comText: "Item 2 Content"; }
                    PropertyChanges { target: arrow; opacity: 1; }
                },
                State {
                    name: "btn3"
                    PropertyChanges { target: btn1; comOpacity: 0.4; }
                    PropertyChanges { target: btn2; comOpacity: 0.4; }
                    PropertyChanges { target: btn3; comColor: "red"; }
                    PropertyChanges { target: header; comText: "Header 3"; }
                    PropertyChanges { target: content; comText: "Item 3 Content"; }
                    PropertyChanges { target: arrow; opacity: 1; }
                }
            ]

            transitions: [
                Transition {
                    PropertyAnimation { properties: "comColor"; duration: 500; }
                    PropertyAnimation { properties: "comOpacity"; duration: 500; }
                }
            ]

        }
    }
}
