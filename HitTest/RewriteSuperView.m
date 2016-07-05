//
//  RewriteSuperView.m
//  HitTest
//
//  Created by chenyufeng on 7/5/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "RewriteSuperView.h"

@implementation RewriteSuperView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"tag=====%ld",self.tag);
    CGPoint bottomPoint = [self.bottom convertPoint:point fromView:self];
    if ([self.bottom pointInside:bottomPoint withEvent:event])
    {
        return self.bottom;
    }

    return [super hitTest:point withEvent:event];
}


@end
