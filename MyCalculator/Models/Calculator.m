//
//  Calculator.m
//  MyCalculator
//
//  Created by Denis Slipko on 02.03.17.
//  Copyright © 2017 Denis Slipko. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (instancetype)init{
    self = [super init];
    if (self) {
        _myCounter = 0;
    }
    return self;
}

-(void)clear{
    self.myCounter = 0;
}

-(void)sum:(double) x{
    self.myCounter+= x;
}

-(void)sub:(double) x{
    self.myCounter-= x;
}

-(void)mult:(double) x{
    self.myCounter*= x;
}

-(void)div:(double) x{
    self.myCounter/= x;
}


@end
