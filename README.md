# **Flutter-Firebase**

A Flutter Project with Firebase

## **#1** What I did for `Firebase Setup` in My Project

- [x] Created a Firebase Project in [Firebase Console](https://firebase.google.com)

- [x] Created a Android App in Firebase Project with `Android package name` available at `ProjectFolder/android/src/build.gradle`

    looks like
    ```
    defaultConfig {
    applicationId "com.example.appname" 
    }
    ```

- [x] Created a iOS App with `iOS Bundle id` available at `Runner.xcodeproj/project.pbxproj`

    looks like
    ```
    PRODUCT_BUNDLE_IDENTIFIER = com.example.appname;
    ```

    **Note:** You can change `example` to any unique identidier

- [x] Below Packages Added to `pubspec.yaml`
    - [firebase_auth](https://pub.dev/packages/firebase_auth)
    - [firebase_core](https://pub.dev/packages/firebase_core)

## **#2** Applying `App Structure` to My Project

<p align="center">
<img src="images/AppStructure.png" >
</p>

**Note:** Here we are creating simple coffee booking app. and here `BrewList` means list of orders. 




