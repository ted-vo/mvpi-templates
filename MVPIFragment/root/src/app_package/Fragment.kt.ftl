package ${packageName}

import android.os.Bundle
import ${applicationpackage}.R
import ${applicationpackage}.ui.base.view.BaseFragment

class ${className}Fragment : BaseFragment<${className}Presenter>(), ${className}Contract.View {
      
       companion object {
        internal val TAG: String = ${className}Fragment::class.java.simpleName

        fun newInstance(): ${className}Fragment {
            val args = Bundle()
            val fragment = ${className}Fragment()
            fragment.arguments = args
            return fragment
        }
    }
      
      override fun attachView() = mPresenter.onAttach(this)
      
      <#if includeLayout>
         override fun getLayoutId(): Int = R.layout.${fragmentName}
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