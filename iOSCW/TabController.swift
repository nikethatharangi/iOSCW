//
//  TabController.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-20.
//

import UIKit

class TabController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabs()
        
        self.tabBar.barTintColor = .black
        self.tabBar.tintColor = .magenta
        self.tabBar.unselectedItemTintColor = .white
        self.delegate = self
        
    }
    
    private func setupTabs(){
        let home = self.createNav(with: "Home", and: UIImage(systemName: "house"), vc: DashboardViewController())
        let Workout = self.createNav(with: "Workout", and: UIImage(systemName: "figure.elliptical"), vc: WorkoutViewController())
        let Reminder = self.createNav(with: "Reminder", and: UIImage(systemName: "clock"), vc: ReminderViewController())
        let Account = self.createNav(with: "Account", and: UIImage(systemName: "person.circle"), vc: AccountViewController())
        
        self.setViewControllers([home,Workout,Reminder,Account], animated: true)
    }
   
    private func createNav(with title: String, and image: UIImage?, vc:UIViewController) -> UIViewController{
        //let nav = UINavigationController(rootViewController: vc)
        
        vc.tabBarItem.title = title
        vc.tabBarItem.image = image
        
        //nav.viewControllers.first?.navigationItem.title = title + "Control"
       // nav.viewControllers.first?.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Button", style: .plain, target: nil, action: nil)
        
        return vc
    }
    

}
