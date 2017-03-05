//
//  ViewController.m
//  MyCalculator
//
//  Created by Denis Slipko on 02.03.17.
//  Copyright © 2017 Denis Slipko. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()
{
    NSUInteger operationsOfMath;
    NSString *operationsOfString;
    BOOL operationsOfEditing;
    double someOperand;
}

@property (nonatomic, strong) Calculator *calculator;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.calculator = [[Calculator alloc] init];
    operationsOfString = @"";
    operationsOfEditing = NO;
    someOperand = 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (IBAction)inputValue:(UIButton*)sender {
    NSString *tagNumber = [NSString stringWithFormat:@"%li",sender.tag];
    operationsOfString = [operationsOfString stringByAppendingString:tagNumber];
    self.labelResult.text = operationsOfString;
    
    if (!operationsOfEditing) {
        self.calculator.myCounter = [operationsOfString doubleValue];
    } else{
        someOperand = [operationsOfString doubleValue];
    }
}

- (IBAction)clearAllField:(UIButton*)sender {
   operationsOfString = @"";
    self.labelResult.text = @"0";
    
}
- (IBAction)MathOperations:(UIButton*)sender {
    operationsOfString = @"";
    operationsOfMath = sender.tag;
    operationsOfEditing = YES;
}
- (IBAction)resultPressedButton:(UIButton*)sender {
    self.labelResult.text = [NSString stringWithFormat:@"%d",[self someOperationsOfMath]];
    operationsOfEditing = NO;
    operationsOfString = @"";
}
    


- (int) someOperationsOfMath {
    NSLog(@" = %f\n = %f",self.calculator.myCounter,someOperand);
    switch (operationsOfMath) {
        case 1:
            [self.calculator sum:someOperand];
            break;
        case 2:
            [self.calculator sub:someOperand];
            break;
        case 3:
            [self.calculator mult:someOperand];
            break;
        case 4:
            [self.calculator div:someOperand];
            break;
    }
    return (int)self.calculator.myCounter;
}


@end
