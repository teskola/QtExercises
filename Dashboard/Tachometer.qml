import QtQuick 2.15

Item {
    property int rpm: 0
    Image {
        source: "tacho.png"
        width: 500
        height: 500
        Image {
            source: "needlered.png"
            anchors.centerIn: parent
            anchors.verticalCenterOffset: -0.5 * height
            rotation: -120 + 0.03 * rpm // 240 degrees = 8000 rpm => 1 rpm = (240/8000) degrees
            transformOrigin: Item.Bottom
            Behavior on rotation {
                PropertyAnimation {
                    duration: 2000
                    easing.type: Easing.OutExpo

                }
            }
        }

    }

}
