//
//  DashboardViewController.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-15.
//

import UIKit

class DashboardViewController: UIViewController {

    let roundedView: UIView = {
           let view = UIView()
           view.layer.cornerRadius = 20
           //view.backgroundColor = .white
           view.translatesAutoresizingMaskIntoConstraints = false
        
           return view
       }()
    
    let catoneroundedView: UIView = {
        let catoneroundedView = UIView()
        catoneroundedView.layer.cornerRadius = 20
        catoneroundedView.backgroundColor = .white
        catoneroundedView.alpha = CGFloat(0.2)
//        catoneroundedView.layer.borderColor = UIColor.white.cgColor
//        catoneroundedView.layer.borderWidth = 1
        catoneroundedView.translatesAutoresizingMaskIntoConstraints = false
        
        return catoneroundedView
       }()
    
    let cattworoundedView: UIView = {
        let cattworoundedView = UIView()
        cattworoundedView.layer.cornerRadius = 20
        cattworoundedView.backgroundColor = .white
        cattworoundedView.alpha = CGFloat(0.2)
//        cattworoundedView.layer.borderColor = UIColor.white.cgColor
//        cattworoundedView.layer.borderWidth = 1
        cattworoundedView.translatesAutoresizingMaskIntoConstraints = false
        
        return cattworoundedView
       }()
    
    let catthreeroundedView: UIView = {
        let catthreeroundedView = UIView()
        catthreeroundedView.layer.cornerRadius = 20
        catthreeroundedView.backgroundColor = .white
        catthreeroundedView.alpha = CGFloat(0.2)
//        catthreeroundedView.layer.borderColor = UIColor.white.cgColor
//        catthreeroundedView.layer.borderWidth = 1
        catthreeroundedView.translatesAutoresizingMaskIntoConstraints = false
        
        return catthreeroundedView
       }()
    
    let someImageView: UIImageView = {
        let theImageView = UIImageView()
        theImageView.layer.cornerRadius = 50
        theImageView.image = UIImage(named: "girlweight.jpg")
       // theImageView.layer.borderColor = UIColor.white.cgColor
       // theImageView.layer.borderWidth = 1
 //       theImageView.backgroundColor = UIColor.white.withAlphaComponent(0.8)
//        theImageView.isOpaque = false
//        theImageView.alpha = CGFloat(0.5)
        theImageView.translatesAutoresizingMaskIntoConstraints = false
        return theImageView
    }()
    
//    var gradientLayer: CAGradientLayer = {
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.colors = [UIColor.black.cgColor,UIColor.magenta.cgColor]
//        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
//        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
//        gradientLayer.frame = CGRect.zero
//       return gradientLayer
//    }()
    
    let checkLabel: UILabel = {
           let label = UILabel()
            label.text = "View"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.white
            label.font = UIFont(name: "ArialRoundedMTBold", size: 15)
           return label
       }()
    
    let button : UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemFill
        button.layer.cornerRadius = 15
//        button.isOpaque = false
//        button.alpha = CGFloat(0.5)
        button.layer.borderColor = UIColor.magenta.cgColor
        button.layer.borderWidth = 2
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("View", for: .normal)
        //button.tintColor = .white
        //button.addTarget(self, action: #selector(gotonexAction), for: .touchUpInside)
        return button
    }()
    
    let bmiLabel: UILabel = {
           let label = UILabel()
            label.text = "Your"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.white
            label.font = UIFont(name: "ArialRoundedMTBold", size: 15)
           return label
       }()
    
//    let buttonLabel: UILabel = {
//           let label = UILabel()
//            label.text = "check"
//            label.translatesAutoresizingMaskIntoConstraints = false
//            label.textColor = UIColor.white
//            label.font = UIFont(name: "ArialRoundedMTBold", size: 15)
//           return label
//       }()
    
    let stayLabel: UILabel = {
           let label = UILabel()
            label.text = "Custom"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.white
            label.font = UIFont(name: "ArialRoundedMTBold", size: 15)
           return label
       }()
    
    let planLabel: UILabel = {
           let label = UILabel()
            label.text = "Schedule"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.white
            label.font = UIFont(name: "ArialRoundedMTBold", size: 15)
           return label
       }()

    let howLabel : UILabel = {
        let label = UILabel()
        label.text = "Learn How to"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        return label
    }()
    
    let shapeLabel : UILabel = {
        let label = UILabel()
        label.text = "Shape Your Body"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        return label
    }()
   
    let categoryLabel : UILabel = {
        let label = UILabel()
        label.text = "Categories"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 25)
        return label
    }()
   
//    private func setupScrollView() {
//        let margins = view.layoutMarginsGuide
//    }
    
    //scroll
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(catoneroundedView)
        view.addSubview(cattworoundedView)
        view.addSubview(catthreeroundedView)
        
        view.backgroundColor = .black
//        roundedView.addSubview(titleLabel)
//        roundedView.layer.addSublayer(gradientLayer)
//        gradientLayer.frame = roundedView.bounds
        view.addSubview(categoryLabel)
        view.addSubview(howLabel)
        view.addSubview(shapeLabel)
        view.addSubview(roundedView)
        view.addSubview(catoneroundedView)
        view.addSubview(cattworoundedView)
        view.addSubview(catthreeroundedView)
        someImageView.addSubview(button)
        view.addSubview(categoryLabel)
        //button.addSubview(checkLabel)
        someImageView.addSubview(bmiLabel)
        someImageView.addSubview(stayLabel)
        someImageView.addSubview(checkLabel)
        someImageView.addSubview(planLabel)
        roundedView.addSubview(someImageView)
        
        setConstraints()
        someImageViewConstraints()
        
        
       
    }
    
    func setConstraints(){
        
        NSLayoutConstraint.activate([
                    roundedView.widthAnchor
                        .constraint(equalTo: view.widthAnchor,
                                    multiplier: 0.8),
                    roundedView.heightAnchor
                        .constraint(equalTo: view.heightAnchor,
                                    multiplier: 0.2),
                    roundedView.centerXAnchor
                        .constraint(equalTo: view.centerXAnchor),
                    roundedView.topAnchor
                        .constraint(equalTo: view.topAnchor, constant: 200),
                ])
        
        NSLayoutConstraint.activate([
                    catoneroundedView.widthAnchor
                        .constraint(equalTo: view.widthAnchor,
                                    multiplier: 0.9),
                    catoneroundedView.heightAnchor
                        .constraint(equalTo: view.heightAnchor,
                                    multiplier: 0.1),
                    catoneroundedView.centerXAnchor
                        .constraint(equalTo: view.centerXAnchor),
                    catoneroundedView.topAnchor
                        .constraint(equalTo: view.topAnchor, constant: 520),
                ])
        
        NSLayoutConstraint.activate([
                    cattworoundedView.widthAnchor
                        .constraint(equalTo: view.widthAnchor,
                                    multiplier: 0.9),
                    cattworoundedView.heightAnchor
                        .constraint(equalTo: view.heightAnchor,
                                    multiplier: 0.1),
                    cattworoundedView.centerXAnchor
                        .constraint(equalTo: view.centerXAnchor),
                    cattworoundedView.topAnchor
                        .constraint(equalTo: view.topAnchor, constant: 620),
                ])
        
        NSLayoutConstraint.activate([
                    catthreeroundedView.widthAnchor
                        .constraint(equalTo: view.widthAnchor,
                                    multiplier: 0.9),
                    catthreeroundedView.heightAnchor
                        .constraint(equalTo: view.heightAnchor,
                                    multiplier: 0.1),
                    catthreeroundedView.centerXAnchor
                        .constraint(equalTo: view.centerXAnchor),
                    catthreeroundedView.topAnchor
                        .constraint(equalTo: view.topAnchor, constant: 720),
                ])
       
        NSLayoutConstraint.activate([
                    checkLabel.leftAnchor
                        .constraint(equalTo: roundedView.leftAnchor,
                                    constant: 20),
                    checkLabel.topAnchor
                        .constraint(equalTo: roundedView.topAnchor,
                                    constant: 60)
                ])
        
        NSLayoutConstraint.activate([
                    bmiLabel.leftAnchor
                        .constraint(equalTo: roundedView.leftAnchor,
                                    constant: 20),
                    bmiLabel.topAnchor
                        .constraint(equalTo: roundedView.topAnchor,
                                    constant: 90)
                ])
        
        NSLayoutConstraint.activate([
                    stayLabel.leftAnchor
                        .constraint(equalTo: roundedView.leftAnchor,
                                    constant: 20),
                    stayLabel.topAnchor
                        .constraint(equalTo: roundedView.topAnchor,
                                    constant: 120)
                ])
        
        NSLayoutConstraint.activate([
                    planLabel.leftAnchor
                        .constraint(equalTo: roundedView.leftAnchor,
                                    constant: 20),
                    planLabel.topAnchor
                        .constraint(equalTo: roundedView.topAnchor,
                                    constant: 150)
                ])
        
        NSLayoutConstraint.activate([
                    howLabel.leftAnchor
                        .constraint(equalTo: view.leftAnchor,
                                    constant: 30),
                    howLabel.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 100)
                ])
        
        NSLayoutConstraint.activate([
                    shapeLabel.leftAnchor
                        .constraint(equalTo: view.leftAnchor,
                                    constant: 30),
                    shapeLabel.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 140)
                ])
        
        NSLayoutConstraint.activate([
                    categoryLabel.leftAnchor
                        .constraint(equalTo: view.leftAnchor,
                                    constant: 30),
                    categoryLabel.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 470)
                ])

        NSLayoutConstraint.activate([
                    button.leftAnchor
                        .constraint(equalTo: roundedView.leftAnchor,
                                    constant: 200),
                    button.topAnchor
                        .constraint(equalTo: roundedView.topAnchor,
                                    constant: 30),
                    button.heightAnchor.constraint(equalToConstant: 30),
                    button.widthAnchor.constraint(equalToConstant: 100)
                ])
    }
    
    func someImageViewConstraints() {
            someImageView.widthAnchor.constraint(equalToConstant: 350).isActive = true
            someImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
            someImageView.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor).isActive = true
        }
}
