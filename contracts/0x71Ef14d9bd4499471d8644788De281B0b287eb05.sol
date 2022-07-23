contract main {




// =====================  Runtime code  =====================


#
#  - claimAllRewards()
#  - sub_1786e695(?)
#  - withdraw()
#  - earned(address arg1, uint256 arg2)
#  - sub_9aa037f0(?)
#  - withdrawStuckTokens(address arg1, uint256 arg2)
#  - sub_c72390ac(?)
#  - sub_d8256d4c(?)
#  - emergencyWithdraw()
#  - sub_f26d9f2f(?)
#
address owner;
array of struct stor1;
array of struct stor2;
mapping of uint256 stor3;
mapping of struct userData;
uint256 lockLimit;
uint256 lastUpdateTime;
uint256 totalStaked;
uint256 sub_897b5794;
uint8 stor11; offset 160
uint8 stor11; offset 168
uint8 stor11; offset 176
uint128 stor11; offset 176
uint128 stor11; offset 168
uint128 stor11; offset 160
address penaltyAddress;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779000;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779001;
array of uint8 stor80084422859880547211683076133703299733277748156566366325829078699459944779002;

function isClaimOpen() {
    return bool(uint8(stor11.field_168))
}

function sub_4338f747(?) {
    return bool(uint8(stor11.field_176))
}

function sub_7462f9b6(?) {
    return bool(uint8(stor11.field_160))
}

function totalStaked() {
    return totalStaked
}

function sub_897b5794(?) {
    return sub_897b5794
}

function owner() {
    return owner
}

function lockLimit() {
    return lockLimit
}

function penaltyAddress() {
    return penaltyAddress
}

function userData(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userData[arg1].field_0, userData[arg1].field_256, userData[arg1].field_256, userData[arg1].field_320
}

function lastUpdateTime() {
    return lastUpdateTime
}

function _fallback() {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_a32bdee9(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lockLimit = arg1
    emit 0xc798653a: arg1
}

function sub_d39b85e6(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor11.field_160) = Mask(96, 0, not uint8(stor11.field_160))
    emit 0x478c04b5: bool(0 or uint8(not uint8(stor11.field_160)))
}

function sub_b6bd83ef(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor11.field_168) = Mask(88, 0, not uint8(stor11.field_168))
    emit ClaimStatusChanged(bool(0 or uint8(not uint8(stor11.field_168))));
}

function sub_19aa0133(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if userData[address(arg1)].field_256 and userData[address(arg1)].field_0 > -1 / userData[address(arg1)].field_256:
        revert with 0, 17
    return (userData[address(arg1)].field_256 * userData[address(arg1)].field_0)
}

function sub_73331823(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor11.field_176) = Mask(80, 0, not uint8(stor11.field_176))
    if var43002 >= stor2.length:
        emit 0x7a59f3d9: bool(uint8(stor11.field_176))
    if var49001 >= stor2.length:
        revert with 0, 50
    # nil
}

function sub_2dfd901f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[changePenaltyAddress] Address failure.'
    penaltyAddress = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_cc997c16(?) {
    require calldata.size - 4 >= 32
    if 0 >= stor1.length:
        revert with 0, 50
    if uint256(stor1.field_256) > 0x881a2a48388afb437c960cb474a5e41796e33461451264707e429ce83c:
        revert with 0, 17
    if 31556926 * uint256(stor1.field_256) and arg1 > -1 / 31556926 * uint256(stor1.field_256):
        revert with 0, 17
    if 31556926 * uint256(stor1.field_256) * arg1 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if not sub_897b5794:
        revert with 0, 18
    return (31556926000 * uint256(stor1.field_256) * arg1 / sub_897b5794)
}

function calcWeight(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 / 24 * 3600 <= 90:
        return 1000
    if arg1 / 24 * 3600 >= 365:
        return 2000
    if arg1 / 24 * 3600 < 90:
        revert with 0, 17
    if not (arg1 / 24 * 3600) - 90:
        return 1000
    if (arg1 / 24 * 3600) - 90 == 1:
        return 1000
    if (arg1 / 24 * 3600) - 90 == 2:
        return 1000
    if bool(bool((arg1 / 24 * 3600) - 90 < 11)) or bool(bool((arg1 / 24 * 3600) - 90 < 307)):
        if ((arg1 / 24 * 3600) - 90)^2 > -1:
            revert with 0, 17
        if ((arg1 / 24 * 3600) - 90)^2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 > !(1000 * ((arg1 / 24 * 3600) - 90)^2 / 75625):
            revert with 0, 17
        return uint16((1000 * ((arg1 / 24 * 3600) - 90)^2 / 75625) + 1000)
    if var27005 > 1:
        s = var27001
        t = 1
        u = var27005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                if s * s * t > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 > !(1000 * s * s * t / 75625):
                    revert with 0, 17
                return uint16((1000 * s * s * t / 75625) + 1000)
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if s * s * s * t > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 > !(1000 * s * s * s * t / 75625):
                revert with 0, 17
            return uint16((1000 * s * s * s * t / 75625) + 1000)
        revert with 0, 17
    if 1 > -1 / var27001:
        revert with 0, 17
    if var27001 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 > !(1000 * var27001 / 75625):
        revert with 0, 17
    return uint16((1000 * var27001 / 75625) + 1000)
}

function rewardPerToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if 0 == sub_897b5794:
        return 0
    if arg1 >= stor1.length:
        revert with 0, 50
    if 0 == stor1[arg1].field_768:
        if block.timestamp <= lastUpdateTime:
            if arg1 >= stor1.length:
                revert with 0, 50
            if not stor1[arg1].field_1024:
                if arg1 >= stor1.length:
                    revert with 0, 50
                if False and stor1[arg1].field_256 > 0:
                    revert with 0, 17
            else:
                if bool(bool(stor1[arg1].field_1024 < 78)) or bool(bool(stor1[arg1].field_1024 < 32)):
                    if 10^stor1[arg1].field_1024 > -1:
                        revert with 0, 17
                    if arg1 >= stor1.length:
                        revert with 0, 50
                    if False and stor1[arg1].field_256 > 0:
                        revert with 0, 17
                    if False and 10^stor1[arg1].field_1024 > 0:
                        revert with 0, 17
                else:
                    if var28005 > 1:
                        s = var28001
                        t = var28002
                        u = var28005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if arg1 >= stor1.length:
                                    revert with 0, 50
                                if False and stor1[arg1].field_256 > 0:
                                    revert with 0, 17
                                if False and s * s * t > 0:
                                    revert with 0, 17
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg1 >= stor1.length:
                                    revert with 0, 50
                                if False and stor1[arg1].field_256 > 0:
                                    revert with 0, 17
                                if False and s * s * s * t > 0:
                                    revert with 0, 17
                            if not sub_897b5794:
                                revert with 0, 18
                            if arg1 >= stor1.length:
                                revert with 0, 50
                            if stor1[arg1].field_512 > !(0 / sub_897b5794):
                                revert with 0, 17
                            return (stor1[arg1].field_512 + (0 / sub_897b5794))
                        revert with 0, 17
                    if var28002 > -1 / var28001:
                        revert with 0, 17
                    if arg1 >= stor1.length:
                        revert with 0, 50
                    if False and stor1[arg1].field_256 > 0:
                        revert with 0, 17
                    if False and var28001 * var28002 > 0:
                        revert with 0, 17
            if not sub_897b5794:
                revert with 0, 18
            if arg1 >= stor1.length:
                revert with 0, 50
            if stor1[arg1].field_512 > !(0 / sub_897b5794):
                revert with 0, 17
            return (stor1[arg1].field_512 + (0 / sub_897b5794))
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if arg1 >= stor1.length:
            revert with 0, 50
        if not stor1[arg1].field_1024:
            if arg1 >= stor1.length:
                revert with 0, 50
            if block.timestamp - lastUpdateTime and stor1[arg1].field_256 > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) and 1 > -1 / (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256):
                revert with 0, 17
            if not sub_897b5794:
                revert with 0, 18
            if arg1 >= stor1.length:
                revert with 0, 50
            if stor1[arg1].field_512 > !((block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) / sub_897b5794):
                revert with 0, 17
            return (stor1[arg1].field_512 + ((block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) / sub_897b5794))
        if bool(bool(stor1[arg1].field_1024 < 78)) or bool(bool(stor1[arg1].field_1024 < 32)):
            if 10^stor1[arg1].field_1024 > -1:
                revert with 0, 17
            if arg1 >= stor1.length:
                revert with 0, 50
            if block.timestamp - lastUpdateTime and stor1[arg1].field_256 > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) and 10^stor1[arg1].field_1024 > -1 / (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256):
                revert with 0, 17
            if not sub_897b5794:
                revert with 0, 18
            if arg1 >= stor1.length:
                revert with 0, 50
            if stor1[arg1].field_512 > !((block.timestamp * stor1[arg1].field_256 * 10^stor1[arg1].field_1024) - (lastUpdateTime * stor1[arg1].field_256 * 10^stor1[arg1].field_1024) / sub_897b5794):
                revert with 0, 17
            return (stor1[arg1].field_512 + ((block.timestamp * stor1[arg1].field_256 * 10^stor1[arg1].field_1024) - (lastUpdateTime * stor1[arg1].field_256 * 10^stor1[arg1].field_1024) / sub_897b5794))
        if var31005 > 1:
            s = var31001
            t = var31002
            u = var31005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if arg1 >= stor1.length:
                        revert with 0, 50
                    if block.timestamp - lastUpdateTime and stor1[arg1].field_256 > -1 / block.timestamp - lastUpdateTime:
                        revert with 0, 17
                    if (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) and s * s * t > -1 / (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256):
                        revert with 0, 17
                    if not sub_897b5794:
                        revert with 0, 18
                    if arg1 >= stor1.length:
                        revert with 0, 50
                    if stor1[arg1].field_512 > !((block.timestamp * stor1[arg1].field_256 * s * s * t) - (lastUpdateTime * stor1[arg1].field_256 * s * s * t) / sub_897b5794):
                        revert with 0, 17
                    return (stor1[arg1].field_512 + ((block.timestamp * stor1[arg1].field_256 * s * s * t) - (lastUpdateTime * stor1[arg1].field_256 * s * s * t) / sub_897b5794))
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if arg1 >= stor1.length:
                    revert with 0, 50
                if block.timestamp - lastUpdateTime and stor1[arg1].field_256 > -1 / block.timestamp - lastUpdateTime:
                    revert with 0, 17
                if (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) and s * s * s * t > -1 / (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256):
                    revert with 0, 17
                if not sub_897b5794:
                    revert with 0, 18
                if arg1 >= stor1.length:
                    revert with 0, 50
                if stor1[arg1].field_512 > !((block.timestamp * stor1[arg1].field_256 * s * s * s * t) - (lastUpdateTime * stor1[arg1].field_256 * s * s * s * t) / sub_897b5794):
                    revert with 0, 17
                return (stor1[arg1].field_512 + ((block.timestamp * stor1[arg1].field_256 * s * s * s * t) - (lastUpdateTime * stor1[arg1].field_256 * s * s * s * t) / sub_897b5794))
            revert with 0, 17
        if var31002 > -1 / var31001:
            revert with 0, 17
        if arg1 >= stor1.length:
            revert with 0, 50
        if block.timestamp - lastUpdateTime and stor1[arg1].field_256 > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) and var31001 * var31002 > -1 / (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256):
            revert with 0, 17
        if not sub_897b5794:
            revert with 0, 18
        if arg1 >= stor1.length:
            revert with 0, 50
        if stor1[arg1].field_512 > !((block.timestamp * stor1[arg1].field_256 * var31001 * var31002) - (lastUpdateTime * stor1[arg1].field_256 * var31001 * var31002) / sub_897b5794):
            revert with 0, 17
        return (stor1[arg1].field_512 + ((block.timestamp * stor1[arg1].field_256 * var31001 * var31002) - (lastUpdateTime * stor1[arg1].field_256 * var31001 * var31002) / sub_897b5794))
    if block.timestamp >= stor1[arg1].field_768:
        if stor1[arg1].field_768 <= lastUpdateTime:
            if arg1 >= stor1.length:
                revert with 0, 50
            if not stor1[arg1].field_1024:
                if arg1 >= stor1.length:
                    revert with 0, 50
                if False and stor1[arg1].field_256 > 0:
                    revert with 0, 17
            else:
                if bool(bool(stor1[arg1].field_1024 < 78)) or bool(bool(stor1[arg1].field_1024 < 32)):
                    if 10^stor1[arg1].field_1024 > -1:
                        revert with 0, 17
                    if arg1 >= stor1.length:
                        revert with 0, 50
                    if False and stor1[arg1].field_256 > 0:
                        revert with 0, 17
                    if False and 10^stor1[arg1].field_1024 > 0:
                        revert with 0, 17
                else:
                    if var28005 > 1:
                        s = var28001
                        t = var28002
                        u = var28005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if arg1 >= stor1.length:
                                    revert with 0, 50
                                if False and stor1[arg1].field_256 > 0:
                                    revert with 0, 17
                                if False and s * s * t > 0:
                                    revert with 0, 17
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg1 >= stor1.length:
                                    revert with 0, 50
                                if False and stor1[arg1].field_256 > 0:
                                    revert with 0, 17
                                if False and s * s * s * t > 0:
                                    revert with 0, 17
                            if not sub_897b5794:
                                revert with 0, 18
                            if arg1 >= stor1.length:
                                revert with 0, 50
                            if stor1[arg1].field_512 > !(0 / sub_897b5794):
                                revert with 0, 17
                            return (stor1[arg1].field_512 + (0 / sub_897b5794))
                        revert with 0, 17
                    if var28002 > -1 / var28001:
                        revert with 0, 17
                    if arg1 >= stor1.length:
                        revert with 0, 50
                    if False and stor1[arg1].field_256 > 0:
                        revert with 0, 17
                    if False and var28001 * var28002 > 0:
                        revert with 0, 17
            if not sub_897b5794:
                revert with 0, 18
            if arg1 >= stor1.length:
                revert with 0, 50
            if stor1[arg1].field_512 > !(0 / sub_897b5794):
                revert with 0, 17
            return (stor1[arg1].field_512 + (0 / sub_897b5794))
        if stor1[arg1].field_768 < lastUpdateTime:
            revert with 0, 17
        if arg1 >= stor1.length:
            revert with 0, 50
        if not stor1[arg1].field_1024:
            if arg1 >= stor1.length:
                revert with 0, 50
            if stor1[arg1].field_768 - lastUpdateTime and stor1[arg1].field_256 > -1 / stor1[arg1].field_768 - lastUpdateTime:
                revert with 0, 17
            if (stor1[arg1].field_768 * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) and 1 > -1 / (stor1[arg1].field_768 * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256):
                revert with 0, 17
            if not sub_897b5794:
                revert with 0, 18
            if arg1 >= stor1.length:
                revert with 0, 50
            if stor1[arg1].field_512 > !((stor1[arg1].field_768 * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) / sub_897b5794):
                revert with 0, 17
            return (stor1[arg1].field_512 + ((stor1[arg1].field_768 * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) / sub_897b5794))
        if bool(bool(stor1[arg1].field_1024 < 78)) or bool(bool(stor1[arg1].field_1024 < 32)):
            if 10^stor1[arg1].field_1024 > -1:
                revert with 0, 17
            if arg1 >= stor1.length:
                revert with 0, 50
            if stor1[arg1].field_768 - lastUpdateTime and stor1[arg1].field_256 > -1 / stor1[arg1].field_768 - lastUpdateTime:
                revert with 0, 17
            if (stor1[arg1].field_768 * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) and 10^stor1[arg1].field_1024 > -1 / (stor1[arg1].field_768 * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256):
                revert with 0, 17
            if not sub_897b5794:
                revert with 0, 18
            if arg1 >= stor1.length:
                revert with 0, 50
            if stor1[arg1].field_512 > !((stor1[arg1].field_768 * stor1[arg1].field_256 * 10^stor1[arg1].field_1024) - (lastUpdateTime * stor1[arg1].field_256 * 10^stor1[arg1].field_1024) / sub_897b5794):
                revert with 0, 17
            return (stor1[arg1].field_512 + ((stor1[arg1].field_768 * stor1[arg1].field_256 * 10^stor1[arg1].field_1024) - (lastUpdateTime * stor1[arg1].field_256 * 10^stor1[arg1].field_1024) / sub_897b5794))
        if var31005 > 1:
            s = var31001
            t = var31002
            u = var31005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if arg1 >= stor1.length:
                        revert with 0, 50
                    if stor1[arg1].field_768 - lastUpdateTime and stor1[arg1].field_256 > -1 / stor1[arg1].field_768 - lastUpdateTime:
                        revert with 0, 17
                    if (stor1[arg1].field_768 * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) and s * s * t > -1 / (stor1[arg1].field_768 * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256):
                        revert with 0, 17
                    if not sub_897b5794:
                        revert with 0, 18
                    if arg1 >= stor1.length:
                        revert with 0, 50
                    if stor1[arg1].field_512 > !((stor1[arg1].field_768 * stor1[arg1].field_256 * s * s * t) - (lastUpdateTime * stor1[arg1].field_256 * s * s * t) / sub_897b5794):
                        revert with 0, 17
                    return (stor1[arg1].field_512 + ((stor1[arg1].field_768 * stor1[arg1].field_256 * s * s * t) - (lastUpdateTime * stor1[arg1].field_256 * s * s * t) / sub_897b5794))
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if arg1 >= stor1.length:
                    revert with 0, 50
                if stor1[arg1].field_768 - lastUpdateTime and stor1[arg1].field_256 > -1 / stor1[arg1].field_768 - lastUpdateTime:
                    revert with 0, 17
                if (stor1[arg1].field_768 * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) and s * s * s * t > -1 / (stor1[arg1].field_768 * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256):
                    revert with 0, 17
                if not sub_897b5794:
                    revert with 0, 18
                if arg1 >= stor1.length:
                    revert with 0, 50
                if stor1[arg1].field_512 > !((stor1[arg1].field_768 * stor1[arg1].field_256 * s * s * s * t) - (lastUpdateTime * stor1[arg1].field_256 * s * s * s * t) / sub_897b5794):
                    revert with 0, 17
                return (stor1[arg1].field_512 + ((stor1[arg1].field_768 * stor1[arg1].field_256 * s * s * s * t) - (lastUpdateTime * stor1[arg1].field_256 * s * s * s * t) / sub_897b5794))
            revert with 0, 17
        if var31002 > -1 / var31001:
            revert with 0, 17
        if arg1 >= stor1.length:
            revert with 0, 50
        if stor1[arg1].field_768 - lastUpdateTime and stor1[arg1].field_256 > -1 / stor1[arg1].field_768 - lastUpdateTime:
            revert with 0, 17
        if (stor1[arg1].field_768 * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) and var31001 * var31002 > -1 / (stor1[arg1].field_768 * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256):
            revert with 0, 17
        if not sub_897b5794:
            revert with 0, 18
        if arg1 >= stor1.length:
            revert with 0, 50
        if stor1[arg1].field_512 > !((stor1[arg1].field_768 * stor1[arg1].field_256 * var31001 * var31002) - (lastUpdateTime * stor1[arg1].field_256 * var31001 * var31002) / sub_897b5794):
            revert with 0, 17
        return (stor1[arg1].field_512 + ((stor1[arg1].field_768 * stor1[arg1].field_256 * var31001 * var31002) - (lastUpdateTime * stor1[arg1].field_256 * var31001 * var31002) / sub_897b5794))
    if block.timestamp <= lastUpdateTime:
        if arg1 >= stor1.length:
            revert with 0, 50
        if not stor1[arg1].field_1024:
            if arg1 >= stor1.length:
                revert with 0, 50
            if False and stor1[arg1].field_256 > 0:
                revert with 0, 17
        else:
            if bool(bool(stor1[arg1].field_1024 < 78)) or bool(bool(stor1[arg1].field_1024 < 32)):
                if 10^stor1[arg1].field_1024 > -1:
                    revert with 0, 17
                if arg1 >= stor1.length:
                    revert with 0, 50
                if False and stor1[arg1].field_256 > 0:
                    revert with 0, 17
                if False and 10^stor1[arg1].field_1024 > 0:
                    revert with 0, 17
            else:
                if var29005 > 1:
                    s = var29001
                    t = var29002
                    u = var29005
                    while s <= -1 / s:
                        if not bool(u):
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = t
                                u = uint255(u) * 0.5
                                continue 
                            if t > -1 / s * s:
                                revert with 0, 17
                            if arg1 >= stor1.length:
                                revert with 0, 50
                            if False and stor1[arg1].field_256 > 0:
                                revert with 0, 17
                            if False and s * s * t > 0:
                                revert with 0, 17
                        else:
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = s * t
                                u = uint255(u) * 0.5
                                continue 
                            if s * t > -1 / s * s:
                                revert with 0, 17
                            if arg1 >= stor1.length:
                                revert with 0, 50
                            if False and stor1[arg1].field_256 > 0:
                                revert with 0, 17
                            if False and s * s * s * t > 0:
                                revert with 0, 17
                        if not sub_897b5794:
                            revert with 0, 18
                        if arg1 >= stor1.length:
                            revert with 0, 50
                        if stor1[arg1].field_512 > !(0 / sub_897b5794):
                            revert with 0, 17
                        return (stor1[arg1].field_512 + (0 / sub_897b5794))
                    revert with 0, 17
                if var29002 > -1 / var29001:
                    revert with 0, 17
                if arg1 >= stor1.length:
                    revert with 0, 50
                if False and stor1[arg1].field_256 > 0:
                    revert with 0, 17
                if False and var29001 * var29002 > 0:
                    revert with 0, 17
        if not sub_897b5794:
            revert with 0, 18
        if arg1 >= stor1.length:
            revert with 0, 50
        if stor1[arg1].field_512 > !(0 / sub_897b5794):
            revert with 0, 17
        return (stor1[arg1].field_512 + (0 / sub_897b5794))
    if block.timestamp < lastUpdateTime:
        revert with 0, 17
    if arg1 >= stor1.length:
        revert with 0, 50
    if not stor1[arg1].field_1024:
        if arg1 >= stor1.length:
            revert with 0, 50
        if block.timestamp - lastUpdateTime and stor1[arg1].field_256 > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) and 1 > -1 / (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256):
            revert with 0, 17
        if not sub_897b5794:
            revert with 0, 18
        if arg1 >= stor1.length:
            revert with 0, 50
        if stor1[arg1].field_512 > !((block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) / sub_897b5794):
            revert with 0, 17
        return (stor1[arg1].field_512 + ((block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) / sub_897b5794))
    if bool(bool(stor1[arg1].field_1024 < 78)) or bool(bool(stor1[arg1].field_1024 < 32)):
        if 10^stor1[arg1].field_1024 > -1:
            revert with 0, 17
        if arg1 >= stor1.length:
            revert with 0, 50
        if block.timestamp - lastUpdateTime and stor1[arg1].field_256 > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) and 10^stor1[arg1].field_1024 > -1 / (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256):
            revert with 0, 17
        if not sub_897b5794:
            revert with 0, 18
        if arg1 >= stor1.length:
            revert with 0, 50
        if stor1[arg1].field_512 > !((block.timestamp * stor1[arg1].field_256 * 10^stor1[arg1].field_1024) - (lastUpdateTime * stor1[arg1].field_256 * 10^stor1[arg1].field_1024) / sub_897b5794):
            revert with 0, 17
        return (stor1[arg1].field_512 + ((block.timestamp * stor1[arg1].field_256 * 10^stor1[arg1].field_1024) - (lastUpdateTime * stor1[arg1].field_256 * 10^stor1[arg1].field_1024) / sub_897b5794))
    if var32005 > 1:
        s = var32001
        t = var32002
        u = var32005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                if arg1 >= stor1.length:
                    revert with 0, 50
                if block.timestamp - lastUpdateTime and stor1[arg1].field_256 > -1 / block.timestamp - lastUpdateTime:
                    revert with 0, 17
                if (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) and s * s * t > -1 / (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256):
                    revert with 0, 17
                if not sub_897b5794:
                    revert with 0, 18
                if arg1 >= stor1.length:
                    revert with 0, 50
                if stor1[arg1].field_512 > !((block.timestamp * stor1[arg1].field_256 * s * s * t) - (lastUpdateTime * stor1[arg1].field_256 * s * s * t) / sub_897b5794):
                    revert with 0, 17
                return (stor1[arg1].field_512 + ((block.timestamp * stor1[arg1].field_256 * s * s * t) - (lastUpdateTime * stor1[arg1].field_256 * s * s * t) / sub_897b5794))
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if arg1 >= stor1.length:
                revert with 0, 50
            if block.timestamp - lastUpdateTime and stor1[arg1].field_256 > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) and s * s * s * t > -1 / (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256):
                revert with 0, 17
            if not sub_897b5794:
                revert with 0, 18
            if arg1 >= stor1.length:
                revert with 0, 50
            if stor1[arg1].field_512 > !((block.timestamp * stor1[arg1].field_256 * s * s * s * t) - (lastUpdateTime * stor1[arg1].field_256 * s * s * s * t) / sub_897b5794):
                revert with 0, 17
            return (stor1[arg1].field_512 + ((block.timestamp * stor1[arg1].field_256 * s * s * s * t) - (lastUpdateTime * stor1[arg1].field_256 * s * s * s * t) / sub_897b5794))
        revert with 0, 17
    if var32002 > -1 / var32001:
        revert with 0, 17
    if arg1 >= stor1.length:
        revert with 0, 50
    if block.timestamp - lastUpdateTime and stor1[arg1].field_256 > -1 / block.timestamp - lastUpdateTime:
        revert with 0, 17
    if (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256) and var32001 * var32002 > -1 / (block.timestamp * stor1[arg1].field_256) - (lastUpdateTime * stor1[arg1].field_256):
        revert with 0, 17
    if not sub_897b5794:
        revert with 0, 18
    if arg1 >= stor1.length:
        revert with 0, 50
    if stor1[arg1].field_512 > !((block.timestamp * stor1[arg1].field_256 * var32001 * var32002) - (lastUpdateTime * stor1[arg1].field_256 * var32001 * var32002) / sub_897b5794):
        revert with 0, 17
    return (stor1[arg1].field_512 + ((block.timestamp * stor1[arg1].field_256 * var32001 * var32002) - (lastUpdateTime * stor1[arg1].field_256 * var32001 * var32002) / sub_897b5794))
}

function sub_609789ba(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == uint8(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var56002 < stor2.length:
        if var62001 >= stor2.length:
            revert with 0, 50
        if 0 == sub_897b5794:
            if var70004 >= stor2.length:
                revert with 0, 50
            if stor2[var70004].field_0 >= stor1.length:
                revert with 0, 50
            stor1[stor2[var70004].field_0].field_512 = 0
        else:
            if var70001 >= stor1.length:
                revert with 0, 50
            if 0 == stor1[var70001].field_768:
                if block.timestamp <= lastUpdateTime:
                    if var70001 >= stor1.length:
                        revert with 0, 50
                    if not stor1[var70001].field_1024:
                        if var70001 >= stor1.length:
                            revert with 0, 50
                        if False and stor1[var70001].field_256 > 0:
                            revert with 0, 17
                    else:
                        if bool(bool(stor1[var70001].field_1024 < 78)) or bool(bool(stor1[var70001].field_1024 < 32)):
                            if 10^stor1[var70001].field_1024 > -1:
                                revert with 0, 17
                            if var70001 >= stor1.length:
                                revert with 0, 50
                            if False and stor1[var70001].field_256 > 0:
                                revert with 0, 17
                            if False and 10^stor1[var70001].field_1024 > 0:
                                revert with 0, 17
                        else:
                            if var58005 > 1:
                                s = var58001
                                t = var58002
                                u = var58005
                                while s <= -1 / s:
                                    if not bool(u):
                                        if uint255(u) * 0.5 > 1:
                                            s = s * s
                                            t = t
                                            u = uint255(u) * 0.5
                                            continue 
                                        if t > -1 / s * s:
                                            revert with 0, 17
                                        if var70001 >= stor1.length:
                                            revert with 0, 50
                                        if False and stor1[var70001].field_256 > 0:
                                            revert with 0, 17
                                        if False and s * s * t > 0:
                                            revert with 0, 17
                                    else:
                                        if uint255(u) * 0.5 > 1:
                                            s = s * s
                                            t = s * t
                                            u = uint255(u) * 0.5
                                            continue 
                                        if s * t > -1 / s * s:
                                            revert with 0, 17
                                        if var70001 >= stor1.length:
                                            revert with 0, 50
                                        if False and stor1[var70001].field_256 > 0:
                                            revert with 0, 17
                                        if False and s * s * s * t > 0:
                                            revert with 0, 17
                                    if not sub_897b5794:
                                        revert with 0, 18
                                    if var70001 >= stor1.length:
                                        revert with 0, 50
                                    if stor1[var70001].field_512 > !(0 / sub_897b5794):
                                        revert with 0, 17
                                    if var70004 >= stor2.length:
                                        revert with 0, 50
                                    if stor2[var70004].field_0 >= stor1.length:
                                        revert with 0, 50
                                    stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + (0 / sub_897b5794)
                                    lastUpdateTime = block.timestamp
                                    if stor2.length < 1:
                                        revert with 0, 17
                                    if var70004 == -1:
                                        revert with 0, 17
                                    if var70004 + 1 < stor2.length:
                                        mem[0] = 2
                                        var70001 = stor2[var70004].field_256
                                        var70004 = var70004 + 1
                                        continue 
                                    if not address(arg1):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[addNewRewardToken] Address failure.'
                                    stor1.length++
                                    stor1[stor1.length].field_0 = address(arg1)
                                    storB10E[stor1.length] = arg2
                                    storB10E[stor1.length] = 0
                                    storB10E[stor1.length] = arg3
                                    storB10E[stor1.length] = uint8(arg4)
                                    if stor1.length < 1:
                                        revert with 0, 17
                                    require not stor3[stor1.length - 1]
                                    stor2.length++
                                    stor2[stor2.length].field_0 = stor1.length - 1
                                    stor3[stor1.length - 1] = stor2.length
                                    if stor1.length < 1:
                                        revert with 0, 17
                                    emit NewReward(address(arg1), stor1.length - 1);
                                revert with 0, 17
                            if var58002 > -1 / var58001:
                                revert with 0, 17
                            if var70001 >= stor1.length:
                                revert with 0, 50
                            if False and stor1[var70001].field_256 > 0:
                                revert with 0, 17
                            if False and var58001 * var58002 > 0:
                                revert with 0, 17
                    if not sub_897b5794:
                        revert with 0, 18
                    if var70001 >= stor1.length:
                        revert with 0, 50
                    if stor1[var70001].field_512 > !(0 / sub_897b5794):
                        revert with 0, 17
                    if var70004 >= stor2.length:
                        revert with 0, 50
                    if stor2[var70004].field_0 >= stor1.length:
                        revert with 0, 50
                    stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + (0 / sub_897b5794)
                else:
                    if block.timestamp < lastUpdateTime:
                        revert with 0, 17
                    if var70001 >= stor1.length:
                        revert with 0, 50
                    if not stor1[var70001].field_1024:
                        if var70001 >= stor1.length:
                            revert with 0, 50
                        if block.timestamp - lastUpdateTime and stor1[var70001].field_256 > -1 / block.timestamp - lastUpdateTime:
                            revert with 0, 17
                        if (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) and 1 > -1 / (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256):
                            revert with 0, 17
                        if not sub_897b5794:
                            revert with 0, 18
                        if var70001 >= stor1.length:
                            revert with 0, 50
                        if stor1[var70001].field_512 > !((block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) / sub_897b5794):
                            revert with 0, 17
                        if var70004 >= stor2.length:
                            revert with 0, 50
                        if stor2[var70004].field_0 >= stor1.length:
                            revert with 0, 50
                        stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + ((block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) / sub_897b5794)
                    else:
                        if bool(bool(stor1[var70001].field_1024 < 78)) or bool(bool(stor1[var70001].field_1024 < 32)):
                            if 10^stor1[var70001].field_1024 > -1:
                                revert with 0, 17
                            if var70001 >= stor1.length:
                                revert with 0, 50
                            if block.timestamp - lastUpdateTime and stor1[var70001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                revert with 0, 17
                            if (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) and 10^stor1[var70001].field_1024 > -1 / (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256):
                                revert with 0, 17
                            if not sub_897b5794:
                                revert with 0, 18
                            if var70001 >= stor1.length:
                                revert with 0, 50
                            if stor1[var70001].field_512 > !((block.timestamp * stor1[var70001].field_256 * 10^stor1[var70001].field_1024) - (lastUpdateTime * stor1[var70001].field_256 * 10^stor1[var70001].field_1024) / sub_897b5794):
                                revert with 0, 17
                            if var70004 >= stor2.length:
                                revert with 0, 50
                            if stor2[var70004].field_0 >= stor1.length:
                                revert with 0, 50
                            stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + ((block.timestamp * stor1[var70001].field_256 * 10^stor1[var70001].field_1024) - (lastUpdateTime * stor1[var70001].field_256 * 10^stor1[var70001].field_1024) / sub_897b5794)
                        else:
                            if var61005 > 1:
                                s = var61001
                                t = var61002
                                u = var61005
                                while s <= -1 / s:
                                    if not bool(u):
                                        if uint255(u) * 0.5 > 1:
                                            s = s * s
                                            t = t
                                            u = uint255(u) * 0.5
                                            continue 
                                        if t > -1 / s * s:
                                            revert with 0, 17
                                        if var70001 >= stor1.length:
                                            revert with 0, 50
                                        if block.timestamp - lastUpdateTime and stor1[var70001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                            revert with 0, 17
                                        if (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) and s * s * t > -1 / (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256):
                                            revert with 0, 17
                                        if not sub_897b5794:
                                            revert with 0, 18
                                        if var70001 >= stor1.length:
                                            revert with 0, 50
                                        if stor1[var70001].field_512 > !((block.timestamp * stor1[var70001].field_256 * s * s * t) - (lastUpdateTime * stor1[var70001].field_256 * s * s * t) / sub_897b5794):
                                            revert with 0, 17
                                        if var70004 >= stor2.length:
                                            revert with 0, 50
                                        if stor2[var70004].field_0 >= stor1.length:
                                            revert with 0, 50
                                        stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + ((block.timestamp * stor1[var70001].field_256 * s * s * t) - (lastUpdateTime * stor1[var70001].field_256 * s * s * t) / sub_897b5794)
                                    else:
                                        if uint255(u) * 0.5 > 1:
                                            s = s * s
                                            t = s * t
                                            u = uint255(u) * 0.5
                                            continue 
                                        if s * t > -1 / s * s:
                                            revert with 0, 17
                                        if var70001 >= stor1.length:
                                            revert with 0, 50
                                        if block.timestamp - lastUpdateTime and stor1[var70001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                            revert with 0, 17
                                        if (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) and s * s * s * t > -1 / (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256):
                                            revert with 0, 17
                                        if not sub_897b5794:
                                            revert with 0, 18
                                        if var70001 >= stor1.length:
                                            revert with 0, 50
                                        if stor1[var70001].field_512 > !((block.timestamp * stor1[var70001].field_256 * s * s * s * t) - (lastUpdateTime * stor1[var70001].field_256 * s * s * s * t) / sub_897b5794):
                                            revert with 0, 17
                                        if var70004 >= stor2.length:
                                            revert with 0, 50
                                        if stor2[var70004].field_0 >= stor1.length:
                                            revert with 0, 50
                                        stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + ((block.timestamp * stor1[var70001].field_256 * s * s * s * t) - (lastUpdateTime * stor1[var70001].field_256 * s * s * s * t) / sub_897b5794)
                                    lastUpdateTime = block.timestamp
                                    if stor2.length < 1:
                                        revert with 0, 17
                                    if var70004 == -1:
                                        revert with 0, 17
                                    if var70004 + 1 < stor2.length:
                                        mem[0] = 2
                                        var70001 = stor2[var70004].field_256
                                        var70004 = var70004 + 1
                                        continue 
                                    if not address(arg1):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[addNewRewardToken] Address failure.'
                                    stor1.length++
                                    stor1[stor1.length].field_0 = address(arg1)
                                    storB10E[stor1.length] = arg2
                                    storB10E[stor1.length] = 0
                                    storB10E[stor1.length] = arg3
                                    storB10E[stor1.length] = uint8(arg4)
                                    if stor1.length < 1:
                                        revert with 0, 17
                                    require not stor3[stor1.length - 1]
                                    stor2.length++
                                    stor2[stor2.length].field_0 = stor1.length - 1
                                    stor3[stor1.length - 1] = stor2.length
                                    if stor1.length < 1:
                                        revert with 0, 17
                                    emit NewReward(address(arg1), stor1.length - 1);
                                revert with 0, 17
                            if var61002 > -1 / var61001:
                                revert with 0, 17
                            if var70001 >= stor1.length:
                                revert with 0, 50
                            if block.timestamp - lastUpdateTime and stor1[var70001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                revert with 0, 17
                            if (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) and var61001 * var61002 > -1 / (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256):
                                revert with 0, 17
                            if not sub_897b5794:
                                revert with 0, 18
                            if var70001 >= stor1.length:
                                revert with 0, 50
                            if stor1[var70001].field_512 > !((block.timestamp * stor1[var70001].field_256 * var61001 * var61002) - (lastUpdateTime * stor1[var70001].field_256 * var61001 * var61002) / sub_897b5794):
                                revert with 0, 17
                            if var70004 >= stor2.length:
                                revert with 0, 50
                            if stor2[var70004].field_0 >= stor1.length:
                                revert with 0, 50
                            stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + ((block.timestamp * stor1[var70001].field_256 * var61001 * var61002) - (lastUpdateTime * stor1[var70001].field_256 * var61001 * var61002) / sub_897b5794)
            else:
                if block.timestamp >= stor1[var70001].field_768:
                    if stor1[var70001].field_768 <= lastUpdateTime:
                        if var70001 >= stor1.length:
                            revert with 0, 50
                        if not stor1[var70001].field_1024:
                            if var70001 >= stor1.length:
                                revert with 0, 50
                            if False and stor1[var70001].field_256 > 0:
                                revert with 0, 17
                        else:
                            if bool(bool(stor1[var70001].field_1024 < 78)) or bool(bool(stor1[var70001].field_1024 < 32)):
                                if 10^stor1[var70001].field_1024 > -1:
                                    revert with 0, 17
                                if var70001 >= stor1.length:
                                    revert with 0, 50
                                if False and stor1[var70001].field_256 > 0:
                                    revert with 0, 17
                                if False and 10^stor1[var70001].field_1024 > 0:
                                    revert with 0, 17
                            else:
                                if var58005 > 1:
                                    s = var58001
                                    t = var58002
                                    u = var58005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if var70001 >= stor1.length:
                                                revert with 0, 50
                                            if False and stor1[var70001].field_256 > 0:
                                                revert with 0, 17
                                            if False and s * s * t > 0:
                                                revert with 0, 17
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if var70001 >= stor1.length:
                                                revert with 0, 50
                                            if False and stor1[var70001].field_256 > 0:
                                                revert with 0, 17
                                            if False and s * s * s * t > 0:
                                                revert with 0, 17
                                        if not sub_897b5794:
                                            revert with 0, 18
                                        if var70001 >= stor1.length:
                                            revert with 0, 50
                                        if stor1[var70001].field_512 > !(0 / sub_897b5794):
                                            revert with 0, 17
                                        if var70004 >= stor2.length:
                                            revert with 0, 50
                                        if stor2[var70004].field_0 >= stor1.length:
                                            revert with 0, 50
                                        stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + (0 / sub_897b5794)
                                        lastUpdateTime = block.timestamp
                                        if stor2.length < 1:
                                            revert with 0, 17
                                        if var70004 == -1:
                                            revert with 0, 17
                                        if var70004 + 1 < stor2.length:
                                            mem[0] = 2
                                            var70001 = stor2[var70004].field_256
                                            var70004 = var70004 + 1
                                            continue 
                                        if not address(arg1):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[addNewRewardToken] Address failure.'
                                        stor1.length++
                                        stor1[stor1.length].field_0 = address(arg1)
                                        storB10E[stor1.length] = arg2
                                        storB10E[stor1.length] = 0
                                        storB10E[stor1.length] = arg3
                                        storB10E[stor1.length] = uint8(arg4)
                                        if stor1.length < 1:
                                            revert with 0, 17
                                        require not stor3[stor1.length - 1]
                                        stor2.length++
                                        stor2[stor2.length].field_0 = stor1.length - 1
                                        stor3[stor1.length - 1] = stor2.length
                                        if stor1.length < 1:
                                            revert with 0, 17
                                        emit NewReward(address(arg1), stor1.length - 1);
                                    revert with 0, 17
                                if var58002 > -1 / var58001:
                                    revert with 0, 17
                                if var70001 >= stor1.length:
                                    revert with 0, 50
                                if False and stor1[var70001].field_256 > 0:
                                    revert with 0, 17
                                if False and var58001 * var58002 > 0:
                                    revert with 0, 17
                        if not sub_897b5794:
                            revert with 0, 18
                        if var70001 >= stor1.length:
                            revert with 0, 50
                        if stor1[var70001].field_512 > !(0 / sub_897b5794):
                            revert with 0, 17
                        if var70004 >= stor2.length:
                            revert with 0, 50
                        if stor2[var70004].field_0 >= stor1.length:
                            revert with 0, 50
                        stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + (0 / sub_897b5794)
                    else:
                        if stor1[var70001].field_768 < lastUpdateTime:
                            revert with 0, 17
                        if var70001 >= stor1.length:
                            revert with 0, 50
                        if not stor1[var70001].field_1024:
                            if var70001 >= stor1.length:
                                revert with 0, 50
                            if stor1[var70001].field_768 - lastUpdateTime and stor1[var70001].field_256 > -1 / stor1[var70001].field_768 - lastUpdateTime:
                                revert with 0, 17
                            if (stor1[var70001].field_768 * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) and 1 > -1 / (stor1[var70001].field_768 * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256):
                                revert with 0, 17
                            if not sub_897b5794:
                                revert with 0, 18
                            if var70001 >= stor1.length:
                                revert with 0, 50
                            if stor1[var70001].field_512 > !((stor1[var70001].field_768 * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) / sub_897b5794):
                                revert with 0, 17
                            if var70004 >= stor2.length:
                                revert with 0, 50
                            if stor2[var70004].field_0 >= stor1.length:
                                revert with 0, 50
                            stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + ((stor1[var70001].field_768 * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) / sub_897b5794)
                        else:
                            if bool(bool(stor1[var70001].field_1024 < 78)) or bool(bool(stor1[var70001].field_1024 < 32)):
                                if 10^stor1[var70001].field_1024 > -1:
                                    revert with 0, 17
                                if var70001 >= stor1.length:
                                    revert with 0, 50
                                if stor1[var70001].field_768 - lastUpdateTime and stor1[var70001].field_256 > -1 / stor1[var70001].field_768 - lastUpdateTime:
                                    revert with 0, 17
                                if (stor1[var70001].field_768 * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) and 10^stor1[var70001].field_1024 > -1 / (stor1[var70001].field_768 * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256):
                                    revert with 0, 17
                                if not sub_897b5794:
                                    revert with 0, 18
                                if var70001 >= stor1.length:
                                    revert with 0, 50
                                if stor1[var70001].field_512 > !((stor1[var70001].field_768 * stor1[var70001].field_256 * 10^stor1[var70001].field_1024) - (lastUpdateTime * stor1[var70001].field_256 * 10^stor1[var70001].field_1024) / sub_897b5794):
                                    revert with 0, 17
                                if var70004 >= stor2.length:
                                    revert with 0, 50
                                if stor2[var70004].field_0 >= stor1.length:
                                    revert with 0, 50
                                stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + ((stor1[var70001].field_768 * stor1[var70001].field_256 * 10^stor1[var70001].field_1024) - (lastUpdateTime * stor1[var70001].field_256 * 10^stor1[var70001].field_1024) / sub_897b5794)
                            else:
                                if var61005 > 1:
                                    s = var61001
                                    t = var61002
                                    u = var61005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if var70001 >= stor1.length:
                                                revert with 0, 50
                                            if stor1[var70001].field_768 - lastUpdateTime and stor1[var70001].field_256 > -1 / stor1[var70001].field_768 - lastUpdateTime:
                                                revert with 0, 17
                                            if (stor1[var70001].field_768 * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) and s * s * t > -1 / (stor1[var70001].field_768 * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256):
                                                revert with 0, 17
                                            if not sub_897b5794:
                                                revert with 0, 18
                                            if var70001 >= stor1.length:
                                                revert with 0, 50
                                            if stor1[var70001].field_512 > !((stor1[var70001].field_768 * stor1[var70001].field_256 * s * s * t) - (lastUpdateTime * stor1[var70001].field_256 * s * s * t) / sub_897b5794):
                                                revert with 0, 17
                                            if var70004 >= stor2.length:
                                                revert with 0, 50
                                            if stor2[var70004].field_0 >= stor1.length:
                                                revert with 0, 50
                                            stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + ((stor1[var70001].field_768 * stor1[var70001].field_256 * s * s * t) - (lastUpdateTime * stor1[var70001].field_256 * s * s * t) / sub_897b5794)
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if var70001 >= stor1.length:
                                                revert with 0, 50
                                            if stor1[var70001].field_768 - lastUpdateTime and stor1[var70001].field_256 > -1 / stor1[var70001].field_768 - lastUpdateTime:
                                                revert with 0, 17
                                            if (stor1[var70001].field_768 * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) and s * s * s * t > -1 / (stor1[var70001].field_768 * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256):
                                                revert with 0, 17
                                            if not sub_897b5794:
                                                revert with 0, 18
                                            if var70001 >= stor1.length:
                                                revert with 0, 50
                                            if stor1[var70001].field_512 > !((stor1[var70001].field_768 * stor1[var70001].field_256 * s * s * s * t) - (lastUpdateTime * stor1[var70001].field_256 * s * s * s * t) / sub_897b5794):
                                                revert with 0, 17
                                            if var70004 >= stor2.length:
                                                revert with 0, 50
                                            if stor2[var70004].field_0 >= stor1.length:
                                                revert with 0, 50
                                            stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + ((stor1[var70001].field_768 * stor1[var70001].field_256 * s * s * s * t) - (lastUpdateTime * stor1[var70001].field_256 * s * s * s * t) / sub_897b5794)
                                        lastUpdateTime = block.timestamp
                                        if stor2.length < 1:
                                            revert with 0, 17
                                        if var70004 == -1:
                                            revert with 0, 17
                                        if var70004 + 1 < stor2.length:
                                            mem[0] = 2
                                            var70001 = stor2[var70004].field_256
                                            var70004 = var70004 + 1
                                            continue 
                                        if not address(arg1):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[addNewRewardToken] Address failure.'
                                        stor1.length++
                                        stor1[stor1.length].field_0 = address(arg1)
                                        storB10E[stor1.length] = arg2
                                        storB10E[stor1.length] = 0
                                        storB10E[stor1.length] = arg3
                                        storB10E[stor1.length] = uint8(arg4)
                                        if stor1.length < 1:
                                            revert with 0, 17
                                        require not stor3[stor1.length - 1]
                                        stor2.length++
                                        stor2[stor2.length].field_0 = stor1.length - 1
                                        stor3[stor1.length - 1] = stor2.length
                                        if stor1.length < 1:
                                            revert with 0, 17
                                        emit NewReward(address(arg1), stor1.length - 1);
                                    revert with 0, 17
                                if var61002 > -1 / var61001:
                                    revert with 0, 17
                                if var70001 >= stor1.length:
                                    revert with 0, 50
                                if stor1[var70001].field_768 - lastUpdateTime and stor1[var70001].field_256 > -1 / stor1[var70001].field_768 - lastUpdateTime:
                                    revert with 0, 17
                                if (stor1[var70001].field_768 * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) and var61001 * var61002 > -1 / (stor1[var70001].field_768 * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256):
                                    revert with 0, 17
                                if not sub_897b5794:
                                    revert with 0, 18
                                if var70001 >= stor1.length:
                                    revert with 0, 50
                                if stor1[var70001].field_512 > !((stor1[var70001].field_768 * stor1[var70001].field_256 * var61001 * var61002) - (lastUpdateTime * stor1[var70001].field_256 * var61001 * var61002) / sub_897b5794):
                                    revert with 0, 17
                                if var70004 >= stor2.length:
                                    revert with 0, 50
                                if stor2[var70004].field_0 >= stor1.length:
                                    revert with 0, 50
                                stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + ((stor1[var70001].field_768 * stor1[var70001].field_256 * var61001 * var61002) - (lastUpdateTime * stor1[var70001].field_256 * var61001 * var61002) / sub_897b5794)
                else:
                    if block.timestamp <= lastUpdateTime:
                        if var70001 >= stor1.length:
                            revert with 0, 50
                        if not stor1[var70001].field_1024:
                            if var70001 >= stor1.length:
                                revert with 0, 50
                            if False and stor1[var70001].field_256 > 0:
                                revert with 0, 17
                        else:
                            if bool(bool(stor1[var70001].field_1024 < 78)) or bool(bool(stor1[var70001].field_1024 < 32)):
                                if 10^stor1[var70001].field_1024 > -1:
                                    revert with 0, 17
                                if var70001 >= stor1.length:
                                    revert with 0, 50
                                if False and stor1[var70001].field_256 > 0:
                                    revert with 0, 17
                                if False and 10^stor1[var70001].field_1024 > 0:
                                    revert with 0, 17
                            else:
                                if var59005 > 1:
                                    s = var59001
                                    t = var59002
                                    u = var59005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if var70001 >= stor1.length:
                                                revert with 0, 50
                                            if False and stor1[var70001].field_256 > 0:
                                                revert with 0, 17
                                            if False and s * s * t > 0:
                                                revert with 0, 17
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if var70001 >= stor1.length:
                                                revert with 0, 50
                                            if False and stor1[var70001].field_256 > 0:
                                                revert with 0, 17
                                            if False and s * s * s * t > 0:
                                                revert with 0, 17
                                        if not sub_897b5794:
                                            revert with 0, 18
                                        if var70001 >= stor1.length:
                                            revert with 0, 50
                                        if stor1[var70001].field_512 > !(0 / sub_897b5794):
                                            revert with 0, 17
                                        if var70004 >= stor2.length:
                                            revert with 0, 50
                                        if stor2[var70004].field_0 >= stor1.length:
                                            revert with 0, 50
                                        stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + (0 / sub_897b5794)
                                        lastUpdateTime = block.timestamp
                                        if stor2.length < 1:
                                            revert with 0, 17
                                        if var70004 == -1:
                                            revert with 0, 17
                                        if var70004 + 1 < stor2.length:
                                            mem[0] = 2
                                            var70001 = stor2[var70004].field_256
                                            var70004 = var70004 + 1
                                            continue 
                                        if not address(arg1):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[addNewRewardToken] Address failure.'
                                        stor1.length++
                                        stor1[stor1.length].field_0 = address(arg1)
                                        storB10E[stor1.length] = arg2
                                        storB10E[stor1.length] = 0
                                        storB10E[stor1.length] = arg3
                                        storB10E[stor1.length] = uint8(arg4)
                                        if stor1.length < 1:
                                            revert with 0, 17
                                        require not stor3[stor1.length - 1]
                                        stor2.length++
                                        stor2[stor2.length].field_0 = stor1.length - 1
                                        stor3[stor1.length - 1] = stor2.length
                                        if stor1.length < 1:
                                            revert with 0, 17
                                        emit NewReward(address(arg1), stor1.length - 1);
                                    revert with 0, 17
                                if var59002 > -1 / var59001:
                                    revert with 0, 17
                                if var70001 >= stor1.length:
                                    revert with 0, 50
                                if False and stor1[var70001].field_256 > 0:
                                    revert with 0, 17
                                if False and var59001 * var59002 > 0:
                                    revert with 0, 17
                        if not sub_897b5794:
                            revert with 0, 18
                        if var70001 >= stor1.length:
                            revert with 0, 50
                        if stor1[var70001].field_512 > !(0 / sub_897b5794):
                            revert with 0, 17
                        if var70004 >= stor2.length:
                            revert with 0, 50
                        if stor2[var70004].field_0 >= stor1.length:
                            revert with 0, 50
                        stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + (0 / sub_897b5794)
                    else:
                        if block.timestamp < lastUpdateTime:
                            revert with 0, 17
                        if var70001 >= stor1.length:
                            revert with 0, 50
                        if not stor1[var70001].field_1024:
                            if var70001 >= stor1.length:
                                revert with 0, 50
                            if block.timestamp - lastUpdateTime and stor1[var70001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                revert with 0, 17
                            if (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) and 1 > -1 / (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256):
                                revert with 0, 17
                            if not sub_897b5794:
                                revert with 0, 18
                            if var70001 >= stor1.length:
                                revert with 0, 50
                            if stor1[var70001].field_512 > !((block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) / sub_897b5794):
                                revert with 0, 17
                            if var70004 >= stor2.length:
                                revert with 0, 50
                            if stor2[var70004].field_0 >= stor1.length:
                                revert with 0, 50
                            stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + ((block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) / sub_897b5794)
                        else:
                            if bool(bool(stor1[var70001].field_1024 < 78)) or bool(bool(stor1[var70001].field_1024 < 32)):
                                if 10^stor1[var70001].field_1024 > -1:
                                    revert with 0, 17
                                if var70001 >= stor1.length:
                                    revert with 0, 50
                                if block.timestamp - lastUpdateTime and stor1[var70001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                    revert with 0, 17
                                if (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) and 10^stor1[var70001].field_1024 > -1 / (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256):
                                    revert with 0, 17
                                if not sub_897b5794:
                                    revert with 0, 18
                                if var70001 >= stor1.length:
                                    revert with 0, 50
                                if stor1[var70001].field_512 > !((block.timestamp * stor1[var70001].field_256 * 10^stor1[var70001].field_1024) - (lastUpdateTime * stor1[var70001].field_256 * 10^stor1[var70001].field_1024) / sub_897b5794):
                                    revert with 0, 17
                                if var70004 >= stor2.length:
                                    revert with 0, 50
                                if stor2[var70004].field_0 >= stor1.length:
                                    revert with 0, 50
                                stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + ((block.timestamp * stor1[var70001].field_256 * 10^stor1[var70001].field_1024) - (lastUpdateTime * stor1[var70001].field_256 * 10^stor1[var70001].field_1024) / sub_897b5794)
                            else:
                                if var62005 > 1:
                                    s = var62001
                                    t = var62002
                                    u = var62005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if var70001 >= stor1.length:
                                                revert with 0, 50
                                            if block.timestamp - lastUpdateTime and stor1[var70001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                                revert with 0, 17
                                            if (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) and s * s * t > -1 / (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256):
                                                revert with 0, 17
                                            if not sub_897b5794:
                                                revert with 0, 18
                                            if var70001 >= stor1.length:
                                                revert with 0, 50
                                            if stor1[var70001].field_512 > !((block.timestamp * stor1[var70001].field_256 * s * s * t) - (lastUpdateTime * stor1[var70001].field_256 * s * s * t) / sub_897b5794):
                                                revert with 0, 17
                                            if var70004 >= stor2.length:
                                                revert with 0, 50
                                            if stor2[var70004].field_0 >= stor1.length:
                                                revert with 0, 50
                                            stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + ((block.timestamp * stor1[var70001].field_256 * s * s * t) - (lastUpdateTime * stor1[var70001].field_256 * s * s * t) / sub_897b5794)
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if var70001 >= stor1.length:
                                                revert with 0, 50
                                            if block.timestamp - lastUpdateTime and stor1[var70001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                                revert with 0, 17
                                            if (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) and s * s * s * t > -1 / (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256):
                                                revert with 0, 17
                                            if not sub_897b5794:
                                                revert with 0, 18
                                            if var70001 >= stor1.length:
                                                revert with 0, 50
                                            if stor1[var70001].field_512 > !((block.timestamp * stor1[var70001].field_256 * s * s * s * t) - (lastUpdateTime * stor1[var70001].field_256 * s * s * s * t) / sub_897b5794):
                                                revert with 0, 17
                                            if var70004 >= stor2.length:
                                                revert with 0, 50
                                            if stor2[var70004].field_0 >= stor1.length:
                                                revert with 0, 50
                                            stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + ((block.timestamp * stor1[var70001].field_256 * s * s * s * t) - (lastUpdateTime * stor1[var70001].field_256 * s * s * s * t) / sub_897b5794)
                                        lastUpdateTime = block.timestamp
                                        if stor2.length < 1:
                                            revert with 0, 17
                                        if var70004 == -1:
                                            revert with 0, 17
                                        if var70004 + 1 < stor2.length:
                                            mem[0] = 2
                                            var70001 = stor2[var70004].field_256
                                            var70004 = var70004 + 1
                                            continue 
                                        if not address(arg1):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[addNewRewardToken] Address failure.'
                                        stor1.length++
                                        stor1[stor1.length].field_0 = address(arg1)
                                        storB10E[stor1.length] = arg2
                                        storB10E[stor1.length] = 0
                                        storB10E[stor1.length] = arg3
                                        storB10E[stor1.length] = uint8(arg4)
                                        if stor1.length < 1:
                                            revert with 0, 17
                                        require not stor3[stor1.length - 1]
                                        stor2.length++
                                        stor2[stor2.length].field_0 = stor1.length - 1
                                        stor3[stor1.length - 1] = stor2.length
                                        if stor1.length < 1:
                                            revert with 0, 17
                                        emit NewReward(address(arg1), stor1.length - 1);
                                    revert with 0, 17
                                if var62002 > -1 / var62001:
                                    revert with 0, 17
                                if var70001 >= stor1.length:
                                    revert with 0, 50
                                if block.timestamp - lastUpdateTime and stor1[var70001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                    revert with 0, 17
                                if (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256) and var62001 * var62002 > -1 / (block.timestamp * stor1[var70001].field_256) - (lastUpdateTime * stor1[var70001].field_256):
                                    revert with 0, 17
                                if not sub_897b5794:
                                    revert with 0, 18
                                if var70001 >= stor1.length:
                                    revert with 0, 50
                                if stor1[var70001].field_512 > !((block.timestamp * stor1[var70001].field_256 * var62001 * var62002) - (lastUpdateTime * stor1[var70001].field_256 * var62001 * var62002) / sub_897b5794):
                                    revert with 0, 17
                                if var70004 >= stor2.length:
                                    revert with 0, 50
                                if stor2[var70004].field_0 >= stor1.length:
                                    revert with 0, 50
                                stor1[stor2[var70004].field_0].field_512 = stor1[var70001].field_512 + ((block.timestamp * stor1[var70001].field_256 * var62001 * var62002) - (lastUpdateTime * stor1[var70001].field_256 * var62001 * var62002) / sub_897b5794)
        lastUpdateTime = block.timestamp
        if stor2.length < 1:
            revert with 0, 17
        if var70004 == -1:
            revert with 0, 17
        if var70004 + 1 < stor2.length:
            mem[0] = 2
            var70001 = stor2[var70004].field_256
            var70004 = var70004 + 1
            continue 
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[addNewRewardToken] Address failure.'
    stor1.length++
    stor1[stor1.length].field_0 = address(arg1)
    storB10E[stor1.length] = arg2
    storB10E[stor1.length] = 0
    storB10E[stor1.length] = arg3
    storB10E[stor1.length] = uint8(arg4)
    if stor1.length < 1:
        revert with 0, 17
    require not stor3[stor1.length - 1]
    stor2.length++
    stor2[stor2.length].field_0 = stor1.length - 1
    stor3[stor1.length - 1] = stor2.length
    if stor1.length < 1:
        revert with 0, 17
    emit NewReward(address(arg1), stor1.length - 1);
}

function sub_130bfeea(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var52002 < stor2.length:
        if var58001 >= stor2.length:
            revert with 0, 50
        if 0 == sub_897b5794:
            if var66004 >= stor2.length:
                revert with 0, 50
            if stor2[var66004].field_0 >= stor1.length:
                revert with 0, 50
            stor1[stor2[var66004].field_0].field_512 = 0
        else:
            if var66001 >= stor1.length:
                revert with 0, 50
            if 0 == stor1[var66001].field_768:
                if block.timestamp <= lastUpdateTime:
                    if var66001 >= stor1.length:
                        revert with 0, 50
                    if not stor1[var66001].field_1024:
                        if var66001 >= stor1.length:
                            revert with 0, 50
                        if False and stor1[var66001].field_256 > 0:
                            revert with 0, 17
                    else:
                        if bool(bool(stor1[var66001].field_1024 < 78)) or bool(bool(stor1[var66001].field_1024 < 32)):
                            if 10^stor1[var66001].field_1024 > -1:
                                revert with 0, 17
                            if var66001 >= stor1.length:
                                revert with 0, 50
                            if False and stor1[var66001].field_256 > 0:
                                revert with 0, 17
                            if False and 10^stor1[var66001].field_1024 > 0:
                                revert with 0, 17
                        else:
                            if var54005 > 1:
                                s = var54001
                                t = var54002
                                u = var54005
                                while s <= -1 / s:
                                    if not bool(u):
                                        if uint255(u) * 0.5 > 1:
                                            s = s * s
                                            t = t
                                            u = uint255(u) * 0.5
                                            continue 
                                        if t > -1 / s * s:
                                            revert with 0, 17
                                        if var66001 >= stor1.length:
                                            revert with 0, 50
                                        if False and stor1[var66001].field_256 > 0:
                                            revert with 0, 17
                                        if False and s * s * t > 0:
                                            revert with 0, 17
                                    else:
                                        if uint255(u) * 0.5 > 1:
                                            s = s * s
                                            t = s * t
                                            u = uint255(u) * 0.5
                                            continue 
                                        if s * t > -1 / s * s:
                                            revert with 0, 17
                                        if var66001 >= stor1.length:
                                            revert with 0, 50
                                        if False and stor1[var66001].field_256 > 0:
                                            revert with 0, 17
                                        if False and s * s * s * t > 0:
                                            revert with 0, 17
                                    if not sub_897b5794:
                                        revert with 0, 18
                                    if var66001 >= stor1.length:
                                        revert with 0, 50
                                    if stor1[var66001].field_512 > !(0 / sub_897b5794):
                                        revert with 0, 17
                                    if var66004 >= stor2.length:
                                        revert with 0, 50
                                    if stor2[var66004].field_0 >= stor1.length:
                                        revert with 0, 50
                                    stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + (0 / sub_897b5794)
                                    lastUpdateTime = block.timestamp
                                    if stor2.length < 1:
                                        revert with 0, 17
                                    if var66004 == -1:
                                        revert with 0, 17
                                    if var66004 + 1 < stor2.length:
                                        mem[0] = 2
                                        var66001 = stor2[var66004].field_256
                                        var66004 = var66004 + 1
                                        continue 
                                    if arg1 >= stor1.length:
                                        revert with 0, 50
                                    if stor1[arg1].field_768 >= block.timestamp:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Distr time has not over.'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Can not delist main token.'
                                    if not stor3[arg1]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Delisting unsuccessful'
                                    if stor3[arg1] < 1:
                                        revert with 0, 17
                                    if stor2.length < 1:
                                        revert with 0, 17
                                    if stor2.length - 1 != stor3[arg1] - 1:
                                        if stor2.length - 1 >= stor2.length:
                                            revert with 0, 50
                                        if stor3[arg1] - 1 >= stor2.length:
                                            revert with 0, 50
                                        stor2[stor3[arg1]].field_0 = stor2[stor2.length].field_0
                                        stor3[stor2[stor2.length].field_0] = stor3[arg1]
                                    if not stor2.length:
                                        revert with 0, 49
                                    stor2[stor2.length].field_0 = 0
                                    stor2.length--
                                    stor3[arg1] = 0
                                revert with 0, 17
                            if var54002 > -1 / var54001:
                                revert with 0, 17
                            if var66001 >= stor1.length:
                                revert with 0, 50
                            if False and stor1[var66001].field_256 > 0:
                                revert with 0, 17
                            if False and var54001 * var54002 > 0:
                                revert with 0, 17
                    if not sub_897b5794:
                        revert with 0, 18
                    if var66001 >= stor1.length:
                        revert with 0, 50
                    if stor1[var66001].field_512 > !(0 / sub_897b5794):
                        revert with 0, 17
                    if var66004 >= stor2.length:
                        revert with 0, 50
                    if stor2[var66004].field_0 >= stor1.length:
                        revert with 0, 50
                    stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + (0 / sub_897b5794)
                else:
                    if block.timestamp < lastUpdateTime:
                        revert with 0, 17
                    if var66001 >= stor1.length:
                        revert with 0, 50
                    if not stor1[var66001].field_1024:
                        if var66001 >= stor1.length:
                            revert with 0, 50
                        if block.timestamp - lastUpdateTime and stor1[var66001].field_256 > -1 / block.timestamp - lastUpdateTime:
                            revert with 0, 17
                        if (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) and 1 > -1 / (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256):
                            revert with 0, 17
                        if not sub_897b5794:
                            revert with 0, 18
                        if var66001 >= stor1.length:
                            revert with 0, 50
                        if stor1[var66001].field_512 > !((block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) / sub_897b5794):
                            revert with 0, 17
                        if var66004 >= stor2.length:
                            revert with 0, 50
                        if stor2[var66004].field_0 >= stor1.length:
                            revert with 0, 50
                        stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + ((block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) / sub_897b5794)
                    else:
                        if bool(bool(stor1[var66001].field_1024 < 78)) or bool(bool(stor1[var66001].field_1024 < 32)):
                            if 10^stor1[var66001].field_1024 > -1:
                                revert with 0, 17
                            if var66001 >= stor1.length:
                                revert with 0, 50
                            if block.timestamp - lastUpdateTime and stor1[var66001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                revert with 0, 17
                            if (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) and 10^stor1[var66001].field_1024 > -1 / (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256):
                                revert with 0, 17
                            if not sub_897b5794:
                                revert with 0, 18
                            if var66001 >= stor1.length:
                                revert with 0, 50
                            if stor1[var66001].field_512 > !((block.timestamp * stor1[var66001].field_256 * 10^stor1[var66001].field_1024) - (lastUpdateTime * stor1[var66001].field_256 * 10^stor1[var66001].field_1024) / sub_897b5794):
                                revert with 0, 17
                            if var66004 >= stor2.length:
                                revert with 0, 50
                            if stor2[var66004].field_0 >= stor1.length:
                                revert with 0, 50
                            stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + ((block.timestamp * stor1[var66001].field_256 * 10^stor1[var66001].field_1024) - (lastUpdateTime * stor1[var66001].field_256 * 10^stor1[var66001].field_1024) / sub_897b5794)
                        else:
                            if var57005 > 1:
                                s = var57001
                                t = var57002
                                u = var57005
                                while s <= -1 / s:
                                    if not bool(u):
                                        if uint255(u) * 0.5 > 1:
                                            s = s * s
                                            t = t
                                            u = uint255(u) * 0.5
                                            continue 
                                        if t > -1 / s * s:
                                            revert with 0, 17
                                        if var66001 >= stor1.length:
                                            revert with 0, 50
                                        if block.timestamp - lastUpdateTime and stor1[var66001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                            revert with 0, 17
                                        if (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) and s * s * t > -1 / (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256):
                                            revert with 0, 17
                                        if not sub_897b5794:
                                            revert with 0, 18
                                        if var66001 >= stor1.length:
                                            revert with 0, 50
                                        if stor1[var66001].field_512 > !((block.timestamp * stor1[var66001].field_256 * s * s * t) - (lastUpdateTime * stor1[var66001].field_256 * s * s * t) / sub_897b5794):
                                            revert with 0, 17
                                        if var66004 >= stor2.length:
                                            revert with 0, 50
                                        if stor2[var66004].field_0 >= stor1.length:
                                            revert with 0, 50
                                        stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + ((block.timestamp * stor1[var66001].field_256 * s * s * t) - (lastUpdateTime * stor1[var66001].field_256 * s * s * t) / sub_897b5794)
                                    else:
                                        if uint255(u) * 0.5 > 1:
                                            s = s * s
                                            t = s * t
                                            u = uint255(u) * 0.5
                                            continue 
                                        if s * t > -1 / s * s:
                                            revert with 0, 17
                                        if var66001 >= stor1.length:
                                            revert with 0, 50
                                        if block.timestamp - lastUpdateTime and stor1[var66001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                            revert with 0, 17
                                        if (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) and s * s * s * t > -1 / (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256):
                                            revert with 0, 17
                                        if not sub_897b5794:
                                            revert with 0, 18
                                        if var66001 >= stor1.length:
                                            revert with 0, 50
                                        if stor1[var66001].field_512 > !((block.timestamp * stor1[var66001].field_256 * s * s * s * t) - (lastUpdateTime * stor1[var66001].field_256 * s * s * s * t) / sub_897b5794):
                                            revert with 0, 17
                                        if var66004 >= stor2.length:
                                            revert with 0, 50
                                        if stor2[var66004].field_0 >= stor1.length:
                                            revert with 0, 50
                                        stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + ((block.timestamp * stor1[var66001].field_256 * s * s * s * t) - (lastUpdateTime * stor1[var66001].field_256 * s * s * s * t) / sub_897b5794)
                                    lastUpdateTime = block.timestamp
                                    if stor2.length < 1:
                                        revert with 0, 17
                                    if var66004 == -1:
                                        revert with 0, 17
                                    if var66004 + 1 < stor2.length:
                                        mem[0] = 2
                                        var66001 = stor2[var66004].field_256
                                        var66004 = var66004 + 1
                                        continue 
                                    if arg1 >= stor1.length:
                                        revert with 0, 50
                                    if stor1[arg1].field_768 >= block.timestamp:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Distr time has not over.'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Can not delist main token.'
                                    if not stor3[arg1]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Delisting unsuccessful'
                                    if stor3[arg1] < 1:
                                        revert with 0, 17
                                    if stor2.length < 1:
                                        revert with 0, 17
                                    if stor2.length - 1 != stor3[arg1] - 1:
                                        if stor2.length - 1 >= stor2.length:
                                            revert with 0, 50
                                        if stor3[arg1] - 1 >= stor2.length:
                                            revert with 0, 50
                                        stor2[stor3[arg1]].field_0 = stor2[stor2.length].field_0
                                        stor3[stor2[stor2.length].field_0] = stor3[arg1]
                                    if not stor2.length:
                                        revert with 0, 49
                                    stor2[stor2.length].field_0 = 0
                                    stor2.length--
                                    stor3[arg1] = 0
                                revert with 0, 17
                            if var57002 > -1 / var57001:
                                revert with 0, 17
                            if var66001 >= stor1.length:
                                revert with 0, 50
                            if block.timestamp - lastUpdateTime and stor1[var66001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                revert with 0, 17
                            if (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) and var57001 * var57002 > -1 / (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256):
                                revert with 0, 17
                            if not sub_897b5794:
                                revert with 0, 18
                            if var66001 >= stor1.length:
                                revert with 0, 50
                            if stor1[var66001].field_512 > !((block.timestamp * stor1[var66001].field_256 * var57001 * var57002) - (lastUpdateTime * stor1[var66001].field_256 * var57001 * var57002) / sub_897b5794):
                                revert with 0, 17
                            if var66004 >= stor2.length:
                                revert with 0, 50
                            if stor2[var66004].field_0 >= stor1.length:
                                revert with 0, 50
                            stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + ((block.timestamp * stor1[var66001].field_256 * var57001 * var57002) - (lastUpdateTime * stor1[var66001].field_256 * var57001 * var57002) / sub_897b5794)
            else:
                if block.timestamp >= stor1[var66001].field_768:
                    if stor1[var66001].field_768 <= lastUpdateTime:
                        if var66001 >= stor1.length:
                            revert with 0, 50
                        if not stor1[var66001].field_1024:
                            if var66001 >= stor1.length:
                                revert with 0, 50
                            if False and stor1[var66001].field_256 > 0:
                                revert with 0, 17
                        else:
                            if bool(bool(stor1[var66001].field_1024 < 78)) or bool(bool(stor1[var66001].field_1024 < 32)):
                                if 10^stor1[var66001].field_1024 > -1:
                                    revert with 0, 17
                                if var66001 >= stor1.length:
                                    revert with 0, 50
                                if False and stor1[var66001].field_256 > 0:
                                    revert with 0, 17
                                if False and 10^stor1[var66001].field_1024 > 0:
                                    revert with 0, 17
                            else:
                                if var54005 > 1:
                                    s = var54001
                                    t = var54002
                                    u = var54005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if var66001 >= stor1.length:
                                                revert with 0, 50
                                            if False and stor1[var66001].field_256 > 0:
                                                revert with 0, 17
                                            if False and s * s * t > 0:
                                                revert with 0, 17
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if var66001 >= stor1.length:
                                                revert with 0, 50
                                            if False and stor1[var66001].field_256 > 0:
                                                revert with 0, 17
                                            if False and s * s * s * t > 0:
                                                revert with 0, 17
                                        if not sub_897b5794:
                                            revert with 0, 18
                                        if var66001 >= stor1.length:
                                            revert with 0, 50
                                        if stor1[var66001].field_512 > !(0 / sub_897b5794):
                                            revert with 0, 17
                                        if var66004 >= stor2.length:
                                            revert with 0, 50
                                        if stor2[var66004].field_0 >= stor1.length:
                                            revert with 0, 50
                                        stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + (0 / sub_897b5794)
                                        lastUpdateTime = block.timestamp
                                        if stor2.length < 1:
                                            revert with 0, 17
                                        if var66004 == -1:
                                            revert with 0, 17
                                        if var66004 + 1 < stor2.length:
                                            mem[0] = 2
                                            var66001 = stor2[var66004].field_256
                                            var66004 = var66004 + 1
                                            continue 
                                        if arg1 >= stor1.length:
                                            revert with 0, 50
                                        if stor1[arg1].field_768 >= block.timestamp:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Distr time has not over.'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Can not delist main token.'
                                        if not stor3[arg1]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Delisting unsuccessful'
                                        if stor3[arg1] < 1:
                                            revert with 0, 17
                                        if stor2.length < 1:
                                            revert with 0, 17
                                        if stor2.length - 1 != stor3[arg1] - 1:
                                            if stor2.length - 1 >= stor2.length:
                                                revert with 0, 50
                                            if stor3[arg1] - 1 >= stor2.length:
                                                revert with 0, 50
                                            stor2[stor3[arg1]].field_0 = stor2[stor2.length].field_0
                                            stor3[stor2[stor2.length].field_0] = stor3[arg1]
                                        if not stor2.length:
                                            revert with 0, 49
                                        stor2[stor2.length].field_0 = 0
                                        stor2.length--
                                        stor3[arg1] = 0
                                    revert with 0, 17
                                if var54002 > -1 / var54001:
                                    revert with 0, 17
                                if var66001 >= stor1.length:
                                    revert with 0, 50
                                if False and stor1[var66001].field_256 > 0:
                                    revert with 0, 17
                                if False and var54001 * var54002 > 0:
                                    revert with 0, 17
                        if not sub_897b5794:
                            revert with 0, 18
                        if var66001 >= stor1.length:
                            revert with 0, 50
                        if stor1[var66001].field_512 > !(0 / sub_897b5794):
                            revert with 0, 17
                        if var66004 >= stor2.length:
                            revert with 0, 50
                        if stor2[var66004].field_0 >= stor1.length:
                            revert with 0, 50
                        stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + (0 / sub_897b5794)
                    else:
                        if stor1[var66001].field_768 < lastUpdateTime:
                            revert with 0, 17
                        if var66001 >= stor1.length:
                            revert with 0, 50
                        if not stor1[var66001].field_1024:
                            if var66001 >= stor1.length:
                                revert with 0, 50
                            if stor1[var66001].field_768 - lastUpdateTime and stor1[var66001].field_256 > -1 / stor1[var66001].field_768 - lastUpdateTime:
                                revert with 0, 17
                            if (stor1[var66001].field_768 * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) and 1 > -1 / (stor1[var66001].field_768 * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256):
                                revert with 0, 17
                            if not sub_897b5794:
                                revert with 0, 18
                            if var66001 >= stor1.length:
                                revert with 0, 50
                            if stor1[var66001].field_512 > !((stor1[var66001].field_768 * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) / sub_897b5794):
                                revert with 0, 17
                            if var66004 >= stor2.length:
                                revert with 0, 50
                            if stor2[var66004].field_0 >= stor1.length:
                                revert with 0, 50
                            stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + ((stor1[var66001].field_768 * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) / sub_897b5794)
                        else:
                            if bool(bool(stor1[var66001].field_1024 < 78)) or bool(bool(stor1[var66001].field_1024 < 32)):
                                if 10^stor1[var66001].field_1024 > -1:
                                    revert with 0, 17
                                if var66001 >= stor1.length:
                                    revert with 0, 50
                                if stor1[var66001].field_768 - lastUpdateTime and stor1[var66001].field_256 > -1 / stor1[var66001].field_768 - lastUpdateTime:
                                    revert with 0, 17
                                if (stor1[var66001].field_768 * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) and 10^stor1[var66001].field_1024 > -1 / (stor1[var66001].field_768 * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256):
                                    revert with 0, 17
                                if not sub_897b5794:
                                    revert with 0, 18
                                if var66001 >= stor1.length:
                                    revert with 0, 50
                                if stor1[var66001].field_512 > !((stor1[var66001].field_768 * stor1[var66001].field_256 * 10^stor1[var66001].field_1024) - (lastUpdateTime * stor1[var66001].field_256 * 10^stor1[var66001].field_1024) / sub_897b5794):
                                    revert with 0, 17
                                if var66004 >= stor2.length:
                                    revert with 0, 50
                                if stor2[var66004].field_0 >= stor1.length:
                                    revert with 0, 50
                                stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + ((stor1[var66001].field_768 * stor1[var66001].field_256 * 10^stor1[var66001].field_1024) - (lastUpdateTime * stor1[var66001].field_256 * 10^stor1[var66001].field_1024) / sub_897b5794)
                            else:
                                if var57005 > 1:
                                    s = var57001
                                    t = var57002
                                    u = var57005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if var66001 >= stor1.length:
                                                revert with 0, 50
                                            if stor1[var66001].field_768 - lastUpdateTime and stor1[var66001].field_256 > -1 / stor1[var66001].field_768 - lastUpdateTime:
                                                revert with 0, 17
                                            if (stor1[var66001].field_768 * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) and s * s * t > -1 / (stor1[var66001].field_768 * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256):
                                                revert with 0, 17
                                            if not sub_897b5794:
                                                revert with 0, 18
                                            if var66001 >= stor1.length:
                                                revert with 0, 50
                                            if stor1[var66001].field_512 > !((stor1[var66001].field_768 * stor1[var66001].field_256 * s * s * t) - (lastUpdateTime * stor1[var66001].field_256 * s * s * t) / sub_897b5794):
                                                revert with 0, 17
                                            if var66004 >= stor2.length:
                                                revert with 0, 50
                                            if stor2[var66004].field_0 >= stor1.length:
                                                revert with 0, 50
                                            stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + ((stor1[var66001].field_768 * stor1[var66001].field_256 * s * s * t) - (lastUpdateTime * stor1[var66001].field_256 * s * s * t) / sub_897b5794)
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if var66001 >= stor1.length:
                                                revert with 0, 50
                                            if stor1[var66001].field_768 - lastUpdateTime and stor1[var66001].field_256 > -1 / stor1[var66001].field_768 - lastUpdateTime:
                                                revert with 0, 17
                                            if (stor1[var66001].field_768 * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) and s * s * s * t > -1 / (stor1[var66001].field_768 * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256):
                                                revert with 0, 17
                                            if not sub_897b5794:
                                                revert with 0, 18
                                            if var66001 >= stor1.length:
                                                revert with 0, 50
                                            if stor1[var66001].field_512 > !((stor1[var66001].field_768 * stor1[var66001].field_256 * s * s * s * t) - (lastUpdateTime * stor1[var66001].field_256 * s * s * s * t) / sub_897b5794):
                                                revert with 0, 17
                                            if var66004 >= stor2.length:
                                                revert with 0, 50
                                            if stor2[var66004].field_0 >= stor1.length:
                                                revert with 0, 50
                                            stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + ((stor1[var66001].field_768 * stor1[var66001].field_256 * s * s * s * t) - (lastUpdateTime * stor1[var66001].field_256 * s * s * s * t) / sub_897b5794)
                                        lastUpdateTime = block.timestamp
                                        if stor2.length < 1:
                                            revert with 0, 17
                                        if var66004 == -1:
                                            revert with 0, 17
                                        if var66004 + 1 < stor2.length:
                                            mem[0] = 2
                                            var66001 = stor2[var66004].field_256
                                            var66004 = var66004 + 1
                                            continue 
                                        if arg1 >= stor1.length:
                                            revert with 0, 50
                                        if stor1[arg1].field_768 >= block.timestamp:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Distr time has not over.'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Can not delist main token.'
                                        if not stor3[arg1]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Delisting unsuccessful'
                                        if stor3[arg1] < 1:
                                            revert with 0, 17
                                        if stor2.length < 1:
                                            revert with 0, 17
                                        if stor2.length - 1 != stor3[arg1] - 1:
                                            if stor2.length - 1 >= stor2.length:
                                                revert with 0, 50
                                            if stor3[arg1] - 1 >= stor2.length:
                                                revert with 0, 50
                                            stor2[stor3[arg1]].field_0 = stor2[stor2.length].field_0
                                            stor3[stor2[stor2.length].field_0] = stor3[arg1]
                                        if not stor2.length:
                                            revert with 0, 49
                                        stor2[stor2.length].field_0 = 0
                                        stor2.length--
                                        stor3[arg1] = 0
                                    revert with 0, 17
                                if var57002 > -1 / var57001:
                                    revert with 0, 17
                                if var66001 >= stor1.length:
                                    revert with 0, 50
                                if stor1[var66001].field_768 - lastUpdateTime and stor1[var66001].field_256 > -1 / stor1[var66001].field_768 - lastUpdateTime:
                                    revert with 0, 17
                                if (stor1[var66001].field_768 * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) and var57001 * var57002 > -1 / (stor1[var66001].field_768 * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256):
                                    revert with 0, 17
                                if not sub_897b5794:
                                    revert with 0, 18
                                if var66001 >= stor1.length:
                                    revert with 0, 50
                                if stor1[var66001].field_512 > !((stor1[var66001].field_768 * stor1[var66001].field_256 * var57001 * var57002) - (lastUpdateTime * stor1[var66001].field_256 * var57001 * var57002) / sub_897b5794):
                                    revert with 0, 17
                                if var66004 >= stor2.length:
                                    revert with 0, 50
                                if stor2[var66004].field_0 >= stor1.length:
                                    revert with 0, 50
                                stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + ((stor1[var66001].field_768 * stor1[var66001].field_256 * var57001 * var57002) - (lastUpdateTime * stor1[var66001].field_256 * var57001 * var57002) / sub_897b5794)
                else:
                    if block.timestamp <= lastUpdateTime:
                        if var66001 >= stor1.length:
                            revert with 0, 50
                        if not stor1[var66001].field_1024:
                            if var66001 >= stor1.length:
                                revert with 0, 50
                            if False and stor1[var66001].field_256 > 0:
                                revert with 0, 17
                        else:
                            if bool(bool(stor1[var66001].field_1024 < 78)) or bool(bool(stor1[var66001].field_1024 < 32)):
                                if 10^stor1[var66001].field_1024 > -1:
                                    revert with 0, 17
                                if var66001 >= stor1.length:
                                    revert with 0, 50
                                if False and stor1[var66001].field_256 > 0:
                                    revert with 0, 17
                                if False and 10^stor1[var66001].field_1024 > 0:
                                    revert with 0, 17
                            else:
                                if var55005 > 1:
                                    s = var55001
                                    t = var55002
                                    u = var55005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if var66001 >= stor1.length:
                                                revert with 0, 50
                                            if False and stor1[var66001].field_256 > 0:
                                                revert with 0, 17
                                            if False and s * s * t > 0:
                                                revert with 0, 17
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if var66001 >= stor1.length:
                                                revert with 0, 50
                                            if False and stor1[var66001].field_256 > 0:
                                                revert with 0, 17
                                            if False and s * s * s * t > 0:
                                                revert with 0, 17
                                        if not sub_897b5794:
                                            revert with 0, 18
                                        if var66001 >= stor1.length:
                                            revert with 0, 50
                                        if stor1[var66001].field_512 > !(0 / sub_897b5794):
                                            revert with 0, 17
                                        if var66004 >= stor2.length:
                                            revert with 0, 50
                                        if stor2[var66004].field_0 >= stor1.length:
                                            revert with 0, 50
                                        stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + (0 / sub_897b5794)
                                        lastUpdateTime = block.timestamp
                                        if stor2.length < 1:
                                            revert with 0, 17
                                        if var66004 == -1:
                                            revert with 0, 17
                                        if var66004 + 1 < stor2.length:
                                            mem[0] = 2
                                            var66001 = stor2[var66004].field_256
                                            var66004 = var66004 + 1
                                            continue 
                                        if arg1 >= stor1.length:
                                            revert with 0, 50
                                        if stor1[arg1].field_768 >= block.timestamp:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Distr time has not over.'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Can not delist main token.'
                                        if not stor3[arg1]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Delisting unsuccessful'
                                        if stor3[arg1] < 1:
                                            revert with 0, 17
                                        if stor2.length < 1:
                                            revert with 0, 17
                                        if stor2.length - 1 != stor3[arg1] - 1:
                                            if stor2.length - 1 >= stor2.length:
                                                revert with 0, 50
                                            if stor3[arg1] - 1 >= stor2.length:
                                                revert with 0, 50
                                            stor2[stor3[arg1]].field_0 = stor2[stor2.length].field_0
                                            stor3[stor2[stor2.length].field_0] = stor3[arg1]
                                        if not stor2.length:
                                            revert with 0, 49
                                        stor2[stor2.length].field_0 = 0
                                        stor2.length--
                                        stor3[arg1] = 0
                                    revert with 0, 17
                                if var55002 > -1 / var55001:
                                    revert with 0, 17
                                if var66001 >= stor1.length:
                                    revert with 0, 50
                                if False and stor1[var66001].field_256 > 0:
                                    revert with 0, 17
                                if False and var55001 * var55002 > 0:
                                    revert with 0, 17
                        if not sub_897b5794:
                            revert with 0, 18
                        if var66001 >= stor1.length:
                            revert with 0, 50
                        if stor1[var66001].field_512 > !(0 / sub_897b5794):
                            revert with 0, 17
                        if var66004 >= stor2.length:
                            revert with 0, 50
                        if stor2[var66004].field_0 >= stor1.length:
                            revert with 0, 50
                        stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + (0 / sub_897b5794)
                    else:
                        if block.timestamp < lastUpdateTime:
                            revert with 0, 17
                        if var66001 >= stor1.length:
                            revert with 0, 50
                        if not stor1[var66001].field_1024:
                            if var66001 >= stor1.length:
                                revert with 0, 50
                            if block.timestamp - lastUpdateTime and stor1[var66001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                revert with 0, 17
                            if (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) and 1 > -1 / (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256):
                                revert with 0, 17
                            if not sub_897b5794:
                                revert with 0, 18
                            if var66001 >= stor1.length:
                                revert with 0, 50
                            if stor1[var66001].field_512 > !((block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) / sub_897b5794):
                                revert with 0, 17
                            if var66004 >= stor2.length:
                                revert with 0, 50
                            if stor2[var66004].field_0 >= stor1.length:
                                revert with 0, 50
                            stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + ((block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) / sub_897b5794)
                        else:
                            if bool(bool(stor1[var66001].field_1024 < 78)) or bool(bool(stor1[var66001].field_1024 < 32)):
                                if 10^stor1[var66001].field_1024 > -1:
                                    revert with 0, 17
                                if var66001 >= stor1.length:
                                    revert with 0, 50
                                if block.timestamp - lastUpdateTime and stor1[var66001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                    revert with 0, 17
                                if (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) and 10^stor1[var66001].field_1024 > -1 / (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256):
                                    revert with 0, 17
                                if not sub_897b5794:
                                    revert with 0, 18
                                if var66001 >= stor1.length:
                                    revert with 0, 50
                                if stor1[var66001].field_512 > !((block.timestamp * stor1[var66001].field_256 * 10^stor1[var66001].field_1024) - (lastUpdateTime * stor1[var66001].field_256 * 10^stor1[var66001].field_1024) / sub_897b5794):
                                    revert with 0, 17
                                if var66004 >= stor2.length:
                                    revert with 0, 50
                                if stor2[var66004].field_0 >= stor1.length:
                                    revert with 0, 50
                                stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + ((block.timestamp * stor1[var66001].field_256 * 10^stor1[var66001].field_1024) - (lastUpdateTime * stor1[var66001].field_256 * 10^stor1[var66001].field_1024) / sub_897b5794)
                            else:
                                if var58005 > 1:
                                    s = var58001
                                    t = var58002
                                    u = var58005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if var66001 >= stor1.length:
                                                revert with 0, 50
                                            if block.timestamp - lastUpdateTime and stor1[var66001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                                revert with 0, 17
                                            if (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) and s * s * t > -1 / (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256):
                                                revert with 0, 17
                                            if not sub_897b5794:
                                                revert with 0, 18
                                            if var66001 >= stor1.length:
                                                revert with 0, 50
                                            if stor1[var66001].field_512 > !((block.timestamp * stor1[var66001].field_256 * s * s * t) - (lastUpdateTime * stor1[var66001].field_256 * s * s * t) / sub_897b5794):
                                                revert with 0, 17
                                            if var66004 >= stor2.length:
                                                revert with 0, 50
                                            if stor2[var66004].field_0 >= stor1.length:
                                                revert with 0, 50
                                            stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + ((block.timestamp * stor1[var66001].field_256 * s * s * t) - (lastUpdateTime * stor1[var66001].field_256 * s * s * t) / sub_897b5794)
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if var66001 >= stor1.length:
                                                revert with 0, 50
                                            if block.timestamp - lastUpdateTime and stor1[var66001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                                revert with 0, 17
                                            if (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) and s * s * s * t > -1 / (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256):
                                                revert with 0, 17
                                            if not sub_897b5794:
                                                revert with 0, 18
                                            if var66001 >= stor1.length:
                                                revert with 0, 50
                                            if stor1[var66001].field_512 > !((block.timestamp * stor1[var66001].field_256 * s * s * s * t) - (lastUpdateTime * stor1[var66001].field_256 * s * s * s * t) / sub_897b5794):
                                                revert with 0, 17
                                            if var66004 >= stor2.length:
                                                revert with 0, 50
                                            if stor2[var66004].field_0 >= stor1.length:
                                                revert with 0, 50
                                            stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + ((block.timestamp * stor1[var66001].field_256 * s * s * s * t) - (lastUpdateTime * stor1[var66001].field_256 * s * s * s * t) / sub_897b5794)
                                        lastUpdateTime = block.timestamp
                                        if stor2.length < 1:
                                            revert with 0, 17
                                        if var66004 == -1:
                                            revert with 0, 17
                                        if var66004 + 1 < stor2.length:
                                            mem[0] = 2
                                            var66001 = stor2[var66004].field_256
                                            var66004 = var66004 + 1
                                            continue 
                                        if arg1 >= stor1.length:
                                            revert with 0, 50
                                        if stor1[arg1].field_768 >= block.timestamp:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Distr time has not over.'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Can not delist main token.'
                                        if not stor3[arg1]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Delisting unsuccessful'
                                        if stor3[arg1] < 1:
                                            revert with 0, 17
                                        if stor2.length < 1:
                                            revert with 0, 17
                                        if stor2.length - 1 != stor3[arg1] - 1:
                                            if stor2.length - 1 >= stor2.length:
                                                revert with 0, 50
                                            if stor3[arg1] - 1 >= stor2.length:
                                                revert with 0, 50
                                            stor2[stor3[arg1]].field_0 = stor2[stor2.length].field_0
                                            stor3[stor2[stor2.length].field_0] = stor3[arg1]
                                        if not stor2.length:
                                            revert with 0, 49
                                        stor2[stor2.length].field_0 = 0
                                        stor2.length--
                                        stor3[arg1] = 0
                                    revert with 0, 17
                                if var58002 > -1 / var58001:
                                    revert with 0, 17
                                if var66001 >= stor1.length:
                                    revert with 0, 50
                                if block.timestamp - lastUpdateTime and stor1[var66001].field_256 > -1 / block.timestamp - lastUpdateTime:
                                    revert with 0, 17
                                if (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256) and var58001 * var58002 > -1 / (block.timestamp * stor1[var66001].field_256) - (lastUpdateTime * stor1[var66001].field_256):
                                    revert with 0, 17
                                if not sub_897b5794:
                                    revert with 0, 18
                                if var66001 >= stor1.length:
                                    revert with 0, 50
                                if stor1[var66001].field_512 > !((block.timestamp * stor1[var66001].field_256 * var58001 * var58002) - (lastUpdateTime * stor1[var66001].field_256 * var58001 * var58002) / sub_897b5794):
                                    revert with 0, 17
                                if var66004 >= stor2.length:
                                    revert with 0, 50
                                if stor2[var66004].field_0 >= stor1.length:
                                    revert with 0, 50
                                stor1[stor2[var66004].field_0].field_512 = stor1[var66001].field_512 + ((block.timestamp * stor1[var66001].field_256 * var58001 * var58002) - (lastUpdateTime * stor1[var66001].field_256 * var58001 * var58002) / sub_897b5794)
        lastUpdateTime = block.timestamp
        if stor2.length < 1:
            revert with 0, 17
        if var66004 == -1:
            revert with 0, 17
        if var66004 + 1 < stor2.length:
            mem[0] = 2
            var66001 = stor2[var66004].field_256
            var66004 = var66004 + 1
            continue 
    if arg1 >= stor1.length:
        revert with 0, 50
    if stor1[arg1].field_768 >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Distr time has not over.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Can not delist main token.'
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[delistRewardToken] Delisting unsuccessful'
    if stor3[arg1] < 1:
        revert with 0, 17
    if stor2.length < 1:
        revert with 0, 17
    if stor2.length - 1 != stor3[arg1] - 1:
        if stor2.length - 1 >= stor2.length:
            revert with 0, 50
        if stor3[arg1] - 1 >= stor2.length:
            revert with 0, 50
        stor2[stor3[arg1]].field_0 = stor2[stor2.length].field_0
        stor3[stor2[stor2.length].field_0] = stor3[arg1]
    if not stor2.length:
        revert with 0, 49
    stor2[stor2.length].field_0 = 0
    stor2.length--
    stor3[arg1] = 0
}



}
