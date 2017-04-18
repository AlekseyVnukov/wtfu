import QtQuick 2.4

Rectangle {

    Rectangle {
        id: f_rec
        width: parent.width
        height: parent.height * 0.9
        anchors.top: parent.top
        anchors.bottom: s_rec.top
        color: "blue"
        Grid {
            rows: 3
            columns: 4
            anchors.centerIn: parent
            spacing: 10

            Rectangle {
                width: 100
                height: 100
                color: "grey"

                TextInput {
                    id: text_inp_1
                    anchors.fill: parent
                    validator: IntValidator {
                        bottom: 5
                        top: 10
                    }
                }
            }

            Rectangle {
                width: 100
                height: 100
                color: "grey"

                TextInput {
                    id: text_inp_2
                    anchors.fill: parent
                    validator: IntValidator {
                        bottom: 5
                        top: 10
                    }
                }
            }

            Rectangle {
                width: 100
                height: 100
                color: "grey"

                TextInput {
                    id: text_inp_3
                    anchors.fill: parent
                    validator: IntValidator {
                        bottom: 5
                        top: 10
                    }
                }
            }

            Rectangle {
                width: 100
                height: 100
                color: "grey"

                TextInput {
                    id: text_inp_4
                    anchors.fill: parent
                    validator: IntValidator {
                        bottom: 5
                        top: 10
                    }
                }
            }

            Rectangle {
                width: 100
                height: 100
                color: "grey"

                TextInput {
                    id: text_inp_5
                    anchors.fill: parent
                    validator: IntValidator {
                        bottom: 5
                        top: 10
                    }
                }
            }

            Rectangle {
                width: 100
                height: 100
                color: "grey"

                TextInput {
                    id: text_inp_6
                    anchors.fill: parent
                    validator: IntValidator {
                        bottom: 5
                        top: 10
                    }
                }
            }

            Rectangle {
                width: 100
                height: 100
                color: "grey"

                TextInput {
                    id: text_inp_7
                    anchors.fill: parent
                    validator: IntValidator {
                        bottom: 5
                        top: 10
                    }
                }
            }

            Rectangle {
                width: 100
                height: 100
                color: "grey"

                TextInput {
                    id: text_inp_8
                    anchors.fill: parent
                    validator: IntValidator {
                        bottom: 5
                        top: 10
                    }
                }
            }

            Rectangle {
                width: 100
                height: 100
                color: "grey"

                TextInput {
                    id: text_inp_9
                    anchors.fill: parent
                    validator: IntValidator {
                        bottom: 5
                        top: 10
                    }
                }
            }

            Rectangle {
                width: 100
                height: 100
                color: "grey"

                TextInput {
                    id: text_inp_10
                    anchors.fill: parent
                    validator: IntValidator {
                        bottom: 5
                        top: 10
                    }
                }
            }

            Rectangle {
                width: 100
                height: 100
                color: "grey"

                TextInput {
                    id: text_inp_11
                    anchors.fill: parent
                    validator: IntValidator {
                        bottom: 5
                        top: 10
                    }
                }
            }

            Rectangle {

                width: 100
                height: 100
                color: "grey"

                TextInput {
                    id: text_inp_12
                    anchors.fill: parent
                    validator: IntValidator {
                        bottom: 5
                        top: 10
                    }
                }
            }
        }
    }
    Rectangle {
        id: s_rec
        width: parent.width
        height: parent.height * 0.1
        anchors.top: f_rec.bottom
        anchors.bottom: parent.bottom
        color: "green"
        Row {
            spacing: 10
            Text {
                text: "Сумма"
            }

            Rectangle {
                width: 100
                height: 100
                color: "grey"
            }
        }
    }
}
