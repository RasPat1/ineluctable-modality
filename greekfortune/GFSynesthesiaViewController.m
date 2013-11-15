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
    BOOL _shouldKill;
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
    [UIView animateWithDuration:0.2 delay:0.0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
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

@end
