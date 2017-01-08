//
//  MMFirstMMFirstAssemblyTests.m
//  SimpleVIPERApp
//
//  Created by Artem on 08/01/2017.
//  Copyright © 2017 MadMagCompany. All rights reserved.
//

#import <RamblerTyphoonUtils/AssemblyTesting.h>
#import <Typhoon/Typhoon.h>

#import "MMFirstAssembly.h"
#import "MMFirstAssembly_Testable.h"

#import "MMFirstViewController.h"
#import "MMFirstPresenter.h"
#import "MMFirstInteractor.h"
#import "MMFirstRouter.h"

@interface MMFirstAssemblyTests : RamblerTyphoonAssemblyTests

@property (nonatomic, strong) MMFirstAssembly *assembly;

@end

@implementation MMFirstAssemblyTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.assembly = [[MMFirstAssembly alloc] init];
    [self.assembly activate];
}

- (void)tearDown {
    self.assembly = nil;

    [super tearDown];
}

#pragma mark - Тестирование создания элементов модуля

- (void)testThatAssemblyCreatesViewController {
    // given
    Class targetClass = [MMFirstViewController class];
    NSArray *protocols = @[
                           @protocol(MMFirstViewInput)
                           ];
    NSArray *dependencies = @[
                              RamblerSelector(output)
                              ];

    // when
    id result = [self.assembly viewMMFirstModule];

    // then
    RamblerTyphoonAssemblyTestsTypeDescriptor *descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass:targetClass
                                                                                                              andProtocols:protocols];
    [self verifyTargetDependency:result
                  withDescriptor:descriptor
                    dependencies:dependencies];
}

- (void)testThatAssemblyCreatesPresenter {
    // given
    Class targetClass = [MMFirstPresenter class];
    NSArray *protocols = @[
                           @protocol(MMFirstModuleInput),
                           @protocol(MMFirstViewOutput),
                           @protocol(MMFirstInteractorOutput)
                           ];
    NSArray *dependencies = @[
                              RamblerSelector(interactor),
                              RamblerSelector(view),
                              RamblerSelector(router)
                              ];

    // when
    id result = [self.assembly presenterMMFirstModule];

    // then
    RamblerTyphoonAssemblyTestsTypeDescriptor *descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass:targetClass
                                                                                                              andProtocols:protocols];
    [self verifyTargetDependency:result
                  withDescriptor:descriptor
                    dependencies:dependencies];
}

- (void)testThatAssemblyCreatesInteractor {
    // given
    Class targetClass = [MMFirstInteractor class];
    NSArray *protocols = @[
                           @protocol(MMFirstInteractorInput)
                           ];
    NSArray *dependencies = @[
                              RamblerSelector(output)
                              ];

    // when
    id result = [self.assembly interactorMMFirstModule];

    // then
    RamblerTyphoonAssemblyTestsTypeDescriptor *descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass:targetClass
                                                                                                              andProtocols:protocols];
    [self verifyTargetDependency:result
                  withDescriptor:descriptor
                    dependencies:dependencies];
}

- (void)testThatAssemblyCreatesRouter {
    // given
    Class targetClass = [MMFirstRouter class];
    NSArray *protocols = @[
                           @protocol(MMFirstRouterInput)
                           ];
    NSArray *dependencies = @[
                              RamblerSelector(transitionHandler)
                              ];

    // when
    id result = [self.assembly routerMMFirstModule];

    // then
    RamblerTyphoonAssemblyTestsTypeDescriptor *descriptor = [RamblerTyphoonAssemblyTestsTypeDescriptor descriptorWithClass:targetClass
                                                                                                              andProtocols:protocols];
    [self verifyTargetDependency:result
                  withDescriptor:descriptor
                    dependencies:dependencies];
}

@end
