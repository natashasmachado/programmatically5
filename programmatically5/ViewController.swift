//
//  ViewController.swift
//  programmatically5
//
//  Created by Natasha Machado on 2023-04-27.
//

import UIKit

class ViewController: UIViewController {
    
  let imageView: UIImageView = {
    let icon = UIImageView()
    icon.translatesAutoresizingMaskIntoConstraints = false
    icon.image = UIImage(named: "icon")
    icon.contentMode = .scaleAspectFit
    return icon
  }()
  
  let userTextField: UITextField = {
    let emailField = UITextField(frame: CGRect(x: 0, y: 0, width: 500.00, height: 30.00))

    emailField.borderStyle = UITextField.BorderStyle.roundedRect
    emailField.keyboardType = .emailAddress
    emailField.placeholder = "User name/ email address"
    emailField.backgroundColor = .systemYellow
    return emailField
  }()
  
  let userTextField2: UITextField = {
    let passwordField = UITextField(frame: CGRect(x: 0, y: 0, width: 500.00, height: 30.00))
    passwordField.borderStyle = UITextField.BorderStyle.roundedRect
    passwordField.keyboardType = .default
    passwordField.placeholder = "Password"
    passwordField.backgroundColor = .systemYellow
    return passwordField
  }()
  
  var forgotbutton: UIButton = {
    let btn = UIButton(type: .system)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setTitle("Forgot password?", for: .normal)
    btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
    btn.backgroundColor = .white
    btn.tintColor = .black
    return btn
  }()
  
  var loginButton: UIButton = {
    let btn = UIButton(type: .system)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setTitle("Login", for: .normal)
    btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
    btn.backgroundColor = .systemYellow
    btn.setTitleColor(.black, for: .normal)
    return btn
  }()
  
  var loginFButton: UIButton = {
    let btn = UIButton(type: .system)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setTitle("Login with Facebook", for: .normal)
    btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
    btn.backgroundColor = .systemYellow
    btn.setTitleColor(.black, for: .normal)
    return btn
  }()
  
  var createButton: UIButton = {
    let btn = UIButton(type: .system)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setTitle("Create an Account", for: .normal)
    btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
    btn.backgroundColor = .white
    btn.tintColor = .black
    return btn
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    
    view.addSubview(userTextField)
    view.addSubview(userTextField2)
    view.addSubview(loginButton)
    view.addSubview(forgotbutton)
    view.addSubview(loginFButton)
    view.addSubview(createButton)
    view.addSubview(imageView)
    
    imageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
    imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor).isActive = true
    imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
    
    
    userTextField.translatesAutoresizingMaskIntoConstraints = false
    userTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    userTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
    userTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
    userTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -80).isActive = true
    
    
    userTextField2.translatesAutoresizingMaskIntoConstraints = false
    userTextField2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    userTextField2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
    userTextField2.heightAnchor.constraint(equalToConstant: 50).isActive = true
    userTextField2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20).isActive = true
    
    
    loginButton.translatesAutoresizingMaskIntoConstraints = false
    loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
    loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 40).isActive = true
    loginButton.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
    
    forgotbutton.translatesAutoresizingMaskIntoConstraints = false
    forgotbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    forgotbutton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20).isActive = true
    
    
    loginFButton.translatesAutoresizingMaskIntoConstraints = false
    loginFButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    loginFButton.topAnchor.constraint(equalTo: forgotbutton.bottomAnchor, constant: 20).isActive = true
    loginFButton.widthAnchor.constraint(equalTo: loginButton.widthAnchor, multiplier: 0.8).isActive = true
    
    
    createButton.translatesAutoresizingMaskIntoConstraints = false
    createButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    createButton.topAnchor.constraint(equalTo: loginFButton.bottomAnchor, constant: 20).isActive = true
    
    
  }
  
  @objc func loginButtonPressed() {
      let secondScreen = UIViewController()
    secondScreen.view.backgroundColor = .white
      navigationController?.pushViewController(secondScreen, animated: true)
  }
  
}


