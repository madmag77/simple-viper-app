//
//  MMFirstMMFirstModuleInput.h
//  SimpleVIPERApp
//
//  Created by Artem on 08/01/2017.
//  Copyright © 2017 MadMagCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>

@protocol MMFirstModuleInput <RamblerViperModuleInput>

/**
 @author Artem

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;

@end
