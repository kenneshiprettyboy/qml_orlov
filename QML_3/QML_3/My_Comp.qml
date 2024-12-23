import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3


Rectangle {
    id: rect1
    property alias comText: text1.text
    property alias comColor: rect1.color
    property alias comOpacity: rect1.opacity

    color: "lightgrey"
    border.color: "#cbcbcb"
    Layout.fillWidth: true
    Layout.fillHeight: true
    Layout.minimumHeight: 50
    Layout.preferredHeight: parent.height * 0.1

    Text {
        id: text1
        text: "Some Content"
        font.pointSize: 12
        font.weight: Font.Bold
        anchors.centerIn: parent
    }
}
