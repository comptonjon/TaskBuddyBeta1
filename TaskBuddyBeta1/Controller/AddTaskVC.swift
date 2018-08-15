//
//  AddTaskVC.swift
//  TaskBuddyBeta1
//
//  Created by Jonathan Compton on 8/14/18.
//  Copyright © 2018 Jonathan Compton. All rights reserved.
//

import UIKit

class AddTaskVC: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var detailsTextField: UITextField!
    
    let context = DBService.shared.context()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func saveBtnTapped(_ sender: Any) {
        let newTask = Task(context: context)
        newTask.title = titleTextField.text!
        newTask.details = detailsTextField.text!
        DBService.shared.saveContext()
        navigationController?.popViewController(animated: true)
    }
    
}
