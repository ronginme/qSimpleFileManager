import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Controls 1.4
import QtQuick.Controls 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("qSimpleFileManager")

    Rectangle {
        id: mainMenuBar
        anchors.top: parent.top
        width: parent.width
        height: 30
        color: "#aaaaaa"
    }

    SplitView {
        anchors.top: mainMenuBar.bottom
        anchors.bottom: buttonsBar.top
        width: parent.width
        orientation: Qt.Horizontal

        PanelBar {
            id: leftBar
            width: parent.width / 2
        }

        PanelBar {
            id: rightBar
        }
    }

    Rectangle {
        id: buttonsBar
        anchors.bottom: statusBar.top
        width: parent.width
        height: 30
        color: "#999999"
    }

    Rectangle {
        id: statusBar
        anchors.bottom: parent.bottom
        width: parent.width
        height: 30
        color: "#aaaaaa"
    }
}