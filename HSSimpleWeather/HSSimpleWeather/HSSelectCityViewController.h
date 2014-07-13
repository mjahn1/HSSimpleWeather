//
//  HSSelectCityViewController.h
//  HSSimpleWeather
//
//  Created by Anthony Roldan on 7/13/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HSSelectCityViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *cityName;
- (IBAction)getWeather:(id)sender;

@end
