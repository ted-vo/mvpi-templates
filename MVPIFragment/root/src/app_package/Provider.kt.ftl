package ${packageName}

import dagger.Module
import dagger.android.ContributesAndroidInjector

@Module
abstract class ${className}FragmentProvider {

    @ContributesAndroidInjector(modules = [${className}FragmentModule::class])
    abstract fun provide${className}FragmentFactory(): ${className}Fragment
}