//
//  MMFirstMMFirstViewController.h
//  SimpleVIPERApp
//
//  Created by Artem on 08/01/2017.
//  Copyright © 2017 MadMagCompany. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMFirstViewInput.h"

@protocol MMFirstViewOutput;

@interface MMFirstViewController : UIViewController <MMFirstViewInput>

@property (nonatomic, strong) id<MMFirstViewOutput> output;

@end
