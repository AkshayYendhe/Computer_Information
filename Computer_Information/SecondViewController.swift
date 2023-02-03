//
//  SecondViewController.swift
//  Computer_Information
//
//  Created by Akshay Yendhe on 27/12/22.
//

import UIKit

class SecondViewController: UIViewController {
   
    var machine1 : ComputerInfo?
   
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ramSizeTextField: UITextField!
    @IBOutlet weak var storageSizeField: UITextField!
    @IBOutlet weak var screenSizeTextField: UITextField!
    @IBOutlet weak var processorTextField: UITextField!
    @IBOutlet weak var batteryLifeTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextActionButton(_ sender: Any) {
        
        
        if let nameText = nameTextField.text ,let ramString = ramSizeTextField.text ,let ramSize = Int(ramString), let storageSizeString = storageSizeField.text,let storageSize = Int(storageSizeString),let screenSizeString = screenSizeTextField.text,let screenSize = Double(screenSizeString), let processorString = processorTextField.text,let processor = Int(processorString), let batteryLifeString = batteryLifeTextField.text, let batteryLife = Int(batteryLifeString), let priceString = priceTextField.text,let price = Int(priceString){
            
        
         let machine2 = ComputerInfo(name: nameText, ram: ramSize, storage: storageSize, screenSize: screenSize, processor: processor, batteryLife: batteryLife, price: price)

        let main = UIStoryboard(name: "Main", bundle: .none)
        let compaireVC = main.instantiateViewController(withIdentifier: "CompairViewController") as! CompairViewController
        compaireVC.machine1 = machine1
            compaireVC.machine2 = machine2
        self.present(compaireVC, animated: true)
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
