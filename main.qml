import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13

Window {
    visible: true
    width: 320
    height: 480
    title: qsTr("Контакты")

    ListModel {
        id: contactsModel
        ListElement {
            name: "Алёночка"
            avatar: "icons/LittleDragon.png"
            status: "был(а) недавно"
        }
        ListElement {
            name: "Юра"
            avatar: "icons/Cat.jpg"
            status: "был(а) сегодня в 13:42 PM"
        }
        ListElement {
            name: "Мама ♥"
            avatar: "icons/Heart.jpg"
            status: "был(а) недавно"
        }
        ListElement {
            name: "Дария"
            avatar: "icons/Lazarev.jpg"
            status: "был(а) 23 апреля в 12:15 PM"
        }
        ListElement {
            name: "Суши Wok"
            avatar: "icons/SushiWok.png"
            status: "был(а) вчера в 11:28 AM"
        }
        ListElement {
            name: "Сакура"
            avatar: "icons/Sakura.jpg"
            status: "был(а) давно"
        }
    }

    ColumnLayout {
        anchors.fill: parent
        SearchContact {
        Layout.fillWidth: true
            }
        MainToolBar {
            Layout.fillWidth: true
            onNewItem: {
                contactsModel.append({name: text});
            }
        }
        ContactList {
            Layout.fillHeight: true
            Layout.fillWidth: true
            model: contactsModel
        }
    }
}
