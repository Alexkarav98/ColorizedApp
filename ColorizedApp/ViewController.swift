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
    
    private let value: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSliders()
        setUpRedLabel()
        setUpBlueLabel()
        setUpGreenLabel()
    }
    
    //MARK: SliderAction
    @IBAction func sliderAction(_ slider: UISlider) {
        switch slider{
        case redSlider:
            sliderAction(scoreRed, redSlider)
        case greenSlider:
            sliderAction(scoreGreen, greenSlider)
        case blueSlider:
            sliderAction(scoreBlue, blueSlider)
        default:
            print("NOTHING")
        }
    }
    
    //MARK: Sliders
    private func setUpSliders() {
        redSlider.value = value
        greenSlider.value = value
        blueSlider.value = value
    }
    
    //MARK: LabelsSetUp
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
    
    private func sliderAction(_ label: UILabel, _ slider: UISlider) {
        label.text = String(format: "%.2f", slider.value)
        colorizedView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                               green: CGFloat(greenSlider.value),
                                               blue: CGFloat(blueSlider.value),
                                               alpha: 1)
    }
    
}

