import QtQuick 2.0
import QtQuick.Controls 1.2


//import "."
Item {
    Rectangle {
        id: list_item
        anchors.fill: parent
        width: 200
        height: 300

//        ListModel {
//            id: my_model

//            signal loadCompleted

//            Component.onCompleted: {
//                var xhr = new XMLHttpRequest;
//                xhr.open("GET", "file:///home/bobcat/Qt_sors/QML/pages/2.tab");
//                xhr.onreadystatechange = function () {
//                    if (xhr.readyState === XMLHttpRequest.DONE) {
//                        //if (xhr.status && xhr.status===200){

//                           // console.log("xhr", xhr.responseText)
//                        var a = JSON.parse(xhr.responseText);
//                        for (var b in a) {
//                            var o = a[b];
//                            my_model.append({

//                                             name: o.name,
//                                             num: o.num,
//                                             //description: o.description,
//                                             //image: o.image,
//                                             //selected: false
//                                         });
//                        }
//                        my_model.loadCompleted()
//                    }
//                }
//                xhr.send();
//            }
//        }

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
/* //    ListModel {
        //        id: my_model
                //    }
                        Component {
                                    id: my_delegate
                                                TestModel {
                                                                name: model.name

                                                                                width: list_item.width
                                                                                                height: 40
                                                                                                            }
                                                                                                                    }
                                                                                                                    //        Component {
                                                                                                                    //            id: my_delegate
                                                                                                                    //            TestModel {
                                                                                                                    //                name: model.name
                                                                                                                    //                //personalId: model.personalId
                                                                                                                    //                width: list_item.width
                                                                                                                    //                height: 40
                                                                                                                    //            }
                                                                                                                    //        }

                                                                                                                            ListView {
                                                                                                                                        delegate: my_delegate
                                                                                                                                                    model: my_model
                                                                                                                                                                anchors.fill: list_item
                                                                                                                                                                        }
                                                                                                                                                                                //    ListView {
                                                                                                                                                                                        //        id: listview
                                                                                                                                                                                                //        anchors.fill: parent
                                                                                                                                                                                                        //        model: my_model
                                                                                                                                                                                                                //        delegate: my_delegate
                                                                                                                                                                                                                        ////        delegate: Text {
                                                                                                                                                                                                                                ////                    text: listdata
                                                                                                                                                                                                                                        ////                }
                                                                                                                                                                                                                                                //    }

                                                                                                                                                                                                                                                        //    function getData() {
                                                                                                                                                                                                                                                                //        var xmlhttp = new XMLHttpRequest()
                                                                                                                                                                                                                                                                        //        var sorce = "*.tab"

                                                                                                                                                                                                                                                                                //        xmlhttp.onreadystatechange = function () {
                                                                                                                                                                                                                                                                                        //            if (xmlhttp.readyState === XMLHttpRequest.DONE
                                                                                                                                                                                                                                                                                                //                    && xmlhttp.status == 200) {
                                                                                                                                                                                                                                                                                                        //                myFunction(xmlhttp.responseText)
                                                                                                                                                                                                                                                                                                                //            }
                                                                                                                                                                                                                                                                                                                        //        }
                                                                                                                                                                                                                                                                                                                                //        xmlhttp.open("GET", sorce)
                                                                                                                                                                                                                                                                                                                                        //        xmlhttp.send()
                                                                                                                                                                                                                                                                                                                                                //    }

                                                                                                                                                                                                                                                                                                                                                        //    function myFunction(response) {
                                                                                                                                                                                                                                                                                                                                                                //        var arr = JSON.parse(response)
                                                                                                                                                                                                                                                                                                                                                                        //        for (var i = 0; i < arr.length; i++) {
                                                                                                                                                                                                                                                                                                                                                                                //            listview.model.append({
                                                                                                                                                                                                                                                                                                                                                                                        //                                      listdata: arr[i].Name
                                                                                                                                                                                                                                                                                                                                                                                                //                                  })
                                                                                                                                                                                                                                                                                                                                                                                                        //        }

                                                                                                                                                                                                                                                                                                                                                                                                                //    }
                                                                                                                                                                                                                                                                                                                                                                                                                        //    Button {
                                                                                                                                                                                                                                                                                                                                                                                                                                //            anchors.bottom: parent.bottom
                                                                                                                                                                                                                                                                                                                                                                                                                                        //            width: parent.width
                                                                                                                                                                                                                                                                                                                                                                                                                                                //            text: "Get Data"
                                                                                                                                                                                                                                                                                                                                                                                                                                                        //            onClicked: getData()
                                                                                                                                                                                                                                                                                                                                                                                                                                                                //        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        //ListView {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                //    //id: wild_field
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        //    Rectangle {

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                //        anchors.fill: parent
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        //        //property string name: "?"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                //        Image {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        //            //id: img_name
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                //            source: "qrc:/png/wtfu.png"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        //            anchors.fill: parent
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                //        }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        //        Text {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                //            //text: name
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        //            anchors.centerIn: parent
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                //            text: qsTr("FULL EXP")
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        //        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }*/

