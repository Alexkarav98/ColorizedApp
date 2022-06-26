//
//  ViewController.swift
//  ColorizedApp
//
//  Created by alexkarav on 25.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorizedView: UIView!
    
    @IBOutlet weak var scoreGreen: UILabel!
    @IBOutlet weak var scoreRed: UILabel!
    @IBOutlet weak var scoreBlue: UILabel!
    
    @IBOutlet weak var redText: UILabel!
    @IBOutlet weak var greenText: UILabel!
    @IBOutlet weak var blueText: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    let value: Float = 0
    let numberFormatter = NumberFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        setUpRedLabel()
        setUpBlueLabel()
        setUpGreenLabel()
    }

    @IBAction func redCollorAction() {
        scoreRed.text = (String(format: "%.2f", redSlider.value))
        colorizedView.backgroundColor = UIColor.rgb(red: CGFloat(redSlider.value),
                                                    green: CGFloat(greenSlider.value),
                                                    blue: CGFloat(blueSlider.value))
        
    }
    
    @IBAction func greenColorAction() {
        scoreGreen.text = (String(format: "%.2f", greenSlider.value))
        colorizedView.backgroundColor = UIColor.rgb(red: CGFloat(redSlider.value),
                                                    green: CGFloat(greenSlider.value),
                                                    blue: CGFloat(blueSlider.value))
    }
    
    @IBAction func blueColorAction() {
        scoreBlue.text = (String(format: "%.2f", blueSlider.value))
        colorizedView.backgroundColor = UIColor.rgb(red: CGFloat(redSlider.value),
                                                    green: CGFloat(greenSlider.value),
                                                    blue: CGFloat(blueSlider.value))
    }
    
    private func setUpView() {
        redSlider.value = value
        greenSlider.value = value
        blueSlider.value = value
    }
    
    private func setUpRedLabel() {
        scoreRed.text = ("\(redSlider.value)")
        scoreRed.textColor = .red
        scoreRed.textAlignment = .left
        redText.textColor = .red
    }
    
    private func setUpGreenLabel () {
        scoreGreen.text = ("\(greenSlider.value)")
        scoreGreen.textColor = .green
        scoreGreen.textAlignment = .left
        greenText.textColor = .green
    }
    
    private func setUpBlueLabel () {
        scoreBlue.text = ("\(blueSlider.value)")
        scoreBlue.textColor = .blue
        scoreBlue.textAlignment = .left
        blueText.textColor = .blue
    }
}

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        print("VALUES COLOR --->\(red) \(green) \(blue)")
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
      }
}

