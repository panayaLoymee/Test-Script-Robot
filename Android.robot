*** Settings ***

Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub      # URL to appium server
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    8.0.0
${DEVICE_NAME}    Nexus_5X_API_26
#Appium uses the *.app directory that is created by the ios build to provision the emulator.
${APP_LOCATION}        /Users/nextzycnx/Library/Developer/Xcode/DerivedData/helloWorld-byxjthepxnaolgbakqhgjjctzdhn/Build/Products/Debug-iphonesimulator/helloWorld.app
${APP_PACKAGE}       com.ais.mimo.eservice.debug
${APP_ACTIVITY}      com.ais.mimo.eservice.module.splashscreen.SplashScreenActivity

*** Keywords ***
Open App
     Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}
Close All Apps
     Close All Applications

*** Test Cases ***
test_demo
     Open App
