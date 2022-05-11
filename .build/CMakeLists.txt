cmake_minimum_required(VERSION 3.0)
project("GridLayout")
include(ScadeSDK)
add_scade_application("GridLayout" "com.scade.gridlayout"
	"${CMAKE_CURRENT_SOURCE_DIR}/.."
	USE_SPM
	APP_NAME "GridLayout"
	APP_SPM_NAME "GridLayout"
	APPLE_DISPLAY_NAME "GridLayout"
	ANDROID_DISPLAY_NAME "GridLayout"
	SOURCES
	"Sources/GridLayout/Extensions/Pages/main.page.ext.swift"
	"Sources/GridLayout/Extensions/Proxies/GridLayout.swift"
	"Sources/GridLayout/main.page.swift"
	"Sources/GridLayout/start.swift"

	RESOURCES
		RESOURCES_GROUP "Sources/GridLayout/Extensions/Proxies" NOPREFIX
			"GridLayout.java"
		RESOURCES_GROUP "Sources/GridLayout" NOPREFIX
			"main.page"
			"main.page.svg"
		RESOURCES_GROUP NOBASE NOPREFIX
			"Assets/Border Collie.jpeg"
			"Assets/Bulldog.jpeg"
			"Assets/German Shepherd.jpeg"
			"Assets/Golden Retriever.jpeg"
			"Assets/Huskey.jpeg"
			"Assets/Jack Russell Terrier.jpeg"
			"Assets/Pug.jpeg"
			"Assets/Rottweiler.jpeg"

	IOS_EXPORT_METHOD "ad-hoc"
	MACOS_PLIST_PROPERTIES
		"CFBundleVersion" STRING "1"
		"NSCameraUsageDescription" STRING "Take pictures from camera"
		"CFBundleShortVersionString" STRING "1.0"
		"NSLocationWhenInUseUsageDescription" STRING ""
		"NSPhotoLibraryUsageDescription" STRING "Choose a photo from your library"

		"UIDeviceFamily" ARRAY
			INT "1"
		ARRAY_END
		"UISupportedInterfaceOrientations" ARRAY
			STRING "UIInterfaceOrientationPortrait"
		ARRAY_END
		"UISupportedInterfaceOrientations~ipad" ARRAY
			STRING "UIInterfaceOrientationPortrait"
		ARRAY_END

)

set_property(TARGET GridLayout PROPERTY ANDROID_KEYSTORE_PROPERTIES_FILE "${ANDROID_KEYSTORE_PROPERTIES_FILE}")
set_property(TARGET GridLayout PROPERTY ANDROID_VERSION_NAME "1.0.0")
set_property(TARGET GridLayout PROPERTY ANDROID_VERSION_CODE "1")


