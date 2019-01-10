//
//  DrawerConfiguration.swift
//  PaintBoard
//
//  Created by Alon Haiut on 10/01/2019.
//  Copyright © 2019 Alon Haiut. All rights reserved.
//

import Foundation
import UIKit

protocol DrawingConfiguration {
    var color: UIColor { get }
    var thickness: CGFloat { get }
}

struct DrawerConfiguration: DrawingConfiguration {
    static var shared: DrawerConfiguration = {
        return DrawerConfiguration(color: ColorPalette.blue,
                                   thickness: 5.0)
    }()
    
    let color: UIColor
    let thickness: CGFloat
}
