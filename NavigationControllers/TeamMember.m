//
//  TeamMember.m
//  NavigationControllers
//
//  Created by Yoseob Lee on 6/15/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "TeamMember.h"

@implementation TeamMember



-(instancetype)initWithName:(NSString *)name
                phoneNumber:(NSString *)number
                  birthCity:(NSString *)city
                 birthState:(NSString *)state
               favoriteBand:(NSString *)band
                      image:(UIImage *)image
{
    self = [super init];
    if (self){
        _name = name;
        _phoneNumber = number;
        _birthCity = city;
        _birthState = state;
        _favoriteBand = band;
        _image = image;
    }
    return self;
}

-(instancetype)init{
    self = [self initWithName:@"" phoneNumber:@"" birthCity:@"" birthState:@"" favoriteBand:@"" image:nil];
    return self;
}
@end
