import QtQuick 2.15
import QtQuick.Window 2.15



Window {

    width: 1000
    height: 500
    visible: true
    title: qsTr("Dashboard")

    function changeStatus() {
        if (background.state === "engineRunning") {
            background.state = "engineStopped"
        }
        else {
            background.state = "engineRunning"
        }

    }

    Rectangle {

        states: [

            State {
                name: "engineRunning"
                PropertyChanges {
                    target: background
                    backgroundColor: "red"
                }
                PropertyChanges {
                    target: startButton
                    buttonText: "Stop"
                }
                PropertyChanges {
                    target: tachoMeter
                    rpm: 1100
                }
                PropertyChanges {
                    target: startButton
                    backgroundColor: "red"

                }

            },

            State {
                name: "engineStopped"
            }
        ]

        id: background
        state: "engineStopped"
        property color backgroundColor: "blue"
        width: parent.width
        height: parent.height
        gradient: Gradient {
            GradientStop {
                position: 0.0
                color: background.backgroundColor
            }
            GradientStop {
                position: 1.0
                color: "white"
            }
        }

        Tachometer {
            id: tachoMeter
            rpm: 0
        }

        SpeedoMeter {
            x: 500
        }

        Button {
            id: startButton
            buttonText: "Start"
            anchors.right:  parent.right
            anchors.bottom: parent.bottom
            onButtonClicked: changeStatus()
        }
    }
}
