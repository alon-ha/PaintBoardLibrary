//
//  RNTPaintBoardManager.m
//  RNPaintBoardLibrary
//
//  Created by Alon Haiut on 10/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RNPaintBoardLibrary-Swift.h"
#import <React/RCTViewManager.h>
#import <React/RCTUIManager.h>

@interface RNTPaintBoardManager : RCTViewManager
@end

@implementation RNTPaintBoardManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    return [[PaintBoard alloc] initWithIrrelevantParameter:YES];
}

+ (BOOL)requiresMainQueueSetup {
    return NO;
}

- (dispatch_queue_t)methodQueue {
    return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(clear: (nonnull NSNumber *)reactTag) {
    [self.bridge.uiManager addUIBlock:^(RCTUIManager *uiManager, NSDictionary<NSNumber *, UIView *> *viewRegistry) {
        UIView *view = viewRegistry[reactTag];
        if (![view isKindOfClass:[PaintBoard class]]) {
            RCTLog(@"expecting UIView, got: %@", view);
        }
        else {
            PaintBoard *paintBoard = (PaintBoard *)view;
            [paintBoard clear];
        }
    }];
}

@end
