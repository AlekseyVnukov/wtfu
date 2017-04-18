//вписать организацию списка из json
import QtQuick 2.0
import Qt.labs.settings 1.0

Item {
    id: item_delegate

    property string name: "?"
    property string sum: "0"
    property string num: "?"


    //property var theArray: new Array()
//    Component.onCompleted: {
//           for (var i = 0; i < 10; i++)
//               theArray.push("Item " + i)}

    Scorecard {
        id: scorecard
    }
    Rectangle {
        border.color: "black"
        radius: 10
        anchors.fill: parent
        id: box
        MouseArea {
            anchors.fill: parent
            onClicked:  stack.push(scorecard)
        }
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "lightgray"
            }
            GradientStop {
                position: 1
                color: "white"
            }
        }
    }

    Row {

        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height
        id: row
        spacing: 6
        anchors.margins: 20
        Text {
            width: 150
            anchors.verticalCenter: row.verticalCenter
            text: num
        }
        Text {
            width: 150
            anchors.verticalCenter: row.verticalCenter
            text: name
        }
        Text {
            width: 150
            anchors.verticalCenter: row.verticalCenter
            text: sum
        }
    }
}
