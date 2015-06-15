//
//  TeamViewController.m
//  NavigationControllers
//
//  Created by Yoseob Lee on 6/15/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamDetailViewController.h"
#import "TeamMember.h"
#import "TeamMemberButton.h"

@interface TeamViewController ()


@end

@implementation TeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TeamMember *al = [[TeamMember alloc]initWithName:@"Al" phoneNumber:@"5551212" birthCity:@"Detroit" birthState:@"Michigan" favoriteBand:@"The Beatles" image:[UIImage imageNamed:@"al.jpg"]];
    TeamMember *joe = [[TeamMember alloc]initWithName:@"Joe" phoneNumber:@"1234567" birthCity:@"Chicago" birthState:@"New York" favoriteBand:@"Nirvana" image:[UIImage imageNamed:@"joe.jpg"]];
    TeamMember *chris = [[TeamMember alloc]initWithName:@"Chris" phoneNumber:@"5830381" birthCity:@"Austin" birthState:@"Texas" favoriteBand:@"I don't care" image:[UIImage imageNamed:@"chris.jpg"]];
    TeamMember *avi = [[TeamMember alloc]initWithName:@"Avi" phoneNumber:@"4719581" birthCity:@"San Diego" birthState:@"California" favoriteBand:@"ElectroClippers" image:[UIImage imageNamed:@"avi.jpg"]];
    
    self.dictionaryOfPeeps = @{
                                        @"al": al,
                                        @"joe": joe,
                                        @"chris": chris,
                                        @"avi": avi
                                        };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    TeamDetailViewController *destination = [segue destinationViewController];
    NSString *segueIdentifier = segue.identifier;
    destination.teamMember = self.dictionaryOfPeeps[segueIdentifier];
    
}

@end
