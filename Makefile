DEFAULT_BACKGROUND=desktop-background

INSTALL=install -m 0644
BACKGROUNDS=$(wildcard backgrounds/*.png backgrounds/*.jpg backgrounds/*.svg backgrounds/*.tga)
EMBLEMS=$(wildcard emblems/*png emblems/*icon)
SPLASH=$(wildcard splash/*.png splash/*.svg)
PIXMAPS=$(wildcard pixmaps/*.png)
DESKTOPFILES=$(wildcard *.desktop)

all:

clean:

install:
	# splashy themes
	#mkdir -p $(DESTDIR)/usr/share/splashy/themes/spacefun
	#$(INSTALL) $(wildcard splashy/spacefun/*) $(DESTDIR)/usr/share/splashy/themes/spacefun

	# background files
	mkdir -p $(DESTDIR)/usr/share/images/neptune-base
	$(INSTALL) $(BACKGROUNDS) $(DESTDIR)/usr/share/images/neptune-base
	cd $(DESTDIR)/usr/share/images/neptune-base && ln -s $(DEFAULT_BACKGROUND) default
	# splash files
	$(INSTALL) $(SPLASH) $(DESTDIR)/usr/share/images/neptune-base
	# emblems
	mkdir -p $(DESTDIR)/usr/share/icons/hicolor/48x48/emblems
	$(INSTALL) $(EMBLEMS) $(DESTDIR)/usr/share/icons/hicolor/48x48/emblems/
	# desktop files
	mkdir -p $(DESTDIR)/usr/share/neptune-base
	$(INSTALL) $(DESKTOPFILES) $(DESTDIR)/usr/share/neptune-base/
	# pixmaps files
	mkdir -p $(DESTDIR)/usr/share/pixmaps
	$(INSTALL) $(PIXMAPS) $(DESTDIR)/usr/share/pixmaps/

	# KDE Config
	mkdir -p $(DESTDIR)/usr/share/kde4/config
	$(INSTALL) profiles/kde-profile/kdeglobals $(DESTDIR)/usr/share/kde4/config
	
	# Plasma Init
	mkdir -p $(DESTDIR)/usr/share/kde4/apps/plasma-desktop/init
	$(INSTALL) profiles/kde-profile/share/apps/plasma-desktop/init/00-defaultLayout.js $(DESTDIR)/usr/share/kde4/apps/plasma-desktop/init
	mkdir -p $(DESTDIR)/usr/share/kde4/apps/plasma-desktop/updates
	$(INSTALL) profiles/kde-profile/share/apps/plasma-desktop/updates/addShowActivitiesManagerPlasmoid.js $(DESTDIR)/usr/share/kde4/apps/plasma-desktop/updates

	# KDM theme
	mkdir -p $(DESTDIR)/etc/default/kdm.d
	$(INSTALL) kdm-theme/kdm.d/10_desktop-base $(DESTDIR)/etc/default/kdm.d
	mkdir -p $(DESTDIR)/usr/share/kde4/apps/kdm/themes/neptune
	cp -r kdm-theme/neptune/* debian/neptune-base/usr/share/kde4/apps/kdm/themes/neptune/
	mkdir -p $(DESTDIR)/usr/share/kde4/apps/kdm/themes/caledonia-neptune
	cp -r kdm-theme/caledonia-neptune/* debian/neptune-base/usr/share/kde4/apps/kdm/themes/caledonia-neptune/
	
	# Cursor theme(s)
	mkdir -p $(DESTDIR)/usr/share/icons
	cp -r cursor-theme/bridge debian/neptune-base/usr/share/icons/
	mkdir -p $(DESTDIR)/etc/X11/cursors
	cp cursor-theme/index.theme $(DESTDIR)/etc/X11/cursors/bridge.theme

	# LSB-Release
	mkdir -p $(DESTDIR)/etc/
	mkdir -p $(DESTDIR)/usr/lib
	$(INSTALL) lsb-release $(DESTDIR)/etc
	$(INSTALL) os-release $(DESTDIR)/etc
	$(INSTALL) os-release $(DESTDIR)/usr/lib
	$(INSTALL) issue $(DESTDIR)/etc
	$(INSTALL) issue.net $(DESTDIR)/etc

	# KSPLASH theme
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune
	$(INSTALL) ksplash-theme/Neptune/Preview.png $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune
	$(INSTALL) ksplash-theme/Neptune/Theme.rc $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune/600x400
	$(INSTALL) $(wildcard ksplash-theme/Neptune/600x400/*) $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune/600x400
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune/800x600
	$(INSTALL) $(wildcard ksplash-theme/Neptune/800x600/*) $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune/800x600
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune/1024x768
	$(INSTALL) $(wildcard ksplash-theme/Neptune/1024x768/*) $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune/1024x768
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune/1280x1024
	$(INSTALL) $(wildcard ksplash-theme/Neptune/1280x1024/*) $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune/1280x1024
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune/1600x1200
	$(INSTALL) $(wildcard ksplash-theme/Neptune/1600x1200/*) $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune/1600x1200
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune/1920x1200
	$(INSTALL) $(wildcard ksplash-theme/Neptune/1920x1200/*) $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune/1920x1200
	# KSPLASH theme 2
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle
	$(INSTALL) ksplash-theme/Neptune-Circle/Preview.png $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle
	$(INSTALL) ksplash-theme/Neptune-Circle/Theme.rc $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle/600x400
	$(INSTALL) $(wildcard ksplash-theme/Neptune-Circle/600x400/*) $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle/600x400
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle/800x600
	$(INSTALL) $(wildcard ksplash-theme/Neptune-Circle/800x600/*) $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle/800x600
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle/1024x768
	$(INSTALL) $(wildcard ksplash-theme/Neptune-Circle/1024x768/*) $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle/1024x768
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle/1280x800
	$(INSTALL) $(wildcard ksplash-theme/Neptune-Circle/1280x800/*) $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle/1280x800
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle/1280x1024
	$(INSTALL) $(wildcard ksplash-theme/Neptune-Circle/1280x1024/*) $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle/1280x1024
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle/1440x900
	$(INSTALL) $(wildcard ksplash-theme/Neptune-Circle/1440x900/*) $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle/1440x900
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle/1600x1200
	$(INSTALL) $(wildcard ksplash-theme/Neptune-Circle/1600x1200/*) $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle/1600x1200
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle/1920x1200
	$(INSTALL) $(wildcard ksplash-theme/Neptune-Circle/1920x1200/*) $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Circle/1920x1200
	# KSPLASH theme 3
	install -d $(DESTDIR)/usr/share/kde4/apps/ksplash/Themes/Neptune-Caledonia
	cp -r ksplash-theme/Neptune-Caledonia/* debian/neptune-base/usr/share/kde4/apps/ksplash/Themes/Neptune-Caledonia/
	
	# Aurorae theme
	install -d $(DESTDIR)/usr/share/kde4/apps/aurorae/themes/ElementaryNeptune
	cp -r profiles/kde-profile/share/apps/aurorae/themes/ElementaryNeptune/* debian/neptune-base/usr/share/kde4/apps/aurorae/themes/ElementaryNeptune/
	

	# KDE Config
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/config
	$(INSTALL) $(wildcard profiles/kde-profile/share/config/*) $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/config
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/kopete/sounds
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/kopete/sounds/*) $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/kopete/sounds
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/kopete/styles/Very_Simply_Smooth/Contents/Resources/images
	cp -r profiles/kde-profile/share/apps/kopete/styles/Very_Simply_Smooth/Contents debian/neptune-base/usr/share/neptune-base/profiles/kde-profile/share/apps/kopete/styles/Very_Simply_Smooth/
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/color-schemes
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/color-schemes/*) $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/color-schemes
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/plasma5-profile/color-schemes
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/color-schemes/*) $(DESTDIR)/usr/share/neptune-base/profiles/plasma5-profile/color-schemes
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/desktoptheme/AirNeptune
	cp -r profiles/kde-profile/share/apps/desktoptheme/AirNeptune debian/neptune-base/usr/share/neptune-base/profiles/kde-profile/share/apps/desktoptheme
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/desktoptheme/AirZevenOS
	cp -r profiles/kde-profile/share/apps/desktoptheme/AirZevenOS debian/neptune-base/usr/share/neptune-base/profiles/kde-profile/share/apps/desktoptheme
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/desktoptheme/Amarok-Mockup
	cp -r profiles/kde-profile/share/apps/desktoptheme/Amarok-Mockup/ debian/neptune-base/usr/share/neptune-base/profiles/kde-profile/share/apps/desktoptheme
	mkdir -p $(DESTDIR)/usr/share/kde4/apps/desktoptheme/AirNeptune
	cp -r profiles/kde-profile/share/apps/desktoptheme/AirNeptune debian/neptune-base/usr/share/kde4/apps/desktoptheme
	mkdir -p $(DESTDIR)/usr/share/kde4/share/apps/desktoptheme/AirZevenOS
	cp -r profiles/kde-profile/share/apps/desktoptheme/AirZevenOS debian/neptune-base/usr/share/kde4/apps/desktoptheme
	mkdir -p $(DESTDIR)/usr/share/kde4/share/apps/desktoptheme/CaledoniaWaveRemixNeptune
	cp -r profiles/kde-profile/share/apps/desktoptheme/CaledoniaWaveRemixNeptune debian/neptune-base/usr/share/kde4/apps/desktoptheme
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/dolphin
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/dolphin/*) $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/dolphin
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/konsole
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/konsole/*) $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/konsole
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/plasma-desktop/init
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/plasma-desktop/init/*) $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/plasma-desktop/init
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/QtCurve
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/QtCurve/*) $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/QtCurve
	mkdir -p $(DESTDIR)/usr/share/kde4/services/ServiceMenus
	$(INSTALL) $(wildcard profiles/kde-profile/ServiceMenus/*) $(DESTDIR)/usr/share/kde4/services/ServiceMenus
	mkdir -p $(DESTDIR)/etc/skel/.config/qtcurve
	$(INSTALL) $(wildcard profiles/kde-profile/QtCurve-Style/*) $(DESTDIR)/etc/skel/.config/qtcurve
	mkdir -p $(DESTDIR)/etc/skel/.config/
	cp -r profiles/skel/config/* debian/neptune-base/etc/skel/.config
	#$(INSTALL) $(wildcard profiles/skel/config/menus/*) $(DESTDIR)/etc/skel/.config/menus
	mkdir -p $(DESTDIR)/usr/share/kde4/services
	$(INSTALL) $(wildcard profiles/kde-profile/share/services/*) $(DESTDIR)/usr/share/kde4/services
	mkdir -p $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.NeptunePanel/contents
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/plasma/layout-templates/org.kde.plasma-desktop.NeptunePanel/contents/*) $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.NeptunePanel/contents
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/plasma/layout-templates/org.kde.plasma-desktop.NeptunePanel/metadata.desktop) $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.NeptunePanel
	mkdir -p $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.macstylePanel/contents
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/plasma/layout-templates/org.kde.plasma-desktop.macstylePanel/metadata.desktop) $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.macstylePanel
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/plasma/layout-templates/org.kde.plasma-desktop.macstylePanel/contents/*) $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.macstylePanel/contents
	mkdir -p $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.kde3Panel/contents
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/plasma/layout-templates/org.kde.plasma-desktop.kde3Panel/metadata.desktop) $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.kde3Panel
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/plasma/layout-templates/org.kde.plasma-desktop.kde3Panel/contents/*) $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.kde3Panel/contents
	mkdir -p $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.gnome2Panel/contents
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/plasma/layout-templates/org.kde.plasma-desktop.gnome2Panel/metadata.desktop) $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.gnome2Panel
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/plasma/layout-templates/org.kde.plasma-desktop.gnome2Panel/contents/*) $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.gnome2Panel/contents
	mkdir -p $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.unityPanel/contents
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/plasma/layout-templates/org.kde.plasma-desktop.unityPanel/metadata.desktop) $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.unityPanel
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/plasma/layout-templates/org.kde.plasma-desktop.unityPanel/contents/*) $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.unityPanel/contents
	mkdir -p $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.unkool7Panel/contents
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/plasma/layout-templates/org.kde.plasma-desktop.unkool7Panel/metadata.desktop) $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.unkool7Panel
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/plasma/layout-templates/org.kde.plasma-desktop.unkool7Panel/contents/*) $(DESTDIR)/usr/share/kde4/apps/plasma/layout-templates/org.kde.plasma-desktop.unkool7Panel/contents
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/kwallet
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/kwallet/*) $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/share/apps/kwallet
	mkdir -p $(DESTDIR)/etc/skel/.kde/share/apps/kwallet
	$(INSTALL) $(wildcard profiles/kde-profile/share/apps/kwallet/*) $(DESTDIR)/etc/skel/.kde/share/apps/kwallet
	
	# KDE Sound Themes
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/sounds
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/sounds/Fresh_and_Clean/stereo
	$(INSTALL) $(wildcard profiles/kde-profile/sounds/Fresh_and_Clean/stereo/*) $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/sounds/Fresh_and_Clean/stereo/
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/sounds/Dystopia
	$(INSTALL) $(wildcard profiles/kde-profile/sounds/Dystopia/*) $(DESTDIR)/usr/share/neptune-base/profiles/kde-profile/sounds/Dystopia/
	
	# Xfce 4.6
	mkdir -p $(DESTDIR)/usr/share/neptune-base/profiles/xdg-config/xfce4/xfconf/xfce-perchannel-xml
	$(INSTALL) $(wildcard profiles/xdg-config/xfce4/xfconf/xfce-perchannel-xml/*) $(DESTDIR)/usr/share/neptune-base/profiles/xdg-config/xfce4/xfconf/xfce-perchannel-xml
	# GNOME background descriptor
	mkdir -p $(DESTDIR)/usr/share/gnome-background-properties
	$(INSTALL) gnome-backgrounds.xml $(DESTDIR)/usr/share/gnome-background-properties/debian.xml
	# GDM 3 theme
	mkdir -p $(DESTDIR)/usr/share/gdm/greeter-config
	$(INSTALL) gdm3/background.jpg $(DESTDIR)/usr/share/images/neptune-base/login-background.jpg
	$(INSTALL) gdm3/10_desktop-base $(DESTDIR)/usr/share/gdm/greeter-config

	# grub
	$(INSTALL) grub/neptune-grub.png $(DESTDIR)/usr/share/images/neptune-base/
	$(INSTALL) grub/neptune-grub-widescreen.png $(DESTDIR)/usr/share/images/neptune-base/
	$(INSTALL) grub/grub_background.sh $(DESTDIR)/usr/share/neptune-base/

	# plymouth
	install -d $(DESTDIR)/usr/share/plymouth/themes/neptune
	$(INSTALL) $(wildcard plymouth/neptune/*) $(DESTDIR)/usr/share/plymouth/themes/neptune

	install -d $(DESTDIR)/usr/share/plymouth/themes/caledonia-neptune
	$(INSTALL) $(wildcard plymouth/caledonia-neptune/*) $(DESTDIR)/usr/share/plymouth/themes/caledonia-neptune
	
	# GTK Theme
	install -d $(DESTDIR)/usr/share/themes/elementary
	cp -r gtk-theme/elementary/* debian/neptune-base/usr/share/themes/elementary/
	install -d $(DESTDIR)/usr/share/themes/Blackbird
	cp -r gtk-theme/Blackbird/* debian/neptune-base/usr/share/themes/Blackbird/
	install -d $(DESTDIR)/etc/gtk-3.0
	cp -r gtk-3.0/* debian/neptune-base/etc/gtk-3.0/
	install -d $(DESTDIR)/etc/gtk-2.0
	cp gtkrc-2.0 $(DESTDIR)/etc/gtk-2.0/gtkrc
	
	# Trackpoint Configuration
	install -d $(DESTDIR)/usr/share/X11/xorg.conf.d
	cp 20-thinkpad.conf debian/neptune-base/usr/share/X11/xorg.conf.d/
	
	# Mimetype Configuration
	mkdir -p $(DESTDIR)/etc/skel/.local/share/applications
	$(INSTALL) mimeapps.list $(DESTDIR)/etc/skel/.local/share/applications/
	
	cp -r profiles/skel/local/share/* $(DESTDIR)/etc/skel/.local/share/
	# Mimetype mailcap for window managers who don't use xdg-open
	mkdir -p $(DESTDIR)/etc/skel
	$(INSTALL) mailcap $(DESTDIR)/etc/skel/.mailcap
	
	mkdir -p $(DESTDIR)/etc/modules-load.d
	$(INSTALL) loop.conf $(DESTDIR)/etc/modules-load.d/
	
	mkdir -p $(DESTDIR)/etc/skel
	$(INSTALL) vimrc $(DESTDIR)/etc/skel/.vimrc
	
	mkdir -p $(DESTDIR)/root
	$(INSTALL) vimrc $(DESTDIR)/root/.vimrc
	
	mkdir -p $(DESTDIR)/etc/dpkg/origins
	$(INSTALL) neptune $(DESTDIR)/etc/dpkg/origins/
	
	mkdir -p $(DESTDIR)/usr/share/python-apt/templates
	$(INSTALL) Neptune.info $(DESTDIR)/usr/share/python-apt/templates/
	
	# Install asound.conf
	$(INSTALL) asound.conf $(DESTDIR)/etc/
	
	# We don't like pcspeaker to beep
	mkdir -p $(DESTDIR)/etc/modprobe.d
	$(INSTALL) pcspkr-blacklist.conf $(DESTDIR)/etc/modprobe.d/
	
	# Ship default font config
	mkdir -p $(DESTDIR)/etc/skel/.config/fontconfig
	$(INSTALL) fonts.conf $(DESTDIR)/etc/skel/.config/fontconfig/
	cd $(DESTDIR)/etc/skel && ln -s .config/fontconfig/fonts.conf .fonts.conf
	
	# Ship default avatar
	cp face debian/neptune-base/etc/skel/.face
	cd $(DESTDIR)/etc/skel && ln -s .face .face.icon
	
	# Don't resume from ZRAM devices
	mkdir -p $(DESTDIR)/etc/initramfs-tools/conf.d
	$(INSTALL) zram-no-resume.conf $(DESTDIR)/etc/initramfs-tools/conf.d/