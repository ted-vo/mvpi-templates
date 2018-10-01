package ${packageName}

import ${applicationpackage}.data.network.ApiHelper
import ${applicationpackage}.data.prefs.PreferencesHelper
import ${applicationpackage}.ui.base.interactor.BaseInteractor
import javax.inject.Inject

class ${className}Interactor @Inject constructor(mApiHelper: ApiHelper,
            														mPreferencesHelper: PreferencesHelper) : BaseInteractor(mApiHelper, mPreferencesHelper), ${className}Contract.Interactor {
     
}