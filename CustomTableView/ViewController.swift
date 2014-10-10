//
//  ViewController.swift
//
//  Created by Adnan Choudary on 10/6/14.
//  Copyright (c) 2014 Adnan Choudary. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var Persons: [Person] = [Person]()
    
    
    
    @IBOutlet weak var mainTableView: UITableView!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Instantiate Person class
        self.setUpPersons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        // Mock data setup
    
    func setUpPersons()
    {
        var person1 = Person(name: "Anna", number: 12, imageName: "Anna.png")
        var person2 = Person(name: "Makayla", number: 10, imageName: "Kayla.png")
        var person3 = Person(name: "Heather", number: 45, imageName: "Heather.png")
        
        Persons.append(person1)
        Persons.append(person2)
        Persons.append(person3)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Persons.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        
        var cell: CustomTableViewCell = tableView.dequeueReusableCellWithIdentifier("customCell") as CustomTableViewCell
        
        let person = Persons[indexPath.row]
        println(person)
        cell.setCell(person.name, intAge: person.number, scnImagename: person.imageName)
        
        return cell
    }

}

