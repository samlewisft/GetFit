//
//  DetailsViewController.swift
//  ToDoSample
//
//  Created by Amalan Dhananjayan on 10/20/14.
//  Copyright (c) 2014 Batzee. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    //@IBOutlet weak var titleTextField: UITextField!
    //@IBOutlet weak var descriptionTextField: UITextView!
    
    @IBOutlet var titleDate: UITextField!
    @IBOutlet var titleReps: UITextField!
    @IBOutlet var titleWeight: UITextField!
    @IBOutlet var titleText: UITextField!
    @IBOutlet var titleComments: UITextView!
    var todoData:NSDictionary = NSDictionary()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleText.userInteractionEnabled=false
        titleComments.userInteractionEnabled=false
        titleReps.userInteractionEnabled=false
        titleWeight.userInteractionEnabled=false
        titleDate.userInteractionEnabled=false
        
        
        
        titleText.text=todoData.objectForKey("title") as String
        titleComments.text=todoData.objectForKey("details") as String
        titleReps.text=todoData.objectForKey("reps") as String
        titleWeight.text=todoData.objectForKey("weight") as String
        titleDate.text=todoData.objectForKey("date") as String
        
        
        

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func deleteButtonClicked(sender: AnyObject) {
        
        var userDefault:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        var itemListArray:NSMutableArray = userDefault.objectForKey("itemList") as NSMutableArray
        
        var mutableItemList: NSMutableArray = NSMutableArray()
        
        for dict:AnyObject in itemListArray{
            mutableItemList.addObject(dict as NSDictionary)
        }
        
        mutableItemList.removeObject(todoData)
        userDefault.removeObjectForKey("itemList")
        userDefault.setObject(mutableItemList, forKey: "itemList")
        userDefault.synchronize()
        
        self.navigationController?.popViewControllerAnimated(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
