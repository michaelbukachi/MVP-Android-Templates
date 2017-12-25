package ${packageName};

import android.view.View;

import java.lang.ref.WeakReference;


class ${className}View {

    private WeakReference<View> ref;

    ${className}View(View view) {
        ref = new WeakReference<>(view);
    }

}

