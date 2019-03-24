import QtQuick 2.9
import QtQuick.Controls 2.4
import Theme 1.0
import FontAwesome 1.0

Button {

    property alias iconSource: icon.text
    property alias backgroundColor: background.color
    property string toolText: "Placeholder description"

    id: toolButton
    background:
        Rectangle
    {
        id: background
        implicitHeight: Theme.buttonSize
        implicitWidth: Theme.buttonSize
        color: toolButton.pressed ? Theme.primaryDark : Theme.primary
    }

    contentItem:

        Text
    {
        id: icon
        anchors.centerIn: background
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: FontAwesome.fontSolid
        font.pointSize: Theme.buttonIconSize
        color: Theme.buttonIconColor

    }

    ToolTip.text: toolText
    onPressAndHold: {ToolTip.visible = true;}
    onReleased: {ToolTip.visible = false;}


}
