import QtQuick 2.15

Item {
    Image {
        source: "speedo.png"
        width: 500
        height: 500
        Image {
            source: "needlered.png"
            anchors.centerIn: parent
            anchors.verticalCenterOffset: -0.5 * height
            rotation: -135
            transformOrigin: Item.Bottom
        }

    }

}
