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
function macstyle(){
  var panel = new Panel
if (panelIds.length == 1) {
    // panel.location = 'bottom'
    panel.location = 'top'
}


panel.height = screenrect.height/28;


var launcher = panel.addWidget("simplelauncher");
launcher.writeConfig("format", "Description");
launcher.writeConfig("icon", "neptune-logo");
launcher.writeConfig("showMenuTitles", "true");
launcher.writeConfig("views", "Applications,Favorites,Computer,Settings,RunCommand,Leave");



var menubar = panel.addWidget("menubar");
//menubar.writeConfig("useButtonFormFactor", "false");


//panel.addWidget("panelspacer_internal");
 
//panel.addWidget("pastebin");

//var quick = panel.addWidget("quickaccess"); 

// var browser = panel.addWidget("quicklaunch");
// browser.writeConfig("iconUrls","file:///usr/share/applications/chromium-browser.desktop");
// var mail = panel.addWidget("quicklaunch");
// mail.writeConfig("iconUrls", "file:///usr/share/applications/icedove.desktop");
// 
// 
// var systemsettings = panel.addWidget("quicklaunch");
// systemsettings.writeConfig("iconUrls","file:////usr/share/applications/kde4/systemsettings.desktop");

 
//panel.addWidget("trash");

//panel.addWidget("panelspacer_internal");
var systemtray = panel.addWidget("systemtray");

var pager = panel.addWidget("pager");
pager.writeGlobalConfig("rows", "2");


var clock = panel.addWidget("digital-clock");
clock.writeConfig("showDate", "false");
clock.writeConfig("showDay", "false");
clock.writeConfig("showSeconds", "false");
clock.writeConfig("showYear", "false");
clock.writeConfig("showShadow", "false");
//clock.writeConfig("showTimezone", "true");
clock.writeConfig("plainClockFont", "Ubuntu,12,-1,5,75,0,0,0,0,0");
clock.writeConfig("useCustomColor", "true");
clock.writeConfig("plainClockColor", "0,0,0");
clock.writeConfig("plainClockDrawShadow", "false");

var lockout = panel.addWidget("lockout");
//lockout.writeConfig("showHibernateButton","true");
lockout.writeConfig("showLogoutButton","true");
lockout.writeConfig("showLockButton","false");
lockout.writeConfig("showSleepButton","false");
lockout.writeConfig("showSwitchUserButton","false");


var dock = new Panel
if (panelIds.length == 2) {
    dock.location = 'bottom'
}
dock.height = screenrect.height/18;
dock.length = screenrect.width/2;
dock.alignment='center'

var icontasks = dock.addWidget("icontasks");
icontasks.writeConfig("showOnlyCurrentActivity","false");
icontasks.writeConfig("showOnlyCurrentDesktop","false");
icontasks.writeConfig("showOnlyCurrentScreen","false");
icontasks.writeConfig("style","1");


sleep(4000)
dock.hiding= 'autohide'





  
}

macstyle()


