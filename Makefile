.PHONY: init-android update update-fastlane firebase

init-android:
	cd android/ bundle exec fastlane init
update:
	bundle update
update-fastlane:
	bundle update fastlane
firebase:
	cd android/fastlane/ && bundle exec fastlane distribute_android_app