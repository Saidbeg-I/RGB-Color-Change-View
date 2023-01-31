//
//  ViewController.swift
//  ViewColorDye
//
//  Created by 1 on 29.01.2023.
//

import UIKit

// MARK: - IB Outlets

class ViewController: UIViewController {

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!

    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var bluerLable: UILabel!
    
    @IBOutlet var colorView: UIView!
    
    //MARK: - LifeCicle View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
        setupSlider()
        setValueLabel(for: redLabel, greenLabel, bluerLable)
        
        colorView.layer.cornerRadius = 15
        changeColor()
        
        
    }
    
    //MARK: - IBAction
    
    @IBAction func rgbColorSlider(_ sender: UISlider) {
        changeColor()
        
        switch sender {
        case redSlider:
            setValueLabel(for: redLabel)
        case greenSlider:
            setValueLabel(for: greenLabel)
        default:
            setValueLabel(for: bluerLable)
        }
    }
    
    
    // MARK: - Private Methods
    
    private  func changeColor (){
         colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value), alpha: 1
         )
         
     }
    private func setupSlider(){
        
        redSlider.thumbTintColor = .red
        redSlider.tintColor = UIColor.red
        
        greenSlider.thumbTintColor = .green
        greenSlider.tintColor = UIColor.green
        
        blueSlider.tintColor = UIColor.blue
        blueSlider.thumbTintColor = .blue
        
    }
    private func setupLabel(){
        redLabel.textColor = .white
        redLabel.font = redLabel.font.withSize(15)
        
        greenLabel.textColor = .white
        greenLabel.font = greenLabel.font.withSize(15)
        
        bluerLable.textColor = .white
        bluerLable.font = bluerLable.font.withSize(15)
    }
    
    private func setValueLabel(for label: UILabel...) {
        label.forEach { label in
            switch label {
            case redLabel:
                redLabel.text = string(for: redSlider)
            case greenLabel:
                greenLabel.text = string(for: greenSlider)
            default:
                bluerLable.text = string(for: blueSlider)
            }
        }
    }
    private func string(for slider: UISlider) -> String {
           String(format: "%.2f", (slider.value))
        
    }
                  

}

