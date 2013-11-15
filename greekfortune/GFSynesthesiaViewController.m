//
//  GFSynesthesiaViewController.m
//  greekfortune
//
//  Created by Eddie Zhang on 11/15/13.
//  Copyright (c) 2013 Rasesh. All rights reserved.
//

#import "GFSynesthesiaViewController.h"

@implementation GFSynesthesiaViewController {
    CGFloat _hue;
    double _speed;
    BOOL _shouldKill;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _speed = 0.2;
}

- (void)viewDidAppear:(BOOL)animated {
    [self animateShift];
}

- (void)shiftColor {
    CGFloat newHue = /*(_hue + 0.05f);

    while (newHue > 1.0f) {
        newHue = newHue - 1.0f;
    }*/

    (float)(arc4random() % 1000) / 1000.0f;

    self.view.backgroundColor = [UIColor colorWithHue:newHue saturation:1.0f brightness:1.0f alpha:1.0f];
    _hue = newHue;
}

- (void)animateShift {
    [UIView animateWithDuration:_speed delay:0.0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
        [self shiftColor];
    } completion:^(BOOL finished) {
        if (!_shouldKill) {
            [self animateShift];
        } else {
            [self dismiss];
        }
    }];
}

- (IBAction)didPressClose:(UIButton *)sender {
    _shouldKill = YES;
}

- (void)dismiss {
    [self.delegate didRequestDismissFromViewController:self];
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    BOOL shouldBegin = YES;

    if (gestureRecognizer == self.pgr) {

        CGPoint delta = [self.pgr translationInView:self.view];

        if (fabs(delta.x) > fabs(delta.y)) {
            shouldBegin = NO;
        }
    }

    return shouldBegin;
}

- (IBAction)handlePan:(UIPanGestureRecognizer *)sender {
    CGFloat dy = [sender translationInView:self.view].y;
    [sender setTranslation:CGPointZero inView:self.view];

    double newSpeed = _speed + dy / 100.0;
    if (newSpeed < 0.0) {
        newSpeed = 0;
    }
    _speed = newSpeed;

}

- (IBAction)handleSingleTap:(UITapGestureRecognizer *)sender {
}
- (IBAction)handleDoubleTap:(UITapGestureRecognizer *)sender {
}


@end
