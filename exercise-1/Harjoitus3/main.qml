import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 400
    height: 400
    visible: true
    title: qsTr("Harjoitus 3")
    Rectangle { id: leftUp
        x: 25; y: 25; width: 150; height: 150
        color: focus ? "lightblue" : "blue"
        KeyNavigation.right: rightUp
        KeyNavigation.down: leftDown
        focus: true
        MouseArea {
            anchors.fill: parent
            onPressed: {
                parent.focus = true
            }
        }
    }
    Rectangle { id: rightUp
        x: 225; y: 25; width: 150; height: 150
        color: focus ? "#00ff00" : "green"
        KeyNavigation.left: leftUp
        KeyNavigation.down: rightDown
        MouseArea {
            anchors.fill: parent
            onPressed: {
                parent.focus = true
            }
        }
    }
    Rectangle { id: leftDown
        x: 25; y: 225; width: 150; height: 150
        color: focus ? "red" : "darkred"
        KeyNavigation.right: rightDown
        KeyNavigation.up: leftUp
        MouseArea {
            anchors.fill: parent
            onPressed: {
                parent.focus = true
            }
        }
    }
    Rectangle { id: rightDown
        x: 225; y: 225; width: 150; height: 150
        color: focus ? "pink" : "purple"
        KeyNavigation.left: leftDown
        KeyNavigation.up: rightUp
        MouseArea {
            anchors.fill: parent
            onPressed: {
                parent.focus = true
            }
        }
    }
}
