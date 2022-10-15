//
//  ViewController.h
//  TestApp
//
//  Created by APPLE on 05/11/15.
//  Copyright (c) 2015 ejobs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    int a,b,c;
    
    IBOutlet UILabel *lbl1;
    IBOutlet UITextField *txtField1,*txtField2;
    
}

-(IBAction)btn:(id)sender;



@end
