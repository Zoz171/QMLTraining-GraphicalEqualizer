pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

ListView {
    id: ledBar

    //Layout.fillHeight: true
    Layout.preferredHeight: ledBar.ledCount * 10
    Layout.preferredWidth: 15

    property int ledCount: 1
    property int ledMaxCount: 48

    model: ledCount

    delegate: LED {
        id: leds

        required property int modelData
        required property int index

        level: ledBar.ledMaxCount - index
    }
}
