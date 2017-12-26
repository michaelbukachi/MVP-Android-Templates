package ${packageName};

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>


public class ${className}Fragment extends Fragment implements ${className}View {

    private ${className}Presenter presenter;

    public ${className}Fragment() {
        // Required empty public constructor
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.${fragmentName}, container, false);
        presenter = new ${className}Presenter(this);
        return view;
    }

    @Override
    public void onStart() {
        super.onStart();
        presenter.start();
    }

    @Override
    public void onStop() {
        super.onStop();
        presenter.stop();
    }

}

