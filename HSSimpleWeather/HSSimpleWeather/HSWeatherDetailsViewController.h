//
//  HSWeatherDetailsViewController.h
//  HSSimpleWeather
//
//  Created by Anthony Roldan on 7/13/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HSWeatherDetailsViewController : UIViewController

@property (strong, nonatomic) NSString *cityName;

@property (weak, nonatomic) IBOutlet UILabel *currentTemp;
@property (weak, nonatomic) IBOutlet UILabel *high;
@property (weak, nonatomic) IBOutlet UILabel *low;

@end
