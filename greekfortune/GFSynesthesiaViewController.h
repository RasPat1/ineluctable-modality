//
//  GFSynesthesiaViewController.h
//  greekfortune
//
//  Created by Eddie Zhang on 11/15/13.
//  Copyright (c) 2013 Rasesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GFModalDismissDelegate.h"

@interface GFSynesthesiaViewController : UIViewController

@property (weak, nonatomic) IBOutlet id <GFModalDismissDelegate> delegate;

@end
