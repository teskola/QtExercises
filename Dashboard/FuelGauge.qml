import QtQuick 2.15

Item {
    property int fuelLevel: 0
    property double fuelOpacity: 0.9
    Image {

        // https://construct-static.com/images/v1034/uploads/articleuploadobject/0/images/14597/gauge.png

        source: "gauge.png"
        opacity: fuelOpacity
        Image {
            source: "needlered.png"
            height: 0.75 * parent.height
            width: 8
            anchors.centerIn: parent
            anchors.verticalCenterOffset: 0.2 * height
            rotation: -55 + 1.1 * fuelLevel
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
