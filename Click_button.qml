import QtQuick 2.15
import QtQuick.Controls 2.5

Button {
    id: click_button
    contentItem: Text {
        anchors.centerIn: parent
        text: qsTr("CLICK")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 40
    }
    background: Rectangle {
        color: "#cc4de6ff"            // blue
        opacity: 0.7
    }
}
