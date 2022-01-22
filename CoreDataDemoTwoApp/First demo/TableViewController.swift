//
//  TableViewController.swift
//  CoreDataDemoTwoApp
//
//  Created by Андрей Аверьянов on 18.01.2022.
//

import UIKit
import CoreData

//class TableViewController: UITableViewController {
//
//    var tasks: [Task] = []
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let context = getContext()
//        let fetchRequest: NSFetchRequest<Task> = Task.fetchRequest()
//        if let results = try? context.fetch(fetchRequest) {
//            for result in results {
//                context.delete(result)
//            }
//        }
//
//        do {
//            try context.save()
//        } catch let error as NSError {
//            print(error.localizedDescription)
//        }
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        let context = getContext()
//        let fetchRequest: NSFetchRequest<Task> = Task.fetchRequest()
//        let sortDescriptor = NSSortDescriptor(key: "title", ascending: true)
//        fetchRequest.sortDescriptors = [sortDescriptor]
//
//        do {
//            tasks = try context.fetch(fetchRequest)
//        } catch let error as NSError {
//            print(error.localizedDescription)
//        }
//    }
//
//    @IBAction func saveTask(_ sender: Any) {
//
//        let alertController = UIAlertController(title: "New Task", message: "Add new task", preferredStyle: .alert)
//        let saveAction = UIAlertAction(title: "Save", style: .default) { action in
//
//            let textField = alertController.textFields?.first
//            if let newTaskTitle = textField?.text {
//                self.saveTask(withTitle: newTaskTitle)
//                self.tableView.reloadData()
//            }
//        }
//
//        alertController.addTextField { _ in }
//        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { _ in }
//
//        alertController.addAction(saveAction)
//        alertController.addAction(cancelAction)
//
//        present(alertController, animated: true, completion: nil)
//    }
//
//    private func getContext() -> NSManagedObjectContext {
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        return appDelegate.persistentContainer.viewContext
//    }
//
//    private func saveTask(withTitle title: String) {
//        let context = getContext()
//
//        guard let entity = NSEntityDescription.entity(forEntityName: "Task", in: context) else {return}
//        let taskObject = Task(entity: entity, insertInto: context)
//        taskObject.title = title
//
//        do {
//            try context.save()
//            tasks.insert(taskObject, at: 0)
//        } catch let error as NSError {
//            print(error.localizedDescription)
//        }
//    }
//
//    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return tasks.count
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//
//        let task = tasks[indexPath.row]
//        cell.textLabel?.text = task.title
//
//        return cell
//    }
//}
