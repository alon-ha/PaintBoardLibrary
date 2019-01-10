//  
//  DrawingPersistence.swift
//  PaintBoard
//
//  Created by Alon Haiut on 10/01/2019.
//  Copyright © 2019 Alon Haiut. All rights reserved.
//

import Foundation

private let linesKey = "lines_key"

protocol DrawingPersistencing {
    func save(lines: [Line])
    func getLines() -> [Line]
}

class DrawingPersistence: DrawingPersistencing {
    func save(lines: [Line]) {
        let encoder = JSONEncoder()
        if let json = try? encoder.encode(lines) {
            UserDefaults.standard.set(json, forKey: linesKey)
        }
    }
    
    func getLines() -> [Line] {
        let decoder = JSONDecoder()
        guard let json = UserDefaults.standard.object(forKey: linesKey) as? Data,
            let lines = try? decoder.decode([Line].self, from: json) else {
            return []
        }
        return lines
    }
}
