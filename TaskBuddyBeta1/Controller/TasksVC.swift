//
//  TasksVC.swift
//  TaskBuddyBeta1
//
//  Created by Jonathan Compton on 8/14/18.
//  Copyright © 2018 Jonathan Compton. All rights reserved.
//

import UIKit
import CoreData

class TasksVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var tasks = [Task]()
    let context = DBService.shared.context()

    override func viewDidLoad() {
        super.viewDidLoad()
        getTasks()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 140
        tableView.backgroundColor = UIColor.clear

    }
    
    func getTasks() {
        let fetchRequest = NSFetchRequest<Task>(entityName: "Task")
        do {
            let results = try context.fetch(fetchRequest) as [Task]
            tasks = results
            
        } catch {
            print("Error")
        }
    }



}

extension TasksVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskCell
        let task = tasks[indexPath.row]
        cell.titleLabel.text = task.title
        cell.detailsLabel.text = task.details
        return cell
    }
}

extension TasksVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

