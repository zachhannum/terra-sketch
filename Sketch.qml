import QtQuick 2.0

Canvas {

    id: canvas
    anchors.fill: parent

    property int lastX
    property int lastY

    function clear()
    {

    }

    MouseArea
    {
        id: mouse
        anchors.fill: parent
        onClicked:
        {
            canvas.lastX = mouseX
            canvas.lastY = mouseY
        }
        onPositionChanged:
        {
            canvas.requestPaint();
        }
    }

    onPaint:
    {
        var ctx = getContext('2d');
        ctx.lineWidth = 5;
        ctx.beginPath();
        ctx.moveTo(lastX, lastY);
        lastX = mouse.mouseX;
        lastY = mouse.mouseY;
        ctx.lineTo(lastX, lastY);
        ctx.stroke();
    }

}
