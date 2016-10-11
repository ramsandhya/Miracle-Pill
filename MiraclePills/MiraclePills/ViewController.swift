//
//  ViewController.swift
//  MiraclePills
//
//  Created by Jitendra Ram on 10/10/16.
//  Copyright © 2016 Sandhya Ram. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var fullName: UILabel!
    
    @IBOutlet weak var fullNameText: UITextField!
    
    @IBOutlet weak var streetName: UILabel!
    
    @IBOutlet weak var streetNameText: UITextField!
    
    @IBOutlet weak var cityName: UILabel!
    
    @IBOutlet weak var cityNameText: UITextField!
    
    @IBOutlet weak var zipCode: UILabel!
    
    @IBOutlet weak var zipCodeText: UITextField!
    
    @IBOutlet weak var stateName: UILabel!
    
    @IBOutlet weak var buyNowButton: UIButton!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York", "Georgia", "Florida", "Virginia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
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
    }
    @IBAction func buyNow(_ sender: AnyObject) {
        statePicker.isHidden = true
        fullName.isHidden = true
        fullNameText.isHidden = true
        streetName.isHidden = true
        streetNameText.isHidden = true
        cityName.isHidden = true
        cityNameText.isHidden = true
        zipCode.isHidden = true
        zipCodeText.isHidden = true
        stateName.isHidden = true
        statePickerBtn.isHidden = true
        buyNowButton.isHidden = true
        
//        let successImage = UIImageView()
//        successImage.image = #imageLiteral(resourceName: "successIndicator")
//        successImage.isHidden = false
    }
}

















