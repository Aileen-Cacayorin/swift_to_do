//
//  ToDoViewController.swift
//  ToDoList
//
//  Created by Aileen Bull on 2/6/20.
//  Copyright © 2020 Aileen Bull. All rights reserved.
//

import UIKit

class ToDoViewController: UIViewController {
    var todo : ToDo? = nil
    var listTableVC :  ListTableViewController? = nil

    
    @IBOutlet weak var toDoName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let todo = todo {
            if todo.important  {
                toDoName.text = todo.name + " ‼️"
            } else {
                toDoName.text = todo.name
            }
        }
    }
    

    @IBAction func deleteToDoBtn(_ sender: Any) {
        if let todo = todo {
            if let items = listTableVC?.toDoItems {
                if let index = items.index(where: { $0 === todo }) {
                    listTableVC?.toDoItems.remove(at: index)
                }
            }
            listTableVC?.tableView.reloadData()
        }
    }
    
}
