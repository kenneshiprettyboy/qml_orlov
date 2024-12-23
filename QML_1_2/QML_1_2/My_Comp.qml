import QtQuick 2.15
import QtQuick.Window 2.15


Rectangle {
    id: rect1
    property alias comColor: rect1.color
    property alias comText: text1.text
    property alias comBorderColor: rect1.border.color
    property alias comWidth: rect1.width
    property alias comHeight: rect1.height

    width: parent.width
    height: parent.height * 0.1
    color: "lightgrey"
    border.color: "#cbcbcb"

    Text {
        id: text1
        text: "Content"
        font.pointSize: 12
        font.weight: 600
        anchors.centerIn: parent
    }
}
