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
        catoneroundedView.backgroundColor = .systemFill
       // catoneroundedView.alpha = CGFloat(0.2)
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
        label.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        return label
    }()
    
    let remindLabel : UILabel = {
        let label = UILabel()
        label.text = "Reminder yourself to do workouts"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 18)
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
        button.addTarget(self, action: #selector(scheduleAction(_:)), for: .touchUpInside)
        //button.tintColor = .white
        //button.addTarget(self, action: #selector(gotonexAction), for: .touchUpInside)
        return button
    }()
    
    let selectedDateTimeLabel : UILabel = {
        let selectedDateTimeLabel = UILabel()
        selectedDateTimeLabel.textAlignment = .center
        
        selectedDateTimeLabel.tintColor = .white
        selectedDateTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        return selectedDateTimeLabel
    }()

    let datePicker : UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .dateAndTime
        datePicker.locale = Locale(identifier: "en_US") // Set the locale to English
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.tintColor = UIColor.white // Change the color of the date picker elements
        datePicker.backgroundColor = UIColor.systemFill // Change the background color
        datePicker.setValue(UIColor.white, forKey: "textColor")
        datePicker.layer.cornerRadius = 25
        datePicker.layer.masksToBounds = true// Position the UIDatePicker
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        return datePicker
    }()

    //@IBOutlet var bodyField : UITextField!
    //@IBOutlet var datePicker : UIDatePicker!


    //var selectedDateTimeLabel: UILabel!
    var reminderMessageLabel: UILabel!
    //var reminderButton: UIButton!
    
    let notificationCenter = UNUserNotificationCenter.current()
    

   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.addSubview(catoneroundedView)
        
        view.backgroundColor = .black
        //        roundedView.addSubview(titleLabel)
        //        roundedView.layer.addSublayer(gradientLayer)
        //        gradientLayer.frame = roundedView.bounds
        view.addSubview(categoryLabel)
        view.addSubview(howLabel)
        view.addSubview(remindLabel)
        view.addSubview(roundedView)
        view.addSubview(catoneroundedView)
        view.addSubview(button)
        view.addSubview(categoryLabel)
        view.addSubview(datePicker)
        view.addSubview(selectedDateTimeLabel)
        //button.addSubview(nameLabel)
        
        
        notificationCenter.requestAuthorization(options: [.alert, .sound]) { (permissionGranted, error) in
            if !permissionGranted {
                print("Permission Denied")
            }
        }
        
        setConstraints()
    
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
    
    @objc func scheduleAction(_ sender: Any) {
        notificationCenter.getNotificationSettings { settings in
            DispatchQueue.main.async {
                let title = "Sweat it Out: Your Daily Workout Reminder!"
                let message = "Get ready to feel the burn! It's workout time!"
                let date = self.datePicker.date

                if settings.authorizationStatus == .authorized {
                    let content = UNMutableNotificationContent()
                    content.title = title
                    content.body = message

                    let dateComp = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute], from: date)

                    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComp, repeats: false)
                    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                    self.notificationCenter.add(request) { error in
                        if let error = error {
                            print("Error: \(error)")
                            return
                        }
                    }

                    let ac = UIAlertController(title: "Notification Scheduled", message: "At " + self.formattedDate(date: date), preferredStyle: .alert)
                    ac.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in }))
                    self.present(ac, animated: true)
                } else {
                    let ac = UIAlertController(title: "Enable Notifications?", message: "To use this feature you must enable notifications in settings", preferredStyle: .alert)
                    let goToSettings = UIAlertAction(title: "Settings", style: .default) { (_) in
                        guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {
                            return
                        }
                        if UIApplication.shared.canOpenURL(settingsURL) {
                            UIApplication.shared.open(settingsURL) { (_) in }
                        }
                    }
                    ac.addAction(goToSettings)
                    ac.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (_) in }))
                    self.present(ac, animated: true)
                }
            }
        }
        
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.locale = Locale(identifier: "en_US")
        let selectedDate = formatter.string(from: datePicker.date)
        reminderMessageLabel.text = "Reminder set to: \(selectedDate)"
    }

    func formattedDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM y HH:mm"
        return formatter.string(from: date)
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
    
    
    func setConstraints(){
        
        
        NSLayoutConstraint.activate([
            datePicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            datePicker.topAnchor
                .constraint(equalTo: view.topAnchor,
                            constant: 190),
            datePicker.heightAnchor.constraint(equalToConstant: 200),
            datePicker.widthAnchor.constraint(equalToConstant: 350)
        ])
        
        NSLayoutConstraint.activate([
            remindLabel.leftAnchor
                .constraint(equalTo: view.leftAnchor, constant: 30),
            remindLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150)
        ])
        
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
                                    multiplier: 0.275),
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
    
}
