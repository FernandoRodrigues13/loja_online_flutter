plugins {
    id("com.android.application")
    id("kotlin-android")
    id("com.google.gms.google-services") // 🔥 Plugin do Firebase
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "br.com.frfcontroller.loja_online"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973" // Corrigido conforme dependências Firebase

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "br.com.frfcontroller.loja_online"
        minSdk = 23 // Corrigido conforme exigência do firebase_auth
        multiDexEnabled = true // ✅ CORRIGIDO
        targetSdk = flutter.targetSdkVersion        
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    implementation("androidx.multidex:multidex:2.0.1") // ✅ ADICIONADO
}
