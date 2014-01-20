//
//  BusinessViewController.m
//  MDF 1 -Project 3
//
//  Created by Michele Laramore on 1/18/14.
//  Copyright (c) 2014 Michele Laramore. All rights reserved.
//

#import "BusinessViewController.h"

@implementation BusinessViewController

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated
{
    //Where the map will focus
    CLLocationCoordinate2D zoomLocation = CLLocationCoordinate2DMake();
    
    MKCoordinateSpan zoomSpan;
    zoomSpan.latitudeDelta = 3.5f;
    zoomSpan.longitudeDelta = 3.5f;
    businessMapView.region = MKCoordinateRegionMake(zoomLocation, zoomSpan);
    
    
    NSMutableArray *pinAnnotations = [[NSMutableArray alloc]init];
    for (int i=0; i<10; i++)
    {
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        point.coordinate = CLLocationCoordinate2DMake (f + (1.0f * i), f);
        point.title = @"Bella Medical Spa & Laser";
        point.subtitle = @"Marble Falls";
        [pinAnnotations addObject:point];
    }
    [businessMapView addAnnotations:pinAnnotations];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    //checks for existing pin annotation view
    MKPinAnnotationView *pinAnnotationView = (MKPinAnnotationView*)[mapView dequeueReusableAnnotationViewWithIdentifier:@"pinID"];
    if (pinAnnotationView == nil)
    {
        //creates a new pin annotation view if one cannot be reused
        pinAnnotationView = [[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"pinID"];
        
        pinAnnotationView.canShowCallout = true;
        pinAnnotationView.animatesDrop = true;
    }
    //display the pin annotation view
    return pinAnnotationView;
}



@end
