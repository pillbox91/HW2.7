//
//  SecondPersonsListViewController.swift
//  HW2.7
//
//  Created by Андрей Аверьянов on 05.04.2021.
//

import UIKit

class SecondPersonsListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailInformation", for: indexPath)
        
        let person = persons[indexPath.section]
        cell.textLabel?.text = person.phoneNumber
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = person.phoneNumber
            cell.imageView?.image = UIImage(systemName: "phone")
        default:
            cell.textLabel?.text = person.email
            cell.imageView?.image = UIImage(systemName: "tray")
        }
        
        return cell
    }
    
}
