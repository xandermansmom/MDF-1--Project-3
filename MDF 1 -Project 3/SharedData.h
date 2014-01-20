//
//  SharedData.h
//  MDF 1 -Project 3
//
//  Created by Michele Laramore on 1/19/14.
//  Copyright (c) 2014 Michele Laramore. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SharedData : NSObject

{
    NSMutableArray *businesses;
}

@property (nonatomic, retain) NSMutableArray *businesses;

+(SharedData*)sharedInstance;



@end
