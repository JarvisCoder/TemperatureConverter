//
//  TemperatureViewController.m
//  TemperatureConverter
//
//  Created by Arjun Pandiyan on 1/21/14.
//  Copyright (c) 2014 Arjun Pandiyan. All rights reserved.
//

#import "TemperatureViewController.h"

@interface TemperatureViewController ()

@property  (nonatomic) float celcius;
@property  (nonatomic) float farenheit;

- (void) convertTemperature;
//- (void) farenheitUpdate;
//- (void) celciusUpdate;
//- (BOOL)textFieldShouldBeginEditing;

@end

@implementation TemperatureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title=@"Temperature Converter";
        self.celcius=0;
        self.farenheit=0;
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.btn_convert addTarget:self action:@selector(convertTemperature) forControlEvents:(UIControlEventTouchDown)];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void) farenheitUpdate {
//    self.celcius = 0;
//    self.tx_celcius.text = @"";
//    self.farenheit = [self.tx_farenheit.text floatValue];
//}
//
//- (void) celciusUpdate {
//    self.farenheit = 0;
//    self.tx_farenheit.text = @"";
//    self.celcius = [self.tx_celcius.text floatValue];
//}


- (void) convertTemperature {

    self.celcius = [self.tx_celcius.text floatValue];
    self.farenheit = [self.tx_farenheit.text floatValue];
    if(self.celcius==0) {
        self.celcius = (self.farenheit - 32)/1.8;
        self.tx_celcius.text = [NSString stringWithFormat:@"%0.2f",self.celcius];
    }
    else {
        self.farenheit = self.celcius * 1.8 + 32;
        self.tx_farenheit.text = [NSString stringWithFormat:@"%0.2f",self.farenheit];
    }
}

//- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
//    if(textField == self.tx_celcius){
//        [self celciusUpdate];
//    }
//    elseif(textField == self.tx_farenheit);{
//        [self farenheitUpdate];
//    }
//    return true;
//}





@end
