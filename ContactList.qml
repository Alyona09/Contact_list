import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.13

ListView {
    id: list
    property int menuIndex: null
    signal menu()
    clip: true
    boundsBehavior: ListView.StopAtBounds
    ScrollBar.vertical: ScrollBar {}
    delegate: Contactitem {
        text: name
        icon: avatar
        status_online: status
        selected: list.currentIndex === index
        onLeftClick: {
            list.currentIndex = index
        }
        onRightClick: {
            menuIndex = index;
            menu();
        }
    }
}
