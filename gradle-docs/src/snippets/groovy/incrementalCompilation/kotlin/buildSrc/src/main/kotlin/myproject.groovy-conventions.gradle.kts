plugins {
    id("groovy")
}

dependencies {
    implementation(localGroovy())
}

// tag::enable-groovy-incremental[]
tasks.withType<GroovyCompile>().configureEach {
    options.isIncremental = true
}
// end::enable-groovy-incremental[]
