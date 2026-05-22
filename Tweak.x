#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

%hook EvSDKUserInfo

- (int)userVipType {
    return 3;
}

- (double)userVipExpireTime {
    return 9999999999.0;
}

- (NSString *)userName {
    return @"喜爱民谣破解 免费分享";
}

- (NSString *)userNickName {
    return @"喜爱民谣破解 免费分享";
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

%hook MyHomePageSelfInfoCell

- (void)updateUI:(id)a0 info:(id)a1 {
    // 修改传入的 userData 的 vipType
    if (a0) {
        [a0 setValue:@3 forKey:@"userVipType"];
    }
    %orig(a0, a1);
    
    // 强制显示VIP图标
    id cellView = [self valueForKey:@"_view"];
    if (cellView) {
        id vipImageView = [cellView valueForKey:@"userVipImageView"];
        if (vipImageView) {
            [vipImageView setValue:@NO forKey:@"hidden"];
        }
    }
}

%end

%ctor {
    NSLog(@"[KmiCrack] Loaded successfully, VIP unlocked!");
}
