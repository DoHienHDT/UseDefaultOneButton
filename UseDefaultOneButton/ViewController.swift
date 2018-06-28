//
//  ViewController.swift
//  UseDefaultOneButton
//
//  Created by dohien on 6/28/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let defaults = UserDefaults.standard
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = defaults.string(forKey: "name"){
            nameTextField.text = name
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func button(_ sender: UIButton) {
        if sender.titleLabel?.text == "Save" {
            if nameTextField.text != "" {
                defaults.set(nameTextField.text, forKey: "name")
                print("luu r nhe hihi")
                sender.setTitle("Delete", for: .normal)
            }
        } else {
            defaults.removeObject(forKey: "name")
            nameTextField.text = ""
            print("Xoa R nhe hihi")
            sender.setTitle("Save", for: .normal)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

