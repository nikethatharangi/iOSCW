//
//  ChestworkoutViewController.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-29.
//

import UIKit
import Firebase
import FirebaseFirestore
import WebKit

class ChestworkoutViewController: UIViewController {

    let db = Firestore.firestore()
    var exercises: [Exercise] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchExercises()
        addCardViews()
        addBackgroundImage()
    }
    
func fetchExercises() {
    db.collection("exercise").getDocuments { [weak self] (querySnapshot, error) in
        guard let self = self else { return }
        
        if let error = error {
            print("Error getting documents: \(error)")
        } else {
            var newExercises: [Exercise] = []
            
            for document in querySnapshot!.documents {
                let exercise = Exercise(snapshot: document)
                newExercises.append(exercise)
            }
            
            self.exercises = newExercises
            print("Fetched \(self.exercises.count) exercises")
            
            // Call addCardViews() here, after the data has been fetched
            self.addCardViews()
        }
    }
}

    
    func addBackgroundImage() {
        let backgroundImage = UIImageView(frame: view.bounds)
        backgroundImage.image = UIImage(named: "exerciseback")
        backgroundImage.contentMode = .scaleAspectFill
        view.addSubview(backgroundImage)
        view.sendSubviewToBack(backgroundImage)
    }

@objc func cardTapped(_ sender: UITapGestureRecognizer) {
        guard let cardView = sender.view else { return }
        guard let index = cardView.tag as Int? else { return }
        let selectedexercise = exercises[index]
        
        let cardDetailsVC = ExerciseDetailsViewController(exercise: selectedexercise)
        navigationController?.pushViewController(cardDetailsVC, animated: true)
    }
    
    func addCardViews() {
        let scrollView = UIScrollView(frame: view.bounds)
        scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        scrollView.showsVerticalScrollIndicator = true
        scrollView.alwaysBounceVertical = true
        
        var yPosition: CGFloat = 100.0
        let contentWidth = view.frame.width - 40.0
        
        // Create a title label
        let titleLabel = UILabel(frame: CGRect(x: 20.0, y: yPosition, width: contentWidth, height: 30.0))
        titleLabel.text = "Custom Exercises"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 34.0, weight: .bold)
        scrollView.addSubview(titleLabel)
        yPosition += 50.0
        
        // Create a "Go" button
        let goButton = UIButton(type: .system)
        goButton.setTitle("Go back", for: .normal)
        goButton.setTitleColor(.white, for: .normal)
        goButton.backgroundColor = .black
        goButton.layer.cornerRadius = 20
        goButton.layer.borderColor = UIColor.magenta.cgColor
        goButton.layer.borderWidth = 1
        goButton.frame = CGRect(x: 20.0, y: yPosition, width: contentWidth, height: 50.0)
        goButton.addTarget(self, action: #selector(goButtonTapped), for: .touchUpInside)
        scrollView.addSubview(goButton)
        yPosition += 70.0
        
        for (index, exercise) in exercises.enumerated() {
            let cardView = UIView(frame: CGRect(x: 20.0, y: yPosition, width: contentWidth, height: 200.0))
            cardView.backgroundColor = .systemFill
            cardView.layer.cornerRadius = 10.0
            cardView.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
            cardView.layer.shadowRadius = 2.0
            cardView.layer.shadowOpacity = 0.2
            
//                let titleIcon = UIImageView(image: UIImage(systemName: "circle.fill"))
//                titleIcon.tintColor = .magenta
//                titleIcon.frame = CGRect(x: 20.0, y: 25.0, width: 20.0, height: 20.0)
//                cardView.addSubview(titleIcon)
            
            let nameLabel = UILabel(frame: CGRect(x: 50.0, y: 20.0, width: cardView.frame.width - 70.0, height: 30.0))
            nameLabel.text = exercise.name
            nameLabel.font = UIFont.systemFont(ofSize: 22.0, weight: .semibold)
            nameLabel.textColor = .white
            cardView.addSubview(nameLabel)
            
            let stackView = UIStackView(frame: CGRect(x: 50.0, y: 55.0, width: cardView.frame.width - 70.0, height: 120.0))
            stackView.axis = .vertical
            stackView.spacing = 5.0
            stackView.distribution = .fillEqually
            
            let exerciseDescriptionLabel = UILabel()
            exerciseDescriptionLabel.text = "Target: \(exercise.target)"
            exerciseDescriptionLabel.font = UIFont.systemFont(ofSize: 16.0, weight: .medium)
            exerciseDescriptionLabel.textColor = .white
            stackView.addArrangedSubview(exerciseDescriptionLabel)
            
            let equipmentLabel = UILabel()
            equipmentLabel.text = "Equipment: \(exercise.equipment)"
            equipmentLabel.font = UIFont.systemFont(ofSize: 16.0, weight: .medium)
            equipmentLabel.textColor = .white
            stackView.addArrangedSubview(equipmentLabel)
            
            let bodyPartLabel = UILabel()
            bodyPartLabel.text = "Body Part: \(exercise.bodyPart)"
            bodyPartLabel.font = UIFont.systemFont(ofSize: 22.0, weight: .semibold)
            bodyPartLabel.textAlignment = .left
            bodyPartLabel.textColor = .white
            stackView.addArrangedSubview(bodyPartLabel)
            
            cardView.addSubview(stackView)
            stackView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                stackView.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
                stackView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -20.0),
                stackView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10.0),
                stackView.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -10.0)
            ])
            
            let difficultyIcon = UIImageView(image: UIImage(systemName: "bolt.fill"))
            difficultyIcon.tintColor = .systemYellow
            difficultyIcon.frame = CGRect(x: cardView.frame.width - 45.0, y: 25.0, width: 20.0, height: 20.0)
            cardView.addSubview(difficultyIcon)
            
            // Add a tap gesture recognizer to the card view
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(cardTapped(_:)))
            cardView.addGestureRecognizer(tapGesture)
            cardView.isUserInteractionEnabled = true
            cardView.tag = index
            
            scrollView.addSubview(cardView)
            
            yPosition += 220.0
        }
        
        // Set the content size of the scroll view
        let contentHeight = yPosition + 20.0
        scrollView.contentSize = CGSize(width: contentWidth, height: contentHeight)
        
        // Add the scroll view to the main view
        view.addSubview(scrollView)
    }
    
    @objc func goButtonTapped() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        view.window?.layer.add(transition, forKey: kCATransition)
        
        navigationController?.popViewController(animated: false)
    }
    

}
