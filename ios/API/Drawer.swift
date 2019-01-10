//
//  Drawer.swift
//  PaintBoard
//
//  Created by Alon Haiut on 10/01/2019.
//  Copyright © 2019 Alon Haiut. All rights reserved.
//

import Foundation
import UIKit

protocol Drawing {
    func draw(line: Line)
    func draw(lines: [Line])
    func clear()
    func set(board: PaintBoard)
}

class Drawer: Drawing {
    fileprivate let configuration: DrawingConfiguration
    fileprivate weak var board: PaintBoard?
    
    init(configuration: DrawingConfiguration = DrawerConfiguration.shared) {
        self.configuration = configuration
    }
    
    func set(board: PaintBoard) {
        self.board = board
    }
    
    func draw(line: Line) {
        let path = UIBezierPath()
        path.move(to: line.start)
        path.addLine(to: line.end)
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = configuration.color.cgColor
        shapeLayer.lineWidth = configuration.thickness
        
        board?.layer.addSublayer(shapeLayer)
    }
    
    func draw(lines: [Line]) {
        for line in lines {
            draw(line: line)
        }
    }
    
    func clear() {
        guard let layers = board?.layer.sublayers,
            !layers.isEmpty else { return }
        
        layers.forEach { $0.removeFromSuperlayer() }
    }
}
