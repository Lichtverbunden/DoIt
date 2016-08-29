//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Ken Krippeler on 29.08.16.
//  Copyright © 2016 Lichtverbunden. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController
{
    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: AnyObject)
    {
        // Create a task from the outlet information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        // Add new task to array in previous viewController
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
        // If you write nothing in the textfield, no task will be created.
        
        /*if task.name != ""
        {
            previousVC.tasks.append(task)
            previousVC.tableView.reloadData()
            navigationController!.popViewController(animated: true)
        }
        else
        {
        
        }*/
        
    }
}
