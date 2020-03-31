# notif_bell

THE FRONTEND FOR YOUR APP NOTIFICATIONS.
`notif_bell` serves as your customizable notification badge or widget in your app. It helps you maintain the notifications to your user by passing some required parameters like size and whether to notify or not and more optional parameters to customize your notification widget.
Notification Widget in Flutter.
Notification Badge in Flutter.

<img src="https://i.imgur.com/gwMJZfn.png" width=300>


## Usage

To use this plugin add `notif_bell` as a dependency in your pubspec.yaml file.

Import the package and use the Widget in your app in this way:

## Example

` NotifBell(
                notify: true,
                size: 35.0, // size of the widget.
                notifs: 2,
              ), `


The major properties of the widget that can be used to customize it in your way are:

`notify, notifs, size, onTap`

Please see the example app of this plugin for a full example.
