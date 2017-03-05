//
//  ViewController.h
//  MyCalculator
//
//  Created by Denis Slipko on 02.03.17.
//  Copyright © 2017 Denis Slipko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelResult;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *mathButtons;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *numberButtons;
@end

