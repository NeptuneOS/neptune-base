var panel = new Panel("panel")
if (panelIds.length == 1) {
    // we are the only panel, so set the location for the user
    panel.location = 'bottom'
}

panel.height = 27;
var launcher = panel.addWidget("lancelot_launcher");
launcher.globalShortcut = "Alt+F1";
launcher.writeConfig("icon", "neptune-logo");
pager = panel.addWidget("pager");
pager.writeConfig("rows", "2");

var chromium = panel.addWidget("quicklaunch");
chromium.writeConfig("iconUrls","file:///usr/share/applications/chromium.desktop");
var icedove = panel.addWidget("quicklaunch");
icedove.writeConfig("iconUrls","file:///usr/share/applications/icedove.desktop");
task = panel.addWidget("tasks");
task.writeConfig("showOnlyCurrentActivity","true");
task.writeConfig("showOnlyCurrentDesktop","true");
systray = panel.addWidget("systemtray");
i = 0;
if (hasBattery) {
systray.currentConfigGroup = new Array("Applets", ++i);
systray.writeConfig("plugin", "battery");
}
systray.currentConfigGroup = new Array("Applets", ++i);
systray.writeConfig("plugin", "org.kde.networkmanagement");
systray.currentConfigGroup = new Array("Applets", ++i);
systray.writeConfig("plugin", "notifier");

clock = panel.addWidget("digital-clock");
clock.writeConfig("showDate", "false");
clock.writeConfig("plainClockDrawShadow", "false");
clock.writeConfig("plainClockFont", "Ubuntu,24,-1,5,75,0,0,0,0,0");
clock.writeConfig("displayEvents", "false");

lockout = panel.addWidget("lockout");
lockout.writeConfig("showLogoutButton","true");
lockout.writeConfig("showLockButton","false");
lockout.writeConfig("showSleepButton","false");
lockout.writeConfig("showSwitchUserButton","false");
lockout.writeConfig("showHibernateButton","false");
