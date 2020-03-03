//
//  SecondViewController.swift
//  AlertExample
//
//  Created by MacStudent on 2020-03-02.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imgElephant: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgElephant.image = UIImage(named: "lion")
        
        //imgElephant.image = #imageLiteral(resourceName: <#T##String#>)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func segimageChanger(_ sender: UISegmentedControl) {
        displayImage(index: sender.selectedSegmentIndex)
        }
    

    @IBAction func sliderChangeImg(_ sender: UISlider) {
        let n = Int(sender.value)
        displayImage(index: n)
        
               }
    
    private func displayImage(index: Int){
        var imageName = String()
        switch index {
        case 0: imageName = "gorilla"
        case 1: imageName = "elephant"
        case 2: imageName = "home"
        case 3: imageName = "icecream"
        case 4: imageName = "lion"
        default: print("No image")
         }
        self.imgElephant.image = UIImage(named: imageName)
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
