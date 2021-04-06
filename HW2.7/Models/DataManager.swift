//
//  DataManager.swift
//  HW2.7
//
//  Created by Андрей Аверьянов on 05.04.2021.
//

class DataManager {
    
    static let shared = DataManager()

    private init() {}
    
    var names = [
        "Andy", "Aaron", "Tim", "Ted",
        "Steven", "Kyle", "Nicola",
        "Allan", "Bruce", "Carl"
    ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth",
        "Jankin", "Butler", "Black", "Robertson",
        "Murphy", "Williams"
    ]
    
    let emails = [
        "aaaa@mail.ru", "bbbb@mail.ru", "eeee@mail.ru",
        "cccc@mail.ru", "wwww@mail.ru", "mmmm@mail.ru",
        "xxxx@mail.ru", "pppp@mail.ru", "ssss@mail.ru",
        "llll@mail.ru"
    ]
    
    let phones = [
        "745396026", "145036843", "287185656", "293520954",
        "562880225", "738594072", "825654134", "645898473",
        "432349845", "459477625"
    ]
}
