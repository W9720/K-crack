#import <Foundation/Foundation.h>

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
    %orig(a0, a1);

    MyHomePageSelfInfoCellView *cellView = [self valueForKey:@"_view"];
    if (cellView) {
        UIImageView *vipImageView = [cellView valueForKey:@"userVipImageView"];
        if (vipImageView) {
            vipImageView.hidden = NO;
        }
    }
}

%end

%hook NewPersonalFirstHeaderViewController

- (void)updateUI:(id)a0 {
    %orig(a0);

    UIImageView *vipImageView = [self valueForKey:@"vipImageView"];
    if (vipImageView) {
        vipImageView.hidden = NO;
    }
}

%end

%hook NearbyUserInfoView

- (void)updateUI:(id)a0 {
    %orig(a0);

    UIImageView *vipImageView = [self valueForKey:@"vipImageView"];
    if (vipImageView) {
        vipImageView.hidden = NO;
    }
}

%end

%hook PersonalHomePageHeaderView

- (void)updateUI:(id)a0 {
    %orig(a0);

    UIImageView *vipImageView = [self valueForKey:@"vipImageView"];
    if (vipImageView) {
        vipImageView.hidden = NO;
    }
}

%end

%hook RoomMemberInfoCell

- (void)updateUI:(id)a0 {
    %orig(a0);

    UIImageView *vipImageView = [self valueForKey:@"vipImageView"];
    if (vipImageView) {
        vipImageView.hidden = NO;
    }
}

%end

%hook LiveRoomMemberCell

- (void)updateUI:(id)a0 {
    %orig(a0);

    UIImageView *vipImageView = [self valueForKey:@"vipImageView"];
    if (vipImageView) {
        vipImageView.hidden = NO;
    }
}

%end

%hook UserInfoView

- (void)updateUI:(id)a0 {
    %orig(a0);

    UIImageView *vipImageView = [self valueForKey:@"vipImageView"];
    if (vipImageView) {
        vipImageView.hidden = NO;
    }
}

%end
