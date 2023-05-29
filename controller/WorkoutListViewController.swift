//
//  WorkoutListViewController.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-16.
//

import UIKit
import Firebase
import FirebaseDatabase

class WorkoutListViewController: UIViewController {

    struct Exercise: Codable {
        let bodyPart: String
        let equipment: String
        let gifUrl: String
        let id: String
        let name: String
        let target: String
    }
    
    private var stackView: UIStackView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            stackView = UIStackView()
            stackView.axis = .vertical
            stackView.spacing = 10
            stackView.translatesAutoresizingMaskIntoConstraints = false
            
            view.addSubview(stackView)
            
            // Add constraints to position the stack view
            NSLayoutConstraint.activate([
                stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
                stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100)
            ])
            
            fetchData()
        }
        
        func fetchData() {
            let databaseRef = Database.database().reference().child("iOScwdb")
            
            databaseRef.observeSingleEvent(of: .value) { (snapshot) in
                guard let exercisesData = snapshot.value as? [[String: Any]] else {
                    return
                }
                
                do {
                    let jsonData = try JSONSerialization.data(withJSONObject: exercisesData)
                    let decodedData = try JSONDecoder().decode([Exercise].self, from: jsonData)
                    
                    DispatchQueue.main.async {
                        self.updateStackView(with: decodedData)
                    }
                } catch {
                    print("Error decoding data: \(error)")
                }
            }
        }
        
        func updateStackView(with data: [Exercise]) {
            for item in data {
                // Create a UILabel to display the name, target, and body part
                let label = UILabel()
                label.text = "Name: \(item.name)\nTarget: \(item.target)\nBody Part: \(item.bodyPart)"
                label.numberOfLines = 0
                
                // Add the label to the stack view
                stackView.addArrangedSubview(label)
            }
        }
    }
   
