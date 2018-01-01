//Copyright (C) 2012 nowardev nowardev@gmail.com
// edited and modifies by Leszek Lesner leszek@zevenos.com
 
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
///GNOMELIKE PANELS
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
        else 	{
	  panelById(panelIds[i]).remove()
	  	} 
                                    }
}

//RemoveOldPanels() //load the function 
 //////////////////////////////////////////////////////////


var screenrect = screenGeometry(0); // get information about your screen h w 
//start another function to create panels layout
function gnome2(){
        var panel = new Panel
    if (panelIds.length == 1) {
        // panel.location = 'bottom'
        panel.location = 'top'
	//panel.hiding= 'autohide' //"windowscover" or "windowsbelow" 
    }


    panel.height = screenrect.height/30;


    //panel.addWidget("launcher");
    var launcher = panel.addWidget("simplelauncher");
    launcher.writeConfig("icon", "neptune-logo");
    launcher.writeConfig("format", "Description");
    launcher.writeConfig("showMenuTitles", "true");
    launcher.writeConfig("views", "Applications,Favorites,Computer,Settings,RunCommand,Leave");
//    launcher.writeConfig("icon", "start-here");

    //panel.addWidget("panelspacer_internal");


    
    var launcher = panel.addWidget("lancelot_part");
    launcher.writeConfig("iconLocation", "drive-harddisk");
    launcher.writeConfig("iconClickActivation", "true");
    launcher.writeConfig("contentsExtenderPosition", "1");
    launcher.writeConfig("searchHistory", "firefox");
    launcher.writeConfig("showSearchBox", "true");
    launcher.writeConfig("partData","model=Places&type=list&version=1.0\nmodel=Devices%2FFixed&type=list&version=1.0\nmodel=Devices%2FRemovable&type=list&version=1.0\n"); 
 


    var launchersystem = panel.addWidget("simplelauncher");
    launchersystem.writeConfig("icon", "applications-system");
    launchersystem.writeConfig("relativePath", "System/");
    launchersystem.writeConfig("format", "Description");

    var systemsettings = panel.addWidget("quicklaunch");
    systemsettings.writeConfig("iconUrls","file:////usr/share/applications/kde4/systemsettings.desktop");

    
    var browser = panel.addWidget("quicklaunch");
    browser.writeConfig("iconUrls","file:///usr/share/applications/chromium.desktop");
    var mail = panel.addWidget("quicklaunch");
    mail.writeConfig("iconUrls","file:///usr/share/applications/icedove.desktop");
    var konsol = panel.addWidget("quicklaunch");
    konsol.writeConfig("iconUrls","file:///usr/share/applications/kde4/konsole.desktop");

    panel.addWidget("panelspacer_internal");

    panel.addWidget("sm_cpu");
    panel.addWidget("sm_ram");
    panel.addWidget("sm_temperature");
    panel.addWidget("systemtray");

    var clock = panel.addWidget("digital-clock");
    clock.writeConfig("showDate", "true");
    clock.writeConfig("showDay", "false");
    clock.writeConfig("showSeconds", "false");
    clock.writeConfig("showYear", "true");
    clock.writeConfig("showShadow", "false");
    //clock.writeConfig("showTimezone", "true");
    clock.writeConfig("plainClockFont", "Ubuntu,12,-1,5,75,0,0,0,0,0");
    clock.writeConfig("useCustomColor", "true");
    clock.writeConfig("plainClockColor", "0,0,0");
    clock.writeConfig("plainClockDrawShadow", "false");


   var  lockout = panel.addWidget("lockout");
    //lockout.writeConfig("showHibernateButton","true");
    lockout.writeConfig("showLogoutButton","true");
    lockout.writeConfig("showLockButton","false");
    lockout.writeConfig("showSleepButton","false");
    lockout.writeConfig("showSwitchUserButton","true");



    //panel.addWidget("tasks");
    //smooth-tasks
    //panel.addWidget("trash");


    var panel = new Panel
    if (panelIds.length == 2) {
        // we are the only panel, so set the location for the user panel.location = 'bottom'
        panel.location = 'bottom'
	//panel.hiding= 'autohide' //"windowscover" or "windowsbelow" 
    }

    panel.height = screenrect.height/30;
    //panel.addWidget("launcher");
    //panel.addWidget("pastebin");
    panel.addWidget("showdesktop");
    var  pager = panel.addWidget("pager");
    pager.writeGlobalConfig("rows", "1");
   var task = panel.addWidget("tasks");
   task.writeConfig("showTooltip","false");

   


    panel.addWidget("trash");
    //panel.addWidget("smooth-tasks");


}

gnome2()


