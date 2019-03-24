import QtQuick 2.0
import Theme 1.0
import FontAwesome 1.0


Rectangle {

    height: parent.height
    width: Theme.buttonSize
    color: Theme.primary

    enum DrawingTool
    {
        Ridge,
        River,
        Elevation,
        None
    }

    property int currentTool: Tools.DrawingTool.None

    Column
    {
        id: drawingTools
        spacing: 1
        anchors.verticalCenter: parent.verticalCenter
        ToolButton
        {
            iconSource: FontAwesome.mountain
            toolText: "Ridge drawing tool"
            backgroundColor: currentTool === Tools.DrawingTool.Ridge ? Theme.primaryDark : Theme.primary
            onPressed:{
                currentTool = Tools.DrawingTool.Ridge;
            }
        }
        ToolButton
        {
            iconSource: FontAwesome.water
            toolText: "River drawing tool"
            backgroundColor: currentTool === Tools.DrawingTool.River ? Theme.primaryDark : Theme.primary
            onPressed: {
                currentTool = Tools.DrawingTool.River
            }
        }
        ToolButton
        {
            iconSource: FontAwesome.dotCircleO
            toolText: "Elevation point tool"
            backgroundColor: currentTool === Tools.DrawingTool.Elevation ? Theme.primaryDark : Theme.primary
            onPressed: {
                currentTool = Tools.DrawingTool.Elevation
            }
        }

    }

    Column
    {
        spacing: 1
        anchors.bottom: parent.bottom
        ToolButton
        {
            iconSource: FontAwesome.download
            toolText: "Download map"
        }
        ToolButton
        {
            iconSource: FontAwesome.cog
            toolText: "Settings"
        }
    }
}
