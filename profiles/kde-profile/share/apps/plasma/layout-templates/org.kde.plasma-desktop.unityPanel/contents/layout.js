//Copyright (C) 2012 nowardev nowardev@gmail.com
//edited and modified by Leszek Lesner leszek@zevenos.com
 
//This file is part of kde-peace-settings.
 
//kde-peace-settings is free software: you can redistribute it and/or modify
//it under the terms of the GNU General Public License as published by
//the Free Software Foundation, either version 3 of the License, or
//(at your option) any later version.
//
//This program is distributed in the hope that it will be useful,
//but WITHOUT ANY WARRANTY; without even the implied warranty of
//MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//GNU General Public License for more details.
//
//You should have received a copy of the GNU General Public License
//along with this program.  If not, see <http://www.gnu.org/licenses/>.
////////function remove in case of error of first remove :S
///UNITY LIKE PANELS
function remove()
{
  for (i in panelIds) {
        

        panelById(panelIds[i]).remove()
    }
  
}
//////////////////////////////////////////////////////////


/////function remove standard///////////////////////////////
function RemoveOldPanels()
{
    for (i in panelIds) {
       // panelById(panelIds[i]).remove()
       p = panelById(panelIds[i]);
       if (typeof p === "undefined") {
       print("E: Couldn't find first panel");
       remove() //load the remove function in case of problems
       }
        else    {
          panelById(panelIds[i]).remove()
                } 
                                    }
}

var screenrect = screenGeometry(0); // get information about your screen h w 
//RemoveOldPanels() //load the function 
 //////////////////////////////////////////////////////////


function unity(){
  
  
  
  var panel = new Panel
if (panelIds.length == 1) {
    // we are the only panel, so set the location for the user panel.location = 'bottom'
 
panel.location = 'top'
//panel.hiding= 'autohide' //"windowscover" or "windowsbelow" 
panel.height = screenrect.height/30;
}
var menubar = panel.addWidget("menubar");

var systemtray = panel.addWidget("systemtray");

var clock = panel.addWidget("digital-clock");
clock.writeConfig("showDate", "false");
clock.writeConfig("showDay", "true");
clock.writeConfig("showSeconds", "false");
clock.writeConfig("showYear", "true");
clock.writeConfig("showShadow", "false");
clock.writeConfig("showYear", "true");
//clock.writeConfig("showTimezone", "true");
clock.writeConfig("plainClockFont", "Ubuntu,12,-1,5,75,0,0,0,0,0");
clock.writeConfig("useCustomColor", "true");
clock.writeConfig("plainClockColor", "0,0,0");
clock.writeConfig("plainClockDrawShadow", "false");



//var telepat = panel.addWidget("org.kde.telepathy-presence");

var launcher = panel.addWidget("simplelauncher");
launcher.writeConfig("format", "Description");
launcher.writeConfig("showMenuTitles", "true");
launcher.writeConfig("views", "Settings,SwitchUser,SaveSession,LockScreen,Logout,Standby,SuspendDisk,SuspendRAM,Restart,Shutdown");
launcher.writeConfig("icon", "system-shutdown");




var panel = new Panel
if (panelIds.length == 2) {
    // we are the only panel, so set the location for the user panel.location = 'bottom'
 
panel.location = 'bottom'
//panel.hiding= 'windowscover' //"windowscover" or "windowsbelow" autohide

}

 
 

panel.height = screenrect.height/18;
var launcher = panel.addWidget("lancelot_part");
//launcher.writeConfig("iconLocation", "start-here-kde");
launcher.writeConfig("icon", "neptune-logo");
launcher.writeConfig("iconClickActivation", "true");
launcher.writeConfig("contentsExtenderPosition", "1");
launcher.writeConfig("searchHistory", "firefox");
launcher.writeConfig("showSearchBox", "true");
launcher.writeConfig("partData", "model=FavoriteApplications&type=list&version=1.0\nmodel=Folder%20applications%3A%2FOffice%2F&type=list&version=1.0\nmodel=Folder%20applications%3A%2FMultimedia%2F&type=list&version=1.0\nmodel=Folder%20applications%3A%2FInternet%2F&type=list&version=1.0\nmodel=System&type=list&version=1.0\n"); 


  var launcher = panel.addWidget("lancelot_part");
    launcher.writeConfig("iconLocation", "drive-harddisk");
    launcher.writeConfig("iconClickActivation", "true");
    launcher.writeConfig("contentsExtenderPosition", "1");
    launcher.writeConfig("searchHistory", "firefox");
    launcher.writeConfig("showSearchBox", "true");
    launcher.writeConfig("partData","model=Places&type=list&version=1.0\nmodel=Devices%2FFixed&type=list&version=1.0\nmodel=Devices%2FRemovable&type=list&version=1.0\n"); 
    
//var quick = panel.addWidget("quickaccess"); 


var icontasks = panel.addWidget("icontasks");
icontasks.writeConfig("groupClick","1");
icontasks.writeConfig("iconScale","49");
icontasks.writeConfig("launcherIcons","false");
icontasks.writeConfig("maxRows","1");
icontasks.writeConfig("mediaButtons","true");
icontasks.writeConfig("middleClick","0");
icontasks.writeConfig("previewSize","200");
icontasks.writeConfig("rotate","false");
icontasks.writeConfig("showOnlyCurrentActivity","false");
icontasks.writeConfig("showOnlyCurrentDesktop","false");
icontasks.writeConfig("showOnlyCurrentScreen","false");
icontasks.writeConfig("showProgress","true");
icontasks.writeConfig("showSeparator","0");
icontasks.writeConfig("sortingStrategy","2");
icontasks.writeConfig("spacing","0");
icontasks.writeConfig("style","2");
icontasks.writeConfig("toolTips","1");
icontasks.writeConfig("unity","true");
//icontasks.writeConfig("Enabled","true")
icontasks.currentConfigGroup = new Array('Launchers') //CONFIGURE THE LAUNCHERS 
icontasks.writeConfig("Items","file:///usr/share/applications/kde4/kate.desktop?wmClass=Kate,file:///usr/share/applications/kde4/konversation.desktop?wmClass=Konversation,file:////usr/share/applications/kde4/dolphin.desktop?wmClass=Dolphin,file:///usr/share/applications/chromium.desktop?wmClass=Chromium,file:///usr/share/applications/kde4/konsole.desktop?wmClass=Konsole,file:///usr/share/applications/kde4/ksnapshot.desktop?wmClass=Ksnapshot,file:///usr/share/applications/kde4/systemsettings.desktop?wmClass=Systemsettings,file:///usr/share/applications/kde4/muon-installer.desktop");



// var opendocuments = panel.addWidget("lancelot_part");
 
// opendocuments.writeConfig("iconClickActivation", "true");
// opendocuments.writeConfig("contentsExtenderPosition", "1");
// opendocuments.writeConfig("iconLocation", "document-edit"); 
// opendocuments.writeConfig("showSearchBox", "true");
// opendocuments.writeConfig("partData", "model=OpenDocuments&type=list&version=1.0\n"); 






// var newdocuments = panel.addWidget("lancelot_part");
// newdocuments.writeConfig("iconLocation", "document-new");
// newdocuments.writeConfig("iconClickActivation", "true");
// newdocuments.writeConfig("contentsExtenderPosition", "1");
 
// newdocuments.writeConfig("showSearchBox", "true");
// newdocuments.writeConfig("partData", "model=NewDocuments&type=list&version=1.0\n"); 

// var messagescontact = panel.addWidget("lancelot_part");
// messagescontact.writeConfig("iconLocation", "im-message-new");
// messagescontact.writeConfig("iconClickActivation", "true");
// messagescontact.writeConfig("contentsExtenderPosition", "1");
// messagescontact.writeConfig("showSearchBox", "true");
// messagescontact.writeConfig("partData", "model=Messages&type=list&version=1.0\nmodel=Contacts&type=list&version=1.0"); 

panel.addWidget("pastebin");
panel.addWidget("showdesktop");

var pager = panel.addWidget("pager");
pager.writeGlobalConfig("rows", "2");

panel.addWidget("trash");

sleep(4000)
panel.hiding= 'autohide' //"windowscover" or "windowsbelow" 

//var lockout = panel.addWidget("lockout");
//lockout.writeConfig("showHibernateButton","true");
//lockout.writeConfig("showLogoutButton","true");
//lockout.writeConfig("showLockButton","false");
//lockout.writeConfig("showSleepButton","false");
//lockout.writeConfig("showSwitchUserButton","false");




}




unity()


 