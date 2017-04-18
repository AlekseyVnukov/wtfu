import QtQuick 2.0
import "Parser.js" as JS

Item {
    Rectangle {
        id: list_item
        anchors.fill: parent
        width: 200
        height: 300

        Component.onCompleted: JS.load()
        ListModel {
            id: my_model
        }

        Component {
            id: my_delegate
            TestModel {
                name: model.name
                num: model.num
                width: list_item.width
                height: 40
            }
        }

        ListView {
            delegate: my_delegate
            model: my_model
            anchors.fill: list_item
        }
    }
}
