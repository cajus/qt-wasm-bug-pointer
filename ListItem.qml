import QtQuick 2.11

Rectangle {
    property var model
    property string label
    property bool selected

    width: parent.width
    height: 50
    color: "transparent"

    Text {
        id: label
        text: parent.label
        anchors.left: parent.left
        anchors.leftMargin: 18
        anchors.verticalCenter: parent.verticalCenter
        color: selected ? "red" : "black"
    }

    Rectangle {  // Border bottom
        height: 1
        y: parent.height - 1
        width: parent.width
        color: "#202d3c"
    }
}
