//
//  RewriteAllView.m
//  HitTest
//
//  Created by chenyufeng on 7/5/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "RewriteSubView.h"

@implementation RewriteSubView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    UIView *view = [super hitTest:point withEvent:event];
    if (view == self)
    {
        return self;
    }

    return view;
}

/**
 让该View始终不响应点击
 */
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    return NO;
}

@end
