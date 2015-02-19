//
//  ExerciseTableViewController.swift
//
//
//  Copyright (c) 2015 Samuel Lewis LLC. All rights reserved.
//

import UIKit

class ExerciseTableViewController : UITableViewController, UISearchBarDelegate, UISearchDisplayDelegate {

    var exercises = [Exercise]()
    
    var filteredExer = [Exercise]()
    
    override func viewDidLoad() {
        // Sample Data for exercises array
        self.exercises = [
            //CHEST
            Exercise(exerciseCategory: "Chest", name: "Chest Press", desc:  "Sit on the glideboard with your knees bent and hold the handles with your hands on each side of yoir chest, palms facing down and elbows bent. Slide the glideboard up by pushing on the handles staright forward and allow yourself back down after a short pause. Keep youur forearms paralell to the floor throughout."),
            Exercise(exerciseCategory: "Chest", name: "Incline Dumbbell Press", desc: "Lie back on an incline bench with a dumbbell in each hand atop your thighs. The palms of your hands will be facing each other. Then, using your thighs to help push the dumbbells up, lift the dumbbells one at a time so that you can hold them at shoulder width. Once you have the dumbbells raised to shoulder width, rotate your wrists forward so that the palms of your hands are facing away from you. This will be your starting position. Be sure to keep full control of the dumbbells at all times. Then breathe out and push the dumbbells up with your chest. Lock your arms at the top, hold for a second, and then start slowly lowering the weight. Tip Ideally, lowering the weights should take about twice as long as raising them. Repeat the movement for the prescribed amount of repetitions.When you are done, place the dumbbells back on your thighs and then on the floor. This is the safest manner to release the dumbbells."),
            Exercise(exerciseCategory: "Chest", name: "Barbell Incline Bench Press", desc: "Lie back on an incline bench. Using a medium-width grip (a grip that creates a 90-degree angle in the middle of the movement between the forearms and the upper arms), lift the bar from the rack and hold it straight over you with your arms locked. This will be your starting position. As you breathe in, come down slowly until you feel the bar on you upper chest. After a second pause, bring the bar back to the starting position as you breathe out and push the bar using your chest muscles. Lock your arms in the contracted position,squeeze your chest, hold for a second and then start coming down slowly again. Tip: it should take at least twice as long to go down than to come up. Repeat the movement for the prescribed amount of repetitions. When you are done, place the bar back in the rack."),
            Exercise(exerciseCategory: "Chest", name: "Dumbbell Bench Press", desc: "Lie down on a flat bench with a dumbbell in each hand resting on top of your thighs. The palms of your hands will be facing each other. Then, using your thighs to help raise the dumbbells up, lift the dumbbells one at a time so that you can hold them in front of you at shoulder width. Once at shoulder width, rotate your wrists forward so that the palms of your hands are facing away from you. The dumbbells should be just to the sides of your chest, with your upper arm and forearm creating a 90 degree angle. Be sure to maintain full control of the dumbbells at all times. This will be your starting position. Then, as you breathe out, use your chest to push the dumbbells up. Lock your arms at the top of the lift and squeeze your chest, hold for a second and then begin coming down slowly. Tip: Ideally, lowering the weight should take about twice as long as raising it. Repeat the movement for the prescribed amount of repetitions of your training program."),
            Exercise(exerciseCategory: "Chest", name: "Cable Crossover", desc: "To get yourself into the starting position, place the pulleys on a high position (above your head), select the resistance to be used and hold the pulleys in each hand. Step forward in front of an imaginary straight line between both pulleys while pulling your arms together in front of you. Your torso should have a small forward bend from the waist. This will be your starting position. With a slight bend on your elbows in order to prevent stress at the biceps tendon, extend your arms to the side (straight out at both sides) in a wide arc until you feel a stretch on your chest. Breathe in as you perform this portion of the movement. Tip: Keep in mind that throughout the movement, the arms and torso should remain stationary; the movement should only occur at the shoulder joint. Return your arms back to the starting position as you breathe out. Make sure to use the same arc of motion used to lower the weights. Hold for a second at the starting position and repeat the movement for the prescribed amount of repetitions."),
            
            //BACK
            
            Exercise(exerciseCategory: "Back", name: "Power Partials", desc: "Stand up with your torso upright and a dumbbell on each hand being held at arms length. The elbows should be close to the torso. The palms of the hands should be facing your torso. Your feet should be about shoulder width apart. This will be your starting position. Keeping your arms straight and the torso stationary, lift the weights out to your sides until they are about shoulder level height while exhaling. Feel the contraction for a second and begin to lower the weights back down to the starting position while inhaling. Tip: Keep the palms facing down with the little finger slightly higher while lifting and lowering the weights as it will concentrate the stress on your shoulders mainly. Repeat for the recommended amount of repetitions."),
            Exercise(exerciseCategory: "Back", name: "Smith Machine Shrug", desc: "To begin, set the bar height on the smith machine around the middle of your thighs. Once the correct height is chosen and the bar is loaded, grab the bar using a pronated grip (palms facing you) shoulder width apart from each other. Lift the barbell up and fully extend your arms with your back straight. This is the starting position. While exhaling, elevate the bar by raising your shoulders until they come close to touching your ears. Hold the contraction for a second before lowering the bar back down to the starting position while inhaling. Repeat for the recommended amount of repetitions."),
            Exercise(exerciseCategory: "Back", name: "Stiff Leg Barbell Good Morning", desc: "This exercise is best performed inside a squat rack for safety purposes. To begin, first set the bar on a rack that best matches your height. Once the correct height is chosen and the bar is loaded, step under the bar and place the back of your shoulders (slightly below the neck) across it. Hold on to the bar using both arms at each side and lift it off the rack by first pushing with your legs and at the same time straightening your torso. Step away from the rack and position your legs using a shoulder width medium stance. Keep your head up at all times as looking down will get you off balance and also maintain a straight back. This will be your starting position. Keeping your legs stationary, move your torso forward by bending at the hips while inhaling. Lower your torso until it is parallel with the floor. Begin to raise the bar as you exhale by elevating your torso back to the starting position. Repeat for the recommended amount of repetitions."),
            Exercise(exerciseCategory: "Back", name: "One-Arm Dumbbell Row", desc: "Choose a flat bench and place a dumbbell on each side of it. Place the right leg on top of the end of the bench, bend your torso forward from the waist until your upper body is parallel to the floor, and place your right hand on the other end of the bench for support. Use the left hand to pick up the dumbbell on the floor and hold the weight while keeping your lower back straight. The palm of the hand should be facing your torso. This will be your starting position. Pull the resistance straight up to the side of your chest, keeping your upper arm close to your side and keeping the torso stationary. Breathe out as you perform this step. Tip: Concentrate on squeezing the back muscles once you reach the full contracted position. Also, make sure that the force is performed with the back muscles and not the arms. Finally, the upper torso should remain stationary and only the arms should move. The forearms should do no other work except for holding the dumbbell; therefore do not try to pull the dumbbell up using the forearms. Lower the resistance straight down to the starting position. Breathe in as you perform this step. Repeat the movement for the specified amount of repetitions. Switch sides and repeat again with the other arm."),
            Exercise(exerciseCategory: "Back", name: "T-Bar Row with Handle", desc: "Position a bar into a landmine or in a corner to keep it from moving. Load an appropriate weight onto your end. Stand over the bar, and position a Double D row handle around the bar next to the collar. Using your hips and legs, rise to a standing position. Assume a wide stance with your hips back and your chest up. Your arms should be extended. This will be your starting position. Pull the weight to your upper abdomen by retracting the shoulder blades and flexing the elbows. Do not jerk the weight or cheat during the movement. After a brief pause, return to the starting position.")
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
        // Check to see whether the normal table or search results table is being displayed and set the exercises object from the appropriate array
        if tableView == self.searchDisplayController!.searchResultsTableView {
            excer = filteredExer[indexPath.row]
        } else {
            excer = exercises[indexPath.row]
        }

        // Configure the cell
        cell.textLabel?.text = excer.name
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
