//
//  WebViewController.m
//  NavCtrl
//
//  Created by Aditya Narayan on 2/19/16.
//  Copyright © 2016 Aditya Narayan. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()
@property (retain, nonatomic) IBOutlet UIWebView *myWebView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSLog(@"%li",self.currentProductNumber);

    
    if ([self.title isEqualToString:@"iPad"]) {
        self.products = @[@"iPad", @"iPod Touch",@"iPhone"];
        self.productUrl = @"http://www.apple.com/ipad/";
//                             @"http://www.apple.com/ipod-touch/",
//                             @"http://www.apple.com/iphone/"];
        
    } else if ([self.title isEqualToString:@"Samsung mobile devices"]) {
//        self.products = @[@"Galaxy S4", @"Galaxy Note", @"Galaxy Tab"];
//        self.productUrls = @[@"http://www.samsung.com/global/microsite/galaxys4/",
//                             @"http://www.samsung.com/global/microsite/galaxynote/note/index.html?type=find",
//                             @"http://www.samsung.com/us/mobile/galaxy-tab/"];
    } else if ([self.title isEqualToString:@"Microsoft mobile devices"]) {
//        self.products = @[@"Lumia 950 XL", @"Lenovo ideapad MIIX 700", @"Surface Pro 4"];
//        self.productUrls = @[@"https://www.microsoft.com/en-us/mobile/phone/lumia950-xl-dual-sim/",
//                             @"http://shop.lenovo.com/us/en/tablets/ideapad/miix/miix-700/",
//                             @"http://www.microsoft.com/surface/en-us/devices/surface-pro-4"];
    } else if ([self.title isEqualToString:@"Asus mobile devices"]) {
//        self.products = @[@"ZenFone 2E", @"Padfone Infinity", @"Eee Slate"];
//        self.productUrls = @[@"http://www.asus.com/us/Phone/ZenFone-2E-US-ATT-exclusive/",
//                             @"http://www.asus.com/Phone/PadFone-A80/",
//                             @"http://www.asus.com/Tablets/Eee_Slate_EP121/"];
    }
    
    CGRect screen =[[UIScreen mainScreen] bounds];
    CGFloat width = CGRectGetWidth(screen);
    CGFloat height = CGRectGetHeight(screen);
    self.myWebView = [[UIWebView alloc]initWithFrame:CGRectMake(0, 0, width, height)];
    NSURL *url = [NSURL URLWithString:self.productUrl];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.myWebView  loadRequest:urlRequest];
    [self.view addSubview:self.myWebView ];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)dealloc {
    [_myWebView release];
    [super dealloc];
}
@end
