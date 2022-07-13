//
//  ViewController.swift
//  ColorizedApp
//
//  Created by alexkarav on 25.06.2022.
//

import UIKit

class SettingsViewController: UIViewController {

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
    
    var color: UIColor!
    var delegate: ColorSetupViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorizedView.backgroundColor = color
        setUpSliders(color: color)
        setUpLabel(scoreRed, redText, redSlider, .red)
        setUpLabel(scoreGreen, greenText, greenSlider, .green)
        setUpLabel(scoreBlue, blueText, blueSlider, .blue)
        colorizedView.layer.cornerRadius = 10
        colorizedView.layer.masksToBounds = true
        self.tabBarController?.tabBar.isHidden = true
    }
    
    //MARK: SliderAction
    @IBAction func sliderAction(_ slider: UISlider) {
        switch slider {
        case redSlider:
            sliderAction(scoreRed, redSlider)
        case greenSlider:
            sliderAction(scoreGreen, greenSlider)
        default:
            sliderAction(scoreBlue, blueSlider)
        }
    }
    
    @IBAction func doneButtonPressed() {
        delegate.saveColorSetup(with: colorizedView.backgroundColor ?? .white)
        dismiss(animated: true)
    }
    
    //MARK: SetUpSliders
    private func setUpSliders(color fromPreviousView: UIColor) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        fromPreviousView.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        redSlider.value = Float(red)
        greenSlider.value = Float(green)
        blueSlider.value = Float(blue)
    }
    
    //MARK: SetUpLabel
    private func setUpLabel (_ scoreLabel: UILabel,_ textLabel: UILabel,
                             _ slider: UISlider, _ textColor: UIColor)
    {
        scoreLabel.text = String(format: "%.2f", slider.value)
        scoreLabel.textColor = textColor
        scoreLabel.textAlignment = .left
        textLabel.textColor = textColor
    }
    
    //MARK: SliderAction
    private func sliderAction (_ label: UILabel, _ slider: UISlider) {
        label.text = String(format: "%.2f", slider.value)
        colorizedView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                               green: CGFloat(greenSlider.value),
                                               blue: CGFloat(blueSlider.value),
                                               alpha: 1)
    }
    
}

