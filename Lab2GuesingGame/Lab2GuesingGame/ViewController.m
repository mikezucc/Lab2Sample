//
//  ViewController.m
//  Lab2GuesingGame
//
//  Created by Michael Zuccarino on 10/29/14.
//  Copyright (c) 2014 Michael Zuccarino. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate, UIAlertViewDelegate>

@end

@implementation ViewController

@synthesize guessField, scoreField, randomNumber, scoreNumber, arrowBox;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    UIAlertView *welcome = [[UIAlertView alloc] initWithTitle:@"Welcome!" message:@"How to play:\nGuess a number between 1 and 100, you lose a point for every guess you make from 100. Ergo, you have 100 guesses. Goodluck!" delegate:self cancelButtonTitle:@"Start!" otherButtonTitles:nil];
    [welcome show];
}

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    randomNumber = arc4random()%100+1;
    scoreNumber = 100;
    [scoreField setText:[NSString stringWithFormat:@"%lu",(unsigned long)scoreNumber]];
    [guessField setText:@""];
}

-(IBAction)guessANumber:(id)sender
{
    NSUInteger enteredNumber = guessField.text.integerValue;
    if (enteredNumber == randomNumber)
    {
        UIAlertView *congrats = [[UIAlertView alloc] initWithTitle:@"Congrats!" message:@"you have guessed the right number!" delegate:self cancelButtonTitle:@"sweet!" otherButtonTitles:nil];
        [congrats show];
    }
    else
    {
        if (enteredNumber < randomNumber) {
            [arrowBox setImage:[UIImage imageNamed:@"up-arrow.png"]];
            scoreNumber = scoreNumber - 1;
            [scoreField setText:[NSString stringWithFormat:@"%lu",(unsigned long)scoreNumber]];
        }
        else
        {
            [arrowBox setImage:[UIImage imageNamed:@"downarrow.png"]];
            scoreNumber = scoreNumber - 1;
            [scoreField setText:[NSString stringWithFormat:@"%lu",(unsigned long)scoreNumber]];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
