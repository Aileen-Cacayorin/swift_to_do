//
//  ListTableViewController.swift
//  ToDoList
//
//  Created by Aileen Bull on 2/4/20.
//  Copyright © 2020 Aileen Bull. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    var toDoItems : [ToDo] = []

//    var toDoItems = [ToDo]() --> shorthand
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let item1 = ToDo(name: "Swift Class")
        let item2 = ToDo(name: "DB Dumpfile", important: false)
        let item3 = ToDo(name: "Pay Credit Card Bill", important: true)
  
        toDoItems = [item1, item2, item3]
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDoItems.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()

        let currentToDo : ToDo = toDoItems[indexPath.row]
        
        if currentToDo.important  {
            cell.textLabel?.text = currentToDo.name + " ‼️"
        } else {
            cell.textLabel?.text = currentToDo.name
        }
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedToDo = toDoItems[indexPath.row]
        performSegue(withIdentifier: "showToDoItem", sender: selectedToDo)
        
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let toDoNewVC = segue.destination as? ToDoNewViewController {
            toDoNewVC.listTableVC = self
        }
        
        if let toDoVC = segue.destination as? ToDoViewController {
            if let selectedToDo = sender as? ToDo {
                toDoVC.listTableVC = self
                toDoVC.todo = selectedToDo
            }
        }
    }

}
