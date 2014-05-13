//
//  SliderContentViewController.m
//  LeftRightSlider
//
//  Created by jimple on 14-5-12.
//  Copyright (c) 2014年 heroims. All rights reserved.
//

#import "SliderContentViewController.h"

@interface SliderContentViewController ()

@end

@implementation SliderContentViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if (self.navigationController && (self.navigationController.viewControllers.count > 0))
    {
        [SliderViewController sharedSliderController].canMoveWithGesture = (self.navigationController.viewControllers.firstObject == self);
    }else{}
}


@end
