//
//  MMFirstMMFirstRouter.m
//  SimpleVIPERApp
//
//  Created by Artem on 08/01/2017.
//  Copyright © 2017 MadMagCompany. All rights reserved.
//

#import "MMFirstRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation MMFirstRouter

#pragma mark - Методы MMFirstRouterInput
-(void)goBack {
    [self.transitionHandler closeCurrentModule:true];
}

@end
