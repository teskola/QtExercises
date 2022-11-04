import QtQuick 2.15

Item {
    id: speedoMeter
    property double speedoOpacity: 0.75
    property int speed: 0
    signal speedoClicked


    Image {
        source: "speedo.png"
        width: 500
        height: 500
        opacity: speedoOpacity
        Behavior on opacity {
            PropertyAnimation {
                duration: 1000
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {

            }
            onReleased: {
                speedoMeter.speedoClicked()
            }
        }

        Image {
            source: "needlered.png"
            anchors.centerIn: parent
            anchors.verticalCenterOffset: -0.5 * height
            rotation: -135 + 1.04 * speed
            transformOrigin: Item.Bottom
            Behavior on rotation {
                PropertyAnimation {
                    duration: 6000
                    easing.type: Easing.OutExpo

                }
            }
        }

    }

}
