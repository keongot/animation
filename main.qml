import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 640
    height: 480

    Column{
        spacing: 15

        Button{
            id: btnStop
            text: "Rotation"
            onClicked:{
                mylight.run = true
            }
        }

        Button{
            id: btnGo
            text: "transition"
            onClicked: {
                mylight.xyr = true
            }
        }
        Button{
            id: btn3
            text: "Scale"
            onClicked:{
                mylight.scaler =true
            }
        }
        Button{
            id: btn4
            text: "opacity"
            onClicked:{
                mylight.opacityr = true
            }
        }
//        Button{
//            id: reset
//            text: "reset"
//            onClicked: {
//                mylight.run = false
//                mylight.scale = 1
//                mylight.opacity = 1
//            }
//        }
    }
    Light{
        id: mylight
        x: 100
        y: 100
    }
}
