//
//  ExerciseTableViewController.swift
//
//  Created by Samuel Lewis.
//

import UIKit

class ExerciseTableViewController : UITableViewController, UISearchBarDelegate, UISearchDisplayDelegate {
    
    var exercises = [Exercise]()
    
    var filteredExer = [Exercise]()
    
    override func viewDidAppear(animated: Bool) {
        //setting the navigation bar to custom design with my logo as a UIImage
        var nav = self.navigationController?.navigationBar
        //black bar with yellow text
        nav?.barStyle = UIBarStyle.Black
        nav?.tintColor = UIColor.yellowColor()
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .ScaleAspectFit
        let image = UIImage(named: "getfitlogo")
        imageView.image = image
        navigationItem.titleView = imageView
    }
    
    override func viewDidLoad() {
        
        tableView.bounces = true
        
        self.exercises = [
            
            //Begin enterring the long list of data into the exercises array
            
            
            //------------------------------------------------------------------------------------------------------
            //ARMS
            //------------------------------------------------------------------------------------------------------
            
            Exercise(exerciseCategory: "Arms", name: "Barbell Bicep Curl", desc: "Stand up with your torso upright while holding a barbell at a shoulder-width grip. The palm of your hands should be facing forward and the elbows should be close to the torso. This will be your starting position. While holding the upper arms stationary, curl the weights forward while contracting the biceps as you breathe out. Tip: Only the forearms should move. Continue the movement until your biceps are fully contracted and the bar is at shoulder level. Hold the contracted position for a second and squeeze the biceps hard. Slowly begin to bring the bar back to starting position as your breathe in. Repeat for the recommended amount of repetitions.", imageName: "arms_barbel_1", imageNameTwo: "arms_barbel_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Arms", name: "E-Z Bar Curl", desc: "Stand up straight while holding an EZ curl bar at the wide outer handle. The palms of your hands should be facing forward and slightly tilted inward due to the shape of the bar. Keep your elbows close to your torso. This will be your starting position. Now, while keeping your upper arms stationary, exhale and curl the weights forward while contracting the biceps. Focus on only moving your forearms. Continue to raise the weight until your biceps are fully contracted and the bar is at shoulder level. Hold the top contracted position for a moment and squeeze the biceps. Then inhale and slowly lower the bar back to the starting position. Repeat for the recommended amount of repetitions.", imageName: "arms_ez_1", imageNameTwo: "arms_ez_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Arms", name: "Alternating Barbell Curl", desc: " Stand (torso upright) with a dumbbell in each hand held at arms length. The elbows should be close to the torso and the palms of your hand should be facing your thighs. While holding the upper arm stationary, curl the right weight as you rotate the palm of the hands until they are facing forward. At this point continue contracting the biceps as you breathe out until your biceps is fully contracted and the dumbbells are at shoulder level. Hold the contracted position for a second as you squeeze the biceps. Tip: Only the forearms should move. Slowly begin to bring the dumbbell back to the starting position as your breathe in. Tip: Remember to twist the palms back to the starting position (facing your thighs) as you come down. Repeat the movement with the left hand. This equals one repetition. Continue alternating in this manner for the recommended amount of repetitions.", imageName: "arms_barbel_1", imageNameTwo: "arms_barbel_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Arms", name: "Hammer Curls", desc: "Stand up with your torso upright and a dumbbell on each hand being held at arms length. The elbows should be close to the torso. The palms of the hands should be facing your torso. This will be your starting position. Now, while holding your upper arm stationary, exhale and curl the weight forward while contracting the biceps. Continue to raise the weight until the biceps are fully contracted and the dumbbell is at shoulder level. Hold the contracted position for a brief moment as you squeeze the biceps. Tip: Focus on keeping the elbow stationary and only moving your forearm. After the brief pause, inhale and slowly begin the lower the dumbbells back down to the starting position. Repeat for the recommended amount of repetitions.", imageName: "arms_hammer_1", imageNameTwo: "arms_hammer_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Arms", name: "Chin Up", desc: "Stand up with your torso upright and a dumbbell on each hand being held at arms length. The elbows should be close to the torso. The palms of the hands should be facing your torso. This will be your starting position. Now, while holding your upper arm stationary, exhale and curl the weight forward while contracting the biceps. Continue to raise the weight until the biceps are fully contracted and the dumbbell is at shoulder level. Hold the contracted position for a brief moment as you squeeze the biceps. Tip: Focus on keeping the elbow stationary and only moving your forearm. After the brief pause, inhale and slowly begin the lower the dumbbells back down to the starting position. Repeat for the recommended amount of repetitions. Grab the pull-up bar with the palms facing your torso and a grip closer than the shoulder width. As you have both arms extended in front of you holding the bar at the chosen grip width, keep your torso as straight as possible while creating a curvature on your lower back and sticking your chest out. This is your starting position. Tip: Keeping the torso as straight as possible maximizes biceps stimulation while minimizing back involvement. As you breathe out, pull your torso up until your head is around the level of the pull-up bar. Concentrate on using the biceps muscles in order to perform the movement. Keep the elbows close to your body. Tip: The upper torso should remain stationary as it moves through space and only the arms should move. The forearms should do no other work other than hold the bar. After a second of squeezing the biceps in the contracted position, slowly lower your torso back to the starting position; when your arms are fully extended. Breathe in as you perform this portion of the movement. Repeat this motion for the prescribed amount of repetitions.", imageName: "arms_chinup_1", imageNameTwo: "arms_chinup_2", Wallpaper: "wallpaper5"),
            
            //------------------------------------------------------------------------------------------------------
            //BACK
            //------------------------------------------------------------------------------------------------------
            
            Exercise(exerciseCategory: "Back", name: "Power Partials", desc: "Stand up with your torso upright and a dumbbell on each hand being held at arms length. The elbows should be close to the torso. The palms of the hands should be facing your torso. Your feet should be about shoulder width apart. This will be your starting position. Keeping your arms straight and the torso stationary, lift the weights out to your sides until they are about shoulder level height while exhaling. Feel the contraction for a second and begin to lower the weights back down to the starting position while inhaling. Tip: Keep the palms facing down with the little finger slightly higher while lifting and lowering the weights as it will concentrate the stress on your shoulders mainly. Repeat for the recommended amount of repetitions.", imageName: "back_power_1", imageNameTwo: "back_power_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Back", name: "Smith Machine Shrug", desc: "To begin, set the bar height on the smith machine around the middle of your thighs. Once the correct height is chosen and the bar is loaded, grab the bar using a pronated grip (palms facing you) shoulder width apart from each other. Lift the barbell up and fully extend your arms with your back straight. This is the starting position. While exhaling, elevate the bar by raising your shoulders until they come close to touching your ears. Hold the contraction for a second before lowering the bar back down to the starting position while inhaling. Repeat for the recommended amount of repetitions.", imageName: "back_smith_1", imageNameTwo: "back_smith_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Back", name: "Stiff Leg Barbell Good Morning", desc: "This exercise is best performed inside a squat rack for safety purposes. To begin, first set the bar on a rack that best matches your height. Once the correct height is chosen and the bar is loaded, step under the bar and place the back of your shoulders (slightly below the neck) across it. Hold on to the bar using both arms at each side and lift it off the rack by first pushing with your legs and at the same time straightening your torso. Step away from the rack and position your legs using a shoulder width medium stance. Keep your head up at all times as looking down will get you off balance and also maintain a straight back. This will be your starting position. Keeping your legs stationary, move your torso forward by bending at the hips while inhaling. Lower your torso until it is parallel with the floor. Begin to raise the bar as you exhale by elevating your torso back to the starting position. Repeat for the recommended amount of repetitions.", imageName: "back_stiff_1", imageNameTwo: "back_stiff_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Back", name: "One-Arm Dumbbell Row", desc: "Choose a flat bench and place a dumbbell on each side of it. Place the right leg on top of the end of the bench, bend your torso forward from the waist until your upper body is parallel to the floor, and place your right hand on the other end of the bench for support. Use the left hand to pick up the dumbbell on the floor and hold the weight while keeping your lower back straight. The palm of the hand should be facing your torso. This will be your starting position. Pull the resistance straight up to the side of your chest, keeping your upper arm close to your side and keeping the torso stationary. Breathe out as you perform this step. Tip: Concentrate on squeezing the back muscles once you reach the full contracted position. Also, make sure that the force is performed with the back muscles and not the arms. Finally, the upper torso should remain stationary and only the arms should move. The forearms should do no other work except for holding the dumbbell; therefore do not try to pull the dumbbell up using the forearms. Lower the resistance straight down to the starting position. Breathe in as you perform this step. Repeat the movement for the specified amount of repetitions. Switch sides and repeat again with the other arm.", imageName: "back_one_1", imageNameTwo: "back_one_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Back", name: "T-Bar Row with Handle", desc: "Position a bar into a landmine or in a corner to keep it from moving. Load an appropriate weight onto your end. Stand over the bar, and position a Double D row handle around the bar next to the collar. Using your hips and legs, rise to a standing position. Assume a wide stance with your hips back and your chest up. Your arms should be extended. This will be your starting position. Pull the weight to your upper abdomen by retracting the shoulder blades and flexing the elbows. Do not jerk the weight or cheat during the movement. After a brief pause, return to the starting position.", imageName: "back_t_1",imageNameTwo: "back_t_2", Wallpaper: "wallpaper5"),
            
            //------------------------------------------------------------------------------------------------------
            //CHEST
            //------------------------------------------------------------------------------------------------------
            
            Exercise(exerciseCategory: "Chest", name: "Chest Press", desc:  "Sit on the glideboard with your knees bent and hold the handles with your hands on each side of yoir chest, palms facing down and elbows bent. Slide the glideboard up by pushing on the handles staright forward and allow yourself back down after a short pause. Keep youur forearms paralell to the floor throughout.", imageName: "chest_press_1", imageNameTwo: "chest_press_2", Wallpaper: "wallpaper5"),
            Exercise(exerciseCategory: "Chest", name: "Incline Dumbbell Press", desc: "Lie back on an incline bench with a dumbbell in each hand atop your thighs. The palms of your hands will be facing each other. Then, using your thighs to help push the dumbbells up, lift the dumbbells one at a time so that you can hold them at shoulder width. Once you have the dumbbells raised to shoulder width, rotate your wrists forward so that the palms of your hands are facing away from you. This will be your starting position. Be sure to keep full control of the dumbbells at all times. Then breathe out and push the dumbbells up with your chest. Lock your arms at the top, hold for a second, and then start slowly lowering the weight. Tip Ideally, lowering the weights should take about twice as long as raising them. Repeat the movement for the prescribed amount of repetitions.When you are done, place the dumbbells back on your thighs and then on the floor. This is the safest manner to release the dumbbells.", imageName: "chest_dumbell_1", imageNameTwo: "chest_dumbell_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Chest", name: "Barbell Incline Bench Press", desc: "Lie back on an incline bench. Using a medium-width grip (a grip that creates a 90-degree angle in the middle of the movement between the forearms and the upper arms), lift the bar from the rack and hold it straight over you with your arms locked. This will be your starting position. As you breathe in, come down slowly until you feel the bar on you upper chest. After a second pause, bring the bar back to the starting position as you breathe out and push the bar using your chest muscles. Lock your arms in the contracted position,squeeze your chest, hold for a second and then start coming down slowly again. Tip: it should take at least twice as long to go down than to come up. Repeat the movement for the prescribed amount of repetitions. When you are done, place the bar back in the rack.", imageName: "chest_bench_1", imageNameTwo: "chest_bench_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Chest", name: "Dumbbell Bench Press", desc: "Lie down on a flat bench with a dumbbell in each hand resting on top of your thighs. The palms of your hands will be facing each other. Then, using your thighs to help raise the dumbbells up, lift the dumbbells one at a time so that you can hold them in front of you at shoulder width. Once at shoulder width, rotate your wrists forward so that the palms of your hands are facing away from you. The dumbbells should be just to the sides of your chest, with your upper arm and forearm creating a 90 degree angle. Be sure to maintain full control of the dumbbells at all times. This will be your starting position. Then, as you breathe out, use your chest to push the dumbbells up. Lock your arms at the top of the lift and squeeze your chest, hold for a second and then begin coming down slowly. Tip: Ideally, lowering the weight should take about twice as long as raising it. Repeat the movement for the prescribed amount of repetitions of your training program.", imageName: "chest_dumbellbench_1", imageNameTwo: "chest_dumbellbench_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Chest", name: "Cable Crossover", desc: "To get yourself into the starting position, place the pulleys on a high position (above your head), select the resistance to be used and hold the pulleys in each hand. Step forward in front of an imaginary straight line between both pulleys while pulling your arms together in front of you. Your torso should have a small forward bend from the waist. This will be your starting position. With a slight bend on your elbows in order to prevent stress at the biceps tendon, extend your arms to the side (straight out at both sides) in a wide arc until you feel a stretch on your chest. Breathe in as you perform this portion of the movement. Tip: Keep in mind that throughout the movement, the arms and torso should remain stationary; the movement should only occur at the shoulder joint. Return your arms back to the starting position as you breathe out. Make sure to use the same arc of motion used to lower the weights. Hold for a second at the starting position and repeat the movement for the prescribed amount of repetitions.", imageName: "chest_cables_1", imageNameTwo: "chest_cables_2", Wallpaper: "wallpaper5"),
            
            //------------------------------------------------------------------------------------------------------
            //CORE
            //------------------------------------------------------------------------------------------------------
            
            
            Exercise(exerciseCategory: "Core", name: " Ab Crunch Machine ", desc: "Select a light resistance and sit down on the ab machine placing your feet under the pads provided and grabbing the top handles. Your arms should be bent at a 90 degree angle as you rest the triceps on the pads provided. This will be your starting position. At the same time, begin to lift the legs up as you crunch your upper torso. Breathe out as you perform this movement. Tip: Be sure to use a slow and controlled motion. Concentrate on using your abs to move the weight while relaxing your legs and feet. After a second pause, slowly return to the starting position as you breathe in. Repeat the movement for the prescribed amount of repetitions.", imageName: "core_abcrunch_1", imageNameTwo: "core_abcrunch_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Core", name: "Frog Sit-Ups", desc: "    Lie with your back flat on the floor (or exercise mat) and your legs extended in front of you. Now bend at the knees and place your outer thighs by the floor (or mat) as you make the soles of your feet touch each other. Now try pushing both soles and bringing them up as near you as possible while you keep the outer thighs on the floor (or at least almost touching it). Tip: In this position your legs should create a diamond shape. Now, cross your arms in front of you by touching the opposite shoulders. This will be your starting position. As you exhale flatten your lower back to the floor while curling the torso upwards. Tip: This will be like performing the first 1/4 movement of a sit up. Hold at the top position for a second. As you inhale, slowly lower back to the starting position. Repeat for the recommended amount of repetitions.", imageName: "core_frogs_1", imageNameTwo: "core_frogs_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Core", name: "Crunch - Hands Overhead", desc: "    Lie on the floor with your back flat and knees bent with around a 60-degree angle between the hamstrings and the calves. Keep your feet flat on the floor and stretch your arms overhead with your palms crossed. This will be your starting position. Curl your upper body forward and bring your shoulder blades just off the floor. At all times, keep your arms aligned with your head, neck and shoulder. Don't move them forward from that position. Exhale as you perform this portion of the movement and hold the contraction for a second. Slowly lower down to the starting position as you inhale. Repeat for the recommended amount of repetitions.", imageName: "core_crunch_1", imageNameTwo: "core_crunch_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Core", name: "Barbell Side Bend ", desc: "    Stand up straight while holding a barbell placed on the back of your shoulders (slightly below the neck). Your feet should be shoulder width apart. This will be your starting position. While keeping your back straight and your head up, bend only at the waist to the right as far as possible. Breathe in as you bend to the side. Then hold for a second and come back up to the starting position as you exhale. Tip: Keep the rest of the body stationary. Now repeat the movement but bending to the left instead. Hold for a second and come back to the starting position. Repeat for the recommended amount of repetitions.", imageName: "core_side_1", imageNameTwo: "core_side_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Core", name: "Flat Bench Lying Leg Raise", desc: "    Lie with your back flat on a bench and your legs extended in front of you off the end. Place your hands either under your glutes with your palms down or by the sides holding on to the bench. This will be your starting position. As you keep your legs extended, straight as possible with your knees slightly bent but locked raise your legs until they make a 90-degree angle with the floor. Exhale as you perform this portion of the movement and hold the contraction at the top for a second. Now, as you inhale, slowly lower your legs back down to the starting position.", imageName: "core_lying_1", imageNameTwo: "core_lying_2", Wallpaper: "wallpaper5"),
            
            //------------------------------------------------------------------------------------------------------
            //DELTS
            //------------------------------------------------------------------------------------------------------
            
            Exercise(exerciseCategory: "Delts", name: "Side Laterals to Front Raise", desc: "    In a standing position, hold a pair of dumbbells at your side. This will be your starting position.Keeping your elbows slightly bent, raise the weights directly in front of you to shoulder height, avoiding any swinging or cheating. At the top of the exercise move the weights out in front of you, keeping your arms extended. Lower the weights with a controlled motion. On the next repetition, raise the weights in front of you to shoulder height before moving the weights laterally to your sides. Lower the weights to the starting position.", imageName: "delts_side_1", imageNameTwo: "delts_side_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Delts", name: "Single-Arm Linear Jammer", desc: "Position a bar into a landmine or securely anchor it in a corner. Load the bar to an appropriate weight. Raise the bar from the floor, taking it to your shoulders with one or both hands. Adopt a wide stance. This will be your starting position. Perform the movement by extending the elbow, pressing the weight up. Move explosively, extending the hips and knees fully to produce maximal force. Return to the starting position.", imageName: "delts_single_1", imageNameTwo: "delts_single_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Delts", name: "Standing Alternating Dumbbell Press", desc: "Stand with a dumbbell in each hand. Raise the dumbbells to your shoulders with your palms facing forward and your elbows pointed out. This will be your starting position. Extend one arm to press the dumbbell straight up, keeping your off hand in place. Do not lean or jerk the weight during the movement.  After a brief pause, return the weight to the starting position. Repeat for the opposite side, continuing to alternate between arms.", imageName: "delts_standing_1", imageNameTwo: "delts_standing_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Delts", name: "Single Dumbbell Raise", desc: "Stand with a dumbbell in each hand. Raise the dumbbells to your shoulders with your palms facing forward and your elbows pointed out. This will be your starting position. Extend one arm to press the dumbbell straight up, keeping your off hand in place. Do not lean or jerk the weight during the movement. After a brief pause, return the weight to the starting position. Repeat for the opposite side, continuing to alternate between arms.", imageName: "delts_dumbell_1", imageNameTwo: "delts_dumbell_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Delts", name: "One-Arm Side Laterals", desc: "    Pick a dumbbell and place it in one of your hands. Your non lifting hand should be used to grab something steady such as an incline bench press. Lean towards your lifting arm and away from the hand that is gripping the incline bench as this will allow you to keep your balance. Stand with a straight torso and have the dumbbell by your side at arm’s length with the palm of the hand facing you. This will be your starting position. While maintaining the torso stationary (no swinging), lift the dumbbell to your side with a slight bend on the elbow and your hand slightly tilted forward as if pouring water in a glass. Continue to go up until you arm is parallel to the floor. Exhale as you execute this movement and pause for a second at the top. Lower the dumbbell back down slowly to the starting position as you inhale. Repeat for the recommended amount of repetitions. Switch arms and repeat the exercise.", imageName: "delts_onearm_1", imageNameTwo: "delts_onearm_2", Wallpaper: "wallpaper5"),
            
            //------------------------------------------------------------------------------------------------------
            //LEGS
            //------------------------------------------------------------------------------------------------------
            
            Exercise(exerciseCategory: "Legs", name: "Clean Deadlift", desc: "    Begin standing with a barbell close to your shins. Your feet should be directly under your hips with your feet turned out slightly. Grip the bar with a double overhand grip or hook grip, about shoulder width apart. Squat down to the bar. Your spine should be in full extension, with a back angle that places your shoulders in front of the bar and your back as vertical as possible. Begin by driving through the floor through the front of your heels. As the bar travels upward, maintain a constant back angle. Flare your knees out to the side to help keep them out of the bar's path. After the bar crosses the knees, complete the lift by driving the hips into the bar until your hips and knees are extended.", imageName: "legs_deadlift_1", imageNameTwo: "legs_deadlift_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Legs", name: "Barbell Squat", desc: "    This exercise is best performed inside a squat rack for safety purposes. To begin, first set the bar on a rack to just below shoulder level. Once the correct height is chosen and the bar is loaded, step under the bar and place the back of your shoulders (slightly below the neck) across it. Hold on to the bar using both arms at each side and lift it off the rack by first pushing with your legs and at the same time straightening your torso. Step away from the rack and position your legs using a shoulder width medium stance with the toes slightly pointed out. Keep your head up at all times and also maintain a straight back. This will be your starting position. (Note: For the purposes of this discussion we will use the medium stance described above which targets overall development; however you can choose any of the three stances discussed in the foot stances section). Begin to slowly lower the bar by bending the knees and hips as you maintain a straight posture with the head up. Continue down until the angle between the upper leg and the calves becomes slightly less than 90-degrees. Inhale as you perform this portion of the movement. Tip: If you performed the exercise correctly, the front of the knees should make an imaginary straight line with the toes that is perpendicular to the front. If your knees are past that imaginary line (if they are past your toes) then you are placing undue stress on the knee and the exercise has been performed incorrectly. Begin to raise the bar as you exhale by pushing the floor with the heel of your foot as you straighten the legs again and go back to the starting position. Repeat for the recommended amount of repetitions.", imageName: "legs_bsquat_1", imageNameTwo: "legs_bsquat_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Legs", name: "Smith Machine Calf Raise", desc: "      Place a block or weight plate below the bar on the Smith machine. Set the bar to a position that best matches your height. Once the correct height is chosen and the bar is loaded, step onto the plates with the balls of your feet and place the bar on the back of your shoulders. Take the bar with both hands facing forward. Rotate the bar to unrack it. This will be your starting position. Raise your heels as high as possible by pushing off of the balls of your feet, flexing your calf at the top of the contraction. Your knees should remain extended. Hold the contracted position for a second before you start to go back down.  Return slowly to the starting position as you breathe in while lowering your heels. Repeat for the recommended amount of repetitions.", imageName: "legs_smith_1", imageNameTwo: "legs_smith_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Legs", name: "Bear Crawl Sled Drags", desc: "Wearing either a harness or a loose weight belt, attach the chain to the back so that you will be facing away from the sled. Bend down so that your hands are on the ground. Your back should be flat and knees bent. This is your starting position.Begin by driving with legs, alternating left and right. Use your hands to maintain balance and to help pull. Try to keep your back flat as you move over a given distance.", imageName: "legs_bear_1", imageNameTwo: "legs_bear_2", Wallpaper: "wallpaper5"),
            
            Exercise(exerciseCategory: "Legs", name: "Dumbbell Squat", desc: "Stand up straight while holding a dumbbell on each hand (palms facing the side of your legs). Position your legs using a shoulder width medium stance with the toes slightly pointed out. Keep your head up at all times as looking down will get you off balance and also maintain a straight back. This will be your starting position. Note: For the purposes of this discussion we will use the medium stance described above which targets overall development; however you can choose any of the three stances discussed in the foot stances section. Begin to slowly lower your torso by bending the knees as you maintain a straight posture with the head up. Continue down until your thighs are parallel to the floor. Tip: If you performed the exercise correctly, the front of the knees should make an imaginary straight line with the toes that is perpendicular to the front. If your knees are past that imaginary line (if they are past your toes) then you are placing undue stress on the knee and the exercise has been performed incorrectly. Begin to raise your torso as you exhale by pushing the floor with the heel of your foot mainly as you straighten the legs again and go back to the starting position. Repeat for the recommended amount of repetitions", imageName: "legs_dsquat_1", imageNameTwo: "legs_dsquat_2", Wallpaper: "wallpaper5"),
            //-----------------------------------------------------------------------------------------------------
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
        //asks for a reusable cell from tableview, if none exists; create a new one
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        
        //every two rows display clear color
        if (indexPath.row % 2 == 0) {
            cell.backgroundColor = UIColor.clearColor()
            
        } else {
            //set cell opacity
            cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2)
            cell.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        }
        
        //Text Color.
        cell.textLabel?.textColor = UIColor.yellowColor()
        
        var exer : Exercise
        // Check to see whether the normal table or search results table is being displayed and set the exercises object from the appropriate array
        if tableView == self.searchDisplayController!.searchResultsTableView {
            exer = filteredExer[indexPath.row]
            //Add icons for cells
            var imageName = UIImage(named: exer.exerciseCategory)
            cell.imageView?.image = imageName
            self.tableView.rowHeight = 70
            cell.textLabel?.textColor = UIColor.blackColor()
            

            //adding the custom background used throughut the application
            self.tableView.backgroundView = UIImageView(image: UIImage(named: "wallpaper5"))
            
            
        } else {
            exer = exercises[indexPath.row]
            //Add icons for prototype cells
            var imageName = UIImage(named: exer.exerciseCategory)
            cell.imageView?.image = imageName
            self.tableView.rowHeight = 70
            
            self.tableView.backgroundView = UIImageView(image: UIImage(named: "wallpaper5"))
        }
        
        // Configure the cell label to the exercise name
        cell.textLabel?.text = exer.name
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
    
    
    //creating the custom segue identifier, 'exerciseDetail'
    //this will correctly move the user to the appropiate view controller in the function below
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        self.performSegueWithIdentifier("exerciseDetail", sender: tableView)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "exerciseDetail" {
            let DetailViewController = segue.destinationViewController as UIViewController
            let scene = segue.destinationViewController as DisplayExerciseViewController

            if sender as UITableView == self.searchDisplayController!.searchResultsTableView {
                let indexPath = self.searchDisplayController!.searchResultsTableView.indexPathForSelectedRow()!
                //linking the labels, text fields and images to the exercise data from the array
                let destinationTitle = self.filteredExer[indexPath.row].name
                scene.title = destinationTitle
                let destinationDesc = self.filteredExer[indexPath.row].desc
                scene.desc = destinationDesc
                let imageForscene = self.filteredExer[indexPath.row].imageName
                scene.imageName = UIImage (named: imageForscene)
                let imageForsceneTwo = self.filteredExer[indexPath.row].imageNameTwo
                scene.imageNameTwo = UIImage (named: imageForsceneTwo)
                let imageForsceneThree = self.filteredExer[indexPath.row].Wallpaper
                scene.Wallpaper = UIImage (named: imageForsceneThree)
            } else {
                let indexPath = self.tableView.indexPathForSelectedRow()!
                let destinationTitle = self.exercises[indexPath.row].name
                scene.title = destinationTitle
                let destinationDesc = self.exercises[indexPath.row].desc
                scene.desc = destinationDesc
                let imageForscene = self.exercises[indexPath.row].imageName
                scene.imageName = UIImage (named: imageForscene)
                let imageForsceneTwo = self.exercises[indexPath.row].imageNameTwo
                scene.imageNameTwo = UIImage (named: imageForsceneTwo)
                let imageForsceneThree = self.exercises[indexPath.row].Wallpaper
                scene.Wallpaper = UIImage (named: imageForsceneThree)
            }
        }
    }
}
