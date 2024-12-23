import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQuick.Window 2.15  // Добавь этот импорт

Window {
    visible: true
    color: "#f5f5f5"
    title: qsTr("Task_for_Layout")
    width: 320
    height: 480
    minimumWidth: 200
    minimumHeight: 300

    ColumnLayout {
        anchors.fill: parent

        RowLayout {
            My_Comp { comText: "Header" }
        }

        RowLayout {
            Layout.preferredHeight: parent.height * 0.8
            My_Comp { comColor: "#f5f5f5"; Layout.margins: 7 }
        }

        RowLayout {
            My_Comp { comText: "1" }
            My_Comp { comText: "2" }
            My_Comp { comText: "3" }
        }
    }
}
