//
//  TableViewController.swift
//  CoreDataDemoTwoApp
//
//  Created by Андрей Аверьянов on 18.01.2022.
//

import UIKit

class TableViewController: UITableViewController {
    
    var tasks: [Task] = []

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func saveTask(_ sender: Any) {
        
        let alertController = UIAlertController(title: "New Task", message: "Add new task", preferredStyle: .alert)
        let saveAction = UIAlertAction(title: "Save", style: .default) { action in
            
            let textField = alertController.textFields?.first
            if let newTask = textField?.text {
                
                self.tableView.reloadData()
            }
        }
        
        alertController.addTextField { _ in }
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { _ in }
        
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  
        return tasks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = tasks[indexPath.row]
        
        return cell
    }
}
