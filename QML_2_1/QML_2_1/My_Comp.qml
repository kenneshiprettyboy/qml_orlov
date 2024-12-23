import QtQuick 2.0
import QtQuick.Layouts 1.3


Rectangle{
    id:rect1
    width:300
    height: 100
    border.width: 1
    property alias comColor: rect1.color
    Layout.fillWidth: true
    Layout.fillHeight: true

    Text{
        text:"My color: " + rect1.color
        anchors.centerIn: rect1
        font.pixelSize: 24
    }
}
