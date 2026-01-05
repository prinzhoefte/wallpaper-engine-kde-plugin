pragma Singleton
import QtQuick 2.0
import org.kde.kirigami 2.4 as Kirigami

Item {
    id: root_item
    property var textColor
    property var highlightColor
    property var highlightedTextColor
    property var backgroundColor
    property var activeBackgroundColor
    property var alternateBackgroundColor
    property var linkColor
    property var visitedLinkColor
    property var positiveTextColor
    property var positiveBackgroundColor
    property var neutralTextColor
    property var negativeTextColor
    property var disabledTextColor

    readonly property alias view: theme_view

    property bool _init: {
        setColor();
        return true;
    }
    function setColor() {
        // Breeze dark colors
        this.textColor                = "#d3d7cf";
        this.highlightColor           = "#729fcf";
        this.highlightedTextColor     = "#2e3436";
        this.backgroundColor          = "#2e3436";
        this.activeBackgroundColor    = "#555753";
        this.alternateBackgroundColor = "#3c3f41";
        this.linkColor                = "#3465a4";
        this.visitedLinkColor         = "#75507b";
        this.positiveTextColor        = "#8ae234";
        this.positiveBackgroundColor  = "#4e9a06";
        this.neutralTextColor         = "#fce94f";
        this.negativeTextColor        = "#ef2929";
        this.disabledTextColor        = "#888a85";
    }

    Item {
        id: theme_view
        Kirigami.Theme.colorSet: Kirigami.Theme.View
        Kirigami.Theme.inherit: false

        property var textColor
        property var highlightColor
        property var highlightedTextColor
        property var backgroundColor
        property var activeBackgroundColor
        property var alternateBackgroundColor
        property var linkColor
        property var visitedLinkColor
        property var positiveTextColor
        property var positiveBackgroundColor
        property var neutralTextColor
        property var negativeTextColor
        property var disabledTextColor

        property bool _init: {
            const setColor = root_item.setColor.bind(this);
            setColor(name => Kirigami.Theme[name]);
            return true;
        }
    }
}
