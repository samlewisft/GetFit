//
//  DisplayExerciseViewController.swift
//  GetFIt
//
//  Created by Samuel Lewis.
//

import UIKit

class DisplayExerciseViewController: UIViewController {
    //defining the exericse view variables
    var desc : String?
    var imageName : UIImage?
    var imageNameTwo : UIImage?
    var Wallpaper : UIImage?
    
    //linking up the image views and text view from the storyboard
    @IBOutlet var ExerciseImage: UIImageView!
    @IBOutlet var IMG2: UIImageView!
    @IBOutlet var descTextView: UITextView!
    @IBOutlet var BackgroundImage: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //setting the fields, images, wallpaper to those stored in the exercise array
        BackgroundImage.image =  Wallpaper!
        ExerciseImage.image = imageName!
        IMG2.image = imageNameTwo!
        descTextView.text = desc!
        descTextView.textColor = UIColor.whiteColor()
        descTextView.textAlignment = NSTextAlignment.Center
        descTextView.selectable = false;
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
