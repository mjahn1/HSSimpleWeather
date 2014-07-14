//
//  HSSimpleWeatherApp.m
//  HSSimpleWeather
//
//  Created by Anthony Roldan on 7/13/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import "HSSimpleWeatherApp.h"
#import "HSWeatherDetailsViewController.h"
#import <HSRoute.h>

@implementation HSSimpleWeatherApp

+ (UINavigationController *)baseNavigationController {
    return [[UIStoryboard storyboardWithName:@"SimpleWeather" bundle:nil] instantiateInitialViewController];
}

+ (NSString *)appIdentifierString {
    return @"Weather";
}

+ (NSArray *)routesToRegister {
    return @[
             [HSRoute routeWithUrl:@"/weather/:cityName" andAction:^BOOL(id<HSRoutingDelegate> routingDelegate, NSString *url, NSDictionary *parameters) {
                 HSWeatherDetailsViewController *weatherDetailController = [[UIStoryboard storyboardWithName:@"SimpleWeather" bundle:nil] instantiateViewControllerWithIdentifier:@"CityWeather"];
                 weatherDetailController.cityName = parameters[@"cityName"];
                 
                 [routingDelegate shouldPushViewController:weatherDetailController];
                 return YES;
             }]
             ];
}

@end
