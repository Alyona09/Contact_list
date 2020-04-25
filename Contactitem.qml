import QtQuick 2.13
import QtQuick.Layouts 1.13
import QtQuick.Controls 2.13

Rectangle {
    id: me
    property alias icon: icon.source
    property alias text: label.text
    property alias status_online: status.text
    property bool selected: false

    signal leftClick()
    signal rightClick()

    width: parent.width
    height: 60

    color: {
        if (selected)
            return"lightblue"
        if (area.containsMouse)
            return "#f1f1f1"
        return "white";
    }

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 4
        anchors.rightMargin: 4
        spacing: 7
        Image {
            id: icon
            source: "icons/person.png"
            Layout.fillHeight: true
            Layout.preferredWidth: height
            Layout.margins: 4
        }

        ColumnLayout {
            Label {
            id: label
            font.pixelSize: 15
            font.bold: true
            Layout.fillWidth: true
        }

        Label {
            id: status
            font.pixelSize: 13
            font.italic: true
            Layout.fillWidth: true
        }
    }
 }
    MouseArea {
        id: area
        anchors.fill: parent
        hoverEnabled: true
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            if (mouse.button === Qt.LeftButton)
                leftClick();
            if (mouse.button === Qt.RightButton)
                rightClick();
        }
    }
}
