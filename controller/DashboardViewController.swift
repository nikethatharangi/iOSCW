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
           view.backgroundColor = .systemFill
           view.translatesAutoresizingMaskIntoConstraints = false
        
           return view
       }()
    
    let showbutton : UIButton = {
        let showbutton = UIButton()
        showbutton.backgroundColor = .black
        showbutton.layer.cornerRadius = 20
        showbutton.layer.borderColor = UIColor.magenta.cgColor
        showbutton.layer.borderWidth = 1
        showbutton.translatesAutoresizingMaskIntoConstraints = false
        showbutton.setTitle("Show", for: .normal)
        showbutton.semanticContentAttribute = .forceRightToLeft
        showbutton.tintColor = .white
        showbutton.addTarget(self, action: #selector(showTapAction), for: .touchUpInside)
        return showbutton
    }()
    
    let catoneroundedView: UIView = {
        let catoneroundedView = UIView()
        catoneroundedView.layer.cornerRadius = 25
        catoneroundedView.backgroundColor = .systemFill
        catoneroundedView.translatesAutoresizingMaskIntoConstraints = false
        
        return catoneroundedView
       }()
    
   
    
    let someImageView: UIImageView = {
        let theImageView = UIImageView()
        theImageView.layer.cornerRadius = 50
        theImageView.image = UIImage(named: "dashboard.png")
        theImageView.translatesAutoresizingMaskIntoConstraints = false
        return theImageView
    }()
    
    let ImageView: UIImageView = {
        let theImageView = UIImageView()
        theImageView.layer.cornerRadius = 50
        theImageView.image = UIImage(named: "detailtwo.jpeg")
        theImageView.translatesAutoresizingMaskIntoConstraints = false
        return theImageView
    }()
    

    let bmiLabel: UILabel = {
           let label = UILabel()
            label.text = "Get"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.white
            label.font = UIFont(name: "ArialRoundedMTBold", size: 15)
           return label
       }()
    
    let hiLabel: UILabel = {
           let label = UILabel()
            label.text = "Hi!"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.magenta
            label.font = UIFont(name: "ArialRoundedMTBold", size: 21)
           return label
       }()

    let stayLabel: UILabel = {
           let label = UILabel()
            label.text = "Start"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.white
            label.font = UIFont(name: "ArialRoundedMTBold", size: 15)
           return label
       }()
    
    let planLabel: UILabel = {
           let label = UILabel()
            label.text = "Today"
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
    
    let yourLabel : UILabel = {
        let label = UILabel()
        label.text = "Go to your"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 20)
        return label
    }()
    
    let customLabel : UILabel = {
        let label = UILabel()
        label.text = "Custom"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 20)
        return label
    }()
    
    let scheduleLabel : UILabel = {
        let label = UILabel()
        label.text = "Schedule"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 20)
        return label
    }()
   


    override func viewDidLoad() {
        super.viewDidLoad()

        
        view.backgroundColor = .black

        view.addSubview(howLabel)
        view.addSubview(shapeLabel)
        view.addSubview(roundedView)
       
        view.addSubview(catoneroundedView)
        someImageView.addSubview(bmiLabel)
        someImageView.addSubview(stayLabel)
        someImageView.addSubview(hiLabel)
        someImageView.addSubview(planLabel)
        roundedView.addSubview(someImageView)
        catoneroundedView.addSubview(ImageView)
        view.addSubview(showbutton)
        view.addSubview(yourLabel)
        view.addSubview(customLabel)
        view.addSubview(scheduleLabel)
        
        setConstraints()
        someImageViewConstraints()
       
 
    }
    
    @objc func showTapAction(){
        let nextScreen = ExerciseListViewController()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    func setConstraints(){
        
        NSLayoutConstraint.activate([
                    roundedView.widthAnchor
                        .constraint(equalTo: view.widthAnchor,
                                    multiplier: 0.9),
                    roundedView.heightAnchor
                        .constraint(equalTo: view.heightAnchor,
                                    multiplier: 0.19),
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
                                    multiplier: 0.35),
                    catoneroundedView.centerXAnchor
                        .constraint(equalTo: view.centerXAnchor),
                    catoneroundedView.topAnchor
                        .constraint(equalTo: view.topAnchor, constant: 400),
                ])
        
        NSLayoutConstraint.activate([
                     showbutton.topAnchor.constraint(equalTo: view.topAnchor, constant: 600),
                     showbutton.leftAnchor
                         .constraint(equalTo: view.leftAnchor, constant: 230),

                     showbutton.heightAnchor.constraint(equalToConstant: 40),
                     showbutton.widthAnchor.constraint(equalToConstant: 120)
        ])
       
        NSLayoutConstraint.activate([
                    hiLabel.leftAnchor
                        .constraint(equalTo: roundedView.leftAnchor,
                                    constant: 40),
                    hiLabel.topAnchor
                        .constraint(equalTo: roundedView.topAnchor,
                                    constant: 20)
                ])
        
        NSLayoutConstraint.activate([
                    bmiLabel.leftAnchor
                        .constraint(equalTo: roundedView.leftAnchor,
                                    constant: 40),
                    bmiLabel.topAnchor
                        .constraint(equalTo: roundedView.topAnchor,
                                    constant: 70)
                ])
        
        NSLayoutConstraint.activate([
                    stayLabel.leftAnchor
                        .constraint(equalTo: roundedView.leftAnchor,
                                    constant: 40),
                    stayLabel.topAnchor
                        .constraint(equalTo: roundedView.topAnchor,
                                    constant: 90)
                ])
        
        NSLayoutConstraint.activate([
                    planLabel.leftAnchor
                        .constraint(equalTo: roundedView.leftAnchor,
                                    constant: 40),
                    planLabel.topAnchor
                        .constraint(equalTo: roundedView.topAnchor,
                                    constant: 110)
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
                    yourLabel.leftAnchor
                        .constraint(equalTo: view.leftAnchor,
                                    constant: 230),
                    yourLabel.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 470)
                ])
        
        NSLayoutConstraint.activate([
                    customLabel.leftAnchor
                        .constraint(equalTo: view.leftAnchor,
                                    constant: 230),
                    customLabel.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 500)
                ])
        
        NSLayoutConstraint.activate([
                    scheduleLabel.leftAnchor
                        .constraint(equalTo: view.leftAnchor,
                                    constant: 230),
                    scheduleLabel.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 530)
                ])
        
       
    }
    
    func someImageViewConstraints() {
            someImageView.widthAnchor.constraint(equalToConstant: 230).isActive = true
            someImageView.heightAnchor.constraint(equalToConstant: 160).isActive = true
            
        let leadingSpace: CGFloat = 170 // Adjust the value as needed
        someImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leadingSpace).isActive = true
        }
    
    func ImageViewConstraints() {
            ImageView.widthAnchor.constraint(equalToConstant: 230).isActive = true
            ImageView.heightAnchor.constraint(equalToConstant: 260).isActive = true
            
        let leadingSpace: CGFloat = 180 // Adjust the value as needed
        ImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leadingSpace).isActive = true
        }
}
