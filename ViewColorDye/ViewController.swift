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
    
    @IBOutlet var redLabel: UILabel!

    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var bluerLable: UILabel!
    
    @IBOutlet var changeableColorView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupValueSliderLabel()
        setupSlider()
        changeableColorView.layer.cornerRadius = 15
        
    }
    
    
    
    @IBAction func rgbChangesColorSlider() {
        redLabel.text = String(format: "%.2f", (redSlider.value))
        greenLabel.text = String(format: "%.2f", (greenSlider.value))
        bluerLable.text = String(format: "%.2f", (blueSlider.value))
        
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
        
        redLabel.text = String(format: "%.2f", (redSlider.value))
        greenLabel.text = String(format: "%.2f", (greenSlider.value))
        bluerLable.text = String(format: "%.2f", (blueSlider.value))
        
        redLabel.textColor = .white
        redLabel.font = redLabel.font.withSize(15)
        
        greenLabel.textColor = .white
        greenLabel.font = greenLabel.font.withSize(15)
        
        bluerLable.textColor = .white
        bluerLable.font = bluerLable.font.withSize(15)
    }
    


}

