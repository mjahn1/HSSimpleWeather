//
//  HSSimpleWeatherApp.m
//  HSSimpleWeather
//
//  Created by Anthony Roldan on 7/13/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import "HSSimpleWeatherApp.h"


@implementation HSSimpleWeatherApp

+ (UINavigationController *)baseNavigationController {
    return [[UIStoryboard storyboardWithName:@"SimpleWeather" bundle:nil] instantiateInitialViewController];
}

+ (NSString *)appIdentifierString {
    return @"Weather";
}

+ (NSArray *)routesToRegister {
    return @[];
}

@end
