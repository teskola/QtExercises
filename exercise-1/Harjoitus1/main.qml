import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 400
    height: 400
    visible: true
    title: qsTr("Harjoitus 1")
    color: "#808080"
    Rectangle {
        width: 300
        height: 150
        x: 50
        y: 50
        color: "lightblue"
        Rectangle {
            width: 50
            height: 50
            x: 50
            y: 50
            color: "white"
        }
    }
    Rectangle {
        width: 300
        height: 150
        x: 50
        y: 200
        color: "green"
        Rectangle {
            width: 150
            height: 50
            x: 100
            // y: -50
            anchors.verticalCenter: parent.verticalCenter
            color: "blue"
        }
    }
}
