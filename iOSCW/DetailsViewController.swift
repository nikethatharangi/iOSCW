//
//  DetailsViewController.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-20.
//

import UIKit
import QuartzCore

class DetailsViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 // Display one column of numbers
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numbers.count // Total number of rows
    }
    
    
    
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
    
    let malebutton : UIButton = {
        let malebutton = UIButton()
        malebutton.backgroundColor = .black
        malebutton.layer.cornerRadius = 20
        malebutton.layer.borderColor = UIColor.magenta.cgColor
        malebutton.layer.borderWidth = 1
        malebutton.translatesAutoresizingMaskIntoConstraints = false
        malebutton.setTitle("Male", for: .normal)
        malebutton.semanticContentAttribute = .forceRightToLeft
        malebutton.tintColor = .white
        malebutton.addTarget(self, action: #selector(maleTapAction), for: .touchUpInside)
        return malebutton
    }()
    
    let femalebutton : UIButton = {
        let femalebutton = UIButton()
        femalebutton.backgroundColor = .black
        femalebutton.layer.cornerRadius = 20
        femalebutton.layer.borderColor = UIColor.magenta.cgColor
        femalebutton.layer.borderWidth = 1
        femalebutton.translatesAutoresizingMaskIntoConstraints = false
        femalebutton.setTitle("Female", for: .normal)
        femalebutton.semanticContentAttribute = .forceRightToLeft
        femalebutton.tintColor = .white
        femalebutton.addTarget(self, action: #selector(femaleTapAction), for: .touchUpInside)
        return femalebutton
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
        circleView2.layer.borderWidth = 2.0
        circleView2.layer.borderColor = UIColor.magenta.cgColor
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
    
    private var numberPicker: UIPickerView!
    private var numbers: [Int] = Array(0...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        view.addSubview(roundedView)
        view.addSubview(someImageView)
        view.addSubview(malebutton)
        view.addSubview(femalebutton)
        view.addSubview(button)
        view.addSubview(agelabel)
        view.addSubview(label)
        view.addSubview(journeylabel)
        view.addSubview(detailslabel)
        view.addSubview(genderlabel)
        
        setConstraints()
        someImageViewConstraints()
        
        // Create and configure the number picker
                numberPicker = UIPickerView()
                numberPicker.dataSource = self
                numberPicker.delegate = self
        numberPicker.tintColor = .white
        numberPicker.layer.cornerRadius = 25
        numberPicker.backgroundColor = UIColor.systemFill // Change the background color
        numberPicker.setValue(UIColor.white, forKey: "textColor")
                numberPicker.translatesAutoresizingMaskIntoConstraints = false
                view.addSubview(numberPicker)
                
                // Set up constraints for the number picker
                NSLayoutConstraint.activate([
                    numberPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    numberPicker.topAnchor.constraint(equalTo: view.topAnchor, constant: 480),
                    numberPicker.heightAnchor.constraint(equalToConstant: 100),
                ])
    }
    
   
        // MARK: - UIPickerViewDelegate

        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return "\(numbers[row])" // Display number as row title
        }

        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            let selectedNumber = numbers[row]
            print("Selected number: \(selectedNumber)")
        }
   
   
    
    @objc func maleTapAction(_ sender: UIButton) {

        // Deselect male button and restore its color
        malebutton.isSelected = false
        malebutton.backgroundColor = UIColor.magenta
        }

        @objc func femaleTapAction(_ sender: UIButton) {

            // Deselect female button and restore its color
            femalebutton.isSelected = false
            femalebutton.backgroundColor = UIColor.magenta

   }
      
    @objc func gotonexAction(){
        let nextScreen = DetailstwoViewController()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
  
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
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
                     malebutton.topAnchor.constraint(equalTo: view.topAnchor, constant: 380),
                     malebutton.leftAnchor
                         .constraint(equalTo: view.leftAnchor, constant: 75),

                     malebutton.heightAnchor.constraint(equalToConstant: 40),
                     malebutton.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
                     femalebutton.topAnchor.constraint(equalTo: view.topAnchor, constant: 380),
                     femalebutton.leftAnchor
                         .constraint(equalTo: view.leftAnchor, constant: 200),

                     femalebutton.heightAnchor.constraint(equalToConstant: 40),
                     femalebutton.widthAnchor.constraint(equalToConstant: 100)
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
            detailslabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 290)
        ])
        
        NSLayoutConstraint.activate([
            genderlabel.leftAnchor
                .constraint(equalTo: view.leftAnchor, constant: 30),
            genderlabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 335)
        ])
        
        NSLayoutConstraint.activate([
            agelabel.leftAnchor
                .constraint(equalTo: view.leftAnchor, constant: 30),
            agelabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 445)
        ])
       
    }
    func someImageViewConstraints() {
            someImageView.widthAnchor.constraint(equalToConstant: 500).isActive = true
            someImageView.heightAnchor.constraint(equalToConstant: 1100).isActive = true
            someImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true


        }
    
}
