import QtQuick 2.0

Item {
    property alias color: rect.color
    property alias text: text.text
    property alias border:rect.border.color

    Rectangle {
        id:rect
        anchors.fill: parent
        border.color:"white"
        Text{
            id: text
            anchors.centerIn: parent
        }
    }
}
