//
//  WorkoutViewController.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-20.
//

import UIKit

class WorkoutViewController: UIViewController {

    
    let label : UILabel = {
        let label = UILabel()
        label.text = "Workout List"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        return label
    }()
    
    let typelabel : UILabel = {
        let label = UILabel()
        label.text = "Choose any type of exersices"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 18)
        return label
    }()
    
    let leglabel : UILabel = {
        let label = UILabel()
        label.text = "Legs"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 18)
        return label
    }()
    
    let armlabel : UILabel = {
        let label = UILabel()
        label.text = "Arm"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 18)
        return label
    }()
    
    let chestlabel : UILabel = {
        let label = UILabel()
        label.text = "Chest"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 18)
        return label
    }()
    
    let abslabel : UILabel = {
        let label = UILabel()
        label.text = "Abs"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 18)
        return label
    }()
    
    let legnolabel : UILabel = {
        let label = UILabel()
        label.text = "x 10 exercises"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 13)
        return label
    }()
    
    let armnolabel : UILabel = {
        let label = UILabel()
        label.text = "x 10 exercises"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 13)
        return label
    }()
    
    let chestnolabel : UILabel = {
        let label = UILabel()
        label.text = "x 10 exercises"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 13)
        return label
    }()
    
    let absnolabel : UILabel = {
        let label = UILabel()
        label.text = "x 10 exercises"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 13)
        return label
    }()
    
    let showarmbutton : UIButton = {
        let showbutton = UIButton()
        showbutton.backgroundColor = .black
        showbutton.layer.cornerRadius = 15
        showbutton.layer.borderColor = UIColor.magenta.cgColor
        showbutton.layer.borderWidth = 1
        showbutton.translatesAutoresizingMaskIntoConstraints = false
        showbutton.setTitle(">", for: .normal)
        showbutton.semanticContentAttribute = .forceRightToLeft
        showbutton.tintColor = .white
        showbutton.addTarget(self, action: #selector(showTaparmAction), for: .touchUpInside)
        return showbutton
    }()
    
    let showlegbutton : UIButton = {
        let showbutton = UIButton()
        showbutton.backgroundColor = .black
        showbutton.layer.cornerRadius = 15
        showbutton.layer.borderColor = UIColor.magenta.cgColor
        showbutton.layer.borderWidth = 1
        showbutton.translatesAutoresizingMaskIntoConstraints = false
        showbutton.setTitle(">", for: .normal)
        showbutton.semanticContentAttribute = .forceRightToLeft
        showbutton.tintColor = .white
        showbutton.addTarget(self, action: #selector(showTaplegAction), for: .touchUpInside)
        return showbutton
    }()
    
    let showchestbutton : UIButton = {
        let showbutton = UIButton()
        showbutton.backgroundColor = .black
        showbutton.layer.cornerRadius = 15
        showbutton.layer.borderColor = UIColor.magenta.cgColor
        showbutton.layer.borderWidth = 1
        showbutton.translatesAutoresizingMaskIntoConstraints = false
        showbutton.setTitle(">", for: .normal)
        showbutton.semanticContentAttribute = .forceRightToLeft
        showbutton.tintColor = .white
        showbutton.addTarget(self, action: #selector(showTapchestAction), for: .touchUpInside)
        return showbutton
    }()
    
    let showabsbutton : UIButton = {
        let showbutton = UIButton()
        showbutton.backgroundColor = .black
        showbutton.layer.cornerRadius = 15
        showbutton.layer.borderColor = UIColor.magenta.cgColor
        showbutton.layer.borderWidth = 1
        showbutton.translatesAutoresizingMaskIntoConstraints = false
        showbutton.setTitle(">", for: .normal)
        showbutton.semanticContentAttribute = .forceRightToLeft
        showbutton.tintColor = .white
        showbutton.addTarget(self, action: #selector(showTapabsAction), for: .touchUpInside)
        return showbutton
    }()
    
    let catoneroundedView: UIView = {
        let catoneroundedView = UIView()
        catoneroundedView.layer.cornerRadius = 25
        catoneroundedView.backgroundColor = .systemFill
        //catoneroundedView.alpha = CGFloat(0.2)
        //        catoneroundedView.layer.borderColor = UIColor.white.cgColor
        //        catoneroundedView.layer.borderWidth = 1
        catoneroundedView.translatesAutoresizingMaskIntoConstraints = false
        
        return catoneroundedView
    }()
    
    let cattworoundedView: UIView = {
        let cattworoundedView = UIView()
        cattworoundedView.layer.cornerRadius = 25
        cattworoundedView.backgroundColor = .systemFill
        //cattworoundedView.alpha = CGFloat(0.2)
        //        cattworoundedView.layer.borderColor = UIColor.white.cgColor
        //        cattworoundedView.layer.borderWidth = 1
        cattworoundedView.translatesAutoresizingMaskIntoConstraints = false
        
        return cattworoundedView
    }()
    
    let catthreeroundedView: UIView = {
        let catthreeroundedView = UIView()
        catthreeroundedView.layer.cornerRadius = 20
        catthreeroundedView.backgroundColor = .systemFill
        //catthreeroundedView.alpha = CGFloat(0.2)
        //        catthreeroundedView.layer.borderColor = UIColor.white.cgColor
        //        catthreeroundedView.layer.borderWidth = 1
        catthreeroundedView.translatesAutoresizingMaskIntoConstraints = false
        
        return catthreeroundedView
    }()
    
    let catfourroundedView: UIView = {
        let catfourroundedView = UIView()
        catfourroundedView.layer.cornerRadius = 20
        catfourroundedView.backgroundColor = .systemFill
        //catfourroundedView.alpha = CGFloat(0.2)
        //        catfourroundedView.layer.borderColor = UIColor.white.cgColor
        //        catfourroundedView.layer.borderWidth = 1
        catfourroundedView.translatesAutoresizingMaskIntoConstraints = false
        
        return catfourroundedView
    }()
    
    let legImageView: UIImageView = {
        let theImageView = UIImageView()
        theImageView.image = UIImage(named: "legs.png")
        theImageView.isOpaque = false
        ///theImageView.alpha = CGFloat(0.3)
        theImageView.translatesAutoresizingMaskIntoConstraints = false
        return theImageView
    }()
    
    let chestImageView: UIImageView = {
        let theImageView = UIImageView()
        theImageView.image = UIImage(named: "chest.png")
        theImageView.isOpaque = false
        //theImageView.alpha = CGFloat(0.3)
        theImageView.translatesAutoresizingMaskIntoConstraints = false
        return theImageView
    }()
    
    let armImageView: UIImageView = {
        let theImageView = UIImageView()
        theImageView.image = UIImage(named: "arm.png")
        theImageView.isOpaque = false
        //theImageView.alpha = CGFloat(0.3)
        theImageView.translatesAutoresizingMaskIntoConstraints = false
        return theImageView
    }()
    
    let absImageView: UIImageView = {
        let theImageView = UIImageView()
        theImageView.image = UIImage(named: "abs.png")
        theImageView.isOpaque = false
        //theImageView.alpha = CGFloat(0.3)
        theImageView.translatesAutoresizingMaskIntoConstraints = false
        return theImageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(catoneroundedView)
        view.addSubview(cattworoundedView)
        view.addSubview(catthreeroundedView)
        view.addSubview(catfourroundedView)
        view.addSubview(label)
        view.addSubview(typelabel)
        catoneroundedView.addSubview(legImageView)
        cattworoundedView.addSubview(chestImageView)
        catthreeroundedView.addSubview(armImageView)
        catfourroundedView.addSubview(absImageView)
        catoneroundedView.addSubview(leglabel)
        cattworoundedView.addSubview(chestlabel)
        catthreeroundedView.addSubview(armlabel)
        catfourroundedView.addSubview(abslabel)
        catoneroundedView.addSubview(showlegbutton)
        cattworoundedView.addSubview(showchestbutton)
        catthreeroundedView.addSubview(showarmbutton)
        catfourroundedView.addSubview(showabsbutton)
        catoneroundedView.addSubview(legnolabel)
        cattworoundedView.addSubview(chestnolabel)
        catthreeroundedView.addSubview(armnolabel)
        catfourroundedView.addSubview(absnolabel)
        
        setConstraints()
        legImageViewConstraints()
        armImageViewConstraints()
        chestImageViewConstraints()
        absImageViewConstraints()
    }
    
    @objc func showTaparmAction(){
        let nextScreen = ArmworkoutViewController()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    @objc func showTaplegAction(){
        let nextScreen = LegsworkoutViewController()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    @objc func showTapchestAction(){
        let nextScreen = ChestworkoutViewController()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    @objc func showTapabsAction(){
        let nextScreen = AbsworkoutViewController()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    func setConstraints(){
        
        NSLayoutConstraint.activate([
                     showlegbutton.topAnchor.constraint(equalTo: catoneroundedView.topAnchor, constant: 10),
                     showlegbutton.leftAnchor
                         .constraint(equalTo: catoneroundedView.leftAnchor, constant: 110),

                     showlegbutton.heightAnchor.constraint(equalToConstant: 30),
                     showlegbutton.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
                     showchestbutton.topAnchor.constraint(equalTo: cattworoundedView.topAnchor, constant: 10),
                     showchestbutton.leftAnchor
                         .constraint(equalTo: cattworoundedView.leftAnchor, constant: 110),

                     showchestbutton.heightAnchor.constraint(equalToConstant: 30),
                     showchestbutton.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
                     showarmbutton.topAnchor.constraint(equalTo: catthreeroundedView.topAnchor, constant: 10),
                     showarmbutton.leftAnchor
                         .constraint(equalTo: catthreeroundedView.leftAnchor, constant: 110),

                     showarmbutton.heightAnchor.constraint(equalToConstant: 30),
                     showarmbutton.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
                     showabsbutton.topAnchor.constraint(equalTo: catfourroundedView.topAnchor, constant: 10),
                     showabsbutton.leftAnchor
                         .constraint(equalTo: catfourroundedView.leftAnchor, constant: 110),

                     showabsbutton.heightAnchor.constraint(equalToConstant: 30),
                     showabsbutton.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            label.leftAnchor
                .constraint(equalTo: view.leftAnchor, constant: 30),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100)
        ])
        
        NSLayoutConstraint.activate([
            typelabel.leftAnchor
                .constraint(equalTo: view.leftAnchor, constant: 30),
            typelabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150)
        ])
        
        NSLayoutConstraint.activate([
            armlabel.leftAnchor
                .constraint(equalTo: catthreeroundedView.leftAnchor, constant: 30),
            armlabel.topAnchor.constraint(equalTo: catthreeroundedView.topAnchor, constant: 50)
        ])
        
        NSLayoutConstraint.activate([
            leglabel.leftAnchor
                .constraint(equalTo: catoneroundedView.leftAnchor, constant: 30),
            leglabel.topAnchor.constraint(equalTo: catoneroundedView.topAnchor, constant: 50)
        ])
        
        NSLayoutConstraint.activate([
            chestlabel.leftAnchor
                .constraint(equalTo: cattworoundedView.leftAnchor, constant: 30),
            chestlabel.topAnchor.constraint(equalTo: cattworoundedView.topAnchor, constant: 50)
        ])
        
        NSLayoutConstraint.activate([
            abslabel.leftAnchor
                .constraint(equalTo: catfourroundedView.leftAnchor, constant: 30),
            abslabel.topAnchor.constraint(equalTo: catfourroundedView.topAnchor, constant: 50)
        ])
        
        NSLayoutConstraint.activate([
            armnolabel.leftAnchor
                .constraint(equalTo: catthreeroundedView.leftAnchor, constant: 30),
            armnolabel.topAnchor.constraint(equalTo: catthreeroundedView.topAnchor, constant: 80)
        ])
        
        NSLayoutConstraint.activate([
            legnolabel.leftAnchor
                .constraint(equalTo: catoneroundedView.leftAnchor, constant: 30),
            legnolabel.topAnchor.constraint(equalTo: catoneroundedView.topAnchor, constant: 80)
        ])
        
        NSLayoutConstraint.activate([
            chestnolabel.leftAnchor
                .constraint(equalTo: cattworoundedView.leftAnchor, constant: 30),
            chestnolabel.topAnchor.constraint(equalTo: cattworoundedView.topAnchor, constant: 80)
        ])
        
        NSLayoutConstraint.activate([
            absnolabel.leftAnchor
                .constraint(equalTo: catfourroundedView.leftAnchor, constant: 30),
            absnolabel.topAnchor.constraint(equalTo: catfourroundedView.topAnchor, constant: 80)
        ])
        
        NSLayoutConstraint.activate([
            catoneroundedView.widthAnchor
                .constraint(equalTo: view.widthAnchor,
                            multiplier: 0.4),
            catoneroundedView.heightAnchor
                .constraint(equalTo: view.heightAnchor,
                            multiplier: 0.32),
            catoneroundedView.leftAnchor
                .constraint(equalTo: view.leftAnchor,
                            constant: 30),
            catoneroundedView.topAnchor
                .constraint(equalTo: view.topAnchor, constant: 190),
        ])
        
        NSLayoutConstraint.activate([
            cattworoundedView.widthAnchor
                .constraint(equalTo: view.widthAnchor,
                            multiplier: 0.4),
            cattworoundedView.heightAnchor
                .constraint(equalTo: view.heightAnchor,
                            multiplier: 0.32),
            cattworoundedView.leftAnchor
                .constraint(equalTo: view.leftAnchor,
                            constant: 200),
            cattworoundedView.topAnchor
                .constraint(equalTo: view.topAnchor, constant: 190),
        ])
        
        NSLayoutConstraint.activate([
            catthreeroundedView.widthAnchor
                .constraint(equalTo: view.widthAnchor,
                            multiplier: 0.4),
            catthreeroundedView.heightAnchor
                .constraint(equalTo: view.heightAnchor,
                            multiplier: 0.32),
            catthreeroundedView.leftAnchor
                .constraint(equalTo: view.leftAnchor,
                            constant: 30),
            catthreeroundedView.topAnchor
                .constraint(equalTo: view.topAnchor, constant: 480),
        ])
        
        NSLayoutConstraint.activate([
            catfourroundedView.widthAnchor
                .constraint(equalTo: view.widthAnchor,
                            multiplier: 0.4),
            catfourroundedView.heightAnchor
                .constraint(equalTo: view.heightAnchor,
                            multiplier: 0.32),
         
            catfourroundedView.leftAnchor
                .constraint(equalTo: view.leftAnchor,
                            constant: 200),
            catfourroundedView.topAnchor
                .constraint(equalTo: view.topAnchor, constant: 480),
        ])
        
        
    }
    func legImageViewConstraints() {
        legImageView.widthAnchor.constraint(equalToConstant: 160).isActive = true
        legImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        legImageView.centerXAnchor.constraint(equalTo: catoneroundedView.centerXAnchor).isActive = true
        let top: CGFloat = 150 // Adjust the value as needed
        legImageView.topAnchor.constraint(equalTo: catoneroundedView.topAnchor, constant: top).isActive = true
        //let leadingSpace: CGFloat = 10 // Adjust the value as needed
        //legImageView.leadingAnchor.constraint(equalTo: catoneroundedView.leadingAnchor, constant: leadingSpace).isActive = true

        }
    func armImageViewConstraints() {
        
        armImageView.widthAnchor.constraint(equalToConstant: 160).isActive = true
        armImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        armImageView.centerXAnchor.constraint(equalTo: catthreeroundedView.centerXAnchor).isActive = true

        let top: CGFloat = 150 // Adjust the value as needed
        armImageView.topAnchor.constraint(equalTo: catthreeroundedView.topAnchor, constant: top).isActive = true
        //let leadingSpace: CGFloat = 10 // Adjust the value as needed
        //armImageView.leadingAnchor.constraint(equalTo: catthreeroundedView.leadingAnchor, constant: leadingSpace).isActive = true
        }
    func chestImageViewConstraints() {
            chestImageView.widthAnchor.constraint(equalToConstant: 160).isActive = true
        chestImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        chestImageView.centerXAnchor.constraint(equalTo: cattworoundedView.centerXAnchor).isActive = true
        let top: CGFloat = 150 // Adjust the value as needed
        chestImageView.topAnchor.constraint(equalTo: cattworoundedView.topAnchor, constant: top).isActive = true
        //let leadingSpace: CGFloat = 10 // Adjust the value as needed
        //chestImageView.leadingAnchor.constraint(equalTo: cattworoundedView.leadingAnchor, constant: leadingSpace).isActive = true
        }
    func absImageViewConstraints() {
            absImageView.widthAnchor.constraint(equalToConstant: 160).isActive = true
        absImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        absImageView.centerXAnchor.constraint(equalTo: catfourroundedView.centerXAnchor).isActive = true
        let top: CGFloat = 150 // Adjust the value as needed
        absImageView.topAnchor.constraint(equalTo: catfourroundedView.topAnchor, constant: top).isActive = true
        //let leadingSpace: CGFloat = 10 // Adjust the value as needed
        //absImageView.leadingAnchor.constraint(equalTo: catfourroundedView.leadingAnchor, constant: leadingSpace).isActive = true

        }
}
