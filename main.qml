import QtQuick 2.11
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 320
    height: 480
    title: qsTr("Scroll Test")

    Rectangle {
        property var selectedModel: sidebarList.currentItem.model

        color: "white"
        clip: true
        anchors.fill: parent

        ListModel {
            id: roomList

            ListElement {
                name: "Item 1"
            }
            ListElement {
                name: "Item 2"
            }
            ListElement {
                name: "Item 3"
            }
        }

        ListView {
            id: sidebarList
            anchors.fill: parent
            focus: true

            model: roomList
            delegate: ListItem {
                model: model
                label: name
                selected: ListView.isCurrentItem
                MouseArea {
                    anchors.fill: parent
                    cursorShape: "PointingHandCursor"
                    onClicked: sidebarList.currentIndex = index
                }
            }
        }
    }

}
