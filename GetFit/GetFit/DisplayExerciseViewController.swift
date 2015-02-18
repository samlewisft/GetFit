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
    
    @IBOutlet weak var descLabel: UILabel!
    
    func configureView() {
        // Update the user interface for the detail item.
        descLabel.text = desc!
        
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.configureView()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
