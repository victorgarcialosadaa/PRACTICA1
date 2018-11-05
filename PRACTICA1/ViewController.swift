//
//  ViewController.swift
//  PRACTICA1
//
//  Created by victor on 03/11/2018.
//  Copyright © 2018 victor. All rights reserved.
//

import UIKit
import AssetsLibrary
class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    
    @IBOutlet weak var imageChange: UIImageView!
    
      var arrayMonedas =  ["Euro", "Libra", "Dolar", "Yen", "Pesos"]
    
    var flags = ["europe.jpg","america.jpg","uk.jpg","japan.jpg","philipines.jpg"]

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
    @IBAction func btnConvert(_ sender: Any) {return
    }
    
  
    @IBOutlet weak var flagImage: UIImageView!
    
    var arrayPosition = 0
    @IBAction func btnNext(_ sender: Any) {arrayPosition = arrayPosition + 1
        flagImage.image = UIImage (named: flags[arrayPosition])
    }
    
    @IBAction func btnBack(_ sender: Any) {arrayPosition = arrayPosition + 1
        flagImage.image = UIImage (named: flags[arrayPosition])    }
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    
            
            func tableView(tableView: UITableView, numberOfRowsInSection sectio: Int) -> Int {
                return min(flags.count, flags.count)
            }
            
            
          
        pickerView.delegate = self  
        pickerView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }


}


