//
//  ViewController.m
//  LocationShow
//
//  Created by qingyun on 14-9-3.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
@interface ViewController ()<CLLocationManagerDelegate, MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@property (strong, nonatomic) CLLocationManager *locationManager;

@property (nonatomic, strong) NSMutableArray *locationArray;//所有点的集合
@property (nonatomic, strong) CLLocation * startLocation;//开始点

@property (nonatomic, strong) MKPolyline *nowLine;//当前显示的线

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //初始化保存点的数组集合
    self.locationArray = [[NSMutableArray alloc] init];
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    [self.locationManager startUpdatingLocation];
}

#pragma mark - location delegate

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    if (!self.startLocation) {
        //设置起始点
        self.startLocation = locations.lastObject;
        
        //设置地图显示区域
        self.mapView.region = MKCoordinateRegionMake(self.startLocation.coordinate, MKCoordinateSpanMake(0.005, 0.005));
    }
    //所有点都保存下来
    [self.locationArray addObjectsFromArray:locations];
    NSLog(@"%s____%d", __func__, self.locationArray.count);
    
    //将定位的点，转化为地图上的线
    MKPolyline *route = [self lineWithLocations:self.locationArray];
    [self.mapView insertOverlay:route atIndex:0];
    if (self.nowLine) {
        [self.mapView removeOverlay:self.nowLine];
    }
    self.nowLine = route;
    
    
}

-(MKPolyline *)lineWithLocations:(NSArray *)locations{
    MKMapPoint *point = malloc(sizeof(MKMapPoint) * locations.count);
    
    for (int i = 0; i< locations.count; i++) {
        CLLocation *location = locations[i];
        //讲定位的点，转化为地图上的点
        point[i] = MKMapPointForCoordinate(location.coordinate);
    }
    MKPolyline *line = [MKPolyline polylineWithPoints:point count:locations.count];
    return line;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

#pragma mark - mapView delegate
-(MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id<MKOverlay>)overlay{
    if ([overlay isKindOfClass:[MKPolyline class]]) {
        MKPolylineView *lineView = [[MKPolylineView alloc] initWithPolyline:overlay];
        lineView.strokeColor = [UIColor redColor];
        lineView.fillColor = [UIColor redColor];
        lineView.lineWidth = 6;
        return lineView;
    }
    return nil;
}

@end
