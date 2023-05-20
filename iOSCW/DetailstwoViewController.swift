//
//  DetailstwoViewController.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-20.
//

import UIKit

class DetailstwoViewController: UIViewController {

    let label : UILabel = {
        let label = UILabel()
        label.text = "Start Your Fitness"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        return label
    }()
    
    let journeylabel : UILabel = {
        let journeylabel = UILabel()
        journeylabel.text = "Journey Today"
        journeylabel.translatesAutoresizingMaskIntoConstraints = false
        journeylabel.textColor = UIColor.white
        journeylabel.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        return journeylabel
    }()
    
    let detailslabel : UILabel = {
        let detailslabel = UILabel()
        detailslabel.text = "Enter Your Details"
        detailslabel.translatesAutoresizingMaskIntoConstraints = false
        detailslabel.textColor = UIColor.white
        detailslabel.font = UIFont(name: "ArialRoundedMTBold", size: 20)
        return detailslabel
    }()
    
    let genderlabel : UILabel = {
        let genderlabel = UILabel()
        genderlabel.text = "Gender :"
        genderlabel.translatesAutoresizingMaskIntoConstraints = false
        genderlabel.textColor = UIColor.white
        genderlabel.font = UIFont(name: "ArialRoundedMTBold", size: 15)
        return genderlabel
    }()
    
    let agelabel : UILabel = {
        let agelabel = UILabel()
        agelabel.text = "Age :"
        agelabel.translatesAutoresizingMaskIntoConstraints = false
        agelabel.textColor = UIColor.white
        agelabel.font = UIFont(name: "ArialRoundedMTBold", size: 15)
        return agelabel
    }()
    
    let roundedView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 50
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = false
        view.layer.shadowOffset = CGSize(width: -1, height: 1)
        view.alpha = CGFloat(0.3)
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.6
        return view
    }()
    
    let button : UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.layer.cornerRadius = 25
        button.layer.borderColor = UIColor.magenta.cgColor
        button.layer.borderWidth = 3
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Next", for: .normal)
        button.setImage(UIImage(systemName: "arrow.right"),for: .normal)
        button.semanticContentAttribute = .forceRightToLeft
        button.tintColor = .white
        button.addTarget(self, action: #selector(gotonexAction), for: .touchUpInside)
        return button
    }()
    
    let someImageView: UIImageView = {
        let theImageView = UIImageView()
        theImageView.image = UIImage(named: "detailone.jpg")
        theImageView.isOpaque = false
        theImageView.alpha = CGFloat(0.3)
        theImageView.translatesAutoresizingMaskIntoConstraints = false
        return theImageView
    }()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        drawCircles()
    }
    
    func drawCircles() {
        let circleSize: CGFloat = 20.0
        let spacing: CGFloat = 10.0
        let topMargin: CGFloat = 680.0
        
        // Circle 1 - Filled Circle
        let circleView1 = UIView()
        circleView1.translatesAutoresizingMaskIntoConstraints = false
        circleView1.layer.cornerRadius = circleSize / 2
        circleView1.backgroundColor = UIColor.magenta
        view.addSubview(circleView1)
        
        // Circle 2 - Circle with Border (No Fill)
        let circleView2 = UIView()
        circleView2.translatesAutoresizingMaskIntoConstraints = false
        circleView2.layer.cornerRadius = circleSize / 2
        circleView2.backgroundColor = UIColor.magenta
        view.addSubview(circleView2)
        
        // Circle 3 - Filled Circle
        let circleView3 = UIView()
        circleView3.translatesAutoresizingMaskIntoConstraints = false
        circleView3.layer.cornerRadius = circleSize / 2
        circleView3.layer.borderWidth = 2.0
        circleView3.layer.borderColor = UIColor.magenta.cgColor
        view.addSubview(circleView3)
        
        // Set constraints for Circle 1
            NSLayoutConstraint.activate([
                circleView1.topAnchor.constraint(equalTo: view.topAnchor, constant: topMargin),
                circleView1.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -(circleSize + spacing)),
                circleView1.widthAnchor.constraint(equalToConstant: circleSize),
                circleView1.heightAnchor.constraint(equalToConstant: circleSize)
            ])
            
            // Set constraints for Circle 2
            NSLayoutConstraint.activate([
                circleView2.topAnchor.constraint(equalTo: view.topAnchor, constant: topMargin),
                circleView2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                circleView2.widthAnchor.constraint(equalToConstant: circleSize),
                circleView2.heightAnchor.constraint(equalToConstant: circleSize)
            ])
            
            // Set constraints for Circle 3
            NSLayoutConstraint.activate([
                circleView3.topAnchor.constraint(equalTo: view.topAnchor, constant: topMargin),
                circleView3.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: circleSize + spacing),
                circleView3.widthAnchor.constraint(equalToConstant: circleSize),
                circleView3.heightAnchor.constraint(equalToConstant: circleSize)
            ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        view.addSubview(roundedView)
        view.addSubview(someImageView)

        view.addSubview(button)
        view.addSubview(agelabel)
        view.addSubview(label)
        view.addSubview(journeylabel)
        view.addSubview(detailslabel)
        view.addSubview(genderlabel)

        setConstraints()
        someImageViewConstraints()
        
    }
    
    @objc func gotonexAction(){
        let nextScreen = DetailsthreeViewController()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
   
    
    func setConstraints(){
        
        NSLayoutConstraint.activate([
            roundedView.widthAnchor
                            .constraint(equalTo: view.widthAnchor,
                                        multiplier: 0.9),
                        roundedView.heightAnchor
                            .constraint(equalTo: view.heightAnchor,
                                        multiplier: 0.5),
                        roundedView.centerXAnchor
                            .constraint(equalTo: view.centerXAnchor),
                        roundedView.centerYAnchor
                            .constraint(equalTo: view.centerYAnchor),
                ])
                
        NSLayoutConstraint.activate([
                     button.topAnchor.constraint(equalTo: view.topAnchor, constant: 750),
                     button.leftAnchor
                         .constraint(equalTo: view.leftAnchor, constant: 150),

                     button.heightAnchor.constraint(equalToConstant: 50),
                     button.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        
        NSLayoutConstraint.activate([
            label.leftAnchor
                .constraint(equalTo: view.leftAnchor, constant: 30),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100)
        ])
       
        NSLayoutConstraint.activate([
            journeylabel.leftAnchor
                .constraint(equalTo: view.leftAnchor, constant: 30),
            journeylabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 140)
        ])
        
        NSLayoutConstraint.activate([
            detailslabel.leftAnchor
                .constraint(equalTo: view.leftAnchor, constant: 50),
            detailslabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 260)
        ])
        
        NSLayoutConstraint.activate([
            genderlabel.leftAnchor
                .constraint(equalTo: view.leftAnchor, constant: 50),
            genderlabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 300)
        ])
        
        NSLayoutConstraint.activate([
            agelabel.leftAnchor
                .constraint(equalTo: view.leftAnchor, constant: 50),
            agelabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 430)
        ])
       
    }
    
    func someImageViewConstraints() {
            someImageView.widthAnchor.constraint(equalToConstant: 500).isActive = true
            someImageView.heightAnchor.constraint(equalToConstant: 1100).isActive = true
            someImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true


    }

}
