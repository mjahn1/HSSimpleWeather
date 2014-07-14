//
//  HSWeatherDetailsViewController.m
//  HSSimpleWeather
//
//  Created by Anthony Roldan on 7/13/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import "HSWeatherDetailsViewController.h"
#import <OWMWeatherAPI.h>
#import <NSString+UrlEncode.h>

@interface HSWeatherDetailsViewController ()

@end

@implementation HSWeatherDetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"City name: %@", self.cityName);
    self.title = [NSString stringWithFormat:@"Weather: %@", self.cityName];
    [self showWeatherForCity:self.cityName];
}

- (void)showWeatherForCity:(NSString *)cityName {
    OWMWeatherAPI *weatherAPI = [[OWMWeatherAPI alloc] initWithAPIKey:@"1111111111"];
    [weatherAPI setTemperatureFormat:kOWMTempFahrenheit];
    
    [weatherAPI currentWeatherByCityName:[cityName urlEncode] withCallback:^(NSError *error, NSDictionary *result) {
        if(error != nil) {
            NSLog(@"Error getting weather");
            return;
        }
        
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        [formatter setMaximumFractionDigits:1];
        [formatter setRoundingMode: NSNumberFormatterRoundDown];
        
        self.currentTemp.text = [formatter stringFromNumber:result[@"main"][@"temp"]];
        self.high.text = [formatter stringFromNumber:result[@"main"][@"temp_max"]];
        self.low.text = [formatter stringFromNumber:result[@"main"][@"temp_min"]];    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
