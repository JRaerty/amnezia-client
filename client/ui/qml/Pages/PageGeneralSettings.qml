import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import PageEnum 1.0
import "./"
import "../Controls"
import "../Config"

PageBase {
    id: root
    page: PageEnum.GeneralSettings
    logic: GeneralSettingsLogic

    BackButton {
        id: back
        z: -1
    }

    FlickableType {
        id: fl
        anchors.top: back.bottom
        anchors.topMargin: 0
        anchors.bottomMargin: 10
        contentHeight: content.height

        ColumnLayout {
            id: content
            enabled: logic.pageEnabled
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: GC.defaultMargin

            spacing: 15


            // ---------- App settings ------------
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 1
                color: "#DDDDDD"
            }
            SettingButtonType {
                Layout.fillWidth: true
                Layout.preferredHeight: 30
                icon.source: "qrc:/images/svg/settings_black_24dp.svg"
                text: qsTr("App settings")
                onClicked: {
                    UiLogic.goToPage(PageEnum.AppSettings)
                }
            }

            // ---------- Network settings ------------
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 1
                color: "#DDDDDD"
            }
            SettingButtonType {
                Layout.fillWidth: true
                Layout.preferredHeight: 30
                icon.source: "qrc:/images/svg/settings_suggest_black_24dp.svg"
                text: qsTr("Network settings")
                onClicked: {
                    UiLogic.goToPage(PageEnum.NetworkSettings)
                }
            }

            // ---------- Server settings ------------
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 1
                color: "#DDDDDD"
            }
            SettingButtonType {
                Layout.fillWidth: true
                Layout.preferredHeight: 30
                icon.source: "qrc:/images/svg/vpn_key_black_24dp.svg"
                text: qsTr("Server Settings")
                onClicked: {
                    GeneralSettingsLogic.onPushButtonGeneralSettingsServerSettingsClicked()
                }
            }

            // ---------- Share connection ------------
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 1
                color: "#DDDDDD"
            }
            SettingButtonType {
                Layout.fillWidth: true
                Layout.preferredHeight: 30
                icon.source: "qrc:/images/svg/share_black_24dp.svg"
                text: qsTr("Share connection")
                enabled: GeneralSettingsLogic.pushButtonGeneralSettingsShareConnectionEnable
                onClicked: {
                    GeneralSettingsLogic.onPushButtonGeneralSettingsShareConnectionClicked()
                }
            }

            // ---------- Servers ------------
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 1
                color: "#DDDDDD"
            }
            SettingButtonType {
                Layout.fillWidth: true
                Layout.preferredHeight: 30
                icon.source: "qrc:/images/svg/format_list_bulleted_black_24dp.svg"
                text: qsTr("Servers")
                onClicked: {
                    UiLogic.goToPage(PageEnum.ServersList)
                }
            }

            // ---------- Add server ------------
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 1
                color: "#DDDDDD"
            }
            SettingButtonType {
                Layout.fillWidth: true
                Layout.preferredHeight: 30
                icon.source: "qrc:/images/svg/control_point_black_24dp.svg"
                text: qsTr("Add server")
                onClicked: {
                    UiLogic.goToPage(PageEnum.Start)
                }
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 1
                color: "#DDDDDD"
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: fl.height > (75+1) * 6 ? fl.height - (75+1) * 6 : 0
            }

            SettingButtonType {
                Layout.fillWidth: true
                Layout.preferredHeight: 30
                Layout.bottomMargin: 20
                icon.source: "qrc:/images/svg/logout_black_24dp.svg"
                text: qsTr("Exit")
                onClicked: {
                    Qt.quit()
                }
            }
        }
    }


}
