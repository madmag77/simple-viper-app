//
//  MMFirstMMFirstViewControllerTests.m
//  SimpleVIPERApp
//
//  Created by Artem on 08/01/2017.
//  Copyright © 2017 MadMagCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MMFirstViewController_Testable.h"

#import "MMFirstViewOutput.h"

@interface MMFirstViewControllerTests : XCTestCase

@property (nonatomic, strong) MMFirstViewController *controller;

@property (nonatomic, strong) id mockOutput;
@property (nonatomic, strong) id selfMock;

@end

@implementation MMFirstViewControllerTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.controller = [[MMFirstViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(MMFirstViewOutput));
    self.selfMock = OCMPartialMock(self.controller);

    self.controller.output = self.mockOutput;
}

- (void)tearDown {
    self.controller = nil;

    self.mockOutput = nil;
    self.selfMock = nil;

    [super tearDown];
}

#pragma mark - Тестирование жизненного цикла

- (void)testThatControllerNotifiesPresenterOnDidLoad {
	// given

	// when
	[self.controller viewDidLoad];

	// then
	OCMVerify([self.mockOutput didTriggerViewReadyEvent]);
}


#pragma mark - Тестирование методов MWSMoviesListViewOutput

- (void)testThatControllerNotifiesPresenterOnWillAppear {
    // given
    
    // when
    [self.controller viewWillAppear:NO];
    
    // then
    OCMVerify([self.mockOutput viewWillApear]);
}

- (void)testThatControllerNotifiesPresenterOnBackBtnTap {
    // given
    
    // when
    [self.controller backBtnTap];
    
    // then
    OCMVerify([self.mockOutput backBtnTap]);
}


#pragma mark - Тестирование методов интерфейса

#pragma mark - Тестирование методов MMFirstViewInput

- (void)testThatControllerRunsCreateElements {
    // given
    
    // when
    [self.controller setupInitialState];
    
    // then
    OCMVerify([self.selfMock createViewElements]);
}

@end
