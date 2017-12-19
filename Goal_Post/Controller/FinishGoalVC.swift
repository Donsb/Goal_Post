//
//  FinishGoalVC.swift
//  Goal_Post
//
//  Created by Donald Belliveau on 2017-12-18.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController {
    
    /*
     IBOutlets.
     */
    
    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    
    /*
     Functions.
     */
    
    
    /* View Did Load Function. */
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
    } // END View Did Load.
    
    
    /* Create Goal Button Was Pressed Function. */
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        
    } // END Create Goal Button Was Pressed.
    
    
} // END Class.


/*
 
 
 FinishGoalVC:   
 
 
 */














