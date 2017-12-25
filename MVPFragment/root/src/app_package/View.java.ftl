package ${packageName};

import android.view.View;

import java.lang.ref.WeakReference;


class ${className}View {

    private WeakReference<View> ref;

    InfoView(View view) {
        ref = new WeakReference<>(view);
    }

}

