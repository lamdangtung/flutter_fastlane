.PHONY: init-android update update-fastlane firebase add_firebase_app_distribution

init-android:
	cd android/ bundle exec fastlane init
update:
	bundle update
update-fastlane:
	bundle update fastlane
firebase:
	cd android/fastlane/ && bundle exec fastlane distribute_android_app
add_firebase_app_distribution:
	cd android/fastlane/ && bundle exec fastlane add_plugin firebase_app_distribution