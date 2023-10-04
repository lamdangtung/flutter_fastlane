.PHONY: init-android update update-fastlane firebase add_firebase_app_distribution init-ios upload_app_android

init-android:
	cd android/ bundle exec fastlane init

init-ios:
	cd ios/ bundle exec fastlane init
update:
	bundle update
update-fastlane:
	bundle update fastlane
firebase:
	cd android/fastlane/ && bundle exec fastlane distribute_android_app

upload_app_android:
	cd android && bundle exec fastlane supply --aab ./build/aab/app-release.aab

add_firebase_app_distribution_android:
	cd android/fastlane/  && fastlane --version && fastlane add_plugin firebase_app_distribution && bundle exec fastlane add_plugin firebase_app_distribution

add_firebase_app_distribution_ios:
	cd ios/fastlane/  && fastlane --version && fastlane add_plugin firebase_app_distribution && bundle exec fastlane add_plugin firebase_app_distribution