# Flutter Android打包

1. 环境
windows7环境变量path中配置:E:\flutter\flutter_windows_v1.2.1-stable\flutter\bin;
AndroidStudio3.4  File-->Settings-->Languages & Frameworks -->Flutter  Flutter SDK path配置:E:\flutter\flutter_windows_v1.2.1-stable\flutter

2. gradle配置文件
flutter工程中android文件夹下app下面的build.gradle文件：
```
def localProperties = new Properties()
def localPropertiesFile = rootProject.file('local.properties')
//生成的apk的文件中添加一个时间戳
def apkTime = getTimeSuffix()
//key的名称 密码配置文件  使用绝对路径
localProperties.load(new FileInputStream(file("E:\\Android\\workplace\\FlutterCode\\signing.properties")))
if (localPropertiesFile.exists()) {
    localPropertiesFile.withReader('UTF-8') { reader ->
        localProperties.load(reader)
    }
}

def flutterRoot = localProperties.getProperty('flutter.sdk')
if (flutterRoot == null) {
    throw new GradleException("Flutter SDK not found. Define location with flutter.sdk in the local.properties file.")
}

def flutterVersionCode = localProperties.getProperty('flutter.versionCode')
if (flutterVersionCode == null) {
    flutterVersionCode = '1'
}

def flutterVersionName = localProperties.getProperty('flutter.versionName')
if (flutterVersionName == null) {
    flutterVersionName = '1.0'
}

apply plugin: 'com.android.application'
apply plugin: 'kotlin-android'
apply from: "$flutterRoot/packages/flutter_tools/gradle/flutter.gradle"

android {
    compileSdkVersion 28

    sourceSets {
        main.java.srcDirs += 'src/main/kotlin'
    }

    lintOptions {
        disable 'InvalidPackage'
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId "com.cdc.flutter_app"
        minSdkVersion 16
        targetSdkVersion 28
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
        testInstrumentationRunner "android.support.test.runner.AndroidJUnitRunner"
    }

    signingConfigs {
    //读取key配置文件中的信息 signing.properties
        release {
            storeFile file(localProperties['KEYSTORE_FILE'])
            storePassword localProperties['KEYSTORE_PASSWORD']
            keyAlias localProperties['KEYSTORE_ALIAS']
            keyPassword localProperties['KEY_PASSWORD']
        }
    }
    buildTypes {
        release {
            minifyEnabled false
            debuggable false
            signingConfig signingConfigs.release
            proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
        }
        debug {
            signingConfig signingConfigs.release
            debuggable true
        }
    }

//配置生成的apk的名称和存放路径
    android.applicationVariants.all { variant ->
        variant.outputs.all {
            variant.getPackageApplication().outputDirectory = new File("E:\\Android\\workplace\\FlutterCode\\apks")
            outputFileName = "${defaultConfig.applicationId}_${flutterVersionName}_${apkTime}_${flutterVersionCode}.apk"
        }
    }

   /* buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig signingConfigs.debug
        }
    }*/
}

flutter {
    source '../..'
}

dependencies {
    implementation "org.jetbrains.kotlin:kotlin-stdlib-jdk7:$kotlin_version"
    testImplementation 'junit:junit:4.12'
    androidTestImplementation 'com.android.support.test:runner:1.0.2'
    androidTestImplementation 'com.android.support.test.espresso:espresso-core:3.0.2'
}

//apk包的后缀。年月日，例如20181203174200。
def getTimeSuffix() {
    def date = new Date()
    def time = date.format('yyyyMMddHHmmss')
    return time
}




```

3. cmd进入到flutter工程目录，执行命令:flutter build apk,命令执行完后在E:\\Android\\workplace\\FlutterCode\\apks中生成com.cdc.flutter_app_1.0.0_20190425153437_1.apk文件。







