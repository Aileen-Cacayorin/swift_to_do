//
//  ToDoNewViewController.swift
//  ToDoList
//
//  Created by Aileen Bull on 2/5/20.
//  Copyright © 2020 Aileen Bull. All rights reserved.
//

import UIKit

class ToDoNewViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    var listTableVC :  ListTableViewController? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       

        // Do any additional setup after loading the view.
    }
   
    
    @IBAction func addToDoBtn(_ sender: Any) {
        
        let important = importantSwitch.isOn
        if let name = nameTextField.text {
            let newToDo = ToDo(name: name, important: important)
            listTableVC?.toDoItems.append(newToDo)
        }
        listTableVC?.tableView.reloadData()
    }
}
