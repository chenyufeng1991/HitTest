//
//  RewriteAllView.m
//  HitTest
//
//  Created by chenyufeng on 7/5/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "RewriteAllView.h"

@implementation RewriteAllView

/**
 *  在这个案例中，点击父View之外的区域不会被响应，因为不会父容器区域内，所以在父容器测试pointInside时就返回NO，
 然后hitTest就返回nil，所以就不会再测试子View了。
 *
 */
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    UIView *view = [super hitTest:point withEvent:event];

    if (view == self.top)
    {
        return self.top;
    }
    else
    {
        return self;
    }
    
    return nil;
}


@end
