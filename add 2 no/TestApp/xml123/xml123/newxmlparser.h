//
//  newxmlparser.h
//  newparseing
//
//  Created by ejob india on 14/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "vechiledetail.h"
//#import "Detailview.h"
@interface newxmlparser : UIViewController<NSXMLParserDelegate>
@property(retain,nonatomic) NSMutableArray *muarray;

-(newxmlparser *)initArray;
@end
