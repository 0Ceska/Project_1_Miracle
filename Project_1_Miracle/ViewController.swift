//
//  ViewController.swift
//  Project_1_Miracle
//
//  Created by Guest User on 17/11/16.
//  Copyright © 2016 ScriptUP Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    //UIPickerViewDataSource  <-
    //UIPickerViewDelegate    <-
    
   
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    //
    @IBOutlet weak var countryl: UILabel!
    @IBOutlet weak var countryt: UITextField!
    @IBOutlet weak var zipcodel: UILabel!
    @IBOutlet weak var zipcodet: UITextField!
    
    let states = ["Alabama","Arkansas","Alaska","California", "New York"]

       override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        //First project
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func StateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryl.isHidden = true
        countryt.isHidden = true
        zipcodel.isHidden = true
        zipcodet.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryl.isHidden = false
        countryt.isHidden = false
        zipcodel.isHidden = false
        zipcodet.isHidden = false
    }
    @IBAction func buynow(_ sender: Any) {

    }
    
}
