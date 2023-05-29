//
//  AccountViewController.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-20.
//

import UIKit

class AccountViewController: UIViewController {

    
    let roundedView: UIView = {
           let view = UIView()
           view.layer.cornerRadius = 20
           //view.backgroundColor = .white
           view.translatesAutoresizingMaskIntoConstraints = false
       
           return view
       }()
    
    let bottomroundedView: UIView = {
        let bottomroundedView = UIView()
        bottomroundedView.layer.cornerRadius = 20
        bottomroundedView.backgroundColor = .systemFill
       // bottomroundedView.alpha = CGFloat(0.2)
//        bottomroundedView.layer.borderColor = UIColor.white.cgColor
//        bottomroundedView.layer.borderWidth = 1
        bottomroundedView.translatesAutoresizingMaskIntoConstraints = false
        
        return bottomroundedView
       }()
    
    let catoneroundedView: UIView = {
        let catoneroundedView = UIView()
        catoneroundedView.layer.cornerRadius = 20
        catoneroundedView.backgroundColor = .systemFill
       // catoneroundedView.alpha = CGFloat(0.2)
//        catoneroundedView.layer.borderColor = UIColor.white.cgColor
//        catoneroundedView.layer.borderWidth = 1
        catoneroundedView.translatesAutoresizingMaskIntoConstraints = false
        
        return catoneroundedView
       }()
    
    let cattworoundedView: UIView = {
        let cattworoundedView = UIView()
        cattworoundedView.layer.cornerRadius = 20
        cattworoundedView.backgroundColor = .systemFill
      //  cattworoundedView.alpha = CGFloat(0.2)
//        cattworoundedView.layer.borderColor = UIColor.white.cgColor
//        cattworoundedView.layer.borderWidth = 1
        cattworoundedView.translatesAutoresizingMaskIntoConstraints = false
        
        return cattworoundedView
       }()
    
    let catthreeroundedView: UIView = {
        let catthreeroundedView = UIView()
        catthreeroundedView.layer.cornerRadius = 20
        catthreeroundedView.backgroundColor = .systemFill
      //  catthreeroundedView.alpha = CGFloat(0.2)
//        catthreeroundedView.layer.borderColor = UIColor.white.cgColor
//        catthreeroundedView.layer.borderWidth = 1
        catthreeroundedView.translatesAutoresizingMaskIntoConstraints = false
        
        return catthreeroundedView
       }()
    
    let someImageView: UIImageView = {
        let theImageView = UIImageView()
        theImageView.layer.cornerRadius = 75
        theImageView.image = UIImage(named: "user.png")
        theImageView.layer.borderColor = UIColor.magenta.cgColor
        theImageView.layer.borderWidth = 3
//        theImageView.layer.borderColor = UIColor.white.cgColor
//        theImageView.layer.borderWidth = 1
//        theImageView.backgroundColor = UIColor.white.withAlphaComponent(0.8)
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
    
    let nameLabel: UILabel = {
           let label = UILabel()
            label.text = "John Grey"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.white
            label.font = UIFont(name: "ArialRoundedMTBold", size: 15)
           return label
       }()
    
    let weightnumLabel: UILabel = {
           let label = UILabel()
            label.text = "68"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.white
            label.font = UIFont(name: "ArialRoundedMTBold", size: 20)
           return label
       }()
    
    let bmiLabel: UILabel = {
           let label = UILabel()
            label.text = "Current BMI : "
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.white
            label.font = UIFont(name: "ArialRoundedMTBold", size: 17)
           return label
       }()
    
    let bminumLabel: UILabel = {
           let label = UILabel()
            label.text = " 21.2"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.white
            label.font = UIFont(name: "ArialRoundedMTBold", size: 17)
           return label
       }()
    
    let weightLabel: UILabel = {
           let label = UILabel()
            label.text = "Weight(kg)"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.magenta
            label.font = UIFont(name: "ArialRoundedMTBold", size: 11)
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
    
    let heightnumLabel: UILabel = {
           let label = UILabel()
            label.text = "179"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.white
            label.font = UIFont(name: "ArialRoundedMTBold", size: 20)
           return label
       }()
    
    let heightLabel: UILabel = {
           let label = UILabel()
            label.text = "Height(cm)"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.magenta
            label.font = UIFont(name: "ArialRoundedMTBold", size: 11)
           return label
       }()
    
    let agenumLabel: UILabel = {
           let label = UILabel()
            label.text = "24"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.white
            label.font = UIFont(name: "ArialRoundedMTBold", size: 20)
           return label
       }()

    
    let ageLabel: UILabel = {
           let label = UILabel()
            label.text = "Age(yr)"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.magenta
            label.font = UIFont(name: "ArialRoundedMTBold", size: 11)
           return label
       }()

    let howLabel : UILabel = {
        let label = UILabel()
        label.text = "Profile"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 25)
        return label
    }()

    let categoryLabel : UILabel = {
        let label = UILabel()
        label.text = "Progress"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 23)
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
        view.addSubview(bottomroundedView)
        view.addSubview(roundedView)
        view.addSubview(catoneroundedView)
        view.addSubview(cattworoundedView)
        view.addSubview(catthreeroundedView)
        view.addSubview(bmiLabel)
        view.addSubview(bminumLabel)

        view.addSubview(categoryLabel)
        //button.addSubview(nameLabel)
        someImageView.addSubview(weightLabel)
        someImageView.addSubview(heightLabel)
        someImageView.addSubview(weightnumLabel)
        someImageView.addSubview(heightnumLabel)
        someImageView.addSubview(nameLabel)
        someImageView.addSubview(ageLabel)
        
        someImageView.addSubview(agenumLabel)
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
                        .constraint(equalTo: view.topAnchor, constant: 150),
                ])
        
        NSLayoutConstraint.activate([
                    bottomroundedView.widthAnchor
                        .constraint(equalTo: view.widthAnchor,
                                    multiplier: 0.9),
                    bottomroundedView.heightAnchor
                        .constraint(equalTo: view.heightAnchor,
                                    multiplier: 0.275),
                    bottomroundedView.centerXAnchor
                        .constraint(equalTo: view.centerXAnchor),
                    bottomroundedView.topAnchor
                        .constraint(equalTo: view.topAnchor, constant: 520),
                ])
        
        NSLayoutConstraint.activate([
                    catoneroundedView.widthAnchor
                        .constraint(equalTo: view.widthAnchor,
                                    multiplier: 0.2),
                    catoneroundedView.heightAnchor
                        .constraint(equalTo: view.heightAnchor,
                                    multiplier: 0.1),
                    catoneroundedView.leftAnchor
                        .constraint(equalTo: roundedView.leftAnchor,
                                    constant: 20),
                    catoneroundedView.topAnchor
                        .constraint(equalTo: view.topAnchor, constant: 370),
                ])
        
        NSLayoutConstraint.activate([
                    cattworoundedView.widthAnchor
                        .constraint(equalTo: view.widthAnchor,
                                    multiplier: 0.2),
                    cattworoundedView.heightAnchor
                        .constraint(equalTo: view.heightAnchor,
                                    multiplier: 0.1),
                    cattworoundedView.centerXAnchor
                        .constraint(equalTo: view.centerXAnchor),
                    cattworoundedView.topAnchor
                        .constraint(equalTo: view.topAnchor, constant: 370),
                ])
        
        NSLayoutConstraint.activate([
                    catthreeroundedView.widthAnchor
                        .constraint(equalTo: view.widthAnchor,
                                    multiplier: 0.2),
                    catthreeroundedView.heightAnchor
                        .constraint(equalTo: view.heightAnchor,
                                    multiplier: 0.1),
                    catthreeroundedView.leftAnchor
                        .constraint(equalTo: roundedView.leftAnchor,
                                    constant: 215),
                    catthreeroundedView.topAnchor
                        .constraint(equalTo: view.topAnchor, constant: 370),
                ])
       
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor
                .constraint(equalTo: roundedView.centerXAnchor),
                    nameLabel.topAnchor
                        .constraint(equalTo: roundedView.topAnchor,
                                    constant: 160)
                ])
        
        NSLayoutConstraint.activate([
            weightLabel.leftAnchor
                        .constraint(equalTo: view.leftAnchor,
                                    constant: 70),
            weightLabel.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 430)
                ])
        
        NSLayoutConstraint.activate([
            bmiLabel.leftAnchor
                        .constraint(equalTo: view.leftAnchor,
                                    constant: 40),
            bmiLabel.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 560)
                ])
        
        NSLayoutConstraint.activate([
            bminumLabel.leftAnchor
                        .constraint(equalTo: view.leftAnchor,
                                    constant: 180),
            bminumLabel.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 560)
                ])
        
        NSLayoutConstraint.activate([
            heightLabel.centerXAnchor
                .constraint(equalTo: view.centerXAnchor),
            heightLabel.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 430)
                ])
        
        NSLayoutConstraint.activate([
            ageLabel.leftAnchor
                        .constraint(equalTo: view.leftAnchor,
                                    constant: 275),
            ageLabel.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 430)
                ])
        
        NSLayoutConstraint.activate([
            weightnumLabel.centerXAnchor
                .constraint(equalTo: catoneroundedView.centerXAnchor),
            weightnumLabel.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 400)
                ])
        
        NSLayoutConstraint.activate([
            heightnumLabel.centerXAnchor
                .constraint(equalTo: view.centerXAnchor),
            heightnumLabel.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 400)
                ])
        
        NSLayoutConstraint.activate([
            agenumLabel.centerXAnchor
                .constraint(equalTo: catthreeroundedView.centerXAnchor),
            agenumLabel.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 400)
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
                    categoryLabel.leftAnchor
                        .constraint(equalTo: view.leftAnchor,
                                    constant: 30),
                    categoryLabel.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 470)
                ])

      
    }
    
    func someImageViewConstraints() {
            someImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
            someImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
            someImageView.centerXAnchor.constraint(equalTo: roundedView.centerXAnchor).isActive = true
        
        }
}

  

