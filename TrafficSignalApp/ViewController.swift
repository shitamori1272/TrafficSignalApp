//
//  ViewController.swift
//  TrafficSignalApp
//
//  Created by 下森周平 on 2018/09/28.
//  Copyright © 2018年 Shitamori. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var RedPickerView: UIPickerView!
    let pickerDataArray = Array(1...10)
    var redValue: Int = 1
    var yellowValue: Int = 1
    var blueValue: Int = 1
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        return String(pickerDataArray[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            redValue =  pickerDataArray[row]
        }else if component == 1{
            yellowValue = pickerDataArray[row]
        }else{
            blueValue = pickerDataArray[row]
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        RedPickerView.delegate = self
        RedPickerView.dataSource = self
        imageView.image = UIImage(named: "信号機のアイコン素材")
        self.view.addSubview(imageView)

    }

 
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! LightController
        //controller.testLabel.text = "success"
        controller.labelText = "success"
        controller.redDuration = redValue
        controller.yellowDuration = yellowValue
        controller.blueDuration = blueValue
    }
}

