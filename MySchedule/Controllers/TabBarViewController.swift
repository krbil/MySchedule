//
//  ViewController.swift
//  MySchedule
//
//  Created by Илья Крылов on 22.06.2022.
//

import UIKit

class TabBarViewController: UITabBarController { 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
       
    }
    func setupTabBar() {
        let scheduleViewController = createNavigationController(viewController: ScheduleViewController(), itemName: "Scedule", itemeImage: "calendar.badge.clock")
        let tasksViewController = createNavigationController(viewController: TasksViewController(), itemName: "Tasks", itemeImage: "text.badge.checkmark")
        let contactsViewController = createNavigationController(viewController: ContactsViewController(), itemName: "Contacts", itemeImage: "rectangle.stack.person.crop")
        viewControllers = [scheduleViewController, tasksViewController, contactsViewController]
        
    }

    func createNavigationController (viewController: UIViewController, itemName: String, itemeImage: String) -> UINavigationController {
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemeImage)?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)), tag: 0)
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem = item
        return navigationController
    }
}


