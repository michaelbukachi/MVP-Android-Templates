package ${packageName};

import android.view.View;

import java.lang.ref.WeakReference;


class ${className}View {

    private WeakReference<View> ref;
    private ${className}Contract contract;

    ${className}View(View view) {
        ref = new WeakReference<>(view);
    }
    
    void setContract(${className}Contract contract) {
        this.contract = contract;
    }

}

