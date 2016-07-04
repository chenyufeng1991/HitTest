//
//  TopView.m
//  HitTest
//
//  Created by chenyufeng on 7/4/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "TopView.h"

@implementation TopView

#if 1
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    UIView *hitView = [super hitTest:point withEvent:event];
    if (hitView == self)
    {
        NSLog(@"%s,hitView == self",__FUNCTION__);
        return nil;
    }
    else
    {
        NSLog(@"%s,hitView != self",__FUNCTION__);
        return hitView;
    }

    return nil;
}
#endif

@end
