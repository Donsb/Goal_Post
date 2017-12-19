//
//  GoalCell.swift
//  Goal_Post
//
//  Created by Donald Belliveau on 2017-12-18.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {
    
    /*
     IBOutlets
     */
    
    
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    
    /*
     Functions
     */
    
    
    /* Configure Cell Function. */
    
    func configureCell(goal: Goal) {
        self.goalDescriptionLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgressLbl.text = String(describing: goal.goalProgress)
    } // END Configure Cell
    
    
} // END Class.


/*
 
 GoalCell:  
 
 
 */


























