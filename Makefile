TMPDIR := ./tmp

osxvm.vdi: InstallESD.dmg
	sudo bash ./prepare_iso/prepare_vdi.sh "Install macOS High Sierra.app" $(TMPDIR)/vdi

InstallESD.dmg: Install*.app/Contents/SharedSupport/InstallESD.dmg
	@# use rsync so that we can show a progress bar
	rsync --update --progress ./Install*.app/Contents/SharedSupport/InstallESD.dmg $(TMPDIR)/InstallESD.dmg

clean:
	rm -rf ./tmp/*


.PHONY: osxvm.vdi
