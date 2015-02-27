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
    var label : String?
    @IBOutlet var ExerciseImage: UIImageView!
    @IBOutlet var descTextView: UITextView!
    @IBOutlet weak var exerciseLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        ExerciseImage.image = imageName
        descTextView.text = desc!
        exerciseLabel.text = label!
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
