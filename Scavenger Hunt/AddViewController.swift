//
//  AddViewController.swift
//  Scavenger Hunt
//
//  Created by AP  on 4/29/15.
//  Copyright (c) 2015 AP . All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    
    var newItem: ScavengerHuntItem?
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DoneItem" {
            if let theName = textField.text {
                if !theName.isEmpty {
                    newItem = ScavengerHuntItem(name: theName)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //Cancel button should go back to unchanged scavenger hunt list
    @IBAction func cancel(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

