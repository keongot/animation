
import QtQuick 2.0

Rectangle{
    id: bulb
    width: 90
    height: 90
    color: "green"
    border.color: "black"
    border.width: 1

//    radius: 100




    property string run
    property string xyr
    property string scaler
    property string opacityr

    RotationAnimation on rotation {
        from: 0
        to: 360
        duration: 5000
        running: bulb.run
        loops: Animation.Infinite
    }


    NumberAnimation on x{
        to: 400
        duration: 1000
        running: bulb.xyr
    }
    NumberAnimation on y{
        to: 400
        duration: 1000
        running: bulb.xyr
    }


    NumberAnimation {
        target: bulb
        property: "opacity"
        from: 1.0
        to: 0.2
        duration: 1000
        running: bulb.opacityr
        //loops: Animation.Infinite
    }


    NumberAnimation {
        target: bulb
        property: "scale"
        from: 1
        to: 0.4
        running: bulb.scaler
    }

}
