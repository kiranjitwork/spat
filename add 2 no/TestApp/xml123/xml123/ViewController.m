//
//  ViewController.m
//  xml123
//
//  Created by ejob india on 27/02/15.
//  Copyright (c) 2015 ejob india. All rights reserved.
//

#import "ViewController.h"
#import "newxmlparser.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://localhost/data.xml"] options:0 error:nil];
    
    //  NSData *encodeData = [data ]
    
    NSXMLParser *parseData = [[NSXMLParser alloc] initWithData:data];
    
   newxmlparser *obj = [[newxmlparser alloc] initArray];
    
  [parseData setDelegate:obj];
    
    BOOL ret = [parseData parse];
    
    if (ret) {
        //NSLog(@"success");
        // NSLog(@"muarray...%@",obj.muarray);
        //NSLog(@"count%d",[obj.muarray count]);
        totaldata=obj.muarray.count;
        vehicalid=[[NSArray alloc] init];
        vehicalid=obj.muarray;
        
        
        
        NSLog(@"ok---%@",vehicalid);
    }
    else {
        NSLog(@"Error error");
    }
    

	// Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return totaldata;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellindetifier=@"Cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellindetifier];
    if(cell==nil){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
    }
    
    
    cell.textLabel.text=[[vehicalid valueForKey:@"reg_number"] objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
