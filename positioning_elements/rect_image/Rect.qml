import QtQuick 2.15

Item {
    property alias background: rect.color
    Rectangle {
        id: rect
        anchors.fill: parent
    }
}
