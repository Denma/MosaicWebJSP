package com.hybrid.fx.controllers;

import com.gluonhq.particle.application.ParticleApplication;
import com.gluonhq.particle.state.StateManager;
import com.gluonhq.particle.view.ViewManager;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.control.TextInputDialog;
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebView;

import javax.inject.Inject;
import org.controlsfx.control.action.Action;
import org.controlsfx.control.action.ActionMap;
import org.controlsfx.control.action.ActionProxy;

public class PrimaryController {

    @Inject ParticleApplication app;
    
    @Inject private ViewManager viewManager;

    @Inject private StateManager stateManager;
    
    private boolean first = true;
    
    @FXML
    private Label label;
    
    @FXML
    private Button button;
    
    @FXML
    private ResourceBundle resources;
    
    private Action actionSignin;
    
    @FXML
    private WebView myweb;
    
    @FXML
    private TextField url;
    
    @FXML
    private Button home;
    
    public void initialize() {
        ActionMap.register(this);
        actionSignin =  ActionMap.action("signin");
        
        button.setOnAction(e -> viewManager.switchView("secondary"));
        
        String homeAdress = "http://localhost:8080/index.html";
        url.setText(homeAdress);
        
        
        WebEngine engine = myweb.getEngine();
        engine.load(homeAdress);
        
        url.setOnAction(event -> {
        	engine.load(url.getText());
        });
        
        home.setOnAction(event -> {
        	url.setText(homeAdress);
        	engine.load(homeAdress);
        });
        
        
        
    }
    
    public void postInit() {
        if (first) {
            stateManager.setPersistenceMode(StateManager.PersistenceMode.USER);
            addUser(stateManager.getProperty("UserName").orElse("").toString());
            first = false;
        }
        app.getParticle().getToolBarActions().add(0, actionSignin);
    }
    
    public void dispose() {
        app.getParticle().getToolBarActions().remove(actionSignin);
    }
    
    public void addUser(String userName) {
        label.setText(resources.getString("label.text") + (userName.isEmpty() ? "" :  ", " + userName) + "!");
        stateManager.setProperty("UserName", userName);
    }

    @ActionProxy(text="Sign In")
    private void signin() {
        TextInputDialog input = new TextInputDialog(stateManager.getProperty("UserName").orElse("").toString());
        input.setTitle("User name");
        input.setHeaderText(null);
        input.setContentText("Input your name:");
        input.showAndWait().ifPresent(this::addUser);
    }
    
}