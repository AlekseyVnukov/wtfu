//import QtQuick 2.0
import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import "Parser.js" as JS

Item {
    //    id:cr_rec
    //property var theArray: new Array()


    Rectangle {
        id: cr_rec
        anchors.fill: parent
        Row {
            //anchors.fill: cr_rec
            anchors.margins: 10
            spacing: 5

            Rectangle {
                id: recleft
                height: cr_rec.height
                width: cr_rec.width * 0.3
                //            anchors.left: cr_rec.left
                //            anchors.top: cr_rec.top
                //            //anchors.left: parent.left
                //            anchors.bottom: cr_rec.bottom
                //            anchors.right: recright.left
                color: "green"
                Rectangle {
                    Column {
                        Text {

                            text: num
                        }
                        Text {

                            text: name
                        }
                        Text {

                            text: sum
                        }
                    }
                }
                Image {
                    id: im
                    height: recleft.height * 0.3
                    anchors.left: recleft.left
                    anchors.right: recleft.right
                    anchors.bottom: recleft.bottom
                    source: "qrc:/png/wtfu.png"
                }
            }
            Rectangle {
                id: recright
                height: cr_rec.height
                width: cr_rec.width * 0.7

                //            anchors.left: recleft.right
                //            anchors.right: cr_rec.right
                //            anchors.top: cr_rec.top
                //            anchors.bottom: parent.bottom
                TabView {
                    anchors.fill: recright

                    id: tabItem
                    Tab {
                        title: "test"
                    }
                    Tab {
                        title: "1-й круг"
                        FirstRound {
                        }
                    }
                    Tab {
                        title: "2-й круг"
                        SecondRound {
                        }
                    }
                    Tab {
                        title: "3-й круг"
                        ThirdRound {
                        }
                    }
                }
            }
        }
    }
}
