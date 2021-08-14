//
//  ViewController.swift
//  Click Counter
//
//  Created by Rein Saetalu on 14.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // Properties
    var count = 0
    var label: UILabel!
    
    var labelTwo: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Initial background color of the view
        view.backgroundColor = UIColor.lightGray
        
        // label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // labelTwo
        let labelTwo = UILabel()
        labelTwo.frame = CGRect(x: 150, y: 100, width: 60, height: 60)
        labelTwo.text = "0"
        view.addSubview(labelTwo)
        self.labelTwo = labelTwo
        
        
        // button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        // decrementButton
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 150, y: 200, width: 100, height: 60)
        decrementButton.setTitle("Decrement", for: .normal)
        decrementButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(decrementButton)
        
        // Target action
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
        
    }
    
    // Method to increment the counter
    @objc func incrementCount() {
        
        self.count += 1
        self.label.text = "\(self.count)"
        self.labelTwo.text = "\(self.count)"
        toggleBackground()
        
    }
    
    // Method to decrement the counter
    @objc func decrementCount() {
        
        self.count -= 1
        self.label.text = "\(self.count)"
        self.labelTwo.text = "\(self.count)"
        toggleBackground()
        
    }
    
    
    // Method to toggle background color of the view
    func toggleBackground() {
        if view.backgroundColor == UIColor.lightGray {
            
            view.backgroundColor = UIColor.darkGray
            
        } else {
            
            view.backgroundColor = UIColor.lightGray
        }
    }


}

