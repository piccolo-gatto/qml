import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12

Window {
    id: window
    width: 480
    height: 640
    visible: true
    title: qsTr("layout")

    ColumnLayout{
        id: page
        anchors.fill: parent
        spacing: 7

        RowLayout{
            id: header
            Layout.minimumHeight: page.height/9
            Layout.minimumWidth: page.width
            Rect {
                id: header_content
                text:"Header"
                color:"lightgrey"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
        RowLayout{
            id: body
            Layout.minimumHeight: (page.height/9)*7-2*page.spacing
            Layout.minimumWidth: page.width-2*page.spacing
            Layout.leftMargin: page.spacing
            Layout.rightMargin: page.spacing
            Rect {
                id: body_content
                color:"white"
                text:"Content"
                border:"lightgray"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
        RowLayout{
            id: footer
            Layout.minimumHeight: window.height/9
            spacing: 3
            Rect{
                text:"1"
                color:"lightgrey"
                Layout.minimumWidth: window.width/3
                Layout.fillHeight: true
                MouseArea{
                    id:first
                    anchors.fill:parent
                    onClicked:{
                        parent.opacity=1.0;
                        second.parent.opacity=0.5;
                        third.parent.opacity=0.5;
                        header_content.text="Header 1"
                        body_content.text="Item 1 content"
                    }
                }
            }
            Rect{
                text:"2"
                color:"lightgrey"
                Layout.minimumWidth: window.width/3-2*footer.spacing
                Layout.fillHeight: true
                MouseArea{
                    id:second
                    anchors.fill:parent
                    onClicked:{
                        parent.opacity=1.0;
                        first.parent.opacity=0.5;
                        third.parent.opacity=0.5;
                        header_content.text="Header 2"
                        body_content.text="Item 2 content"
                    }
                }
            }
            Rect{
                text:"3"
                color:"lightgrey"
                Layout.minimumWidth: window.width/3
                Layout.fillHeight: true
                MouseArea{
                    id:third
                    anchors.fill:parent
                    onClicked:{
                        parent.opacity=1.0;
                        first.parent.opacity=0.5;
                        second.parent.opacity=0.5;
                        header_content.text="Header 3"
                        body_content.text="Item 3 content"
                    }
                }
            }
        }
    }
}
