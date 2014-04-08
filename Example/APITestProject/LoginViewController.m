//
//  LoginViewController.m
//  APITestProject
//
//  Created by Daniel Too on 7/04/14.
//  Copyright (c) 2014 7 Digital. All rights reserved.
//

#import "LoginViewController.h"
#import "SevenDigital.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signInButtonTapped:(id)sender {
    
    if (![self.usernameField.text isEqualToString:@""] && ![self.passwordField.text isEqualToString:@""]){
    
        self.signInButton.enabled = NO;
        
        [[SevenDigital sharedInstance] loginUsername:self.usernameField.text password:self.passwordField.text onSuccess:^(NSString *username) {
            self.signInButton.enabled = YES;
            
            if (username != nil){
                [self dismissViewControllerAnimated:YES completion:nil];
            }
            
        }];
        
    }
    
}
@end
