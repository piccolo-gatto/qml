import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 500
    height: 500
    visible: true
    title: qsTr("cat")
    Rect{
        id: face;
        height: 7*25;
        width: 13*25;
        background: "#272320";
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.verticalCenter: parent.verticalCenter;
        Eye {
            id: left_eye;
            anchors.top: parent.top;
            anchors.left:parent.left;
            anchors.leftMargin: 50;
            anchors.topMargin: 50;
            background: "#fac60a";
        }

        Eye {
            id: right_eye;
            anchors.top: parent.top;
            anchors.right:parent.right;
            anchors.rightMargin: 50*2;
            anchors.topMargin: 50;
            background: left_eye.background;
        }
        Rect {
            id: nouse;
            height: 1*25;
            width: 1*25;
            background: "#534a46";
            anchors.horizontalCenter: parent.horizontalCenter;
            anchors.verticalCenter: parent.verticalCenter;
        }
        Rect {
            id: lips_right;
            height: 1*25;
            width: 1*25;
            background: nouse.background;
            anchors.left: nouse.right;
            anchors.top: nouse.bottom;
        }
        Rect {
            id: lips_left;
            height: 1*25;
            width: 1*25;
            background: nouse.background;
            anchors.right: nouse.left;
            anchors.top: nouse.bottom;
        }

        Rect {
            id: mouth;
            height: 2*25;
            width: 1*25;
            background: "pink";
            anchors.right: lips_right.left;
            anchors.top: nouse.bottom;
        }
        Rect {
            id: left_cheek;
            height: 4*25;
            width: 1*25;
            background: nouse.background;
            anchors.left: face.right;
            anchors.top: left_eye.top;
        }
        Rect {
            id: right_cheek;
            height: left_cheek.height;
            width: left_cheek.width;
            background: left_cheek.background;
            anchors.right: face.left;
            anchors.top: left_cheek.top;
        }
        Rect {
            id: left_top_border;
            height: 2*25;
            width: 1*25;
            background: nouse.background;
            anchors.left: face.left;
            anchors.top: face.top;
        }
        Rect {
            id: right_top_border;
            height: 2*25;
            width: 1*25;
            background: nouse.background;
            anchors.right: face.right;
            anchors.top: face.top;
        }
        Rect {
            id: left_bottom_border;
            height: 1*25;
            width: 1*25;
            background: nouse.background;
            anchors.left: face.left;
            anchors.bottom: face.bottom;
        }
        Rect {
            id: right_bottom_border;
            height: 1*25;
            width: 1*25;
            background: nouse.background;
            anchors.right: face.right;
            anchors.bottom: face.bottom;
        }
    }
    Rect {
        id: chin;
        width: 11*25;
        height: 1*25;
        anchors.horizontalCenter: face.horizontalCenter;
        anchors.top: face.bottom;
        background: face.background;
        Rect {
            id: border_left;
            width: 1*25;
            height: 1*25;
            anchors.left: parent.left;
            background: nouse.background;

        }
        Rect {
            id: border_right;
            width: 1*25;
            height: 1*25;
            anchors.right: parent.right;
            background: nouse.background;

        }
    }
    Rect {
        id: chin_2;
        width: 9*25;
        height: 1*25;
        anchors.horizontalCenter: face.horizontalCenter;
        anchors.top: chin.bottom;
        background: face.background;
        Rect {
            id: border_left_2;
            width: 1*25;
            height: 1*25;
            anchors.left: parent.left;
            background: nouse.background;

        }
        Rect {
            id: border_right_2;
            width: 1*25;
            height: 1*25;
            anchors.right: parent.right;
            background: nouse.background;

        }
    }
    Rect {
        id: neck;
        width: 7*25;
        height: 1*25;
        anchors.horizontalCenter: face.horizontalCenter;
        anchors.top: chin.bottom;
        background: nouse.background;
    }

    Rect {
        id: head;
        width: 9*25;
        height: 2*25;
        anchors.horizontalCenter: face.horizontalCenter;
        anchors.bottom: face.top;
        background: face.background;
        Rect{
            id: head_border;
            width: 5*25;
            height: 1*25;
            anchors.horizontalCenter: head.horizontalCenter;
            background: neck.background;
            anchors.top: parent.top;

        }
    }
    Rect {
        id: auricle_left;
        width: 3*25;
        height: 2*25;
        anchors.right: head.left;
        anchors.top: head.top;
        background: "#BC987E";
        Rect{
            id: auricle_left_border;
            width: 1*25;
            height: parent.width;
            background: neck.background;
            anchors.left: parent.left;

        }
    }
    Rect {
        id: brow_left;
        width: 1*25;
        height: 1*25;
        anchors.left: auricle_left.right;
        anchors.top: head.bottom;
        background: neck.background;
    }
    Rect {
        id: brow_left_2;
        width: 1*25;
        height: 1*25;
        anchors.left: brow_left.right;
        anchors.top: brow_left.bottom;
        background: neck.background;
    }
    Rect {
        id: auricle_right;
        width: 3*25;
        height: 2*25;
        anchors.left: head.right;
        anchors.top: head.top;
        background: "#BC987E";
        Rect{
            id: auricle_right_border;
            width: 1*25;
            height: parent.width;
            background: neck.background;
            anchors.right: parent.right;

        }
    }
    Rect {
        id: brow_right;
        width: 1*25;
        height: 1*25;
        anchors.right: auricle_right.left;
        anchors.top: head.bottom;
        background: neck.background;
    }
    Rect {
        id: brow_right_2;
        width: 1*25;
        height: 1*25;
        anchors.right: brow_right.left;
        anchors.top: brow_right.bottom;
        background: neck.background;
    }
    Rect {
        id: auricle_left_2;
        width: 2*25;
        height: 1*25;
        anchors.left: auricle_left.left;
        anchors.bottom: auricle_left.top;
        background: "#BC987E";
        Rect{
            id: auricle_left_2_border;
            width:  1*25;
            height: parent.height;
            background: neck.background;
            anchors.left: parent.left;

        }
    }
    Rect {
        id: auricle_right_2;
        width: 2*25;
        height: 1*25;
        anchors.right: auricle_right.right;
        anchors.bottom: auricle_right.top;
        background: "#BC987E";
        Rect{
            id: auricle_right_2_border;
            width:  1*25;
            height: parent.height;
            background: neck.background;
            anchors.right: parent.right;

        }
    }
    Rect {
        id: ear_left;
        width: 3*25;
        height: 1*25;
        anchors.left: auricle_left_2.right;
        anchors.bottom: head.top;
        background: face.background;
        Rect{
            id: ear_left_border;
            width:  1*25;
            height: parent.height;
            background: neck.background;
            anchors.right: parent.right;

        }
    }
    Rect {
        id: ear_right;
        width: 3*25;
        height: 1*25;
        anchors.right: auricle_right_2.left;
        anchors.bottom: head.top;
        background: face.background;
        Rect{
            id: ear_right_border;
            width:  1*25;
            height: parent.height;
            background: neck.background;
            anchors.left: parent.left;

        }
    }
    Rect {
        id: ear_left_2;
        width: 3*25;
        height: 1*25;
        anchors.left: face.left;
        anchors.bottom: ear_left.top;
        background: face.background;
        Rect{
            id: ear_left_border_left;
            width:  1*25;
            height: parent.height;
            background: neck.background;
            anchors.left: parent.left;

        }
        Rect{
            id: ear_left_border_right;
            width:  1*25;
            height: parent.height;
            background: neck.background;
            anchors.right: parent.right;

        }
    }
    Rect {
        id: ear_right_2;
        width: 3*25;
        height: 1*25;
        anchors.right: face.right;
        anchors.bottom: ear_right.top;
        background: face.background;
        Rect{
            id: ear_right_border_left;
            width:  1*25;
            height: parent.height;
            background: neck.background;
            anchors.left: parent.left;

        }
        Rect{
            id: ear_right_border_right;
            width:  1*25;
            height: parent.height;
            background: neck.background;
            anchors.right: parent.right;

        }
    }
    Rect {
        id: ear_left_3;
        width: 2*25;
        height: 1*25;
        anchors.left: ear_left_2.left;
        anchors.bottom: ear_left_2.top;
        background: neck.background;
    }
    Rect {
        id: ear_right_3;
        width: 2*25;
        height: 1*25;
        anchors.right: ear_right_2.right;
        anchors.bottom: ear_right_2.top;
        background: neck.background;
    }
}
