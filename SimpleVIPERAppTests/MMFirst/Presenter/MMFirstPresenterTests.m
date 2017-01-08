//
//  MMFirstMMFirstPresenterTests.m
//  SimpleVIPERApp
//
//  Created by Artem on 08/01/2017.
//  Copyright © 2017 MadMagCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MMFirstPresenter_Testable.h"

#import "MMFirstViewInput.h"
#import "MMFirstInteractorInput.h"
#import "MMFirstRouterInput.h"

@interface MMFirstPresenterTests : XCTestCase

@property (nonatomic, strong) MMFirstPresenter *presenter;

@property (nonatomic, strong) id mockInteractor;
@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;

@end

@implementation MMFirstPresenterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.presenter = [[MMFirstPresenter alloc] init];

    self.mockInteractor = OCMProtocolMock(@protocol(MMFirstInteractorInput));
    self.mockRouter = OCMProtocolMock(@protocol(MMFirstRouterInput));
    self.mockView = OCMProtocolMock(@protocol(MMFirstViewInput));
   
    self.presenter.interactor = self.mockInteractor;
    self.presenter.router = self.mockRouter;
    self.presenter.view = self.mockView;
}

- (void)tearDown {
    self.presenter = nil;

    self.mockView = nil;
    self.mockRouter = nil;
    self.mockInteractor = nil;
   
    [super tearDown];
}

#pragma mark - Тестирование методов MMFirstModuleInput

#pragma mark - Тестирование методов MMFirstViewOutput

- (void)testThatPresenterHandlesViewReadyEvent {
    // given


    // when
    [self.presenter didTriggerViewReadyEvent];

    // then
    OCMVerify([self.mockView setupInitialState]);
}

- (void)testThatPresenterTransferBackBtnTapToRouter {
    // given

    
    // when
    [self.presenter backBtnTap];
    
    // then
    OCMVerify([self.mockRouter goBack]);
}


#pragma mark - Тестирование методов MMFirstInteractorOutput


@end
