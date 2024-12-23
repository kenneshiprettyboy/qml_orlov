import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    visible: true
    width: 600
    height: 600
    title: "Простое лицо"
    color: "white"

    Item {
        width: 600
        height: 600
       My_Comp { comColor: "black"; anchors.left: parent.left; anchors.top: parent.top; comX: 0; comY: 0 }
       My_Comp { comColor: "yellow"; anchors.left: parent.left; anchors.top: parent.top; comX: 100; comY: 0 }
       My_Comp { comColor: "blue"; anchors.left: parent.left; anchors.top: parent.top; comX: 200; comY: 0 }
       My_Comp { comColor: "red"; anchors.left: parent.left; anchors.top: parent.top; comX: 300; comY: 0 }
       My_Comp { comColor: "green"; anchors.left: parent.left; anchors.top: parent.top; comX: 400; comY: 0 }
       My_Comp { comColor: "purple"; anchors.left: parent.left; anchors.top: parent.top; comX: 500; comY: 0 }

        // Левый глаз (черный круг)
        Rectangle {
            width: 100
            height: 100
            color: "black"
            radius: 50  // Радиус для получения круглой формы
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 150
            anchors.topMargin: 150
        }

        // Правый глаз (черный круг)
        Rectangle {
            width: 100
            height: 100
            color: "black"
            radius: 50  // Радиус для получения круглой формы
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 150
            anchors.topMargin: 150
        }

        // Рот (черный прямоугольник)
        Rectangle {
            width: 300
            height: 50
            color: "black"
            anchors.centerIn: parent
            anchors.topMargin: 200
        }
    }
}
