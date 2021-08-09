import QtQuick 2.15

Rectangle {
    SequentialAnimation on color {  // from lavender to purple and back
       loops: Animation.Infinite
       ColorAnimation { from: "#e1c8ec"; to: "#986ca4"; duration: 5000 }
       ColorAnimation { from: "#986ca4"; to: "#e4b9ea"; duration: 5000 }
       ColorAnimation { from: "#e4b9ea"; to: "#ee9acb"; duration: 5000 }
       ColorAnimation { from: "#ee9acb"; to: "#b468c4"; duration: 5000 }
       ColorAnimation { from: "#b468c4"; to: "#ac72d3"; duration: 5000 }
       ColorAnimation { from: "#ac72d3"; to: "#893cab"; duration: 5000 }

       ColorAnimation { from: "#893cab"; to: "#ac72d3"; duration: 5000 }
       ColorAnimation { from: "#ac72d3"; to: "#b468c4"; duration: 5000 }
       ColorAnimation { from: "#b468c4"; to: "#ee9acb"; duration: 5000 }
       ColorAnimation { from: "#ee9acb"; to: "#e4b9ea"; duration: 5000 }
       ColorAnimation { from: "#e4b9ea"; to: "#986ca4"; duration: 5000 }
       ColorAnimation { from: "#986ca4"; to: "#e1c8ec"; duration: 5000 }
    }

    Text {
        text: qsTr("Click Counter")
        font.bold: true
        anchors.fill: parent
        anchors.leftMargin: 10
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 20
        color: "white"
    }
}
