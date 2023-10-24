//
//  ViewController.swift
//  UserDefaultProject
//
//  Created by Berke Beyazbenli on 22.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var notTextField: UITextField!
    
    @IBOutlet weak var zamanTextField: UITextField!
    
    @IBOutlet weak var notLabel: UILabel!
    
    
    @IBOutlet weak var zamanLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        // as -> casting
        
        if let gelenNot = kaydedilenNot as? String {
          notLabel.text = "Yapılacak iş: \(gelenNot)"
            
        }
        
        if let gelenZaman = kaydedilenZaman as? String {
            zamanLabel.text = "Yapılacak: \(gelenZaman)"
            
        }
    }


    @IBAction func kaydetTiklandi(_ sender: Any) {
       
        UserDefaults.standard.set(notTextField.text!, forKey: "not")
        UserDefaults.standard.set(zamanTextField.text!, forKey: "zaman")
        
        
        notLabel.text = "Yapılacak iş : \(notTextField.text!)"
        zamanLabel.text = "Yapılacak Zaman: \(zamanTextField.text!)"
        
    }
    
    @IBAction func silTiklandi(_ sender: Any) {
        
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        if(kaydedilenNot as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "not")
            notLabel.text = "Yapılacak iş: "
            
        }
        if(kaydedilenZaman as? String) != nil {
            UserDefaults.standard.object(forKey: "zaman")
            zamanLabel.text = "yapılacak zaman:"
        }
        
    }
    
    
}

