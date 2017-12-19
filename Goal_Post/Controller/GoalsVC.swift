//
//  GoalsVC.swift
//  Goal_Post
//
//  Created by Donald Belliveau on 2017-12-18.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as? AppDelegate

class GoalsVC: UIViewController {
    
    /*
     IBOutlets
     */
    
    @IBOutlet weak var tableView: UITableView!
    
    /*
     Instance Variables.
     */
    
    var goals: [Goal] = []
    
    /*
     Functions.
     */
    
    
    /* View Did Load Function. */
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
    } // END View Did Load.
    
    
    /* View Will Appear Function. */
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.fetch { (complete) in
            if complete {
                if goals.count >= 1 {
                    tableView.isHidden = false
                } else {
                    tableView.isHidden = true
                }
            }
            tableView.reloadData() //Reload TableView each time we come to this screen after fetching data.
        }
    } // END View Will Appear.
    
    
    /* Did Receive Memory Warning Function. */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    } // END Did Receive Memory Warning.
    
    
    /* Add Goal Button Pressed Function. */
    @IBAction func addGoalBtnPressed(_ sender: Any) {
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "CreateGoalVC") else { return }
        presentDetail(createGoalVC)
    } // Add Goal Button Pressed
    
    
} // END Class.


/*
 Extensions
 */

// TableView Extension.
extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    
    /* Number Of Sections Function. */
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    } // END Number Of Sections.
    
    
    /* Number of Rows In Section Function. */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goals.count
    } // END Number of Rows In Section.
    
    
    /* Cell For Row At Function. */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell() }
        let goal = goals[indexPath.row]
        cell.configureCell(goal: goal)
        return cell
    } // END Cell For Row At.
    
    
} // END TableView Extension


// Fetch Data Functions.
extension GoalsVC {
    
    /*  */
    func fetch(completion: (_ complete: Bool)-> ()) {
        guard let managedContect = appDelegate?.persistentContainer.viewContext else { return }
        
        let fetchRequest = NSFetchRequest<Goal>(entityName: "Goal")
        
        do {
            goals = try managedContect.fetch(fetchRequest) // Returns an Array and sets it to my array
            print("Successfully fetched Data.")
            completion(true)
        } catch {
            debugPrint("Could not fetch: \(error.localizedDescription)")
            completion(false)
        }
    }
    
} // END Fetch Extension.


/*
 
 GoalsVC:  
 
 */


/*
 
 Goal (Core Data):
 
 */





















