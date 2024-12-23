import QtQuick 2.15
import QtQuick.Controls 2.15


Page {
    id: firstPage
    property alias comText: myText.text
    property alias comColor: myRect.color
    Rectangle {
        id: myRect
        width: parent.width
        height: parent.height
        color: "gray"
        Text {
            id: myText
            text: "Some Light"
            anchors.centerIn: parent
            font.pointSize: 20
        }
    }
}
