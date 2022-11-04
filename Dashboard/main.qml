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
            speedoMeter.speed = 0
        }
        else {
            background.state = "engineRunning"

        }

    }

    function increaseSpeed() {
        if (background.state === "engineRunning") {
            if (speedoMeter.speed < 260) {
                speedoMeter.speed = speedoMeter.speed + 10
            }
            else {
                speedoMeter.speed = 0
            }
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
                    backgroundColor: "red"
                }
                PropertyChanges {
                    target: tachoMeter
                    rpm: 1100
                    tachoOpacity: 1.0
                }
                PropertyChanges {
                    target: speedoMeter
                    speedoOpacity: 1.0                    
                }
                PropertyChanges {
                    target: fuelGauge
                    fuelLevel: 100
                    fuelOpacity: 1.0

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
            id: speedoMeter
            x: 500
            onSpeedoClicked: increaseSpeed()
        }

        FuelGauge {
            id: fuelGauge
            x: 375
            y: 376
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
