import QtQuick 2.15
import QtQuick.Controls 2.5

Button {
    id: reset_button
    contentItem: Text {
        anchors.centerIn: parent
        text: qsTr("RESET")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 20
    }
    background: Rectangle {
        color: "#b300a366"          // green
        opacity: 0.7
    }
}
