//
//  InputCollector.m
//  ContactList
//
//  Created by Thomas Friesman on 2016-03-08.
//  Copyright © 2016 Thomas Friesman. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString
{
    char inputChars[10];
    
    NSLog(@"%@",promptString);
    
    fgets(inputChars, 10, stdin);
    
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    return inputString;

}



@end
