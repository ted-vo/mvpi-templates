package ${packageName}

import android.content.Context
import android.content.Intent
import ${applicationpackage}.R
import ${applicationpackage}.ui.base.view.BaseActivity

class ${className}Activity : BaseActivity<${className}Presenter>(), ${className}Contract.View {
      
      companion object {
           fun newIntent(context: Context): Intent {
                return Intent(context, ${className}Activity::class.java)
           }
      }
      
      override fun attachView() = mPresenter.onAttach(this)
      
      <#if generateLayout>
         override fun getLayoutId(): Int = R.layout.${layoutName}
      <#else>
      override fun getLayoutId(): Int {
        return 0
      } 
      </#if>
      

      override fun setUp() {
        
      }
      
      override fun handleError(errorCode: Int?, throwable: Throwable?) {
        handleThrowable(throwable)
      }
}