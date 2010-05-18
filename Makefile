APP_SUPPORT_DIR = "/Library/Application Support/MWorks"
PLUGINS_DIR = $(APP_SUPPORT_DIR)/Plugins/Core
XCODE_TEMPLATES_DIR = "/Developer/Library/Xcode/Project Templates"

MW_XCODEBUILD = $(APP_SUPPORT_DIR)/Developer/bin/mw_xcodebuild

all: install

install: clean
	rm -Rf $(XCODE_TEMPLATES_DIR)/MWorks
	cp -Rp MWorks $(XCODE_TEMPLATES_DIR)

clean:
	rm -f */*/*.xcodeproj/*.pbxuser */*/*.xcodeproj/*.perspectivev3
	rm -Rf */*/build
	rm -Rf $(PLUGINS_DIR)/___PROJECTNAME___.bundle

test:
	cd "MWorks/MWorks Core Plugin" && $(MW_XCODEBUILD) Everything Development