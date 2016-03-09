//
//  main.m
//  ContactList
//
//  Created by Thomas Friesman on 2016-03-08.
//  Copyright © 2016 Thomas Friesman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *menu = [[InputCollector alloc] init];
        ContactList *storedContacts = [[ContactList alloc]init];
        
        while (TRUE) {
            
            
            NSString *userInput = [menu inputForPrompt:@"What would you like to do\nnew - create new contact list\nlist - list all contacts\nquit - exit application?"];
            if ([userInput hasPrefix:@"q"]) {
                printf("adieu");
                break;
            }else{
                if ([userInput hasPrefix:@"n"]){
                    NSString *contactName = [menu inputForPrompt:@"what is the contact name?"];
                    NSString *contactEmail = [menu inputForPrompt:@"what is the contact email?"];
                    
                    Contact *contact = [[Contact alloc]init];
                    contact.contactName = contactName;
                    contact.contactEmail = contactEmail;
                    
                    [storedContacts addContact:contact];
                }else{
                    if ([userInput hasPrefix:@"l"]){
                        [storedContacts listOfContacts];
                        
                    }
                }
            }
            
            
        }
    }
    return 0;
}
