//
//  CreateGoalVC.swift
//  Goal_Post
//
//  Created by Donald Belliveau on 2017-12-18.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {
    
    /*
     IBOutlets
     */
    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    /*
     Instance Variables.
     */
    
    var goalType: GoalType = .shortTerm
    
    /*
     Functions.
     */
    
    
    /* View Did Load Function. */
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeyboard()
        shortTermBtn.setSelectedColor()
        longTermBtn.setDesectlectedColor()
        goalTextView.delegate = self
    } // END View Did Load.
    
    
    /* Did Receive Memory Warning Function. */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } // END Did Receive Memory Warning
    
    /* Short Term Button was Pressed Function. */
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectedColor()
        longTermBtn.setDesectlectedColor()
    } // END Short Term Button was Pressed.
    
    
    /* Long Term Button Was Pressed Function. */
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = .longTerm
        longTermBtn.setSelectedColor()
        shortTermBtn.setDesectlectedColor()
    } // END Long Term Button Was Pressed.
    
    
    /* Next Button Was Pressed Function. */
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        if goalTextView.text != "" && goalTextView.text != "What is your goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else { return }
            finishGoalVC.initData(description: goalTextView.text!, type: goalType)
            presentingViewController?.presentSecondaryDetail(finishGoalVC)
        }
    } // END Next Button Was Pressed.
    
    
    /* Back Button Was Pressed Function. */
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    } // END Back Button Was Pressed.
    
    
    /* TextView Did Begin Editing Function. */
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    } // END TextView Did Begin Editing.
    
    
} // END Class.


/*
 
 CreateGoalVC:
 
 
 */




















