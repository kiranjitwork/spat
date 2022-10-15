//
//  ViewController.m
//  TestApp
//
//  Created by APPLE on 05/11/15.
//  Copyright (c) 2015 ejobs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(IBAction)btn:(id)sender
{
    
    a=[txtField1.text integerValue];
    b=[txtField2.text integerValue];
    [self addNumberFirstNumber :a secondNumber:b];
    

}


-(void)addNumberFirstNumber :(int)a1 secondNumber:(int)b1
{
    c=a1+b1;
    lbl1.text=[NSString stringWithFormat:@"%d", c];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
