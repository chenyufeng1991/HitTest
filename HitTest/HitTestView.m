//
//  BottomView.m
//  HitTest
//
//  Created by chenyufeng on 7/4/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "HitTestView.h"

@implementation HitTestView

#if 1
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"tag = %ld,是否点击在该视图：%@",self.tag,[NSNumber numberWithBool:[super pointInside:point withEvent:event]]);

    UIView *hitView = [super hitTest:point withEvent:event];
    if (hitView == self)
    {
        return nil;
    }
    else
    {
        return hitView;
    }

    return nil;
}
#endif

@end
