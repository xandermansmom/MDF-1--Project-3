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
