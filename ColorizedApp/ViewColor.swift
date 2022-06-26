//
//  ViewColor.swift
//  ColorizedApp
//
//  Created by alexkarav on 26.06.2022.
//

import Foundation

class ViewColour: ViewController {
    let redColour: Float
    let greenColour: Float
    let blueColour: Float
    
    init(redColour: Float, greenColour: Float, blueColour: Float){
        self.redColour = redColour
        self.greenColour = greenColour
        self.blueColour = blueColour
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpColour () {
        
    }
}
