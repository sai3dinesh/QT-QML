import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    color: "black"
    visible: true
    title: qsTr("changing shape of rectange")
    Rectangle{
        id:redRect
        width:100
        height:width/2
        color: "red"
        anchors.centerIn: parent

        Text{
            text: "hi"
            anchors.centerIn:redRect
        }


    }
    Rectangle{
        width:100
        height:100
        color: "blue"
        MouseArea{
            anchors.fill:parent
            onClicked :{
                redRect.width=redRect.width+10
                redRect.height=redRect.height+10
        }

    }
    }


Button{
    id:button1
    text:"increase"
    anchors.bottom: parent.bottom

    onClicked :{
        redRect.width=redRect.width+10
        redRect.height=redRect.height+10
    }

}
Button{
    text:"decrease"
    anchors.top: parent.top
    anchors.right:parent.right

    onClicked :{
        redRect.width=redRect.width-10
        redRect.height=redRect.height-10
    }

}

}
