//
//  MMFirstMMFirstPresenter.h
//  SimpleVIPERApp
//
//  Created by Artem on 08/01/2017.
//  Copyright © 2017 MadMagCompany. All rights reserved.
//

#import "MMFirstViewOutput.h"
#import "MMFirstInteractorOutput.h"
#import "MMFirstModuleInput.h"

@protocol MMFirstViewInput;
@protocol MMFirstInteractorInput;
@protocol MMFirstRouterInput;

@interface MMFirstPresenter : NSObject <MMFirstModuleInput, MMFirstViewOutput, MMFirstInteractorOutput>

@property (nonatomic, weak) id<MMFirstViewInput> view;
@property (nonatomic, strong) id<MMFirstInteractorInput> interactor;
@property (nonatomic, strong) id<MMFirstRouterInput> router;

@end
