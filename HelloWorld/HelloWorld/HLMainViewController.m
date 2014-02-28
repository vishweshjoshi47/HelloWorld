//
//  HLMainViewController.m
//  HelloWorld
//
//  Created by Vishwesh K Joshi on 22/01/14.
//  Copyright (c) 2014 Vishwesh K Joshi. All rights reserved.
//

#import "HLMainViewController.h"
#import <MapKit/MapKit.h>

@interface HLMainViewController () <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation HLMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mapView.delegate = self;
    CLLocationCoordinate2D indiaCoordinate;
    indiaCoordinate.latitude = 18.906450;
    indiaCoordinate.longitude = 72.904096;
    
    MKCoordinateRegion region ;
    region.center = indiaCoordinate;
    region.span = MKCoordinateSpanMake(indiaCoordinate.latitude, indiaCoordinate.longitude);

    
    [self.mapView setRegion:region animated:YES];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
 CLLocationCoordinate2D  coordinatePt = [self.mapView convertPoint:[[touches anyObject] locationInView:self.mapView] toCoordinateFromView:self.mapView];
    NSLog(@"%f,%f",coordinatePt.latitude,coordinatePt.longitude);
}
@end
