//
//  CreateGoalVC.swift
//  Goal_Post
//
//  Created by Donald Belliveau on 2017-12-18.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {
    
    /*
     IBOutlets
     */
    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    
    
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
        // Dispose of any resources that can be recreated.
    } // END Did Receive Memory Warning
    
    /* Short Term Button was Pressed Function. */
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        
    } // END Short Term Button was Pressed.
    
    
    /* Long Term Button Was Pressed Function. */
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        
    } // END Long Term Button Was Pressed.
    
    
    /* Next Button Was Pressed Function. */
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        
    } // END Next Button Was Pressed.
    
    
    /* Back Button Was Pressed Function. */
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    } // END Back Button Was Pressed.
    
    
} // END Class.


// CreateGoalVC:  




















