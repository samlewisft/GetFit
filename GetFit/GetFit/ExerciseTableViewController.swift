//
//  CandyTableViewController.swift
//  CandySearch
//
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

import UIKit

class ExerciseTableViewController : UITableViewController, UISearchBarDelegate, UISearchDisplayDelegate {

    var exercises = [Exercise]()
    
    var filteredExer = [Exercise]()
    
    override func viewDidLoad() {
        // Sample Data for candyArray
        self.exercises = [
            Exercise(exerciseCategory: "Chest", name: "Barbell Bench Press", desc: "Lie back"),
            Exercise(exerciseCategory: "Legs", name: "Squat", desc: "Lie foreward"),
            Exercise(exerciseCategory: "Arms", name: "Dumbbell Press", desc: "Lie back"),
            Exercise(exerciseCategory: "Chest", name: "Chest Press", desc: "Lie back"),
            Exercise(exerciseCategory: "Arms", name: "Dumbbell Biceps Curl", desc: "Lie back"),
            Exercise(exerciseCategory: "Chest", name: "Bodyweight Pushup", desc: "Lie back"),
            Exercise(exerciseCategory: "Legs", name: "Bodyweight Iron Chair", desc: "Lie back"),
            Exercise(exerciseCategory: "Back", name: "Barbell Deadlift", desc: "Lie back"),
            Exercise(exerciseCategory: "Arms", name: "Barbell Wrist Curl", desc: "Lie back")
        ]
        
        self.tableView.reloadData()
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.searchDisplayController!.searchResultsTableView {
            return self.filteredExer.count
        } else {
            return self.exercises.count
        }
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //ask for a reusable cell from the tableview, the tableview will create a new one if it doesn't have any
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell

        var excer : Exercise
        // Check to see whether the normal table or search results table is being displayed and set the Candy object from the appropriate array
        if tableView == self.searchDisplayController!.searchResultsTableView {
            excer = filteredExer[indexPath.row]
        } else {
            excer = exercises[indexPath.row]
        }

        // Configure the cell
        cell.textLabel.text = excer.name
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }

    func filterContentForSearchText(searchText: String, scope: String = "All") {
        self.filteredExer = self.exercises.filter({( exer : Exercise) -> Bool in
            var categoryMatch = (scope == "All") || (exer.exerciseCategory == scope)
            var stringMatch = exer.name.rangeOfString(searchText)
            return categoryMatch && (stringMatch != nil)
            })
    }

    func searchDisplayController(controller: UISearchDisplayController!, shouldReloadTableForSearchString searchString: String!) -> Bool {
        let scopes = self.searchDisplayController!.searchBar.scopeButtonTitles as [String]
        let selectedScope = scopes[self.searchDisplayController!.searchBar.selectedScopeButtonIndex] as String
        self.filterContentForSearchText(searchString, scope: selectedScope)
        return true
    }

    func searchDisplayController(controller: UISearchDisplayController!,
        shouldReloadTableForSearchScope searchOption: Int) -> Bool {
            let scope = self.searchDisplayController!.searchBar.scopeButtonTitles as [String]
            self.filterContentForSearchText(self.searchDisplayController!.searchBar.text, scope: scope[searchOption])
            return true
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("exerciseDetail", sender: tableView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "exerciseDetail" {
            let DetailViewController = segue.destinationViewController as UIViewController
            let scene = segue.destinationViewController as DisplayExerciseViewController
            //let DescriptionString = segue.destin
            if sender as UITableView == self.searchDisplayController!.searchResultsTableView {
                let indexPath = self.searchDisplayController!.searchResultsTableView.indexPathForSelectedRow()!
                let destinationTitle = self.filteredExer[indexPath.row].name
                scene.title = destinationTitle
                let destinationDesc = self.filteredExer[indexPath.row].desc
                scene.desc = destinationDesc
            } else {
                let indexPath = self.tableView.indexPathForSelectedRow()!
                let destinationTitle = self.exercises[indexPath.row].name
                scene.title = destinationTitle
                let destinationDesc = self.exercises[indexPath.row].desc
                scene.desc = destinationDesc
            }
        }
    }
}
