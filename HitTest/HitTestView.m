//
//  BottomView.m
//  HitTest
//
//  Created by chenyufeng on 7/4/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "HitTestView.h"

@implementation HitTestView

#if 0
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"tag = %ld",self.tag);
    UIView *hitView = [super hitTest:point withEvent:event];
    NSLog(@"Return tag = %ld",self.tag);

    if ([hitView isEqual:self.top])
    {
        return self;
    }
    else
    {
        return hitView;
    }

    return nil;
}
#endif

#if 1
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    CGPoint ttPoint = [self.bottom convertPoint:point fromView:self];
    NSLog(@"point = %@;ttPoint = %@",NSStringFromCGPoint(point),NSStringFromCGPoint(ttPoint));
    if ([self.bottom pointInside:ttPoint withEvent:event])
    {
        return self.bottom;
    }

    return [super hitTest:point withEvent:event];
}
#endif


@end
