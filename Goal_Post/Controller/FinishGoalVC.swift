//
//  FinishGoalVC.swift
//  Goal_Post
//
//  Created by Donald Belliveau on 2017-12-18.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {
    
    /*
     Instance Variables.
     */
    
    var goalDescription: String!
    var goalType: GoalType!
    
    /*
     IBOutlets.
     */
    
    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    
    /*
     Functions.
     */
    
    
    /* Init Data Function. */
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    } // END Init Data.
    
    
    /* View Did Load Function. */
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTextField.delegate = self
    } // END View Did Load.
    
    
    /* Create Goal Button Was Pressed Function. */
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        
    } // END Create Goal Button Was Pressed.
    
    
} // END Class.


/*
 
 
 FinishGoalVC:  
 
 
 */














