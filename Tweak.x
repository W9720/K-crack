#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

%hook EvSDKUserInfo

- (int)userVipType {
    return 999;
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
    return 999;
}

- (NSString *)customerName {
    return @"喜爱民谣破解 免费分享";
}

%end

%hook UserInfoData

- (int)userVipType {
    return 999;
}

- (NSString *)userNickName {
    return @"喜爱民谣破解 免费分享";
}

%end

%hook EvRoomMemberInfo

- (int)userVipType {
    return 999;
}

- (NSString *)mCustomerName {
    return @"喜爱民谣破解 免费分享";
}

%end

%hook EvUserProfilesInfo

- (int)userVipType {
    return 999;
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
    return 999;
}

- (NSString *)userNickName {
    return @"喜爱民谣破解 免费分享";
}

%end

%hook RoomMemberRankInfoData

- (NSString *)userNickName {
    return @"喜爱民谣破解 免费分享";
}

%end

%hook KMJSBridge_uservipstate

- (void)_parse:(id)a0 vipType:(int)a1 name:(id)a2 {
    %orig(a0, 999, @"喜爱民谣破解 免费分享");
}

%end

%hook KMJSBridge_companyvipstate

- (void)_parse:(id)a0 vipType:(int)a1 name:(id)a2 {
    %orig(a0, 999, @"喜爱民谣破解 免费分享");
}

%end

%ctor {
    NSLog(@"[KmiCrack] 已加载，VIP破解生效！");
}