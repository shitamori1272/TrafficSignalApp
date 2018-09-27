//
//  ViewController.swift
//  TrafficSignalApp
//
//  Created by 下森周平 on 2018/09/28.
//  Copyright © 2018年 Shitamori. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let redPickerDataList = [1,2]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return redPickerDataList.count
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        return String(redPickerDataList[row])
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        RedPickerView.delegate = self
        RedPickerView.dataSource = self
    }

    @IBOutlet weak var RedPickerView: UIPickerView!
    
}

