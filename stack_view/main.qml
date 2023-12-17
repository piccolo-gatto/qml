import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("StackView_test")
    property int defMargin:10
    StackView {
        z:3
        id:stack_view
        anchors.fill: parent
        initialItem: page1
    }

    Loader {
        id: page1
        sourceComponent: pageTemple
        onLoaded: {
            item.backgroundColor = "red"
            item.buttonText1 = "To_Green"
            item.buttonText2 = "To_Yellow"
            item.onButtonClicked.connect(function(index) {
                let page = (index == 0 ? page2 : page3)
                stack_view.pop(page)
                stack_view.push(page)
            })
            item.onBack.connect(function(){ stack_view.pop() })
        }
    }

    Loader {
        id: page2
        sourceComponent: pageTemple
        onLoaded: {
            item.backgroundColor = "green"
            item.buttonText1= "To_Red"
            item.buttonText2 = "To_Yellow"
            item.onButtonClicked.connect(function(index) {
                let page = (index == 0 ? page1: page3)
                stack_view.pop(page)
                stack_view.push(page)
            })
            item.onBack.connect(function(){ stack_view.pop() })
        }
    }

    Loader {
        id: page3
        sourceComponent: pageTemple
        onLoaded: {
            item.backgroundColor = "yellow"
            item.buttonText1 = "To_Red"
            item.buttonText2 = "To_Green"
            item.onButtonClicked.connect(function(index) {
                let page = (index == 0 ? page1: page2)
                stack_view.pop(page)
                stack_view.push(page)
            })
            item.onBack.connect(function(){ stack_view.pop() })
        }
    }


    Component {
        id: pageTemple
        Page {
            id:root
            property alias backgroundColor:back_fon.color
            property alias buttonText1:batton_nav1.text
            property alias buttonText2:batton_nav2.text
            signal buttonClicked(var index);
            signal back()
            
            header : Rectangle{
                Button {
                    anchors.leftMargin:10 
                    anchors.topMargin:10
                    anchors.left: parent.left 
                    anchors.top:parent.top
                    text: "Назад"
                    onClicked: back()
                }
            }
            
            background: Rectangle {
                id:back_fon
            }
            Button {
                id:batton_nav1
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.rightMargin:130
                anchors.margins: defMargin // look into main.qml
                onClicked: {
                    root.buttonClicked(0)
                }
            }
            Button {
                id:batton_nav2
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.margins: defMargin // look into main.qml
                onClicked: {
                    root.buttonClicked(1)
                }
            }
        }

    }
}
