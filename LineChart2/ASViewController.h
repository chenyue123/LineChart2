//
//  ASViewController.h
//  LineChart2
//
//  Created by  on 12-11-15.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASDrawLineChart.h"
#import "ASStockInfo.h"
@interface ASViewController : UIViewController
{
     ASDrawLineChart *m_drawLineChart;
}
-(IBAction)buttonPressed:(id)sender;
@end
