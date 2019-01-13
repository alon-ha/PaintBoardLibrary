//
//  RNTPaintBoardManager.swift
//  RNTPaintBoardLibrary
//
//  Created by Alon Haiut on 13/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation

@objc(RNTPaintBoardManager)
class PaintBoardManager: RCTViewManager {
    override func view() -> UIView! {
        return PaintBoard(backgorundColor: .white)
    }
    
    override static func requiresMainQueueSetup() -> Bool {
        return true
    }
}
