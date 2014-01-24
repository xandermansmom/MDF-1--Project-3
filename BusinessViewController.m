//
//  BusinessViewController.m
//  MDF 1 -Project 3
//
//  Created by Michele Laramore on 1/18/14.
//  Copyright (c) 2014 Michele Laramore. All rights reserved.
//

#import "BusinessViewController.h"
#import "BusinessCustomCell.h"

@interface BusinessViewController ()
@end
@implementation BusinessViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated
{
    //Where the map will focus
    CLLocationCoordinate2D zoomLocation = CLLocationCoordinate2DMake(30.571427, -98.275748);
    
    MKCoordinateSpan zoomSpan;
    zoomSpan.latitudeDelta = 3.5f;
    zoomSpan.longitudeDelta = 3.5f;
    businessMapView.region = MKCoordinateRegionMake(zoomLocation, zoomSpan);
    
    
    NSMutableArray *pinAnnotations = [[NSMutableArray alloc]init];
    for (int i=0; i<10; i++)
    {
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        point.coordinate = CLLocationCoordinate2DMake (30.571427f, -98.275748f);
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
        //drop pin animation
       pinAnnotationView.animatesDrop = true;
        // show business name
       
        //offset callout
        pinAnnotationView.calloutOffset = CGPointMake(-20, 5);
        
    }
    //display the pin annotation view
    return pinAnnotationView;
}

- (void)locationManager:(CLLocationManager *)manager
	didUpdateToLocation:(CLLocation *)newLocation
		   fromLocation:(CLLocation *)oldLocation
{
    
    
}

-(void)viewWillAppear:(BOOL)animated
{ //create vars for labels
    NSString *thisLat = [NSString stringWithFormat:@"Latitude: %f", _thisLocation.latitude];
    NSString *thisLong = [NSString stringWithFormat:@"Longitude: %f", _thisLocation.longitude];
    
    //write to labels
    self->nameLabel.text = self.thisName;
    self->locationLabel.text = thisLat;
    self->longLabel.text = thisLong;
    
}


- (IBAction)unwindToMainMenu:(UIStoryboardSegue*)sender

{
}

@end
