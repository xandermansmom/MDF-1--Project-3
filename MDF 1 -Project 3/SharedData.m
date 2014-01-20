//
//  SharedData.m
//  MDF 1 -Project 3
//
//  Created by Michele Laramore on 1/19/14.
//  Copyright (c) 2014 Michele Laramore. All rights reserved.
//

#import "SharedData.h"
#import "BusCustomClass.h"

static SharedData* sharedInstance;


@implementation SharedData
-(void)viewDidLoad

{
    BusCustomClass *bus1 =[[BusCustomClass alloc] initWithName:@"Bella Medical Spa & Laser" address:@"707 Third Street, Marble Falls, TX 78654 " location:CLLocationCoordinate2DMake(30.571427, -98.275748)];
    
    BusCustomClass *bus2 =[[BusCustomClass alloc]initWithName:@"Horseshoe Bay Resort" address:@"200 Hi Circle, Horseshoe Bay, TX 78657" location:CLLocationCoordinate2DMake(30.546588, -98.360245)];
    
    BusCustomClass *bus3 =[[BusCustomClass alloc]initWithName:@"Flat Creek Estate Vineyard and Winery" address:@"24912 Singleton Rd. East, Marble Falls, TX 78654" location:CLLocationCoordinate2DMake(30.481595, -98.045168)];

    BusCustomClass *bus4 =[[BusCustomClass alloc]initWithName:@"Doc's Fish Camp & Grill" address:@"900 Hwy 1431 West, Marble Falls, TX 78654" location:CLLocationCoordinate2DMake(30.578463,-98.273170)];

    BusCustomClass *bus5 =[[BusCustomClass alloc]initWithName:@"Hill Country Community Theatre" address:@"4003 FM 2147, Marble Falls, TX 78654" location:CLLocationCoordinate2DMake(30.570910, -98.237234)];

    BusCustomClass *bus6 =[[BusCustomClass alloc]initWithName:@"BJ Designs" address:@"309 Main Street, Suite 2, Marble Falls, TX 78654" location:CLLocationCoordinate2DMake(30.572526, -98.276513)];
    
    BusCustomClass *bus7 =[[BusCustomClass alloc]initWithName:@"Choccolatte's" address:@"301 Main Street, Marble Falls, TX 78654" location:CLLocationCoordinate2DMake(30.571988, -98.277311 )];
    
    BusCustomClass *bus8 =[[BusCustomClass alloc]initWithName:@"Blue Bonnet Cafe",  address:@"211 Hwy 281, Marble Falls, TX 78654" location:CLLocationCoordinate2DMake(30.570262 , -98.276273)];
    
    BusCustomClass *bus9 =[[BusCustomClass alloc]initWithName:@"Julie's Cocina" address:@"4119 Hwy 2147 Unit 1, Cottonwood Shores, TX 78657" location:CLLocationCoordinate2DMake(30.549033, -98.329119)];

    BusCustomClass *bus10 =[[BusCustomClass alloc]initWithName:@"Showbiz Cinema" address:@"2800 Hwy 281, Marble Falls, TX 78654" location:CLLocationCoordinate2DMake(30.528276, -98.284728)];
}

@synthesize businesses;

+ (SharedData*)sharedInstance
{
    if ( !sharedInstance)
    {
        sharedInstance = [[SharedData alloc] init];
        
    }
    return sharedInstance;
}

- (id)init
{
    self = [super init];
    if ( self )
    {
        businesses = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
