//
//  ViewController.h
//  Lab2GuesingGame
//
//  Created by Michael Zuccarino on 10/29/14.
//  Copyright (c) 2014 Michael Zuccarino. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *arrowBox;
@property (strong, nonatomic) IBOutlet UITextField *guessField;
@property (strong, nonatomic) IBOutlet UITextField *scoreField;

@property NSUInteger randomNumber;
@property NSUInteger scoreNumber;

@end

