//
//  CRViewController.m
//  hello-app
//
//  Created by Bogdan Cristea on 12/27/13.
//  Copyright (c) 2013 Bogdan Cristea. All rights reserved.
//

#import "CRViewController.h"
#import "HelloIOS.h"

@interface CRViewController ()
@property (weak, nonatomic) IBOutlet UILabel *helloMsg;

@end

@implementation CRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    HelloIOS *hello = [HelloIOS new];
    self.helloMsg.text = [hello getHello];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
