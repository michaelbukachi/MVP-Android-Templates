package ${packageName};

import ${applicationPackage}.BasePresenter;

public class ${className}Presenter implements BasePresenter, ${className}Contract {
    private ${className}View view;
    private ${className}Model model;


    ${className}Presenter(${className}View view) {
        this.view = view;
        this.model = new ${className}Model(this);
    }

    @Override
    public void start() {
    }

    @Override
    public void stop() {
        model.clear();
        model = null;
        view = null;
    }
}

