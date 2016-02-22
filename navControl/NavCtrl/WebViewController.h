//
//  WebViewController.h
//  NavCtrl
//
//  Created by Aditya Narayan on 2/19/16.
//  Copyright © 2016 Aditya Narayan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

@property (nonatomic) NSInteger currentProductNumber;
@property (nonatomic, retain) NSArray *products;
@property (nonatomic, retain) NSArray *productUrls;
@property (nonatomic, retain) NSString *productUrl;


@end
