import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2


ApplicationWindow {
    width: 360
    height: 640
    visible: true
    title: qsTr("StackView_test")

    header:ToolBar{
        id:page_header
        height:40
        RowLayout{
            ToolButton{
                id:back_btn
                Text{
                    text: "<-"
                    font.pixelSize: 24
                    visible:stack_view.currentItem != page1
                    anchors.verticalCenter: parent.verticalCenter
                }
                onClicked: {
                    if (stack_view.currentItem == page2) {
                        stack_view.replace(page1, StackView.PopTransition)
                    }
                    if (stack_view.currentItem == page3) {
                        stack_view.replace(page1, StackView.PushTransition)
                    }
                }
            }
            Text{
                id:header_page_text
                font.pixelSize: 24
                leftPadding: 10
                text: {
                    if (stack_view.currentItem == page2) {
                        return "It's second page"
                    }
                    if (stack_view.currentItem == page3) {
                        return "It's third page"
                    }
                    return  "It's first page"
                }
            }
        }
    }

    property int defMargin:10

    StackView{
        id:stack_view
        anchors.fill: parent
        initialItem: page1
    }
    My_Page {
        id:page1
        backgroundColor: "red"
        buttonText: "To_Yellow"
        button2Text: "To_Green"
        onButtonClicked: {
            stack_view.replace(page3, StackView.PopTransition)
        }
        onButton2Clicked: {
            stack_view.replace(page2, StackView.PushTransition)
        }
    }
    My_Page {
        id:page2
        visible: false
        backgroundColor: "green"
        buttonText: "To_Red"
        button2Text: "To_Yellow"
        onButtonClicked: {
            stack_view.replace(page1, StackView.PopTransition)
        }
        onButton2Clicked: {
            stack_view.replace(page3, StackView.PushTransition)
        }
    }
    My_Page {
        id:page3
        visible: false
        backgroundColor: "yellow"
        buttonText: "To_Green"
        button2Text: "To_Red"
        onButtonClicked: {
            stack_view.replace(page2, StackView.PopTransition)
        }
        onButton2Clicked: {
            stack_view.replace(page1, StackView.PushTransition)
        }
    }
}
