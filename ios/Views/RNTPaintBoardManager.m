//
//  RNTPaintBoardManager.m
//  RNPaintBoardLibrary
//
//  Created by Alon Haiut on 10/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RNPaintBoardLibrary-Swift.h"
#import <React/RCTViewManager.h>

@interface RNTPaintBoardManager : RCTViewManager
@end

@implementation RNTPaintBoardManager

RCT_EXPORT_MODULE()

- (UIView *)view {
    return [[PaintBoard alloc] initWithBackgorundColor:UIColor.whiteColor];
}

@end
