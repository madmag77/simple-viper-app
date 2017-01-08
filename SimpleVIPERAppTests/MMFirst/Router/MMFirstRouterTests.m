//
//  MMFirstMMFirstRouterTests.m
//  SimpleVIPERApp
//
//  Created by Artem on 08/01/2017.
//  Copyright © 2017 MadMagCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MMFirstRouter.h"

@interface MMFirstRouterTests : XCTestCase

@property (nonatomic, strong) MMFirstRouter *router;

@end

@implementation MMFirstRouterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.router = [[MMFirstRouter alloc] init];
}

- (void)tearDown {
    self.router = nil;

    [super tearDown];
}

@end
