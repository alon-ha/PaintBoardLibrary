//
//  PaintBoard.swift
//  PaintBoard
//
//  Created by Alon Haiut on 10/01/2019.
//  Copyright © 2019 Alon Haiut. All rights reserved.
//

import Foundation
import UIKit

class PaintBoard: UIView {
    fileprivate var lines = [Line]()
    fileprivate var lastPoint: CGPoint!
    fileprivate let persistence: DrawingPersistencing
    fileprivate let drawer: Drawing
    
    init(drawer: Drawing = Drawer(),
         persistence: DrawingPersistencing = DrawingPersistence()) {
        self.drawer = drawer
        self.persistence = persistence
        super.init(frame: .zero)
        self.drawer.set(board: self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("required init?(coder aDecoder: NSCoder) not available")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        guard let touch = touches.first else { return }
        lastPoint = touch.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        guard let touch = touches.first,
            lastPoint != nil else { return }
        
        let point = touch.location(in: self)
        // continue only if the point inside the paint board
        guard self.point(inside: point, with: event) else { return }
        
        let line = Line(start: lastPoint, end: point)
        lines.append(line)
        lastPoint = point
        drawer.draw(line: line)
    }
}

extension PaintBoard {
    func load() {
        clear()
        let lines = persistence.getLines()
        guard !lines.isEmpty else { return }
        self.lines = lines
        drawer.draw(lines: lines)
    }
    
    func clear() {
        drawer.clear()
        self.lines = []
    }
    
    func save() {
        guard !lines.isEmpty else { return }
        persistence.save(lines: lines)
    }
}

