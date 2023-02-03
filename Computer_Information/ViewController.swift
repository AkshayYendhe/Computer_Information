//
//  ViewController.swift
//  Computer_Information
//
//  Created by Akshay Yendhe on 27/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ramTextField: UITextField!
    @IBOutlet weak var storageSizeTextField: UITextField!
    @IBOutlet weak var screenSizeTextField: UITextField!
    @IBOutlet weak var processorTextField: UITextField!
    @IBOutlet weak var batteryLifeTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextAction(_ sender: Any) {
        
        if let nameText = nameTextField.text ,let ramString = ramTextField.text ,let ramSize = Int(ramString), let storageSizeString = storageSizeTextField.text,let storageSize = Int(storageSizeString),let screenSizeString = screenSizeTextField.text,let screenSize = Double(screenSizeString), let processorString = processorTextField.text,let processor = Int(processorString), let batteryLifeString = batteryLifeTextField.text, let batteryLife = Int(batteryLifeString), let priceString = priceTextField.text,let price = Int(priceString){
            
        
         let machine1 = ComputerInfo(name: nameText, ram: ramSize, storage: storageSize, screenSize: screenSize, processor: processor, batteryLife: batteryLife, price: price)

                                     let main = UIStoryboard(name: "Main", bundle: .none)
        let secondVC = main.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondVC.machine1 = machine1
        self.present(secondVC, animated: true)
    }
        
    }
    
}

