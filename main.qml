import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3
import QtQml 2.2
import Qt.labs.folderlistmodel 2.1
import QtQuick.Dialogs 1.2
import "Parser.js" as JS
import "."

ApplicationWindow {
    id: main_window
    visible: true
    width: 640
    height: 480
    title: qsTr("WTAF Ukraine")
    color: "grey"
//property bool fullscreen: true
    header: ToolBar {
        id: tool_bar
        RowLayout {
            anchors.fill: parent
            ToolButton {
                text: qsTr("‹")
                onClicked: stack.pop()
            }
            Label {
                text: "Title"
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
            ToolButton {
                text: qsTr("⋮")
                onClicked: menu.open()
            }
        }
    }

    //menuBar: MenuBar {
    Menu {
        id: menu
        title: qsTr("File")

        MenuItem {
            text: qsTr("Open")
            onTriggered: openFileDialog.open()
        }
        MenuItem {
            text: qsTr("Save")
            onTriggered: saveFileDialog.open()
        }
        MenuItem {
            text: qsTr("Exit")
            onTriggered: Qt.quit()
        }
    }
    function openFile(fileUrl) {
        var request = new XMLHttpRequest()
        request.open("GET", fileUrl, false)
        request.send(null)
        return request.fileUrl
        //return request.responseText
    }

    function saveFile(fileUrl, text) {
        var request = new XMLHttpRequest()
        request.open("PUT", fileUrl, false)
        request.send(text)
        return request.status
    }

    FileDialog {
        id: openFileDialog
        nameFilters: ["Json files (*.tab)", "All files (*)"]
        //Component.onCompleted: JS.load() //= openFile(openFileDialog.fileUrl)
        //onAccepted: textEdit.text = openFile(openFileDialog.fileUrl)
        //Component.onCompleted: JS.load()
        //onAccepted:  JS.load(fileUrl)

    }

    FileDialog {
        id: saveFileDialog
        selectExisting: false
        nameFilters: ["Json files (*.tab)", "All files (*)"]
        onAccepted: saveFile(saveFileDialog.fileUrl, textEdit.text)
    }

    //Wild_field {id: wild_field; /*name: "Wild Field"*/}
    StackView {
        id: stack
        anchors.fill: parent
        initialItem: stack_view
    }

    Rectangle {
        //Component {
        id: stack_view
        color: "lightgray"
        //Row {

        //           anchors.right: main_window.right
        //           anchors.verticalCenter: parent.verticalCenter
        //           anchors.rightMargin: 5
        //           anchors.left: main_window.le
        //spacing: 20

        //text: "Cross archery"
        Button {
            id: cros_btn
            width: 150
            height: 150
            anchors.centerIn: stack_view

            onClicked: stack.push(cross_archery)
            Image {
                id: img_cros_btn
                anchors.fill: parent
                source: "qrc:/png/33DyoE3xdNk.jpg"
            }
        }

        //text: "Wild Field"
        Button {
            id: w_field_btn
            width: 150
            height: 150
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 20
            onClicked: {

                stack.push(wild_field)
            }
            Image {
                id: img_w_field_btn
                anchors.fill: parent
                source: "qrc:/png/Vl1NKVEMA8o.jpg"
            }
        }

        //text: "Full Exp"
        Button {
            id: full_exp_btn
            width: 150
            height: 150
            anchors.left: stack_view.left
            anchors.verticalCenter: stack_view.verticalCenter
            anchors.leftMargin: 20
            onClicked: stack.push(full_exp)

            Image {
                id: img_full_exp_btn
                anchors.fill: parent
                source: "qrc:/png/vyZvgPmATo8.jpg"
            }
        }
        //}
    }
    Wild_field {
        id: wild_field
    }

    Cross_archery {
        id: cross_archery
    }

    Full_experience {
        id: full_exp
    }
    ListModel {
        id: my_model
    }
}/*ListModel {
        id: model

                signal loadCompleted()

                        Component.onCompleted: {
                                    var xhr = new XMLHttpRequest
                                                xhr.open("GET", "mydir/myfile.tab")
                                                            xhr.onreadystatechange = function () {
                                                                            if (xhr.readyState == XMLHttpRequest.DONE) {
                                                                                                var a = JSON.parse(xhr.responseText)
                                                                                                                    for (var b in a) {
                                                                                                                                            var o = a[b]
                                                                                                                                                                    model.append({
                                                                                                                                                                                                             label: o.label,
                                                                                                                                                                                                                                                      value: o.value,
                                                                                                                                                                                                                                                                                               description: o.description,
                                                                                                                                                                                                                                                                                                                                        image: o.image,
                                                                                                                                                                                                                                                                                                                                                                                 selected: false
                                                                                                                                                                                                                                                                                                                                                                                                                      })
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                              model.loadCompleted()
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      xhr.send()
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }*/

