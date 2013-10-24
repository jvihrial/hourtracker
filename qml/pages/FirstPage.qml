import QtQuick 2.0
import Sailfish.Silica 1.0
import Sailfish.Silica.theme 1.0


Page {
    id: page

    // To enable PullDownMenu, place our content in a SilicaFlickable
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

            MenuItem {
                text: "Show status"
                onClicked: pageStack.push(Qt.resolvedUrl("StatusPage.qml"));
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: childrenRect.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: "Basic hour tracker"
            }
            Label {

                x: Theme.paddingLarge
                text: "Today worked:\n"+hours+"\nHours.";
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeLarge
            }
        }
    }
}


