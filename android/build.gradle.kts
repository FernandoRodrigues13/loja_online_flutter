// build.gradle.kts (nível de projeto)

buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        // Plugin necessário para os serviços do Firebase
        classpath("com.google.gms:google-services:4.3.15")
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

// Redireciona o diretório de build para fora do padrão (opcional)
val newBuildDir = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.set(newBuildDir)

subprojects {
    val newSubprojectBuildDir = newBuildDir.dir(project.name)
    project.layout.buildDirectory.set(newSubprojectBuildDir)
}

// Garante que o projeto app seja avaliado antes dos subprojetos
subprojects {
    project.evaluationDependsOn(":app")
}

// Tarefa customizada para limpeza do projeto
tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
