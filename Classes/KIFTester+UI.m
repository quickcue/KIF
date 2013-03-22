//
//  KIFTester+UI.m
//  KIF
//
//  Created by Brian Nickel on 12/14/12.
//  Licensed to Square, Inc. under one or more contributor license agreements.
//  See the LICENSE file distributed with this work for the terms under
//  which Square, Inc. licenses this file to you.

#import "KIFTester+UI.h"
#import "UIApplication-KIFAdditions.h"

@implementation KIFTester (UI)

- (void)waitForViewWithAccessibilityLabel:(NSString *)label
{
    [self run:[KIFTestStep stepToWaitForViewWithAccessibilityLabel:label]];
}

- (void)waitForViewWithAccessibilityLabel:(NSString *)label traits:(UIAccessibilityTraits)traits
{
    [self run:[KIFTestStep stepToWaitForViewWithAccessibilityLabel:label traits:traits]];
}

- (void)waitForViewWithAccessibilityLabel:(NSString *)label value:(NSString *)value traits:(UIAccessibilityTraits)traits
{
    [self run:[KIFTestStep stepToWaitForViewWithAccessibilityLabel:label value:value traits:traits]];
}

- (void)waitForAbsenceOfViewWithAccessibilityLabel:(NSString *)label
{
    [self run:[KIFTestStep stepToWaitForAbsenceOfViewWithAccessibilityLabel:label]];
}

- (void)waitForAbsenceOfViewWithAccessibilityLabel:(NSString *)label traits:(UIAccessibilityTraits)traits
{
    [self run:[KIFTestStep stepToWaitForAbsenceOfViewWithAccessibilityLabel:label traits:traits]];
}

- (void)waitForAbsenceOfViewWithAccessibilityLabel:(NSString *)label value:(NSString *)value traits:(UIAccessibilityTraits)traits
{
    [self run:[KIFTestStep stepToWaitForAbsenceOfViewWithAccessibilityLabel:label value:value traits:traits]];
}

- (void)waitForTappableViewWithAccessibilityLabel:(NSString *)label
{
    [self run:[KIFTestStep stepToWaitForTappableViewWithAccessibilityLabel:label]];
}

- (void)waitForTappableViewWithAccessibilityLabel:(NSString *)label traits:(UIAccessibilityTraits)traits
{
    [self run:[KIFTestStep stepToWaitForTappableViewWithAccessibilityLabel:label traits:traits]];
}

- (void)waitForTappableViewWithAccessibilityLabel:(NSString *)label value:(NSString *)value traits:(UIAccessibilityTraits)traits
{
    [self run:[KIFTestStep stepToWaitForTappableViewWithAccessibilityLabel:label value:value traits:traits]];
}

- (void)tapViewWithAccessibilityLabel:(NSString *)label
{
    [self run:[KIFTestStep stepToTapViewWithAccessibilityLabel:label]];
}

- (void)tapViewWithAccessibilityLabel:(NSString *)label traits:(UIAccessibilityTraits)traits
{
    [self run:[KIFTestStep stepToTapViewWithAccessibilityLabel:label traits:traits]];
}

- (void)tapViewWithAccessibilityLabel:(NSString *)label value:(NSString *)value traits:(UIAccessibilityTraits)traits
{
    [self run:[KIFTestStep stepToTapViewWithAccessibilityLabel:label value:value traits:traits]];
}

- (void)tapScreenAtPoint:(CGPoint)screenPoint
{
    [self run:[KIFTestStep stepToTapScreenAtPoint:screenPoint]];
}

- (void)longPressViewWithAccessibilityLabel:(NSString *)label duration:(NSTimeInterval)duration;
{
    [self run:[KIFTestStep stepToLongPressViewWithAccessibilityLabel:label duration:duration]];
}

- (void)longPressViewWithAccessibilityLabel:(NSString *)label value:(NSString *)value duration:(NSTimeInterval)duration;
{
    [self run:[KIFTestStep stepToLongPressViewWithAccessibilityLabel:label value:value duration:duration]];
}

- (void)longPressViewWithAccessibilityLabel:(NSString *)label value:(NSString *)value traits:(UIAccessibilityTraits)traits duration:(NSTimeInterval)duration;
{
    [self run:[KIFTestStep stepToLongPressViewWithAccessibilityLabel:label value:value traits:traits duration:duration]];
}

- (void)enterTextIntoCurrentFirstResponder:(NSString *)text;
{
    [self run:[KIFTestStep stepToEnterTextIntoCurrentFirstResponder:text]];
}

- (void)enterText:(NSString *)text intoViewWithAccessibilityLabel:(NSString *)label
{
    [self run:[KIFTestStep stepToEnterText:text intoViewWithAccessibilityLabel:label]];
}

- (void)enterText:(NSString *)text intoViewWithAccessibilityLabel:(NSString *)label traits:(UIAccessibilityTraits)traits expectedResult:(NSString *)expectedResult
{
    [self run:[KIFTestStep stepToEnterText:text intoViewWithAccessibilityLabel:label traits:traits expectedResult:expectedResult]];
}

- (void)clearTextFromViewWithAccessibilityLabel:(NSString *)label
{
    [self clearTextFromViewWithAccessibilityLabel:label traits:UIAccessibilityTraitNone];
}

- (void)clearTextFromViewWithAccessibilityLabel:(NSString *)label traits:(UIAccessibilityTraits)traits
{
    [self waitForViewWithAccessibilityLabel:label traits:traits];
    [self run:[KIFTestStep stepToClearTextFromViewWithAccessibilityLabel:label traits:traits expectedResult:@""]];
}

- (void)clearTextFromAndThenEnterText:(NSString *)text intoViewWithAccessibilityLabel:(NSString *)label
{
    [self clearTextFromViewWithAccessibilityLabel:label];
    [self enterText:text intoViewWithAccessibilityLabel:label];
}

- (void)clearTextFromAndThenEnterText:(NSString *)text intoViewWithAccessibilityLabel:(NSString *)label traits:(UIAccessibilityTraits)traits expectedResult:(NSString *)expectedResult
{
    [self clearTextFromViewWithAccessibilityLabel:label traits:traits];
    [self enterText:text intoViewWithAccessibilityLabel:label traits:traits expectedResult:expectedResult];
}

- (void)selectPickerViewRowWithTitle:(NSString *)title
{
    [self run:[KIFTestStep stepToSelectPickerViewRowWithTitle:title]];
}

- (void)setOn:(BOOL)switchIsOn forSwitchWithAccessibilityLabel:(NSString *)label
{
    [self run:[KIFTestStep stepToSetOn:switchIsOn forSwitchWithAccessibilityLabel:label]];
}

- (void)dismissAlertViewWithButtonTitle:(NSString *)title
{
    [self run:[KIFTestStep stepToDismissAlertViewWithButtonTitle:title]];
}

- (void)dismissPopover
{
    [self run:[KIFTestStep stepToDismissPopover]];
}

- (void)choosePhotoInAlbum:(NSString *)albumName atRow:(NSInteger)row column:(NSInteger)column
{
    for (KIFTestStep *step in [KIFTestStep stepsToChoosePhotoInAlbum:albumName atRow:row column:column]) {
        [self run:step];
    }
}

- (void)tapRowInTableViewWithAccessibilityLabel:(NSString*)tableViewLabel atIndexPath:(NSIndexPath *)indexPath
{
    [self run:[KIFTestStep stepToTapRowInTableViewWithAccessibilityLabel:tableViewLabel atIndexPath:indexPath]];
}

- (void)swipeViewWithAccessibilityLabel:(NSString *)label inDirection:(KIFSwipeDirection)direction
{
    [self run:[KIFTestStep stepToSwipeViewWithAccessibilityLabel:label inDirection:direction]];
}

- (void)waitForFirstResponderWithAccessibilityLabel:(NSString *)label
{
    [self run:[KIFTestStep stepToWaitForFirstResponderWithAccessibilityLabel:label]];
}

@end

