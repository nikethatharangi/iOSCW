//
//  ViewController.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-14.
//

import UIKit

class ViewController: UIViewController {

    let someImageView: UIImageView = {
        let theImageView = UIImageView()
        theImageView.image = UIImage(named: "front.jpg")
        theImageView.isOpaque = false
        theImageView.alpha = CGFloat(0.5)
        theImageView.translatesAutoresizingMaskIntoConstraints = false
        return theImageView
    }()
    
    let button : UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.layer.cornerRadius = 25
        button.layer.borderColor = UIColor.magenta.cgColor
        button.layer.borderWidth = 3
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Get Started", for: .normal)
        button.setImage(UIImage(systemName: "arrow.right"),for: .normal)
        button.semanticContentAttribute = .forceRightToLeft
        button.tintColor = .white
        button.addTarget(self, action: #selector(gotonexAction), for: .touchUpInside)
        return button
    }()
    
    let label : UILabel = {
        let label = UILabel()
        label.text = "SlimOn"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 50)
        return label
    }()
    
    let logoView : UIImageView = {
       let logoview = UIImageView()
        logoview.image = UIImage(named: "logo.jpg")
        logoview.translatesAutoresizingMaskIntoConstraints = false
        return logoview
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(someImageView)
        view.addSubview(logoView)
        view.addSubview(button)
        view.addSubview(label)
        
        setButtonConstraints()
        someImageViewConstraints()
        logoViewConstraints()
        AppNameConstraints()
    }
    
    @objc func gotonexAction(){
        let nextScreen = LoginViewController()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    func setButtonConstraints(){
       NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 725),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.widthAnchor.constraint(equalToConstant: 200)
       ])
        
    }
    
    func someImageViewConstraints() {
            someImageView.widthAnchor.constraint(equalToConstant: 1100).isActive = true
            someImageView.heightAnchor.constraint(equalToConstant: 850).isActive = true
            someImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        }
    
    func logoViewConstraints() {
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            logoView.heightAnchor.constraint(equalToConstant: 250),
            logoView.widthAnchor.constraint(equalToConstant: 500)
        ])
    }
    
    func AppNameConstraints(){
        NSLayoutConstraint.activate([
            label.centerXAnchor
                .constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 390)
        ])
    }
}


