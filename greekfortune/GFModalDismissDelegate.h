//
//  GFModalDismissProtocol.h
//  greekfortune
//
//  Created by Eddie Zhang on 11/15/13.
//  Copyright (c) 2013 Rasesh. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol GFModalDismissDelegate <NSObject>

- (void)didRequestDismissFromViewController:(UIViewController *)vc;

@end
