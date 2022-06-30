//
//  enum.swift
//  bmi calculator
//
//  Created by Faiaz Ibraev on 30/6/22.
//

import Foundation
import UIKit

enum Calculations{
    case one
    case two
    case three
    case four
    
    var smileImage: UIImage{
        switch self {
        case .one:
            return UIImage(named: "omg") ?? UIImage()
        case .two:
            return UIImage(named: "cool") ?? UIImage()
        case .three:
            return UIImage(named: "think") ?? UIImage()
        case .four:
            return UIImage(named: "omg") ?? UIImage()
        }
    }
}
