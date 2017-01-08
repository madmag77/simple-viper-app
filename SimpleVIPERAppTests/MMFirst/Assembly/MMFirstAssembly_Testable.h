//
//  MMFirstMMFirstAssembly_Testable.h
//  SimpleVIPERApp
//
//  Created by Artem on 08/01/2017.
//  Copyright © 2017 MadMagCompany. All rights reserved.
//

#import "MMFirstAssembly.h"

@class MMFirstViewController;
@class MMFirstInteractor;
@class MMFirstPresenter;
@class MMFirstRouter;

@interface MMFirstAssembly ()

- (MMFirstViewController *)viewMMFirstModule;
- (MMFirstPresenter *)presenterMMFirstModule;
- (MMFirstInteractor *)interactorMMFirstModule;
- (MMFirstRouter *)routerMMFirstModule;

@end
