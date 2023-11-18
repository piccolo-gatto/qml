import QtQuick 2.15

Item {
        property alias background: eye.background
        Rect {
            id: eye;
            width: 50;
            height: this.width;
            Rect {
                id: blink;
                width: 25;
                height: this.width;
                anchors.top: parent.top;
                anchors.right:parent.right;
                background: "white";
            }
            Rect {
                id: pupil;
                width: 4;
                height: eye.height-4;
                background: "black";
                anchors.horizontalCenter: parent.horizontalCenter;
                anchors.verticalCenter: parent.verticalCenter;
            }
            Rect {
                id: pupil2;
                width: pupil.width*2;
                height: pupil.height - pupil.height/4;
                background: pupil.background;
                anchors.horizontalCenter: parent.horizontalCenter;
                anchors.verticalCenter: parent.verticalCenter;
            }
            Rect {
                id: pupil3;
                width: pupil2.width*2;
                height: pupil2.height - pupil2.height/4;
                background: pupil.background;
                anchors.horizontalCenter: parent.horizontalCenter;
                anchors.verticalCenter: parent.verticalCenter;
            }

        }

}
