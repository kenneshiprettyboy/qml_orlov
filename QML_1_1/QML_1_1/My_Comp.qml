import QtQuick 2.15
import QtQuick.Window 2.15


Item {
    property alias comColor: rect1.color
    property alias comX: rect1.x
    property alias comY: rect1.y

    Rectangle {
        id: rect1
        width: 100
        height: 100
    }
}
