//
//  ViewController.m
//  01-NSSession
//
//  Created by 汤蓉 on 15/6/12.
//  Copyright (c) 2015年 zhm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self loadData];
}

- (void)loadData {
    //url
    NSURL *url = [NSURL URLWithString:@"http://127.0.0.1/web/demo.json"];
    //NSSession
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *task = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSLog(@"%@  %@", response, [NSThread currentThread]);
    }];
    [task resume];
}


@end
