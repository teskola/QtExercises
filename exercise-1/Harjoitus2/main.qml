import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 1000
    height: 350
    visible: true
    title: qsTr("Harjoitus 2")
    color: "darkgray"
    Rectangle {
        width: 300
        height: 300
        x: 25
        y: 25
        gradient: Gradient {
            GradientStop {
                position: 0.0
                color: "white"
            }
            GradientStop {
                position: 1.0
                color: "blue"
            }
        }
    }
    Rectangle {
        width: 300
        height: 300
        gradient: Gradient {
            orientation: Gradient.Horizontal
            GradientStop {
                position: 0.0
                color: "#ff0000"
            }
            GradientStop {
                position: 1.0
                color: "white"
            }
        }
        x: 350
        y: 25
    }
    Rectangle {
        width: 300
        height: 300
        gradient: Gradient {
            orientation: Gradient.Horizontal
            GradientStop {
                position: 0.0
                color: Qt.rgba(0,0.5,0,1)
            }
            GradientStop {
                position: 1.0
                color: "white"
            }
        }
        x: 675
        y: 25
    }

}
