#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define CUSTOM_AVATAR_URL @"https://wx.qlogo.cn/mmhead/ver_1/ibXjKH6OF1TM3yHTcjOO0QMVlgpSSfVGVsD0Pe9ibLia2Ecu1akBkBVkpXD9xQmHKSj5hX57NkKCelY0e1ibks7e7iaCIPqcsZT89wMFyagWmst2cpdictJibGj0QLmQeVRhMHf/0"

%hook EvSDKUserInfo

- (int)userVipType {
    return 3;
}

- (double)userVipExpireTime {
    return 999999999.0;
}

- (NSString *)userName {
    return @"喜爱民谣破解 免费分享";
}

- (NSString *)userNickName {
    return @"喜爱民谣破解 免费分享";
}

- (NSString *)userAvatarURL {
    return CUSTOM_AVATAR_URL;
}

%end

%hook KMUserInfoData

- (int)userVipType {
    return 3;
}

- (NSString *)customerName {
    return @"喜爱民谣破解 免费分享";
}

%end

%hook UserInfoData

- (int)userVipType {
    return 3;
}

- (NSString *)userNickName {
    return @"喜爱民谣破解 免费分享";
}

- (NSString *)userAvatarURL {
    return CUSTOM_AVATAR_URL;
}

%end

%hook EvRoomMemberInfo

- (int)userVipType {
    return 3;
}

- (NSString *)mCustomerName {
    return @"喜爱民谣破解 免费分享";
}

%end

%hook EvUserProfilesInfo

- (int)userVipType {
    return 3;
}

- (long long)userVipExpireTime {
    return 9999999999999;
}

- (NSString *)mName {
    return @"喜爱民谣破解 免费分享";
}

%end

%hook EvUserProfiles

- (NSString *)mName {
    return @"喜爱民谣破解 免费分享";
}

%end

%hook NearbyUserData

- (int)userVipType {
    return 3;
}

- (NSString *)userNickName {
    return @"喜爱民谣破解 免费分享";
}

%end

%hook RoomMemberRankInfoData

- (NSString *)userNickName {
    return @"喜爱民谣破解 免费分享";
}

- (int)userVipType {
    return 3;
}

- (NSString *)userAvatarURL {
    return CUSTOM_AVATAR_URL;
}

%end

%hook LiveVideoRoomInfo

- (int)userVipType {
    return 3;
}

%end

%hook FansItemData

- (int)userVipType {
    return 3;
}

%end

%hook KMJSBridge_uservipstate

- (void)_parse:(id)a0 vipType:(int)a1 name:(id)a2 {
    %orig(a0, 3, @"喜爱民谣破解 免费分享");
}

%end

%hook KMJSBridge_companyvipstate

- (void)_parse:(id)a0 vipType:(int)a1 name:(id)a2 {
    %orig(a0, 3, @"喜爱民谣破解 免费分享");
}

%end

%hook _UserVipStateImpl

- (BOOL)userIsVip {
    return YES;
}

%end

%hook UIImageView

- (void)setImage:(UIImage *)image {
    // 处理50x50的头像
    if (self.bounds.size.width == 50 && self.bounds.size.height == 50) {
        // 从URL下载自定义头像
        NSURL *url = [NSURL URLWithString:CUSTOM_AVATAR_URL];
        NSData *imageData = [NSData dataWithContentsOfURL:url];
        if (imageData) {
            UIImage *customImage = [UIImage imageWithData:imageData];
            if (customImage) {
                %orig(customImage);
                return;
            }
        }
    }
    // 处理14x14的VIP图标
    if (self.bounds.size.width == 14 && self.bounds.size.height == 14) {
        if (image) {
            UIImage *coloredImage = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            %orig(coloredImage);
            return;
        }
    }
    %orig(image);
}

%end

%ctor {
    NSLog(@"[KmiCrack] Loaded successfully, VIP unlocked!");
}