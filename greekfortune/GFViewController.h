//
//  GFViewController.h
//  greekfortune
//
//  Created by Rasesh on 8/21/13.
//  Copyright (c) 2013 Rasesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GFModalDismissDelegate.h"

extern NSString * const kGFSynesthesiaPresentSegueIdentifier;

@interface GFViewController : UIViewController <GFModalDismissDelegate>

@property (weak, nonatomic) IBOutlet UIButton *fameBtn;
@property (weak, nonatomic) IBOutlet UILabel *label1;

@end
