#import "AXZSettingViewController.h"
#import "AXZBlueToothViewController.h"
#import "AXZAsset.h"
#import "UIView+AXZUI.h"
#import "UILabel+AXZUI.h"

@interface AXZSettingViewController ()<UIImagePickerControllerDelegate, UITextFieldDelegate, UIGestureRecognizerDelegate>

@property (strong, nonatomic) IBOutlet UIButton *userImage;
@property UIView* subView;
@property UIImage* userImageView;
@property (strong, nonatomic) IBOutlet UITextField *userNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *machineNameTextField;
@property (strong, nonatomic) UIImagePickerController *imagePicker;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong, nonatomic) IBOutlet UIButton *bluetoothButton;
@property (weak, nonatomic) IBOutlet UIImageView *settingInterfaceImage;
@property (strong, nonatomic) AXZAsset *asset;
@property (nonatomic) CGRect windowSize;

@end

@implementation AXZSettingViewController

- (void)initalize
{
    self.asset = [AXZAsset new];

    self.userNameTextField.delegate = self;
    self.userNameTextField.translatesAutoresizingMaskIntoConstraints = YES;
    self.userNameTextField.frame = [UIView settingUserNameLabelRect];

    self.machineNameTextField.delegate = self;
    self.machineNameTextField.translatesAutoresizingMaskIntoConstraints = YES;
    self.machineNameTextField.frame = [UIView settingUserMachineNameLabelRect];

    self.subView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 568, 320)];
    self.subView.hidden = YES;
    self.subView.backgroundColor = [UIColor blackColor];

    self.settingInterfaceImage = self.asset.settingInterfaceImageView;

    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped:)];
    gestureRecognizer.delegate = self;
    [self.view addGestureRecognizer:gestureRecognizer];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initalize];

    NSData* userImageData = [[NSUserDefaults standardUserDefaults]objectForKey:@"userImage"];
    
    UIButton* closeButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 320, 568)];
    [closeButton addTarget:self action:@selector(closeAction) forControlEvents:UIControlEventTouchUpInside];
    UIImageView* userImageView = [[UIImageView alloc]initWithFrame:CGRectMake(120, 0, 320, 300)];
    [self.view addSubview:self.subView];

    self.userImage.translatesAutoresizingMaskIntoConstraints = YES;
    self.userImage.frame = [UIView settingUserImageRect];

    if (userImageData != NULL) {
        UIImage* userimage = [UIImage imageWithData:userImageData];
        [self.userImage setImage:userimage forState:UIControlStateNormal];
        CALayer* layer = [self.userImage layer];
        [layer setMasksToBounds:YES];
        [layer setCornerRadius:100];
        userImageView.image = userimage;
        
    }
    self.subView.hidden = YES;
    self.subView.backgroundColor = [UIColor blackColor];
    [self.subView addSubview:closeButton];
    [self.view addSubview:self.subView];
    [self.subView addSubview:userImageView];
}

- (BOOL)textFieldShouldReturn:(UITextField *)targetTextField
{
    [targetTextField resignFirstResponder];
    return YES;
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
	UIImage *originalImage = (UIImage *)[info objectForKey:UIImagePickerControllerOriginalImage];
	UIImage *editedImage = (UIImage *)[info objectForKey:UIImagePickerControllerEditedImage];
	UIImage *saveImage;
	
	if(editedImage) {
		saveImage = editedImage;
	} else {
		saveImage = originalImage;
	}
    
    self.userImageView = saveImage;
    [self.userImage setImage:self.userImageView forState:UIControlStateNormal];
    CALayer* layer = [self.userImage layer];
    [layer setMasksToBounds:YES];
    [layer setCornerRadius:100];
    
    NSData* userImageData = UIImagePNGRepresentation(self.userImageView);
    
    [[NSUserDefaults standardUserDefaults]setObject:userImageData forKey:@"userImage"];

    UIImageWriteToSavedPhotosAlbum(saveImage, nil, nil, nil);
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)userImageChange:(id)sender
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"title" message:@"message" preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *displayProfileImageAction = [UIAlertAction actionWithTitle:@"Display profile image"
                                                                        style:UIAlertActionStyleDefault
                                                                      handler:^(UIAlertAction *action) {
                                                                           self.subView.hidden = NO;
                                                                      }];

    UIAlertAction *changeIconImageAction = [UIAlertAction actionWithTitle:@"Register profile image"
                                                                    style:UIAlertActionStyleDefault
                                                                  handler:^(UIAlertAction *action) {
                                                                      [self registerUserImageIcon];
                                                                  }];

    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertController dismissViewControllerAnimated:YES completion:nil];
    }];
    [alertController addAction:displayProfileImageAction];
    [alertController addAction:changeIconImageAction];
    [alertController addAction:cancelAction];

    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)registerUserImageIcon
{
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary])
    {
        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc]init];
        [imagePickerController setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
        [imagePickerController setAllowsEditing:YES];

        [self presentViewController:imagePickerController animated:YES completion:nil];
    }
    else
    {
        NSLog(@"photo library invalid.");
    }
}

- (IBAction)closeView:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)BluetoothButtonAction:(id)sender
{
    AXZBlueToothViewController *bluetoothView = [[AXZBlueToothViewController alloc] init];
    [self presentViewController:bluetoothView animated:YES completion:nil];
}

-(void)closeAction
{
    self.subView.hidden = YES;
}

//=============================================================
#pragma UIGestureRecognizerDelegate
//=============================================================

- (void)tapped:(UIGestureRecognizer *)sender
{
    if (self.userNameTextField.isFirstResponder) {
        [self.userNameTextField resignFirstResponder];
    } else if (self.machineNameTextField.isFirstResponder) {
        [self.machineNameTextField resignFirstResponder];
    }
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    if (self.userNameTextField.isFirstResponder || self.machineNameTextField.isFirstResponder) {
        return YES;
    } else {
        return NO;
    }
}

//=============================================================
#pragma UITextFieldDelegate
//=============================================================

- (void)updateMachineNameTextField
{
    NSString* machineName = [[NSUserDefaults standardUserDefaults]stringForKey:@"userMachine"];

    if (machineName != NULL) {
        self.machineNameTextField.text = machineName;
    } else {
        self.machineNameTextField.text = @"NoName";
    }

}

- (void)updateUserNameTextField
{
    NSString *userName = [[NSUserDefaults standardUserDefaults]stringForKey:@"userName"];

    if (userName != NULL) {
        self.userNameTextField.text = userName;
    } else {
        self.userNameTextField.text = @"NoName";
    }
}

@end
