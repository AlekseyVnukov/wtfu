import QtQuick 2.0

Item
{
    Rectangle{
        id:test
        anchors.fill: parent
   // property string name: "?"
    Image
    {
        //id: img_name
        source: "qrc:/png/wtfu.png"
        anchors.fill: parent
    }

    Text {
        text: name
        anchors.centerIn: parent
        //text: qsTr("text")
    }
}}
