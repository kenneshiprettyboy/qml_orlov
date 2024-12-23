import QtQuick 2.15
import QtQuick.Controls 2.15

Window {
    visible: true
    color: "#f5f5f5"
    title: qsTr("Task_for_Layout")
    width: 320
    height: 480
    minimumWidth: 200
    minimumHeight: 300

    Item {
        anchors.fill: parent

        My_Comp {
            id: header
            comText: "Header"
        }

        My_Comp {
            id: body
            comColor: "#f5f5f5"
            anchors.bottom: footer.top
            anchors.right: parent.right
            anchors.top: header.bottom
            anchors.left: parent.left
            anchors.margins: parent.width * 0.02
        }

        My_Comp {
            id: footer
            comColor: "#dcdcdc"
            anchors.bottom: parent.bottom

            My_Comp {
                id: frect1
                comWidth: (parent.width * 0.98) / 3
                comHeight: parent.height
                comText: "1"
            }

            My_Comp {
                id: frect2
                comWidth: (parent.width * 0.98) / 3
                comHeight: parent.height
                comText: "2"

                anchors.left: frect1.right
                anchors.leftMargin: parent.width * 0.01
            }

            My_Comp {
                id: frect3
                comWidth: (parent.width * 0.98) / 3
                comHeight: parent.height
                comText: "3"

                anchors.left: frect2.right
                anchors.leftMargin: parent.width * 0.01
            }
        }
    }
}
