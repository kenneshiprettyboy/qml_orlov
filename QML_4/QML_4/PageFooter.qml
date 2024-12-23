import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3


Rectangle{
    id:root;height:60
    gradient:Gradient{
        GradientStop{position:0;color:"lightgray"}
        GradientStop{position:1;color:"white"}
    }
    signal newMessage(string msg)
    TextField {
        id: edtText;
        selectByMouse: true;
        anchors.fill:root;
        placeholderText: "Write a message...";
        font.pointSize: 12;
        color: "black";
        leftPadding: 10;
        verticalAlignment: TextInput.AlignVCenter;
        onAccepted: {
            newMessage(edtText.text);
            edtText.clear();
        }
    }
    Button {
        id: btnAddItem
        height:root.height;
        width: root.height * 1.5;
        anchors.right:parent.right;
        background: Rectangle { color: "#dfe0e0" }
        text: "Send";
        font.pointSize: 12;
        onClicked: {
            newMessage(edtText.text);
            edtText.clear();
        }
    }
}
