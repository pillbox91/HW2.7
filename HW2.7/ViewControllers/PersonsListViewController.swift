//
//  PersonsListViewController.swift
//  HW2.7
//
//  Created by Андрей Аверьянов on 05.04.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsList", for: indexPath)
        
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.fullName
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let detailsVC = segue.destination as? ViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        
        detailsVC.person = persons[indexPath.row]
     
    }
    
}
