//
//  ViewController.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-14.
//

import UIKit

class ViewController: UIViewController {

    var tabController: TabController?
    
    let someImageView: UIImageView = {
        let theImageView = UIImageView()
        theImageView.image = UIImage(named: "front.jpg")
        theImageView.isOpaque = false
        theImageView.alpha = CGFloat(0.5)
        theImageView.translatesAutoresizingMaskIntoConstraints = false
        return theImageView
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
       
        view.addSubview(label)
        

        someImageViewConstraints()
        logoViewConstraints()
        AppNameConstraints()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    let mainViewController = ViewController()
                    let navigationController = UINavigationController(rootViewController: LoginViewController())
                    navigationController.modalPresentationStyle = .fullScreen
                    self.present(navigationController, animated: true, completion: nil)
                }
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
   
    
    func someImageViewConstraints() {
            someImageView.widthAnchor.constraint(equalToConstant: 1100).isActive = true
            someImageView.heightAnchor.constraint(equalToConstant: 850).isActive = true
            someImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        }
    
    func logoViewConstraints() {
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 280),
            logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            logoView.heightAnchor.constraint(equalToConstant: 250),
            logoView.widthAnchor.constraint(equalToConstant: 500)
        ])
    }
    
    func AppNameConstraints(){
        NSLayoutConstraint.activate([
            label.centerXAnchor
                .constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 470)
        ])
    }
}
