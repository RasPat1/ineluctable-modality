//
//  GFViewController.m
//  greekfortune
//
//  Created by Rasesh on 8/21/13.
//  Copyright (c) 2013 Rasesh. All rights reserved.
//

#import "GFViewController.h"

@interface GFViewController ()
@property (nonatomic, strong) NSString *fortunes;
@property (nonatomic, strong) NSMutableArray *fortuneArray;
@property (nonatomic, strong) NSArray *fortuneArrayBluePrint;
@end

@implementation GFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.fortunes = @"INELUCTABLE MODALITY OF THE VISIBLE: AT LEAST THAT IF NO MORE, thought through my eyes. Signatures of all things I am here to read, seaspawn and seawrack, the nearing tide, that rusty boot. Snotgreen, bluesilver, rust: coloured signs. Limits of the diaphane. But he adds: in bodies. Then he was aware of them bodies before of them coloured. How? By knocking his sconce against them, sure. Go easy. Bald he was and a millionaire, maestro di color che sanno. Limit of the diaphane in. Why in? Diaphane, adiaphane. If you can put your five fingers through it, it is a gate, if not a door. Shut your eyes and see. Stephen closed his eyes to hear his boots crush crackling wrack and shells. You are walking through it howsomever. I am, a stride at a time. A very short space of time through very short times of space. Five, six: the nacheinander. Exactly: and that is the ineluctable modality of the audible. Open your eyes. No. Jesus! If I fell over a cliff that beetles o'er his base, fell through the nebeneinander ineluctably. I am getting on nicely in the dark. My ash sword hangs at my side. Tap with it: they do. My two feet in his boots are at the end of his legs, nebeneinander. Sounds solid: made by the mallet of Los Demiurgos. Am I walking into eternity along Sandymount strand? Crush, crack, crick, crick. Wild sea money. Dominie Deasy kens them a go eff yourself.";
    NSCharacterSet *endPuncts = [NSCharacterSet characterSetWithCharactersInString:@".!?"];
    self.fortuneArrayBluePrint = [self.fortunes componentsSeparatedByCharactersInSet:endPuncts];
    self.fortuneArray = [self.fortuneArrayBluePrint mutableCopy];
    
    self.label1.text = @"Touch your Fortune.";
    
}

- (IBAction)famePress:(id)sender {
    self.label1.text = @"go eff yourself";
}
- (IBAction)didTap:(id)sender {
    if (!self.fortuneArray.count) {
        self.label1.text = @"fuck you";
        self.fortuneArray = [self.fortuneArrayBluePrint mutableCopy];
        
    } else {
        int randomIndex = arc4random() % self.fortuneArray.count;
        NSString *sentence = self.fortuneArray[randomIndex];
        NSString *final = [sentence stringByAppendingString:@"."];
        self.label1.text = final;
        [self.fortuneArray removeObject:sentence];
    }

    
}


@end
