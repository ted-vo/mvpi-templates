package ${packageName}

import dagger.Module
import dagger.android.ContributesAndroidInjector

@Module
abstract class ${className}DialogProvider {

    @ContributesAndroidInjector(modules = [${className}DialogModule::class])
    abstract fun provide${className}DialogFactory(): ${className}Dialog
}