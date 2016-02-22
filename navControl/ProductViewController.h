//
//  ProductViewController.h
//  NavCtrl
//
//  Created by Aditya Narayan on 10/22/13.
//  Copyright (c) 2013 Aditya Narayan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebViewController.h"

@interface ProductViewController : UITableViewController
@property (nonatomic, retain) NSArray *products;
@property (nonatomic) NSInteger currentCompanyNumber;
@property (nonatomic, retain) WebViewController *myWebViewCtrlr;

@end
