pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

Window {
    id: window

    width: 720
    height: 480
    visible: true
    title: qsTr("Hello World")

    color: 'black'


    RowLayout {
        anchors.fill: parent

        Repeater {

            model: Math.floor(window.width / 15)

            ColumnLayout {
                Layout.fillHeight: true
                //Layout.preferredWidth: ledBar.width
                Layout.alignment: Qt.AlignBottom


                LEDBar {
                    id: ledBar

                    //ledCount: 30

                    // Rectangle {
                    //     anchors.fill: parent
                    //     color: "transparent"
                    //     border.color: "white"
                    //     border.width: 2
                    // }

                    Timer {
                        id: countTimer
                        //interval: 750
                        running: true
                        repeat: true
                        triggeredOnStart: true

                        onTriggered: {
                            ledBar.ledCount = Math.min(ledBar.ledMaxCount, ledBar.ledCount + 1)
                            interval = Math.floor(Math.random() * (500 - 10) + 10)

                            //console.log(ledBar.ledCount)
                        }
                    }

                    Timer {
                        running: true
                        repeat: true
                        triggeredOnStart: true

                        onTriggered: {

                            if (ledBar.ledCount >= 1 && ledBar.ledCount <= 24)
                                interval = 330
                            else if (ledBar.ledCount > 24 && ledBar.ledCount <= 48)
                                interval = 200
                            // else if (ledBar.ledCount > 32 && ledBar.ledCount <= 48)
                            //     interval = 50

                            ledBar.ledCount = Math.max(1, ledBar.ledCount - 1)
                            //console.log(countTimer.interval)
                        }
                    }

                }
            }
        }
    }
}
