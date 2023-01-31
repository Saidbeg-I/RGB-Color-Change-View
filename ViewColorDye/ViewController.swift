//
//  ViewController.swift
//  ViewColorDye
//
//  Created by 1 on 29.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redNameLabel: UILabel!
    @IBOutlet var redValueSliderLabel: UILabel!
    
    @IBOutlet var greenColorLabel: UILabel!
    @IBOutlet var greenValueSliderLabel: UILabel!
    
    @IBOutlet var blueValueSliderLable: UILabel!
    @IBOutlet var blueColorLabel: UILabel!
    
    @IBOutlet var changeableColorView: UIView!
    
    @IBOutlet var randomColorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupColoredLabel()
        setupValueSliderLabel()
        setupSlider()
        
    }
    
    
    
    @IBAction func rgbChangesColorSlider() {
        redValueSliderLabel.text = String(format: "%.2f", (redSlider.value))
        greenValueSliderLabel.text = String(format: "%.2f", (greenSlider.value))
        blueValueSliderLable.text = String(format: "%.2f", (blueSlider.value))
        
        changeColor()
        
    }
    
    
    // MARK: - Private Methods
    
    private  func changeColor (){
         changeableColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
         
     }

    private func setupSlider(){
        
        redSlider.thumbTintColor = .red
        redSlider.tintColor = UIColor.red
        
        greenSlider.thumbTintColor = .green
        greenSlider.tintColor = UIColor.green
        
        blueSlider.tintColor = UIColor.blue
        blueSlider.thumbTintColor = .blue
        
    }
    
    private func setupValueSliderLabel(){
        
        redValueSliderLabel.text = String(format: "%.2f", (redSlider.value))
        greenValueSliderLabel.text = String(format: "%.2f", (greenSlider.value))
        blueValueSliderLable.text = String(format: "%.2f", (blueSlider.value))
        
        redValueSliderLabel.textColor = .white
        redValueSliderLabel.font = redValueSliderLabel.font.withSize(15)
        
        greenValueSliderLabel.textColor = .white
        greenValueSliderLabel.font = greenValueSliderLabel.font.withSize(15)
        
        blueValueSliderLable.textColor = .white
        blueValueSliderLable.font = blueValueSliderLable.font.withSize(15)
    }
    
    private func setupColoredLabel(){
        redNameLabel.text = "Red"
        redNameLabel.font = redNameLabel.font.withSize(15)
        redNameLabel.textColor = .white
        
        greenColorLabel.text = "Green"
        greenColorLabel.font = greenColorLabel.font.withSize(15)
        greenColorLabel.textColor = .white
        
        blueColorLabel.text = "Blue"
        blueColorLabel.font = blueColorLabel.font.withSize(15)
        blueColorLabel.textColor = .white
    }


}

