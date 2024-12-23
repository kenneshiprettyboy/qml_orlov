import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5


Window {
    width: 360;
    height: 640;
    visible: true;
    title: qsTr("qml_4");
    property int defMargin: 8;

    Page{
        id:page;
        anchors.fill:parent;
        Rectangle {
            width: parent.width
            height: parent.height
        }

        ListView{
            id: my_list;
            anchors.fill:parent;
            model:my_model;
            delegate: MyDelegate{
                username: model.username;
                content:  model.content;
                time: model.time;
            }
        }

        ListModel {
            id: my_model;
            ListElement { username: "Иван Петрушин"; content: "Орлов, где домашка?!"; time: "12:24"; }
        }

        footer: PageFooter {
            onNewMessage: {
                //Append new message
                var newMsg = {};
                newMsg.content = msg;
                newMsg.username = "Unknown";
                newMsg.time = Qt.formatTime(new Date(), "hh:mm");
                my_model.append(newMsg);
            }
        }
    }
}
