//
//  FinishGoalVC.swift
//  Goal_Post
//
//  Created by Donald Belliveau on 2017-12-18.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import UIKit
import CoreData

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
        if pointsTextField.text != nil {
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    } // END Create Goal Button Was Pressed.
    
    
    /* Back Button Was Pressed Function */
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    } // END Back Button Was Pressed.
    
    
    /* Save to Core Data Function. */
    func save(completion: (_ finished: Bool)-> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTextField.text!)!
        goal.goalProgress = Int32(0) // We initially start at 0.
        
        do {
            try managedContext.save()
            print("Successfully saved Data.")
            completion(true)
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
        
    } // END save.
    
    
} // END Class.


/*
 
 
 FinishGoalVC:  
 
 */














