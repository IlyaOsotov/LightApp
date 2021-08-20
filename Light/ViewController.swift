//
//  ViewController.swift
//  Light
//
//  Created by Илья Осотов on 20.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    @IBOutlet var lightButton: UIButton!
    
    fileprivate func toggleBackground() {
        view.backgroundColor = lightOn ? .white : .black
    }
    
    fileprivate func changeButtonName() {
        let newTitleName = lightOn ? "on" : "off"
        lightButton.setTitle(newTitleName, for: .normal)
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        toggleBackground()
        changeButtonName()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

