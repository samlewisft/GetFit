//
//  DetailsViewController.swift
//  GetFit
//
//  Created by Samuel Lewis.
//

import UIKit

class DetailsViewController: UIViewController, UITextFieldDelegate {

    //@IBOutlet weak var titleTextField: UITextField!
    //@IBOutlet weak var descriptionTextField: UITextView!
    @IBOutlet var titleDistance: UITextField!
    @IBOutlet var titleDate: UITextField!
    @IBOutlet var titleTime: UITextField!
    @IBOutlet var titleType: UITextField!
    @IBOutlet var titleReps: UITextField!
    @IBOutlet var titleWeight: UITextField!
    @IBOutlet var titleText: UITextField!
    @IBOutlet var titleComments: UITextView!
    
    var logData:NSDictionary = NSDictionary()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleText.userInteractionEnabled=false
        titleComments.userInteractionEnabled=false
        titleReps.userInteractionEnabled=false
        titleWeight.userInteractionEnabled=false
        titleDate.userInteractionEnabled=false
        titleDistance.userInteractionEnabled=false
        titleType.userInteractionEnabled=false
        titleTime.userInteractionEnabled=false
        
        
        titleText.text=logData.objectForKey("title") as String
        titleComments.text=logData.objectForKey("details") as String
        titleReps.text=logData.objectForKey("reps") as String
        titleWeight.text=logData.objectForKey("weight") as String
        titleDate.text=logData.objectForKey("date") as String
        titleDistance.text=logData.objectForKey("distance") as String
        titleType.text=logData.objectForKey("type") as String
        titleTime.text=logData.objectForKey("time") as String
        
        

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func deleteButtonClicked(sender: AnyObject) {
        
        var userDefault:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        var logListArray:NSMutableArray = userDefault.objectForKey("logList") as NSMutableArray
        
        var mutablelogList: NSMutableArray = NSMutableArray()
        
        for dict:AnyObject in logListArray{
            mutablelogList.addObject(dict as NSDictionary)
        }
        
        mutablelogList.removeObject(logData)
        userDefault.removeObjectForKey("logList")
        userDefault.setObject(mutablelogList, forKey: "logList")
        userDefault.synchronize()
        
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        self.view.endEditing(true)
        return false
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
