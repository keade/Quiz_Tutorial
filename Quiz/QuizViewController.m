//
//  QuizViewController.m
//  Quiz
//
//  Created by Derek Kean on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "QuizViewController.h"

@implementation QuizViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // cReate two arrays and make pointers point to them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        // add questiosn and answers to the arrays
        [questions addObject:@"What is your name?"];
        [answers addObject:@"Sir Lancelot the Brave"];
        
        [questions addObject:@"What is your quest?"];
        [answers addObject:@"To find the holy grail"];
        
        [questions addObject:@"What is your favorite color?"];
        [answers addObject:@"Blue"];
    }
    
    // return the address of the new object
    return self;
}
    - (IBAction)showQuestion:(id)sender
    {
        currentQuestionIndex++;
        
        if (currentQuestionIndex == [questions count]) {
            currentQuestionIndex = 0;
        }
        
        NSString *question = [questions objectAtIndex:currentQuestionIndex];
        NSLog(@"displaying question: %@", question);
        [questionField setText:question];
        [answerField setText:@"???"];
    }
    
    - (IBAction)showAnswer:(id)sender
    {
        NSString *answer = [answers objectAtIndex:currentQuestionIndex];
        [answerField setText:answer];
    }

@end
