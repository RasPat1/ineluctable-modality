//
//  GFSynesthesiaViewController.h
//  greekfortune
//
//  Created by Eddie Zhang on 11/15/13.
//  Copyright (c) 2013 Rasesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GFModalDismissDelegate.h"

@interface GFSynesthesiaViewController : UIViewController <UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet id <GFModalDismissDelegate> delegate;

@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *pgr;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *stgr;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *dtgr;


@end
