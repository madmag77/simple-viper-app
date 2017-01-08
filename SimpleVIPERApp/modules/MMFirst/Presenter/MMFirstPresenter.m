//
//  MMFirstMMFirstPresenter.m
//  SimpleVIPERApp
//
//  Created by Artem on 08/01/2017.
//  Copyright © 2017 MadMagCompany. All rights reserved.
//

#import "MMFirstPresenter.h"
#import "MMFirstViewInput.h"
#import "MMFirstInteractorInput.h"
#import "MMFirstRouterInput.h"

@implementation MMFirstPresenter

#pragma mark - Методы MMFirstModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы MMFirstViewOutput

- (void) viewWillApear {
}

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

- (void)backBtnTap {
    [self.router goBack];
}

@end
