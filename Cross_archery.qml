import QtQuick 2.0
import QtQuick.Controls 1.2
//import Qt.labs.settings 1.0
import "Parser.js" as JS
import QtQuick.Dialogs 1.2

//import "."
Item {
    Rectangle {
        id: list_item
        anchors.fill: parent
        width: 200
        height: 300
//        Settings{
//            id: settings
//            category: "Sample"
//            property int count: 0
//        }

       // Component.onCompleted: JS.load()
        ListModel {
            id: my_model
           //Component.onCompleted:  settings.count++
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
//            signal loadCompleted

//            Component.onCompleted: {
//                var xhr = new XMLHttpRequest
//                xhr.open("GET", "file:///home/bobcat/Qt_sors/QML/pages/2.tab")
//                xhr.onreadystatechange = function () {
//                    if (xhr.readyState === XMLHttpRequest.DONE) {
//                        //if (xhr.status && xhr.status===200){

//                        // console.log("xhr", xhr.responseText)
//                        var a = JSON.parse(xhr.responseText)
//                        for (var b in a) {
//                            var o = a[b]
//                            my_model.append({
//                                                name: o.name
//                                                //value: o.value,
//                                                //description: o.description,
//                                                //image: o.image,
//                                                //selected: false
//                                            })
//                        }
//                        my_model.loadCompleted()
//                    }
//                }
//                xhr.send()
//            }

