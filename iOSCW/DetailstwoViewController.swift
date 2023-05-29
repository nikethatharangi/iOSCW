//
//  DetailstwoViewController.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-20.
//

import UIKit
import QuartzCore

class DetailstwoViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

 
    private var selectedGender: String
        private var selectedAge: Int
   
        private var selectedHeight: Int?
        private var selectedWeight: Int?
        private let heightPicker = UIPickerView()
        private let weightPicker = UIPickerView()
//    private var heightPicker: UIPickerView!
//    private var weightPicker: UIPickerView!
    
    init(gender: String, age: Int) {
           self.selectedGender = gender
           self.selectedAge = age
           super.init(nibName: nil, bundle: nil)
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            if pickerView == heightPicker {
                return 200
            } else if pickerView == weightPicker {
                return 150
            }
            return 0
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return "\(row)"
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            if pickerView == heightPicker {
                selectedHeight = row
            } else if pickerView == weightPicker {
                selectedWeight = row
            }
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
        genderlabel.text = "Height(cm) :"
        genderlabel.translatesAutoresizingMaskIntoConstraints = false
        genderlabel.textColor = UIColor.white
        genderlabel.font = UIFont(name: "ArialRoundedMTBold", size: 15)
        return genderlabel
    }()
    
    let agelabel : UILabel = {
        let agelabel = UILabel()
        agelabel.text = "Weight(kg) :"
        agelabel.translatesAutoresizingMaskIntoConstraints = false
        agelabel.textColor = UIColor.white
        agelabel.font = UIFont(name: "ArialRoundedMTBold", size: 15)
        return agelabel
    }()
    
//    let roundedView: UIView = {
//        let view = UIView()
//        view.layer.cornerRadius = 50
//        view.backgroundColor = .systemFill
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.layer.masksToBounds = false
//        view.layer.shadowOffset = CGSize(width: -1, height: 1)
//        //view.alpha = CGFloat(0.3)
//        view.layer.shadowRadius = 5
//        view.layer.shadowOpacity = 0.6
//        return view
//    }()
    
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
    

    private var numbers: [Int] = Array(0...500)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        //view.addSubview(roundedView)
        view.addSubview(someImageView)

        view.addSubview(button)
        view.addSubview(agelabel)
        view.addSubview(label)
        view.addSubview(journeylabel)
        view.addSubview(detailslabel)
        view.addSubview(genderlabel)

        setConstraints()
        someImageViewConstraints()
        
        
        // Create and configure the number picker
               // heightPicker = UIPickerView()
                heightPicker.dataSource = self
                heightPicker.delegate = self
        heightPicker.tintColor = .white
        heightPicker.layer.cornerRadius = 25
        heightPicker.backgroundColor = UIColor.systemFill // Change the background color
        heightPicker.setValue(UIColor.white, forKey: "textColor")
                heightPicker.translatesAutoresizingMaskIntoConstraints = false
                view.addSubview(heightPicker)
                
                // Set up constraints for the number picker
                NSLayoutConstraint.activate([
                    heightPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    heightPicker.topAnchor.constraint(equalTo: view.topAnchor, constant: 330),
                    heightPicker.heightAnchor.constraint(equalToConstant: 100),
                ])
        
        
        // Create and configure the number picker
              //  weightPicker = UIPickerView()
                weightPicker.dataSource = self
                weightPicker.delegate = self
        weightPicker.tintColor = .white
        weightPicker.layer.cornerRadius = 25
        weightPicker.backgroundColor = UIColor.systemFill // Change the background color
        weightPicker.setValue(UIColor.white, forKey: "textColor")
                weightPicker.translatesAutoresizingMaskIntoConstraints = false
                view.addSubview(weightPicker)
                
                // Set up constraints for the number picker
                NSLayoutConstraint.activate([
                    weightPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    weightPicker.topAnchor.constraint(equalTo: view.topAnchor, constant: 480),
                    weightPicker.heightAnchor.constraint(equalToConstant: 100),
                ])
        
    }
    
    // MARK: - UIPickerViewDelegate

//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return "\(numbers[row])" // Display number as row title
//    }
//
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        let selectedNumber = numbers[row]
//        print("Selected number: \(selectedNumber)")
//    }
//    
    @objc func gotonexAction(){
        guard let selectedHeight = selectedHeight, let selectedWeight = selectedWeight else {
                    // Handle the case when height or weight is not selected
                    return
                }
                
        let detailsThreeVC = DetailsthreeViewController(gender: selectedGender, age: selectedAge, height: selectedHeight, weight: selectedWeight)
                navigationController?.pushViewController(detailsThreeVC, animated: true)
    }
   
    
    func setConstraints(){
        
//        NSLayoutConstraint.activate([
//            roundedView.widthAnchor
//                            .constraint(equalTo: view.widthAnchor,
//                                        multiplier: 0.9),
//                        roundedView.heightAnchor
//                            .constraint(equalTo: view.heightAnchor,
//                                        multiplier: 0.5),
//                        roundedView.centerXAnchor
//                            .constraint(equalTo: view.centerXAnchor),
//                        roundedView.centerYAnchor
//                            .constraint(equalTo: view.centerYAnchor),
//                ])
                
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
            agelabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 450)
        ])
       
    }
    
    func someImageViewConstraints() {
        someImageView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        someImageView.heightAnchor.constraint(equalToConstant: 550).isActive = true
    let top: CGFloat = 500 // Adjust the value as needed
    someImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: top).isActive = true

    }

}
