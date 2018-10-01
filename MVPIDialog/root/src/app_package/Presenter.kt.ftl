package ${packageName}

import ${applicationpackage}.ui.base.presenter.BasePresenter
import ${applicationpackage}.utils.rx.ScheduleProvider
import io.reactivex.disposables.CompositeDisposable
import javax.inject.Inject

class ${className}Presenter
@Inject
constructor(mInteractor: ${className}Interactor,
                            mScheduleProvider: ScheduleProvider,
                            mCompositeDisposable: CompositeDisposable)
    : BasePresenter<${className}Contract.View, ${className}Interactor>(mInteractor, mScheduleProvider, mCompositeDisposable), ${className}Contract.Presenter {
}