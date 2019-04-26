//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Park, Joy (MU-Student) on 4/12/19.
//  Copyright © 2019 Park. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    let array = [Converter(label: "fahrenheit to celcius", input: "°F", output: "°C"),
                 Converter(label: "celcius to fahrenheit", input: "°C", output: "°F"),
                 Converter(label: "miles to kilometers", input: "mi", output: "km"),
                 Converter(label: "kilometers to miles", input: "km", output: "mi")]
    
    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outputDisplay: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputDisplay.text = array[0].input
        outputDisplay.text = array[0].output
    }
    
    @IBAction func converterAction(_ sender: Any) {
        let alert = UIAlertController(title: "Choose Converter", message: "Choose an option", preferredStyle: UIAlertController.Style.actionSheet)
        alert.addAction(UIAlertAction(title: array[0].label, style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = self.array[0].input
            self.outputDisplay.text = self.array[0].output
        }))
        
        alert.addAction(UIAlertAction(title: array[1].label, style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = self.array[1].input
            self.outputDisplay.text = self.array[1].output
        }))
        
        alert.addAction(UIAlertAction(title: array[2].label, style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = self.array[2].input
            self.outputDisplay.text = self.array[2].output
        }))
        
        alert.addAction(UIAlertAction(title: array[3].label, style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = self.array[3].input
            self.outputDisplay.text = self.array[3].output
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}
