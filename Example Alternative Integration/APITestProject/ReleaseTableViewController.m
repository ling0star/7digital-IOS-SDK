//
//  ReleaseTableViewController.m
//  APITestProject
//
//  Created by Daniel Too on 7/04/14.
//  Copyright (c) 2014 7 Digital. All rights reserved.
//

#import "ReleaseTableViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ReleaseTableViewController ()
@property (strong,nonatomic) AVPlayer *songPlayer;
@property (strong, nonatomic) UITableViewCell *selectedCell;

@end

@implementation ReleaseTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillDisappear:(BOOL)animated {
    [self cleanUp];
}

- (void)cleanUp {
    if (self.songPlayer != nil){
        
        [[NSNotificationCenter defaultCenter] removeObserver:self
                                                        name:AVPlayerItemDidPlayToEndTimeNotification
                                                      object:[self.songPlayer currentItem]];
        
        [self.songPlayer removeObserver:self forKeyPath:@"status"];
        self.songPlayer = nil;
        self.selectedCell = nil;
        
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.sdRelease.tracks.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    SDTrack *track = [self.sdRelease.tracks objectAtIndex:indexPath.row];
    
    cell.textLabel.text = track.title;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    [self cleanUp];
    
    SDTrack *track = [self.sdRelease.tracks objectAtIndex:indexPath.row];
    NSURL *trackURL = [SDMedia urlForTrack:track mediaType:kSDMediaTypeStreamingInternetRadio];
    NSLog(@"track url: %@", trackURL.relativeString);
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    self.selectedCell = cell;

    UIActivityIndicatorView *activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [activity startAnimating];
    cell.accessoryView = activity;
    
    // play the track
    [self playURL:trackURL];
    
}

- (void)playURL:(NSURL *)url {
    
    AVPlayer *player = [[AVPlayer alloc] initWithURL:url];
    
    self.songPlayer = player;
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(playerItemDidReachEnd:)
                                                 name:AVPlayerItemDidPlayToEndTimeNotification
                                               object:[self.songPlayer currentItem]];
    
    [self.songPlayer addObserver:self forKeyPath:@"status" options:0 context:nil];
    
    
    
};

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    
    if (object == self.songPlayer && [keyPath isEqualToString:@"status"]) {
        if (self.songPlayer.status == AVPlayerStatusFailed) {
            NSLog(@"AVPlayer Failed");
            
        } else if (self.songPlayer.status == AVPlayerStatusReadyToPlay) {
            NSLog(@"AVPlayerStatusReadyToPlay");
            [self.songPlayer play];
            
            
        } else if (self.songPlayer.status == AVPlayerItemStatusUnknown) {
            NSLog(@"AVPlayer Unknown");
            
        }
    }
}

- (void)playerItemDidReachEnd:(NSNotification *)notification {
    
    [self cleanUp];
    //  code here to play next sound file
    
    if (self.selectedCell != nil){
        self.selectedCell.accessoryView = nil;
    }
    
}


@end
