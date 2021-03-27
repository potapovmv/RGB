//
//  ViewController.swift
//  RGB
//
//  Created by Admin1 on 27.03.2021.
//  Copyright © 2021 potapov_potapov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redSliderOutlet: UISlider!
    @IBOutlet weak var greenSliderOutlet: UISlider!
    @IBOutlet weak var blueSliderOutlet: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSliderOutlet.minimumTrackTintColor = .red
        greenSliderOutlet.minimumTrackTintColor = .green
        blueSliderOutlet.minimumTrackTintColor = .blue
        
        redLabel.text = String(redSliderOutlet.value)
        greenLabel.text = String(greenSliderOutlet.value)
        blueLabel.text = String(blueSliderOutlet.value)
        
        colorLabel.backgroundColor = UIColor(displayP3Red: CGFloat(redSliderOutlet.value), green: CGFloat(greenSliderOutlet.value), blue: CGFloat(blueSliderOutlet.value), alpha: 1.0)
    }

    @IBAction func redSlider() {
        redLabel.text = String(format: "%.2f" , redSliderOutlet.value)
        colorLabel.backgroundColor = UIColor(displayP3Red: CGFloat(redSliderOutlet.value), green: CGFloat(greenSliderOutlet.value), blue: CGFloat(blueSliderOutlet.value), alpha: 1.0)
    }
    @IBAction func greenSlider() {
        greenLabel.text = String(format: "%.2f" , greenSliderOutlet.value)
        colorLabel.backgroundColor = UIColor(displayP3Red: CGFloat(redSliderOutlet.value), green: CGFloat(greenSliderOutlet.value), blue: CGFloat(blueSliderOutlet.value), alpha: 1.0)
    }
    @IBAction func blueSlider() {
         blueLabel.text = String(format: "%.2f" , blueSliderOutlet.value)
         colorLabel.backgroundColor = UIColor(displayP3Red: CGFloat(redSliderOutlet.value), green: CGFloat(greenSliderOutlet.value), blue: CGFloat(blueSliderOutlet.value), alpha: 1.0)
    }
}

