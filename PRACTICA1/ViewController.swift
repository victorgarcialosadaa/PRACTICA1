//
//  ViewController.swift
//  PRACTICA1
//
//  Created by victor on 03/11/2018.
//  Copyright © 2018 victor. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    var arrayMonedas =  ["Euro", "Libra", "Dolar", "Yen", "Pesos"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayMonedas.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayMonedas[row]    }
    

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print (arrayMonedas[row])
    }
    @IBAction func insertNumber(_ sender: Any) {
    }
    @IBAction func conversion(_ sender: Any) {return
    }
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self  
        pickerView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }


}


