import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3


Window {
    id:win;
    width: 360; height: 420
    visible: true
    title: qsTr("ColumnLayout")
    ColumnLayout{
        anchors.fill:parent
        spacing:10
        My_Comp{ comColor: "lightblue" }
        My_Comp{ comColor: "purple" }
        My_Comp{ comColor: "orange" }
    }
}
