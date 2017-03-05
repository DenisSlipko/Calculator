//
//  Calculator.h
//  MyCalculator
//
//  Created by Denis Slipko on 02.03.17.
//  Copyright © 2017 Denis Slipko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (nonatomic,assign) double myCounter;

-(void)clear;
-(void)sum:(double) x;
-(void)sub:(double) x;
-(void)mult:(double) x;
-(void)div:(double) x;

@end
