import QtQuick 2.0
import Sailfish.Silica 1.0
import Sailfish.Silica.theme 1.0


Page {
    id: statusPage

    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: "Toggle counter"
                onClicked: {
                    if (counter.running === false) counter.running = true
                    else counter.running = false
                }
            }

        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: childrenRect.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.

        Column {
            width: statusPage.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: "Status"
            }
            Label {
                x: Theme.paddingLarge
                text: "Timer status:\n"+timerStatus;
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeLarge
            }

            Label {
                x: Theme.paddingLarge
                text: "Seconds at clock:\n"+secondsWorked;
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeLarge
            }
        }
 }
}
