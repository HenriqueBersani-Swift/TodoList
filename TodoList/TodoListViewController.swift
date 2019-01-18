//
//  ViewController.swift
//  TodoList
//
//  Created by Henrique Bersani on 1/17/19.
//  Copyright © 2019 Henrique Bersani. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    
    let itemList = ["buy tomatos","study chocolate","kill bees"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
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

