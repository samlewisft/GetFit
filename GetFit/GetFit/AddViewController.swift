//
//  AddViewController.swift
//  ToDoSample
//
//  Created by Amalan Dhananjayan on 10/20/14.
//  Copyright (c) 2014 Batzee. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate,UIPickerViewDataSource, UIPickerViewDelegate {
    
    var WallpaperImage : UIImage?
    @IBOutlet var selectedDate: UILabel!

    @IBOutlet var logDate: UIDatePicker! = UIDatePicker()
    @IBOutlet var logTitle: UITextField!
    @IBOutlet var logWeight: UITextField! = UITextField()
    @IBOutlet var logReps: UITextField!
    @IBOutlet var logComments: UITextView!
    @IBOutlet var Wallpaper: UIImageView!
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myPicker: UIPickerView!
    let pickerData = ["Arms","Back","Chest","Core","Delts","Legs","Full Body"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.logTitle.delegate = self;
        self.logComments.delegate = self;
        self.logWeight.delegate = self;
        self.logReps.delegate = self;
        myPicker.delegate = self
        myPicker.dataSource = self

        
      //  Wallpaper.image = WallpaperImage!
        
        
        

        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func datePickerAction(sender: AnyObject) {
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
        var strDate = dateFormatter.stringFromDate(logDate.date)
        self.selectedDate.text = strDate
    }
    

    
    @IBAction func saveButtonClick(sender: AnyObject) {
        //println("Save Clicked")
        
        var userdefaults:NSUserDefaults = NSUserDefaults.standardUserDefaults();
        
        var itemList:NSMutableArray? = userdefaults.objectForKey("itemList") as?NSMutableArray
        
        var dataSet:NSMutableDictionary = NSMutableDictionary()
        dataSet.setObject(logTitle.text, forKey: "title")
        dataSet.setObject(logComments.text, forKey: "details")
        dataSet.setObject(logWeight.text, forKey: "weight")
        dataSet.setObject(logReps.text, forKey: "reps")
        dataSet.setObject(selectedDate.text!, forKey: "date")
        
        println("title value \(selectedDate.description) and description is \(logComments.text)")
        
        
        if((itemList) != nil){
            
            var newMutableList: NSMutableArray = NSMutableArray()
            
            for dict:AnyObject in itemList!{
                newMutableList.addObject(dict as NSDictionary)
            }
            
            userdefaults.removeObjectForKey("itemList")
            newMutableList.addObject(dataSet)
            userdefaults.setObject(newMutableList, forKey: "itemList")
            
        }else{
            //userdefaults.removeObjectForKey("itemList")
            itemList=NSMutableArray()
            itemList!.addObject(dataSet)
            userdefaults.setObject(itemList, forKey: "itemList")
           
        }
        
        userdefaults.synchronize()
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func textViewShouldReturn(textView: UITextView!) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    //MARK: - Delegates and data sources
    //MARK: Data Sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myLabel.text = pickerData[row]
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
