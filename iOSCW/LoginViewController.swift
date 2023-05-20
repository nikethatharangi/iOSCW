////
////  LoginViewController.swift
////  iOSCW
////
////  Created by Niketha Tharangi on 2023-05-14.
////
//
//import UIKit
//import FirebaseAuth
//
//class LoginViewController: UIViewController {
//
//    let EmailtextField : UITextField = {
//        let EmailtextField = UITextField()
//        EmailtextField.layer.cornerRadius = 20
//        //EmailtextField.placeholder = "Enter Username or Email"
//        EmailtextField.translatesAutoresizingMaskIntoConstraints = false
//        EmailtextField.borderStyle = .roundedRect
//        EmailtextField.backgroundColor = .systemFill
//        EmailtextField.textAlignment = .left
//        EmailtextField.textColor = .white
//        EmailtextField.autocapitalizationType = .none
//        EmailtextField.font = UIFont.systemFont(ofSize: 16)
//        return EmailtextField
//    }()
//
//    let PasstextField : UITextField = {
//        let PasstextField = UITextField()
//        PasstextField.layer.cornerRadius = 20
//        //PasstextField.placeholder = "Enter Password"
//        PasstextField.translatesAutoresizingMaskIntoConstraints = false
//        PasstextField.borderStyle = .roundedRect
//        PasstextField.isSecureTextEntry = true
//        PasstextField.textAlignment = .left
//        PasstextField.textColor = .white
//        PasstextField.backgroundColor = .systemFill
//        PasstextField.font = UIFont.systemFont(ofSize: 16)
//        return PasstextField
//    }()
//
//
//    let label : UILabel = {
//        let label = UILabel()
//        label.text = "Login"
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.textColor = UIColor.white
//        label.font = UIFont(name: "ArialRoundedMTBold", size: 30)
//        return label
//    }()
//
//    let userlabel : UILabel = {
//        let userlabel = UILabel()
//        userlabel.text = "Email : "
//        userlabel.translatesAutoresizingMaskIntoConstraints = false
//        userlabel.textColor = UIColor.white
//        userlabel.font = UIFont(name: "ArialRoundedMTBold", size: 15)
//        return userlabel
//    }()
//
//    let passlabel : UILabel = {
//        let passlabel = UILabel()
//        passlabel.text = "Password : "
//        passlabel.translatesAutoresizingMaskIntoConstraints = false
//        passlabel.textColor = UIColor.white
//        passlabel.font = UIFont(name: "ArialRoundedMTBold", size: 15)
//        return passlabel
//    }()
//
//
//    let roundedView: UIView = {
//        let view = UIView()
//        view.layer.cornerRadius = 50
//        view.backgroundColor = .systemFill
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.layer.masksToBounds = false
//        view.layer.shadowOffset = CGSize(width: -1, height: 1)
//        view.layer.shadowRadius = 5
//        view.layer.shadowOpacity = 0.6
//
//        return view
//    }()
//
//    let button : UIButton = {
//        let button = UIButton()
//        button.backgroundColor = .black
//        button.layer.cornerRadius = 25
//        button.layer.borderColor = UIColor.magenta.cgColor
//        button.layer.borderWidth = 4
//        button.translatesAutoresizingMaskIntoConstraints = false
//
//        button.setTitle("Login", for: .normal)
//        button.tintColor = .white
//        return button
//    }()
//
//    let someImageView: UIImageView = {
//        let theImageView = UIImageView()
//        theImageView.layer.cornerRadius = 50
//        theImageView.image = UIImage(named: "weight.jpg")
//        theImageView.isOpaque = false
//        theImageView.alpha = CGFloat(0.5)
//        theImageView.translatesAutoresizingMaskIntoConstraints = false
//        return theImageView
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        view.backgroundColor = .black
//        view.addSubview(roundedView)
//        view.addSubview(someImageView)
//        roundedView.addSubview(EmailtextField)
//        roundedView.addSubview(PasstextField)
//        //roundedView.addSubview(button)
//        roundedView.addSubview(label)
//        roundedView.addSubview(userlabel)
//        roundedView.addSubview(passlabel)
//
//        setConstraints()
//        someImageViewConstraints()
//
//        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        EmailtextField.becomeFirstResponder()
//    }
//
//    @objc private func didTapButton() {
//        guard let email = EmailtextField.text, !email.isEmpty,
//              let password = PasstextField.text, !password.isEmpty else {
//            print("missing field data")
//            return
//        }
//
//        FirebaseAuth.Auth.auth().signIn(withEmail: email, password: password, completion: { [weak self] result, error in
//            guard let strongSelf = self else {
//                return
//            }
//            guard error == nil else {
//                strongSelf.showCreateAccount(email: email, password: password)
//                return
//            }
//            print("signed in")
//
//            // write code to go to the next page
//
//        })
//    }
//
//    func showCreateAccount(email: String, password: String) {
//        let alert = UIAlertController(title: "Create Account", message: "Would you like to create an account?", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "Continue", style: .default, handler: { _ in
//            FirebaseAuth.Auth.auth().createUser(withEmail: email, password: password, completion: { [weak self] result, error in
//                guard let strongSelf = self else {
//                    return
//                }
//                guard error == nil else {
//                    print("Account creation failed")
//                    return
//                }
//                print("signed in")
//                // write code to go to the next page
//            })
//        }))
//        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in }))
//        present(alert, animated: true)
//    }
//
//    func setConstraints() {
//
//        NSLayoutConstraint.activate([
//            roundedView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
//            roundedView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.9),
//            roundedView.topAnchor.constraint(equalTo: view.topAnchor, constant: 230),
//            // roundedView.centerYAnchor
//            // .constraint(equalTo: view.centerYAnchor)
//        ])
//
//        NSLayoutConstraint.activate([
//            button.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 330),
//            button.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor),
//            button.heightAnchor.constraint(equalToConstant: 50),
//            button.widthAnchor.constraint(equalToConstant: 200)
//        ])
//
//        NSLayoutConstraint.activate([
//            label.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor),
//            label.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 20)
//        ])
//
//        NSLayoutConstraint.activate([
//            EmailtextField.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 150),
//            EmailtextField.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor),
//            EmailtextField.heightAnchor.constraint(equalToConstant: 40),
//            EmailtextField.widthAnchor.constraint(equalToConstant: 250)
//        ])
//
//        NSLayoutConstraint.activate([
//            PasstextField.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 250),
//            PasstextField.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor),
//            PasstextField.heightAnchor.constraint(equalToConstant: 40),
//            PasstextField.widthAnchor.constraint(equalToConstant: 250)
//        ])
//
//        NSLayoutConstraint.activate([
//            userlabel.leftAnchor.constraint(equalTo: roundedView.leftAnchor, constant: 30),
//            userlabel.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 120)
//        ])
//
//        NSLayoutConstraint.activate([
//            passlabel.leftAnchor.constraint(equalTo: roundedView.leftAnchor, constant: 30),
//            passlabel.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 220)
//        ])
//
//    }
//
//    func someImageViewConstraints() {
//        someImageView.widthAnchor.constraint(equalToConstant: 400).isActive = true
//        someImageView.heightAnchor.constraint(equalToConstant: 230).isActive = true
//        someImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//    }
//}


//
//  LoginViewController.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-14.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    let EmailtextField : UITextField = {
        let EmailtextField = UITextField()
        EmailtextField.layer.cornerRadius = 20
        //EmailtextField.placeholder = "Enter Username or Email"
        EmailtextField.translatesAutoresizingMaskIntoConstraints = false
        EmailtextField.borderStyle = .roundedRect
        EmailtextField.backgroundColor = .systemFill
        EmailtextField.textAlignment = .left
        EmailtextField.textColor = .white
        EmailtextField.autocapitalizationType = .none
        EmailtextField.font = UIFont.systemFont(ofSize: 16)
        return EmailtextField
    }()
    
    let PasstextField : UITextField = {
        let PasstextField = UITextField()
        PasstextField.layer.cornerRadius = 20
        //PasstextField.placeholder = "Enter Password"
        PasstextField.translatesAutoresizingMaskIntoConstraints = false
        PasstextField.borderStyle = .roundedRect
        PasstextField.isSecureTextEntry = true
        PasstextField.textAlignment = .left
        PasstextField.textColor = .white
        PasstextField.backgroundColor = .systemFill
        PasstextField.font = UIFont.systemFont(ofSize: 16)
        return PasstextField
    }()
    
    
    let label : UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        return label
    }()
    
    let userlabel : UILabel = {
        let userlabel = UILabel()
        userlabel.text = "Email : "
        userlabel.translatesAutoresizingMaskIntoConstraints = false
        userlabel.textColor = UIColor.white
        userlabel.font = UIFont(name: "ArialRoundedMTBold", size: 15)
        return userlabel
    }()
    
    let passlabel : UILabel = {
        let passlabel = UILabel()
        passlabel.text = "Password : "
        passlabel.translatesAutoresizingMaskIntoConstraints = false
        passlabel.textColor = UIColor.white
        passlabel.font = UIFont(name: "ArialRoundedMTBold", size: 15)
        return passlabel
    }()
    
    
    let roundedView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 50
        view.backgroundColor = .systemFill
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = false
        view.layer.shadowOffset = CGSize(width: -1, height: 1)
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.6
        
        return view
    }()
    
    let button : UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.layer.cornerRadius = 25
        button.layer.borderColor = UIColor.magenta.cgColor
        button.layer.borderWidth = 4
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("Login", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    let someImageView: UIImageView = {
        let theImageView = UIImageView()
        theImageView.layer.cornerRadius = 50
        theImageView.image = UIImage(named: "weight.jpg")
        theImageView.isOpaque = false
        theImageView.alpha = CGFloat(0.5)
        theImageView.translatesAutoresizingMaskIntoConstraints = false
        return theImageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        view.addSubview(roundedView)
        view.addSubview(someImageView)
        roundedView.addSubview(EmailtextField)
        roundedView.addSubview(PasstextField)
        roundedView.addSubview(button) // Add button as subview of the roundedView
        roundedView.addSubview(label)
        roundedView.addSubview(userlabel)
        roundedView.addSubview(passlabel)
        
        setConstraints()
        someImageViewConstraints()
        
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        EmailtextField.becomeFirstResponder()
    }
    
    @objc private func didTapButton() {
        guard let email = EmailtextField.text, !email.isEmpty,
              let password = PasstextField.text, !password.isEmpty else {
            print("missing field data")
            return
        }
        
        FirebaseAuth.Auth.auth().signIn(withEmail: email, password: password, completion: { [weak self] result, error in
            guard let strongSelf = self else {
                return
            }
            guard error == nil else {
                strongSelf.showCreateAccount(email: email, password: password)
                return
            }
            print("signed in")
            
            // write code to go to the next page
            
        })
    }
    
    func showCreateAccount(email: String, password: String) {
        let alert = UIAlertController(title: "Create Account", message: "Would you like to create an account?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Continue", style: .default, handler: { _ in
            FirebaseAuth.Auth.auth().createUser(withEmail: email, password: password, completion: { [weak self] result, error in
                guard let strongSelf = self else {
                    return
                }
                guard error == nil else {
                    print("Account creation failed")
                    return
                }
                print("signed in")
                
                //go to next page code
                
                let nextScreen = DetailsViewController()
                navigationController?.pushViewController(nextScreen, animated: true)
            })
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in }))
        present(alert, animated: true)
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            roundedView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            roundedView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.9),
            roundedView.topAnchor.constraint(equalTo: view.topAnchor, constant: 230),
            // roundedView.centerYAnchor
            // .constraint(equalTo: view.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 380),
            button.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor),
            label.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            EmailtextField.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 150),
            EmailtextField.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor),
            EmailtextField.heightAnchor.constraint(equalToConstant: 40),
            EmailtextField.widthAnchor.constraint(equalToConstant: 250)
        ])
        
        NSLayoutConstraint.activate([
            PasstextField.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 250),
            PasstextField.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor),
            PasstextField.heightAnchor.constraint(equalToConstant: 40),
            PasstextField.widthAnchor.constraint(equalToConstant: 250)
        ])
        
        NSLayoutConstraint.activate([
            userlabel.leftAnchor.constraint(equalTo: roundedView.leftAnchor, constant: 30),
            userlabel.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 120)
        ])
        
        NSLayoutConstraint.activate([
            passlabel.leftAnchor.constraint(equalTo: roundedView.leftAnchor, constant: 30),
            passlabel.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 220)
        ])
        
    }
    
    func someImageViewConstraints() {
        someImageView.widthAnchor.constraint(equalToConstant: 400).isActive = true
        someImageView.heightAnchor.constraint(equalToConstant: 230).isActive = true
        someImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
