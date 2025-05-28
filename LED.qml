import QtQuick
import "Utils.js" as Utils

Rectangle {
    id: led

    property int level: 0

    height: 10
    width: 15

    color: {
        if (level == 0) return "#ff0000"
        else {
            return Utils.hsvToRgb(level * 6, 1, 1)
        }
    }

    radius: 3

    border.color: 'black'

    Component.onCompleted: {
        //console.log(color)
        // console.log(Utils.addHex("#120000", "#008500"))
    }
}
