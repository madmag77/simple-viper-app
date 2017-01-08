//
//  MMFirstMMFirstAssembly.m
//  SimpleVIPERApp
//
//  Created by Artem on 08/01/2017.
//  Copyright © 2017 MadMagCompany. All rights reserved.
//

#import "MMFirstAssembly.h"

#import "MMFirstViewController.h"
#import "MMFirstInteractor.h"
#import "MMFirstPresenter.h"
#import "MMFirstRouter.h"

#import "ViperMcFlurry.h"


@implementation MMFirstAssembly

- (MMFirstViewController *)viewMMFirstModule {
    return [TyphoonDefinition withClass:[MMFirstViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterMMFirstModule]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterMMFirstModule]];
                          }];
}

- (MMFirstInteractor *)interactorMMFirstModule {
    return [TyphoonDefinition withClass:[MMFirstInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterMMFirstModule]];
                          }];
}

- (MMFirstPresenter *)presenterMMFirstModule {
    return [TyphoonDefinition withClass:[MMFirstPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewMMFirstModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorMMFirstModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerMMFirstModule]];

                          }];
}

- (MMFirstRouter *)routerMMFirstModule {
    return [TyphoonDefinition withClass:[MMFirstRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewMMFirstModule]];
                          }];
}

@end
