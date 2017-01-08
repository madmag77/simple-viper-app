//
//  MMFirstMMFirstViewOutput.h
//  SimpleVIPERApp
//
//  Created by Artem on 08/01/2017.
//  Copyright © 2017 MadMagCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MMFirstViewOutput <NSObject>

/**
 @author Artem

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;
- (void)backBtnTap;
- (void)viewWillApear;
@end
