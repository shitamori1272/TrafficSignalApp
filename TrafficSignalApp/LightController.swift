//
//  LightController.swift
//  TrafficSignalApp
//
//  Created by 下森周平 on 2018/09/29.
//  Copyright © 2018年 Shitamori. All rights reserved.
//

import UIKit

class LightController: UIViewController {
    
    var labelText: String!
    var redDuration: Int!
    var yellowDuration: Int!
    var blueDuration: Int!
    
    
    
    var flag = true
    
    @IBOutlet weak var testLabel: UILabel!
    
    @IBOutlet weak var lightView: UIView!
    
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        lightView.backgroundColor = UIColor.red
        testLabel.text = labelText
        // Do any additional setup after loading
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            self.count += 1
            self.testLabel.text = String(self.count)
            self.changeColorBySec(t: self.count)
        }
    }
    
    func changeColorBySec(t: Int){
        let totalDuration = redDuration + yellowDuration + blueDuration
        let currentDuration = t%totalDuration
        if currentDuration < redDuration{
            lightView.backgroundColor = UIColor.red
        }else if currentDuration < redDuration + yellowDuration{
            lightView.backgroundColor = UIColor.yellow
        }else{
            lightView.backgroundColor = UIColor.blue
        }
    }

    
     func testFunc() {
        if(flag){
            lightView.backgroundColor = UIColor.blue
            flag = false
        }else{
            lightView.backgroundColor = UIColor.yellow
            flag = true
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
