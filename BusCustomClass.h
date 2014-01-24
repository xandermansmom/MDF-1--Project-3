//
//  BusCustomClass.h
//  MDF 1 -Project 3
//
//  Created by Michele Laramore on 1/19/14.
//  Copyright (c) 2014 Michele Laramore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface BusCustomClass : NSObject
<CLLocationManagerDelegate>

{
    NSString *name;
    CLLocationCoordinate2D bLocation;
}

@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)NSString *address;
@property (nonatomic, assign)CLLocationCoordinate2D bLocation;
@property (nonatomic, strong)UIImage *busImage;

@end
