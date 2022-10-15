//
//  newxmlparser.m
//  newparseing
//
//  Created by ejob india on 14/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "newxmlparser.h"

@interface newxmlparser ()

@end

@implementation newxmlparser
@synthesize muarray;
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict{
    
    //NSLog(@"element name...%@",elementName);
    if ([elementName isEqualToString:@"data"]) {
       vechiledetail * dataobj;
        dataobj=[[vechiledetail alloc]init];
       
        dataobj.driverid=[attributeDict valueForKey:@"flatt"];
        dataobj.dtime=[attributeDict valueForKey:@"dtime"];
       dataobj.reg_number=[attributeDict valueForKey:@"reg_number"];
        //NSLog(@"dataobj.vehicleid...%@",dataobj.vehicleid);
        [muarray addObject:dataobj];
        
    }
   // NSLog(@"muarray in nwxml..%@",muarray);
}

-(newxmlparser *)initArray{
    //NSLog(@"called while creation");
    muarray = [[NSMutableArray alloc] init];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
