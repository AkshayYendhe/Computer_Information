//
//  CompairViewController.swift
//  Computer_Information
//
//  Created by Akshay Yendhe on 28/12/22.
//

import UIKit

class CompairViewController: UIViewController {
    
    var machine1 : ComputerInfo?
    var machine2 : ComputerInfo?
    
    @IBOutlet weak var specs1UILabel: UILabel!
    @IBOutlet weak var ram1UILabel: UILabel!
    @IBOutlet weak var storage1UILabel: UILabel!
    @IBOutlet weak var screenSize1UILabel: UILabel!
    @IBOutlet weak var processor1UILabel: UILabel!
    @IBOutlet weak var batteryLife1Label: UILabel!
    @IBOutlet weak var price1UILabel: UILabel!
    
    
    @IBOutlet weak var specs2UILabel: UILabel!
    @IBOutlet weak var ram2UILabel: UILabel!
    @IBOutlet weak var storage2UILabel: UILabel!
    @IBOutlet weak var screenSize2UILabel: UILabel!
    @IBOutlet weak var processor2UILabel: UILabel!
    @IBOutlet weak var batteryLife2UILabel: UILabel!
    @IBOutlet weak var price2UILabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    var point1 : Int = 0
    var point2 : Int = 0
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let machine1 = machine1 {
            specs1UILabel.text = machine1.name
            ram1UILabel.text = "\(machine1.ram) GB"
            storage1UILabel.text = "\(machine1.storage) GB"
            screenSize1UILabel.text = "\(machine1.screenSize) inches"
            processor1UILabel.text = "i\(machine1.processor)"
            batteryLife1Label.text = "\(machine1.batteryLife) Hr"
            price1UILabel.text = "\(machine1.price) Rs"
        }
        if let machine2 = machine2{
            specs2UILabel.text = machine2.name
            ram2UILabel.text = "\(machine2.ram) GB"
            storage2UILabel.text = "\(machine2.storage) GB"
            screenSize2UILabel.text = "\(machine2.screenSize) inches"
            processor2UILabel.text = "i\(machine2.processor)"
            batteryLife2UILabel.text = "\(machine2.batteryLife) Hr"
            price2UILabel.text = "\(machine2.price) Rs"
        }
        if let machine1 = machine1, let machine2 = machine2{
            if machine1.processor >= machine2.processor {
                point1 += 1
            } else {
                point2 += 1
            }
            
            
            if machine1.ram >= machine2.ram{
                point1 += 1
            }
            else{
                point2 += 1
            }
            if machine1.price <= machine2.price{
                point1 += 1
            }
            else{
                point2 += 1
            }
            
            if point1 >= point2{
                resultLabel.text = "\(machine1.name) is better than \(machine2.name)"
            }
            else{
                resultLabel.text = "\(machine2.name) is better than \(machine1.name)"
            }
        }
      
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
