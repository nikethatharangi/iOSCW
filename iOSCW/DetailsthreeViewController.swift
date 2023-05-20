//
//  DetailsthreeViewController.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-20.
//

import UIKit

class DetailsthreeViewController: UIViewController {

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
        detailslabel.text = "Choose your goals"
        detailslabel.translatesAutoresizingMaskIntoConstraints = false
        detailslabel.textColor = UIColor.white
        detailslabel.font = UIFont(name: "ArialRoundedMTBold", size: 20)
        return detailslabel
    }()
    
    let legbutton : UIButton = {
        let legbutton = UIButton()
        legbutton.backgroundColor = .black
        legbutton.layer.cornerRadius = 20
        legbutton.layer.borderColor = UIColor.magenta.cgColor
        legbutton.layer.borderWidth = 1
        legbutton.translatesAutoresizingMaskIntoConstraints = false
        legbutton.setTitle("Leg", for: .normal)
        legbutton.semanticContentAttribute = .forceRightToLeft
        legbutton.tintColor = .white
        legbutton.addTarget(self, action: #selector(legTapAction), for: .touchUpInside)
        return legbutton
    }()
    
    let armbutton : UIButton = {
        let armbutton = UIButton()
        armbutton.backgroundColor = .black
        armbutton.layer.cornerRadius = 20
        armbutton.layer.borderColor = UIColor.magenta.cgColor
        armbutton.layer.borderWidth = 1
        armbutton.translatesAutoresizingMaskIntoConstraints = false
        armbutton.setTitle("Arm", for: .normal)
        armbutton.semanticContentAttribute = .forceRightToLeft
        armbutton.tintColor = .white
        armbutton.addTarget(self, action: #selector(armTapAction), for: .touchUpInside)
        return armbutton
    }()
    
    let absbutton : UIButton = {
        let absbutton = UIButton()
        absbutton.backgroundColor = .black
        absbutton.layer.cornerRadius = 20
        absbutton.layer.borderColor = UIColor.magenta.cgColor
        absbutton.layer.borderWidth = 1
        absbutton.translatesAutoresizingMaskIntoConstraints = false
        absbutton.setTitle("Abs", for: .normal)
        absbutton.semanticContentAttribute = .forceRightToLeft
        absbutton.tintColor = .white
        absbutton.addTarget(self, action: #selector(absTapAction), for: .touchUpInside)
        return absbutton
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
    
    let someImageView: UIImageView = {
        let theImageView = UIImageView()
        theImageView.image = UIImage(named: "detailthree.png")
        theImageView.isOpaque = false
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
        circleView3.backgroundColor = UIColor.magenta
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

        view.addSubview(someImageView)

        view.addSubview(button)
        view.addSubview(label)
        view.addSubview(journeylabel)
        view.addSubview(detailslabel)
        view.addSubview(armbutton)
        view.addSubview(legbutton)
        view.addSubview(absbutton)

        setConstraints()
        someImageViewConstraints()
    }
    
    @objc func armTapAction(_ sender: UIButton) {

        // Deselect male button and restore its color
        armbutton.isSelected = true
        armbutton.backgroundColor = UIColor.magenta
        }

        @objc func legTapAction(_ sender: UIButton) {

            // Deselect female button and restore its color
            legbutton.isSelected = true
            legbutton.backgroundColor = UIColor.magenta

   }
    
    @objc func absTapAction(_ sender: UIButton) {

        // Deselect female button and restore its color
        absbutton.isSelected = true
        absbutton.backgroundColor = UIColor.magenta

}
    
    @objc func gotonexAction(){
        let nextScreen = TabController()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
   
    
    func setConstraints(){
                
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
                .constraint(equalTo: view.leftAnchor, constant: 30),
            detailslabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 210)
        ])
        
        NSLayoutConstraint.activate([
            absbutton.topAnchor.constraint(equalTo: view.topAnchor, constant: 380),
            absbutton.leftAnchor
                         .constraint(equalTo: view.leftAnchor, constant: 75),

            absbutton.heightAnchor.constraint(equalToConstant: 40),
            absbutton.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
                     legbutton.topAnchor.constraint(equalTo: view.topAnchor, constant: 520),
                     legbutton.leftAnchor
                         .constraint(equalTo: view.leftAnchor, constant: 200),

                     legbutton.heightAnchor.constraint(equalToConstant: 40),
                     legbutton.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
                     armbutton.topAnchor.constraint(equalTo: view.topAnchor, constant: 330),
                     armbutton.leftAnchor
                         .constraint(equalTo: view.leftAnchor, constant: 200),

                     armbutton.heightAnchor.constraint(equalToConstant: 40),
                     armbutton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    func someImageViewConstraints() {
        someImageView.widthAnchor.constraint(equalToConstant: 270).isActive = true
        someImageView.heightAnchor.constraint(equalToConstant: 430).isActive = true
        someImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        someImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true


    }

}
