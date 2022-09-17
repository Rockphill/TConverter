//
//  ViewController.swift
//  TConverter
//
//  Created by Andrei Sergienko on 17.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabal: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = -100
            slider.value = 0
            
        }
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celciusLabel.text = "\(temperatureCelsius)ºC"
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabal.text = "\(fahrenheitTemperature)ºF"
    }
}

