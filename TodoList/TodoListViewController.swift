//
//  ViewController.swift
//  TodoList
//
//  Created by Henrique Bersani on 1/17/19.
//  Copyright © 2019 Henrique Bersani. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    
    var itemList = ["buy tomatos","study chocolate","kill bees"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
  
    
    @IBAction func addTodoItem(_ sender: Any) {
        var textInput = UITextField()
        
        let alert = UIAlertController.init(title: "Add ToDo Item", message: "", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Create new item.."
             textInput = textField
        
            
        }
        
        let action = UIAlertAction.init(title: "Add", style: .default) { (action) in
//         print(textInput.text)
            self.itemList.append(textInput.text!)
            self.tableView.reloadData()
        }
        
        alert.addAction(action)
        present(alert, animated: true) {
            
        }
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoCell")
        cell?.textLabel?.text = itemList[indexPath.row]
       
        return cell!
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemList[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
  
       tableView.deselectRow(at: indexPath, animated: true)
      
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return itemList.count
    }
    
    
    
    
}

