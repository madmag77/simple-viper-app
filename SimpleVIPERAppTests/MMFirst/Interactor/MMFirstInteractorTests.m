//
//  MMFirstMMFirstInteractorTests.m
//  SimpleVIPERApp
//
//  Created by Artem on 08/01/2017.
//  Copyright © 2017 MadMagCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MMFirstInteractor_Testable.h"

#import "MMFirstInteractorOutput.h"

@interface MMFirstInteractorTests : XCTestCase

@property (nonatomic, strong) MMFirstInteractor *interactor;

@property (nonatomic, strong) id mockOutput;

@end

@implementation MMFirstInteractorTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.interactor = [[MMFirstInteractor alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(MMFirstInteractorOutput));

    self.interactor.output = self.mockOutput;
}

- (void)tearDown {
    self.interactor = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Тестирование методов MMFirstInteractorInput

@end
