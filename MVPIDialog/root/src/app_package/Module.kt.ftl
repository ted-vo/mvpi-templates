package ${packageName}

import dagger.Binds
import dagger.Module

@Module
abstract class ${className}DialogModule {
    
    @Binds
    abstract fun bind${className}Presenter(presenter :  ${className}Presenter) : ${className}Contract.Presenter
    
    @Binds
    abstract fun bind${className}Interactor(interactor :  ${className}Interactor) : ${className}Contract.Interactor
}