//
//  ApplicationAssembly.m
//  SimpleVIPERApp
//
//  Created by Artem Goncharov on 08/01/2017.
//  Copyright © 2017 MadMagCompany. All rights reserved.
//

#import "ApplicationAssembly.h"
#import "AppDelegate.h"

@implementation ApplicationAssembly
- (AppDelegate *)appDelegate {
    return [TyphoonDefinition withClass:[AppDelegate class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(firstViewController)
                                                    with:[self firstViewController]];
                           }];
}

- (UIViewController *) firstViewController {
    return [self getViewControllerWithNameForApp:@"MMFirstViewController"];
}

- (UIViewController *) getViewControllerWithNameForApp:(NSString *)name {
    return [TyphoonFactoryDefinition withFactory:[self mainStoryboardForApp]
                                        selector:@selector(instantiateViewControllerWithIdentifier:)
                                      parameters:^(TyphoonMethod *factoryMethod) {
                                          [factoryMethod injectParameterWith:name];
                                      } configuration:^(TyphoonFactoryDefinition *definition) {
                                      }];
}

- (UIStoryboard*)mainStoryboardForApp {
    return [TyphoonDefinition withClass:[TyphoonStoryboard class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition useInitializer:@selector(storyboardWithName:factory:bundle:)
                                              parameters:^(TyphoonMethod *initializer) {
                                                  [initializer injectParameterWith:@"Main"];
                                                  [initializer injectParameterWith:self];
                                                  [initializer injectParameterWith:nil];
                                              }];
                          }];
}

@end
