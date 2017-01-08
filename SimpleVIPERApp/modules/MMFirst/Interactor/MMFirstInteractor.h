//
//  MMFirstMMFirstInteractor.h
//  SimpleVIPERApp
//
//  Created by Artem on 08/01/2017.
//  Copyright © 2017 MadMagCompany. All rights reserved.
//

#import "MMFirstInteractorInput.h"


@protocol MMFirstInteractorOutput;

@interface MMFirstInteractor : NSObject <MMFirstInteractorInput>

@property (nonatomic, weak) id<MMFirstInteractorOutput> output;

@end
