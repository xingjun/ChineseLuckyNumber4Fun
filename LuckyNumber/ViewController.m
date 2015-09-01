//
//  ViewController.m
//  LuckyNumber
//
//  Created by 杏菌 on 15/9/2245.
//  Copyright (c) 2015年 xingjun. All rights reserved.
//
#import "NumberUtil.h"
#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextView *firstText;
@property (weak, nonatomic) IBOutlet UITextView *secondText;
@property (weak, nonatomic) IBOutlet UITextField *textFiled;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {  // return NO to not change text
    if ([string isEqualToString:@"\n"]) {
        [self handleString:string];
        return NO;
    }
    return YES;
}

- (void)handleString:(NSString *)string {
    int num = self.textFiled.text.intValue;
    self.firstText.text = [NumberUtil find80:num];
    self.secondText.text = [NumberUtil find81:num];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
