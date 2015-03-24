//
//  DisplayExerciseViewController.swift
//  GetFIt
//
//  Created by Samuel Lewis on 18/02/2015.
//  Copyright (c) 2015 MGO. All rights reserved.
//

import UIKit

class DisplayExerciseViewController: UIViewController {
    
    var desc : String?
    var imageName : UIImage?
    var imageNameTwo : UIImage?
    var Wallpaper : UIImage?
    
    @IBOutlet var ExerciseImage: UIImageView!
    @IBOutlet var IMG2: UIImageView!
    @IBOutlet var descTextView: UITextView!
    @IBOutlet var BackgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
