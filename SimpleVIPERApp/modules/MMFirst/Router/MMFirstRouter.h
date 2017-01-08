//
//  MMFirstMMFirstRouter.h
//  SimpleVIPERApp
//
//  Created by Artem on 08/01/2017.
//  Copyright © 2017 MadMagCompany. All rights reserved.
//

#import "MMFirstRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface MMFirstRouter : NSObject <MMFirstRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
