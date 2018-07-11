//
//  ChangeCityViewController.swift
//  Weather
//
//  Created by Vaibhav Nandam on 7/11/18.
//  Copyright © 2018 Vaibhav Nandam. All rights reserved.
//

import UIKit



protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
}


class ChangeCityViewController: UIViewController {
    
    var delegate : ChangeCityDelegate?
    
    
   
    @IBOutlet weak var changeCityTextField: UITextField!
    
    
   
    @IBAction func getWeatherPressed(_ sender: Any) {
        
        let cityName = changeCityTextField.text!
        
        delegate?.userEnteredANewCityName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
    }
  
    
    
    
    
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
