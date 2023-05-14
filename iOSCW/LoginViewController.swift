//
//  LoginViewController.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-14.
//

import UIKit

class LoginViewController: UIViewController {

    let UsertextField : UITextField = {
        let UsertextField = UITextField()
        UsertextField.layer.cornerRadius = 20
        //UsertextField.placeholder = "Enter Username or Email"
        UsertextField.translatesAutoresizingMaskIntoConstraints = false
        UsertextField.borderStyle = .roundedRect
        UsertextField.textAlignment = .left
        UsertextField.textColor = .black
        UsertextField.font = UIFont.systemFont(ofSize: 16)
        return UsertextField
    }()
    
    let PasstextField : UITextField = {
        let PasstextField = UITextField()
        PasstextField.layer.cornerRadius = 20
        //PasstextField.placeholder = "Enter Password"
        PasstextField.translatesAutoresizingMaskIntoConstraints = false
        PasstextField.borderStyle = .roundedRect
        PasstextField.textAlignment = .left
        PasstextField.textColor = .black
        PasstextField.font = UIFont.systemFont(ofSize: 16)
        return PasstextField
    }()
    
        
    let label : UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        return label
    }()
    
    let userlabel : UILabel = {
        let userlabel = UILabel()
        userlabel.text = "Username : "
        userlabel.translatesAutoresizingMaskIntoConstraints = false
        userlabel.textColor = UIColor.black
        userlabel.font = UIFont(name: "ArialRoundedMTBold", size: 15)
        return userlabel
    }()
    
    let passlabel : UILabel = {
        let passlabel = UILabel()
        passlabel.text = "Password : "
        passlabel.translatesAutoresizingMaskIntoConstraints = false
        passlabel.textColor = UIColor.black
        passlabel.font = UIFont(name: "ArialRoundedMTBold", size: 15)
        return passlabel
    }()
    
    let forgotlabel : UILabel = {
        let forgotlabel = UILabel()
        forgotlabel.text = "Forgot Your Password? "
        forgotlabel.translatesAutoresizingMaskIntoConstraints = false
        forgotlabel.textColor = UIColor.black
        forgotlabel.font = UIFont(name: "ArialRoundedMTBold", size: 15)
        return forgotlabel
    }()
    
    let dhavelabel : UILabel = {
        let dhavelabel = UILabel()
        dhavelabel.text = "Don't have an account?"
        dhavelabel.translatesAutoresizingMaskIntoConstraints = false
        dhavelabel.textColor = UIColor.black
        dhavelabel.font = UIFont(name: "ArialRoundedMTBold", size: 15)
        return dhavelabel
    }()
    
    let signuplabel : UILabel = {
        let signuplabel = UILabel()
        signuplabel.text = "SignUp"
        signuplabel.translatesAutoresizingMaskIntoConstraints = false
        signuplabel.textColor = UIColor.magenta
        signuplabel.font = UIFont(name: "ArialRoundedMTBold", size: 17)
        return signuplabel
    }()
    
    let roundedView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 50
        view.backgroundColor = .white
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
        //button.addTarget(self, action: #selector(gotonexAction), for: .touchUpInside)
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
        roundedView.addSubview(UsertextField)
        roundedView.addSubview(PasstextField)
        roundedView.addSubview(button)
        roundedView.addSubview(label)
        roundedView.addSubview(userlabel)
        roundedView.addSubview(passlabel)
        roundedView.addSubview(forgotlabel)
        roundedView.addSubview(signuplabel)
        roundedView.addSubview(dhavelabel)
        setConstraints()
        someImageViewConstraints()
    }
    
//    @objc func gotonexAction(){
//        let nextScreen = DsahBoardViewController()
//        navigationController?.pushViewController(nextScreen, animated: true)
//    }
    
    func setConstraints(){
        
        NSLayoutConstraint.activate([
                    roundedView.widthAnchor
                        .constraint(equalTo: view.widthAnchor,
                                    multiplier: 1),
                    roundedView.heightAnchor
                        .constraint(equalTo: view.heightAnchor,
                                    multiplier: 0.7),
                    roundedView.topAnchor
                        .constraint(equalTo: view.topAnchor, constant: 300),
                   // roundedView.centerYAnchor
                       // .constraint(equalTo: view.centerYAnchor)
                ])
                
        NSLayoutConstraint.activate([
                     button.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 330),
                     button.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor),

                     button.heightAnchor.constraint(equalToConstant: 50),
                     button.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        
        NSLayoutConstraint.activate([
            label.centerXAnchor
                .constraint(equalTo: roundedView.centerXAnchor),
            label.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            UsertextField.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 150),
            UsertextField.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor),

            UsertextField.heightAnchor.constraint(equalToConstant: 40),
            UsertextField.widthAnchor.constraint(equalToConstant: 250)
        ])
        
        NSLayoutConstraint.activate([
            PasstextField.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 250),
            PasstextField.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor),

            PasstextField.heightAnchor.constraint(equalToConstant: 40),
            PasstextField.widthAnchor.constraint(equalToConstant: 250)
        ])
        
        NSLayoutConstraint.activate([
            userlabel.leftAnchor
                .constraint(equalTo: roundedView.leftAnchor, constant: 30),
            userlabel.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 120)
        ])
        
        NSLayoutConstraint.activate([
            passlabel.leftAnchor
                .constraint(equalTo: roundedView.leftAnchor, constant: 30),
            passlabel.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 220)
        ])
        
        NSLayoutConstraint.activate([
            forgotlabel.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor),
            forgotlabel.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 400)
        ])
        
        NSLayoutConstraint.activate([
            signuplabel.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor),
            signuplabel.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 490)
        ])
        
        NSLayoutConstraint.activate([
            dhavelabel.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor),
            dhavelabel.topAnchor.constraint(equalTo: roundedView.topAnchor, constant: 470)
        ])
    }
    
    func someImageViewConstraints() {
            someImageView.widthAnchor.constraint(equalToConstant: 500).isActive = true
            someImageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
            someImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        }
}
