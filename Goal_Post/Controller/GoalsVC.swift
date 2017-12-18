//
//  GoalsVC.swift
//  Goal_Post
//
//  Created by Donald Belliveau on 2017-12-18.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {
    
    /*
     IBOutlets
     */
    
    @IBOutlet weak var tableView: UITableView!
    
    
    /*
     Functions.
     */
    
    
    /* View Did Load Function. */
    
    override func viewDidLoad() {
        super.viewDidLoad()
    } // END View Did Load.
    
    
    /* Did Receive Memory Warning Function. */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    } // END Did Receive Memory Warning.
    
    
    /* Add Goal Button Pressed Function. */
    
    @IBAction func addGoalBtnPressed(_ sender: Any) {
        print("Button was Pressed.")
    } // Add Goal Button Pressed
    
    
} // END Class.

// GoalsVC:  
// Goal (Core Data):







