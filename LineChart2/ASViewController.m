//
//  ASViewController.m
//  LineChart2
//
//  Created by  on 12-11-15.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import "ASViewController.h"

@implementation ASViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
-(IBAction)buttonPressed:(id)sender
{
    [m_drawLineChart DrawLineChart];
    [self.view addSubview:m_drawLineChart];
    //    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //    button.frame = CGRectMake(200, 20, 60, 30);
    //    [button setTitle:@"Test" forState:UIControlStateNormal];
    //    
    //    [self.view addSubview:button];
    
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImageView *image = [[UIImageView alloc]initWithFrame:CGRectMake(0, 50, 320, 360)];
    m_drawLineChart = [[ASDrawLineChart alloc]init:image];
    
    ASStockInfo * a = [[ASStockInfo alloc]initWithHighestPrice:10.0 andLowestPrice:5.0 andBeginPrice:6.0 andEndPrice:8.0];
    ASStockInfo * b = [[ASStockInfo alloc]initWithHighestPrice:10.0 andLowestPrice:5.0 andBeginPrice:6.0 andEndPrice:12.0];
    ASStockInfo * c = [[ASStockInfo alloc]initWithHighestPrice:10.0 andLowestPrice:5.0 andBeginPrice:6.0 andEndPrice:5.0];
    ASStockInfo * d = [[ASStockInfo alloc]initWithHighestPrice:10.0 andLowestPrice:5.0 andBeginPrice:6.0 andEndPrice:16.0];
    ASStockInfo * e = [[ASStockInfo alloc]initWithHighestPrice:10.0 andLowestPrice:5.0 andBeginPrice:6.0 andEndPrice:2.0];
    
    [m_drawLineChart AddStockInfo:a];
    [m_drawLineChart AddStockInfo:b];
    [m_drawLineChart AddStockInfo:c];
    [m_drawLineChart AddStockInfo:d];
    [m_drawLineChart AddStockInfo:e];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(100, 20, 60, 30);
    [button setTitle:@"Start" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [self.view addSubview:image];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
