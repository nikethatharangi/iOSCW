//
//  ReminderViewController.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-20.
//

import UIKit
import UserNotifications

class ReminderViewController: UIViewController {

    
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
   
    let howLabel : UILabel = {
        let label = UILabel()
        label.text = "Set Reminder"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 25)
        return label
    }()
    
    let categoryLabel : UILabel = {
        let label = UILabel()
        label.text = "Reminders"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 23)
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
        button.setTitle("+", for: .normal)
        button.addTarget(self, action: #selector(showReminderMessage), for: .touchUpInside)
        //button.tintColor = .white
        //button.addTarget(self, action: #selector(gotonexAction), for: .touchUpInside)
        return button
    }()
    
    @IBOutlet var table : UITableView!
    

    @IBOutlet var bodyField : UITextField!
    @IBOutlet var datePicker : UIDatePicker!

    var selectedDateTimeLabel: UILabel!
    var reminderMessageLabel: UILabel!
    var reminderButton: UIButton!
    
    public var completion: ((String,Date) -> Void)?
    
    var models = [MyReminder]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.addSubview(catoneroundedView)
      
        view.backgroundColor = .black
        //        roundedView.addSubview(titleLabel)
        //        roundedView.layer.addSublayer(gradientLayer)
        //        gradientLayer.frame = roundedView.bounds
        view.addSubview(categoryLabel)
        view.addSubview(howLabel)
        
        view.addSubview(roundedView)
        view.addSubview(catoneroundedView)
        view.addSubview(button)
        view.addSubview(categoryLabel)
        //button.addSubview(nameLabel)
  

        setConstraints()
        
        
        datePicker = UIDatePicker()
                datePicker.datePickerMode = .dateAndTime
                datePicker.locale = Locale(identifier: "en_US") // Set the locale to English
                
                // Change the date picker style to wheels
                if #available(iOS 13.4, *) {
                    datePicker.preferredDatePickerStyle = .wheels
                }
       
        datePicker.tintColor = UIColor.white // Change the color of the date picker elements
                datePicker.backgroundColor = UIColor.darkGray // Change the background color
                datePicker.setValue(UIColor.white, forKey: "textColor")
        datePicker.layer.cornerRadius = 25
                datePicker.layer.masksToBounds = true
                // Position the UIDatePicker
                datePicker.translatesAutoresizingMaskIntoConstraints = false
                view.addSubview(datePicker)
                NSLayoutConstraint.activate([
                    datePicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    datePicker.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 170),
                    datePicker.heightAnchor.constraint(equalToConstant: 200),
                    //datePicker.widthAnchor.constraint(equalToConstant: 50)
                ])
        
        
        // Create label to display selected date and time
                selectedDateTimeLabel = UILabel()
                selectedDateTimeLabel.textAlignment = .center
                
                selectedDateTimeLabel.tintColor = .white
                selectedDateTimeLabel.translatesAutoresizingMaskIntoConstraints = false
                view.addSubview(selectedDateTimeLabel)
                NSLayoutConstraint.activate([
                    selectedDateTimeLabel.topAnchor.constraint(equalTo: datePicker.bottomAnchor, constant: 16),
                    selectedDateTimeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
                ])
                
                // Create button to show reminder message
//                reminderButton = UIButton(type: .system)
//                reminderButton.setTitle("Set Reminder", for: .normal)
//                reminderButton.addTarget(self, action: #selector(showReminderMessage), for: .touchUpInside)
//                reminderButton.translatesAutoresizingMaskIntoConstraints = false
//                view.addSubview(reminderButton)
//                NSLayoutConstraint.activate([
//                    reminderButton.topAnchor.constraint(equalTo: selectedDateTimeLabel.bottomAnchor, constant: 16),
//                    reminderButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//                ])
        
        // Create label to display reminder message
                reminderMessageLabel = UILabel()
                reminderMessageLabel.textAlignment = .center
                reminderMessageLabel.numberOfLines = 0
                reminderMessageLabel.textColor = UIColor.white
                reminderMessageLabel.translatesAutoresizingMaskIntoConstraints = false
                view.addSubview(reminderMessageLabel)
                NSLayoutConstraint.activate([
                    reminderMessageLabel.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 130),
                    reminderMessageLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                    reminderMessageLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
                ])
    }
    
    @objc func showReminderMessage() {
            let selectedDate = datePicker.date
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMM d, yyyy, h:mm a"
            dateFormatter.locale = Locale(identifier: "en_US")
            let selectedDateTimeString = dateFormatter.string(from: selectedDate)
            
            let reminderMessage = "Reminder set for: \(selectedDateTimeString)"
            reminderMessageLabel.text = reminderMessage
        }
    
    @IBAction func didTapSaveButton(){
        if let bodyText = bodyField.text, !bodyText.isEmpty{
            let targetDate = datePicker.date
        }
    }
    
    func setConstraints(){
        
        NSLayoutConstraint.activate([
                    button.leftAnchor
                        .constraint(equalTo: view.leftAnchor,
                                    constant: 300),
                    button.topAnchor
                        .constraint(equalTo: view.topAnchor,
                                    constant: 400),
                    button.heightAnchor.constraint(equalToConstant: 50),
                    button.widthAnchor.constraint(equalToConstant: 50)
                ])
        
//        NSLayoutConstraint.activate([
//            table.widthAnchor
//                .constraint(equalTo: view.widthAnchor,
//                            multiplier: 0.9),
//            table.heightAnchor
//                .constraint(equalTo: view.heightAnchor,
//                            multiplier: 0.5),
//            table.centerXAnchor
//                .constraint(equalTo: view.centerXAnchor),
//            table.topAnchor
//                .constraint(equalTo: view.topAnchor, constant: 150),
//        ])
        
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
                    catoneroundedView.widthAnchor
                        .constraint(equalTo: view.widthAnchor,
                                    multiplier: 0.9),
                    catoneroundedView.heightAnchor
                        .constraint(equalTo: view.heightAnchor,
                                    multiplier: 0.5),
                    catoneroundedView.centerXAnchor
                        .constraint(equalTo: view.centerXAnchor),
                    catoneroundedView.topAnchor
                        .constraint(equalTo: view.topAnchor, constant: 520),
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
    
    @IBAction func didTapTest(){
        UNUserNotificationCenter.current().requestAuthorization( options: [.alert,.badge,.sound], completionHandler: {success, error in
            if success {
                
            }else if let error = error {
                print("error")
            }
        })
    }
    
}

extension ReminderViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

extension ReminderViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row].title
        
        return cell
    }
}

struct MyReminder {
    let title: String
    let date: String
    let identifier: String
}
