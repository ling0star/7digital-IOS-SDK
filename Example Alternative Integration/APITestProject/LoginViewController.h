//
//  LoginViewController.h
//  APITestProject
//
//  Created by Daniel Too on 7/04/14.
//  Copyright (c) 2014 7 Digital. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UIButton *signInButton;

- (IBAction)signInButtonTapped:(id)sender;

@end
