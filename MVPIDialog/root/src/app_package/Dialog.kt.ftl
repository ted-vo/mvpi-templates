package ${packageName}

import android.os.Bundle
import ${applicationpackage}.R
import ${applicationpackage}.ui.base.view.BaseDialog

class ${className}Dialog : BaseDialog<${className}Presenter>(), ${className}Contract.View {
      
       companion object {
        internal val TAG: String = ${className}Dialog::class.java.simpleName

        fun newInstance(): ${className}Dialog {
            val args = Bundle()
            val dialog = ${className}Dialog()
            dialog.arguments = args
            return dialog
        }
    }
      
      override fun attachView() = mPresenter.onAttach(this)
      
      <#if includeLayout>
         override fun getLayoutId(): Int = R.layout.${dialogName}
      <#else>
      override fun getLayoutId(): Int {
        return 0
      } 
      </#if>

      override fun setUp() {
        
      }
      
      override fun handleError(errorCode: Int?, throwable: Throwable?) {
        mActivity?.handleThrowable(throwable)
      }
}