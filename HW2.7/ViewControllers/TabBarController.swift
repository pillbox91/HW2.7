//
//  TabBarController.swift
//  HW2.7
//
//  Created by Андрей Аверьянов on 06.04.2021.
//

import UIKit

class TabBarController: UITabBarController {

    var persons = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers(with: persons)
    }
    
    private func setupViewControllers (with persons: [Person]) {
        let contactListVC = viewControllers?.first as! PersonsListViewController
        let sectionVC = viewControllers?.last as! SecondPersonsListViewController
        
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
    

}
