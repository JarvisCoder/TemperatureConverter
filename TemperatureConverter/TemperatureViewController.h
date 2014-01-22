//
//  TemperatureViewController.h
//  TemperatureConverter
//
//  Created by Arjun Pandiyan on 1/21/14.
//  Copyright (c) 2014 Arjun Pandiyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TemperatureViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITextField *tx_farenheit;
@property (nonatomic, strong) IBOutlet UITextField *tx_celcius;
@property (nonatomic, strong) IBOutlet UIButton *btn_convert;

@end
