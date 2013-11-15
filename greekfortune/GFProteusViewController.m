//
//  GFProteusViewController.m
//  greekfortune
//
//  Created by Eddie Zhang on 11/15/13.
//  Copyright (c) 2013 Rasesh. All rights reserved.
//

#import "GFProteusViewController.h"

@interface GFProteusViewController ()

@property (strong, nonatomic) NSString *proteusText;

@end

@implementation GFProteusViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSError *error;

    NSString *proteusPath = [[NSBundle mainBundle] pathForResource:@"proteus" ofType:@"txt"];
    self.proteusText = [NSString stringWithContentsOfFile:proteusPath encoding:NSUTF8StringEncoding error:&error];

    if (error) {
        self.textView.text = @"Error loading file";
    } else {
        self.textView.text = self.proteusText;
    }
}

@end
