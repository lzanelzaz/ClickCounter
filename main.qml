import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3
import ClickCounter.BackEnd 1.0

Window {
    width: maximumWidth
    height: maximumHeight
    visible: true

    BackEnd {
        id: backend
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.bottomMargin: 20
        Layout.alignment: Qt.AlignHCenter
        spacing: 12

        Target_name {
            Layout.minimumHeight: 40
            Layout.fillWidth: true
        }

        Text {
            id: counter
            text: backend.count
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            height: 40
            font.pointSize: 80
        }
        Item { // add left and right margins
            Layout.minimumWidth: 80
            Layout.minimumHeight: 70
            Layout.fillWidth: true
            Layout.fillHeight: true

            Click_button {
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                anchors.fill: parent
                MouseArea {
                    anchors.fill: parent
                    onClicked: backend.count++
                }
            }
        }

        Reset_button {
            Layout.alignment: Qt.AlignHCenter
            Layout.minimumWidth: 100
            Layout.minimumHeight: 40
            MouseArea {
                anchors.fill: parent
                onClicked: backend.count = 0
            }
        }
    }
}
