import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import FontAwesome 1.0
import Theme 1.0
import Controls 1.0

Window {
    visible: true
    width: 1500
    height: 800
    title: qsTr("TerraSketch")

    Tools{}


    Rectangle
    {
        anchors.centerIn: parent
        height: parent.height
        width: 5
        color: Theme.primary
    }
}
