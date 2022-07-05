contract main {




// =====================  Runtime code  =====================


#
#  - invest(address arg1)
#  - withdraw()
#
const getBalance = eth.balance(this.address)


address owner;
address sub_f592e82fAddress;
uint256 totalInvested;
uint256 sub_6b56ee02;
uint256 sub_aa37d610;
uint256 sub_a91f8803;
uint8 stor7;
mapping of struct investors;

function isSaleOpen() {
    return bool(stor7)
}

function sub_3075c8d6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return investors[address(arg1)].field_512, 
           investors[address(arg1)].field_768,
           investors[address(arg1)].field_1024,
           investors[address(arg1)].field_1280,
           investors[address(arg1)].field_1536
}

function totalInvested() {
    return totalInvested
}

function sub_6b56ee02(?) {
    return sub_6b56ee02
}

function investors(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return investors[arg1].field_0, 
           investors[arg1].field_256,
           investors[arg1].field_1792,
           investors[arg1].field_2048,
           investors[arg1].field_2304,
           investors[arg1].field_2560,
           investors[arg1].field_2816,
           investors[arg1].field_3072,
           investors[arg1].field_3328,
           investors[arg1].field_3584
}

function owner() {
    return owner
}

function sub_a91f8803(?) {
    return sub_a91f8803
}

function sub_aa37d610(?) {
    return sub_aa37d610
}

function sub_f592e82f(?) {
    return sub_f592e82fAddress
}

function _fallback() payable {
    revert
}

function getContractInformation() {
    return eth.balance(this.address), totalInvested, sub_6b56ee02, sub_aa37d610, sub_a91f8803
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_6cbf7bf2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Address cannot be null'
    sub_f592e82fAddress = address(arg1)
}

function setIsSaleOpen(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == bool(stor7):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New value cannot be same with previous value'
    stor7 = uint8(arg1)
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

function getDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not investors[address(arg1)].field_1792:
        if investors[address(arg1)].field_2048 >= 0:
            return 0
        if block.timestamp <= investors[address(arg1)].field_3328:
            return 0
        if investors[address(arg1)].field_3328 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp < investors[address(arg1)].field_3328:
            revert with 'NH{q', 17
        if not investors[address(arg1)].field_1792:
            if 0 > -investors[address(arg1)].field_2560 - 1:
                revert with 'NH{q', 17
            if investors[address(arg1)].field_2560 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(arg1)].field_2048 > -investors[address(arg1)].field_2560 - 1:
                revert with 'NH{q', 17
            if investors[address(arg1)].field_2048 + investors[address(arg1)].field_2560 < investors[address(arg1)].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(arg1)].field_2048 + investors[address(arg1)].field_2560 <= 0:
                return investors[address(arg1)].field_2560
        else:
            if investors[address(arg1)].field_1792 and 80 > -1 / investors[address(arg1)].field_1792:
                revert with 'NH{q', 17
            if not investors[address(arg1)].field_1792:
                revert with 'NH{q', 18
            if 80 * investors[address(arg1)].field_1792 / investors[address(arg1)].field_1792 != 80:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not 80 * investors[address(arg1)].field_1792:
                if 0 > -investors[address(arg1)].field_2560 - 1:
                    revert with 'NH{q', 17
                if investors[address(arg1)].field_2560 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if investors[address(arg1)].field_2048 > -investors[address(arg1)].field_2560 - 1:
                    revert with 'NH{q', 17
                if investors[address(arg1)].field_2048 + investors[address(arg1)].field_2560 < investors[address(arg1)].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
                if investors[address(arg1)].field_2048 + investors[address(arg1)].field_2560 <= 0:
                    return investors[address(arg1)].field_2560
            else:
                if 80 * investors[address(arg1)].field_1792 and block.timestamp - investors[address(arg1)].field_3328 > -1 / 80 * investors[address(arg1)].field_1792:
                    revert with 'NH{q', 17
                if not 80 * investors[address(arg1)].field_1792:
                    revert with 'NH{q', 18
                if (80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 80 * investors[address(arg1)].field_1792 != block.timestamp - investors[address(arg1)].field_3328:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600 > -investors[address(arg1)].field_2560 - 1:
                    revert with 'NH{q', 17
                if ((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + investors[address(arg1)].field_2560 < (80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600:
                    revert with 0, 'SafeMath: addition overflow'
                if investors[address(arg1)].field_2048 > -((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + -investors[address(arg1)].field_2560 - 1:
                    revert with 'NH{q', 17
                if investors[address(arg1)].field_2048 + ((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + investors[address(arg1)].field_2560 < investors[address(arg1)].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
                if investors[address(arg1)].field_2048 + ((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + investors[address(arg1)].field_2560 <= 0:
                    return (((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + investors[address(arg1)].field_2560)
        if investors[address(arg1)].field_2048 >= 0:
            return 0
        if 0 < investors[address(arg1)].field_2048:
            revert with 'NH{q', 17
        return -investors[address(arg1)].field_2048
    if investors[address(arg1)].field_1792 and 2400 > -1 / investors[address(arg1)].field_1792:
        revert with 'NH{q', 17
    if not investors[address(arg1)].field_1792:
        revert with 'NH{q', 18
    if 2400 * investors[address(arg1)].field_1792 / investors[address(arg1)].field_1792 != 2400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if investors[address(arg1)].field_2048 >= 2400 * investors[address(arg1)].field_1792 / 1000:
        return 0
    if block.timestamp <= investors[address(arg1)].field_3328:
        return 0
    if investors[address(arg1)].field_3328 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp < investors[address(arg1)].field_3328:
        revert with 'NH{q', 17
    if not investors[address(arg1)].field_1792:
        if 0 > -investors[address(arg1)].field_2560 - 1:
            revert with 'NH{q', 17
        if investors[address(arg1)].field_2560 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if investors[address(arg1)].field_2048 > -investors[address(arg1)].field_2560 - 1:
            revert with 'NH{q', 17
        if investors[address(arg1)].field_2048 + investors[address(arg1)].field_2560 < investors[address(arg1)].field_2048:
            revert with 0, 'SafeMath: addition overflow'
        if investors[address(arg1)].field_2048 + investors[address(arg1)].field_2560 <= 2400 * investors[address(arg1)].field_1792 / 1000:
            return investors[address(arg1)].field_2560
    else:
        if investors[address(arg1)].field_1792 and 80 > -1 / investors[address(arg1)].field_1792:
            revert with 'NH{q', 17
        if not investors[address(arg1)].field_1792:
            revert with 'NH{q', 18
        if 80 * investors[address(arg1)].field_1792 / investors[address(arg1)].field_1792 != 80:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not 80 * investors[address(arg1)].field_1792:
            if 0 > -investors[address(arg1)].field_2560 - 1:
                revert with 'NH{q', 17
            if investors[address(arg1)].field_2560 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(arg1)].field_2048 > -investors[address(arg1)].field_2560 - 1:
                revert with 'NH{q', 17
            if investors[address(arg1)].field_2048 + investors[address(arg1)].field_2560 < investors[address(arg1)].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(arg1)].field_2048 + investors[address(arg1)].field_2560 <= 2400 * investors[address(arg1)].field_1792 / 1000:
                return investors[address(arg1)].field_2560
        else:
            if 80 * investors[address(arg1)].field_1792 and block.timestamp - investors[address(arg1)].field_3328 > -1 / 80 * investors[address(arg1)].field_1792:
                revert with 'NH{q', 17
            if not 80 * investors[address(arg1)].field_1792:
                revert with 'NH{q', 18
            if (80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 80 * investors[address(arg1)].field_1792 != block.timestamp - investors[address(arg1)].field_3328:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if (80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600 > -investors[address(arg1)].field_2560 - 1:
                revert with 'NH{q', 17
            if ((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + investors[address(arg1)].field_2560 < (80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(arg1)].field_2048 > -((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + -investors[address(arg1)].field_2560 - 1:
                revert with 'NH{q', 17
            if investors[address(arg1)].field_2048 + ((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + investors[address(arg1)].field_2560 < investors[address(arg1)].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(arg1)].field_2048 + ((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + investors[address(arg1)].field_2560 <= 2400 * investors[address(arg1)].field_1792 / 1000:
                return (((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + investors[address(arg1)].field_2560)
    if investors[address(arg1)].field_2048 >= 2400 * investors[address(arg1)].field_1792 / 1000:
        return 0
    if 2400 * investors[address(arg1)].field_1792 / 1000 < investors[address(arg1)].field_2048:
        revert with 'NH{q', 17
    return ((2400 * investors[address(arg1)].field_1792 / 1000) - investors[address(arg1)].field_2048)
}

function payoutOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not investors[address(arg1)].field_1792:
        if investors[address(arg1)].field_2048 >= 0:
            return 0
        if block.timestamp <= investors[address(arg1)].field_3328:
            return 0
        if investors[address(arg1)].field_3328 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp < investors[address(arg1)].field_3328:
            revert with 'NH{q', 17
        if not investors[address(arg1)].field_1792:
            if 0 > -investors[address(arg1)].field_2560 - 1:
                revert with 'NH{q', 17
            if investors[address(arg1)].field_2560 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(arg1)].field_2048 > -investors[address(arg1)].field_2560 - 1:
                revert with 'NH{q', 17
            if investors[address(arg1)].field_2048 + investors[address(arg1)].field_2560 < investors[address(arg1)].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(arg1)].field_2048 + investors[address(arg1)].field_2560 <= 0:
                return investors[address(arg1)].field_2560, 0
        else:
            if investors[address(arg1)].field_1792 and 80 > -1 / investors[address(arg1)].field_1792:
                revert with 'NH{q', 17
            if not investors[address(arg1)].field_1792:
                revert with 'NH{q', 18
            if 80 * investors[address(arg1)].field_1792 / investors[address(arg1)].field_1792 != 80:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not 80 * investors[address(arg1)].field_1792:
                if 0 > -investors[address(arg1)].field_2560 - 1:
                    revert with 'NH{q', 17
                if investors[address(arg1)].field_2560 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if investors[address(arg1)].field_2048 > -investors[address(arg1)].field_2560 - 1:
                    revert with 'NH{q', 17
                if investors[address(arg1)].field_2048 + investors[address(arg1)].field_2560 < investors[address(arg1)].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
                if investors[address(arg1)].field_2048 + investors[address(arg1)].field_2560 <= 0:
                    return investors[address(arg1)].field_2560, 0
            else:
                if 80 * investors[address(arg1)].field_1792 and block.timestamp - investors[address(arg1)].field_3328 > -1 / 80 * investors[address(arg1)].field_1792:
                    revert with 'NH{q', 17
                if not 80 * investors[address(arg1)].field_1792:
                    revert with 'NH{q', 18
                if (80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 80 * investors[address(arg1)].field_1792 != block.timestamp - investors[address(arg1)].field_3328:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600 > -investors[address(arg1)].field_2560 - 1:
                    revert with 'NH{q', 17
                if ((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + investors[address(arg1)].field_2560 < (80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600:
                    revert with 0, 'SafeMath: addition overflow'
                if investors[address(arg1)].field_2048 > -((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + -investors[address(arg1)].field_2560 - 1:
                    revert with 'NH{q', 17
                if investors[address(arg1)].field_2048 + ((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + investors[address(arg1)].field_2560 < investors[address(arg1)].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
                if investors[address(arg1)].field_2048 + ((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + investors[address(arg1)].field_2560 <= 0:
                    return ((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + investors[address(arg1)].field_2560, 
                           0
        if investors[address(arg1)].field_2048 >= 0:
            return 0
        if 0 < investors[address(arg1)].field_2048:
            revert with 'NH{q', 17
        return -investors[address(arg1)].field_2048, 0
    if investors[address(arg1)].field_1792 and 2400 > -1 / investors[address(arg1)].field_1792:
        revert with 'NH{q', 17
    if not investors[address(arg1)].field_1792:
        revert with 'NH{q', 18
    if 2400 * investors[address(arg1)].field_1792 / investors[address(arg1)].field_1792 != 2400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if investors[address(arg1)].field_2048 >= 2400 * investors[address(arg1)].field_1792 / 1000:
        return 0, 2400 * investors[address(arg1)].field_1792 / 1000
    if block.timestamp <= investors[address(arg1)].field_3328:
        return 0, 2400 * investors[address(arg1)].field_1792 / 1000
    if investors[address(arg1)].field_3328 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp < investors[address(arg1)].field_3328:
        revert with 'NH{q', 17
    if not investors[address(arg1)].field_1792:
        if 0 > -investors[address(arg1)].field_2560 - 1:
            revert with 'NH{q', 17
        if investors[address(arg1)].field_2560 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if investors[address(arg1)].field_2048 > -investors[address(arg1)].field_2560 - 1:
            revert with 'NH{q', 17
        if investors[address(arg1)].field_2048 + investors[address(arg1)].field_2560 < investors[address(arg1)].field_2048:
            revert with 0, 'SafeMath: addition overflow'
        if investors[address(arg1)].field_2048 + investors[address(arg1)].field_2560 <= 2400 * investors[address(arg1)].field_1792 / 1000:
            return investors[address(arg1)].field_2560, 2400 * investors[address(arg1)].field_1792 / 1000
    else:
        if investors[address(arg1)].field_1792 and 80 > -1 / investors[address(arg1)].field_1792:
            revert with 'NH{q', 17
        if not investors[address(arg1)].field_1792:
            revert with 'NH{q', 18
        if 80 * investors[address(arg1)].field_1792 / investors[address(arg1)].field_1792 != 80:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not 80 * investors[address(arg1)].field_1792:
            if 0 > -investors[address(arg1)].field_2560 - 1:
                revert with 'NH{q', 17
            if investors[address(arg1)].field_2560 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(arg1)].field_2048 > -investors[address(arg1)].field_2560 - 1:
                revert with 'NH{q', 17
            if investors[address(arg1)].field_2048 + investors[address(arg1)].field_2560 < investors[address(arg1)].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(arg1)].field_2048 + investors[address(arg1)].field_2560 <= 2400 * investors[address(arg1)].field_1792 / 1000:
                return investors[address(arg1)].field_2560, 2400 * investors[address(arg1)].field_1792 / 1000
        else:
            if 80 * investors[address(arg1)].field_1792 and block.timestamp - investors[address(arg1)].field_3328 > -1 / 80 * investors[address(arg1)].field_1792:
                revert with 'NH{q', 17
            if not 80 * investors[address(arg1)].field_1792:
                revert with 'NH{q', 18
            if (80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 80 * investors[address(arg1)].field_1792 != block.timestamp - investors[address(arg1)].field_3328:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if (80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600 > -investors[address(arg1)].field_2560 - 1:
                revert with 'NH{q', 17
            if ((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + investors[address(arg1)].field_2560 < (80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(arg1)].field_2048 > -((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + -investors[address(arg1)].field_2560 - 1:
                revert with 'NH{q', 17
            if investors[address(arg1)].field_2048 + ((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + investors[address(arg1)].field_2560 < investors[address(arg1)].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(arg1)].field_2048 + ((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + investors[address(arg1)].field_2560 <= 2400 * investors[address(arg1)].field_1792 / 1000:
                return ((80 * block.timestamp * investors[address(arg1)].field_1792) - (80 * investors[address(arg1)].field_3328 * investors[address(arg1)].field_1792) / 24000 * 24 * 3600) + investors[address(arg1)].field_2560, 
                       2400 * investors[address(arg1)].field_1792 / 1000
    if investors[address(arg1)].field_2048 >= 2400 * investors[address(arg1)].field_1792 / 1000:
        return 0, 2400 * investors[address(arg1)].field_1792 / 1000
    if 2400 * investors[address(arg1)].field_1792 / 1000 < investors[address(arg1)].field_2048:
        revert with 'NH{q', 17
    return (2400 * investors[address(arg1)].field_1792 / 1000) - investors[address(arg1)].field_2048, 
           2400 * investors[address(arg1)].field_1792 / 1000
}

function reinvest() {
    if investors[address(msg.sender)].field_3584 > -86401:
        revert with 'NH{q', 17
    if investors[address(msg.sender)].field_3584 + (24 * 3600) < investors[address(msg.sender)].field_3584:
        revert with 0, 'SafeMath: addition overflow'
    if investors[address(msg.sender)].field_3584 + (24 * 3600) > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Withdrawal limit is 1 withdrawal in 24 hours'
    if not investors[address(msg.sender)].field_1792:
        if investors[address(msg.sender)].field_2048 >= 0:
            if investors[address(msg.sender)].field_1792 <= 0:
                revert with 0, 'not active user'
            if block.timestamp > investors[address(msg.sender)].field_3328:
                if not investors[address(msg.sender)].field_1792:
                    if investors[address(msg.sender)].field_2048 >= 0:
                        investors[address(msg.sender)].field_2560 = 0
                    else:
                        if block.timestamp <= investors[address(msg.sender)].field_3328:
                            investors[address(msg.sender)].field_2560 = 0
                        else:
                            if investors[address(msg.sender)].field_3328 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < investors[address(msg.sender)].field_3328:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                    revert with 'NH{q', 17
                                if investors[address(msg.sender)].field_2560 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                    revert with 'NH{q', 17
                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                    if investors[address(msg.sender)].field_2048 >= 0:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if 0 < investors[address(msg.sender)].field_2048:
                                            revert with 'NH{q', 17
                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not 80 * investors[address(msg.sender)].field_1792:
                                    if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2560 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                        if investors[address(msg.sender)].field_2048 >= 0:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 0 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                else:
                                    if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 17
                                    if not 80 * investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 18
                                    if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                        investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                    else:
                                        if investors[address(msg.sender)].field_2048 >= 0:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 0 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                else:
                    if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                        revert with 'NH{q', 17
                    if not investors[address(msg.sender)].field_1792:
                        revert with 'NH{q', 18
                    if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                        investors[address(msg.sender)].field_2560 = 0
                    else:
                        if block.timestamp <= investors[address(msg.sender)].field_3328:
                            investors[address(msg.sender)].field_2560 = 0
                        else:
                            if investors[address(msg.sender)].field_3328 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < investors[address(msg.sender)].field_3328:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                    revert with 'NH{q', 17
                                if investors[address(msg.sender)].field_2560 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                    revert with 'NH{q', 17
                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                            revert with 'NH{q', 17
                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not 80 * investors[address(msg.sender)].field_1792:
                                    if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2560 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                else:
                                    if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 17
                                    if not 80 * investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 18
                                    if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                        investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                    else:
                                        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
            if investors[address(msg.sender)].field_1792 > -1:
                revert with 'NH{q', 17
            if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(msg.sender)].field_2304 > -1:
                revert with 'NH{q', 17
            if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                revert with 0, 'SafeMath: addition overflow'
            if sub_aa37d610 > -1:
                revert with 'NH{q', 17
            if sub_aa37d610 < sub_aa37d610:
                revert with 0, 'SafeMath: addition overflow'
            revert with 0, 'Amount must be greater than 0'
        if block.timestamp <= investors[address(msg.sender)].field_3328:
            if investors[address(msg.sender)].field_1792 <= 0:
                revert with 0, 'not active user'
            if block.timestamp > investors[address(msg.sender)].field_3328:
                if not investors[address(msg.sender)].field_1792:
                    if investors[address(msg.sender)].field_2048 >= 0:
                        investors[address(msg.sender)].field_2560 = 0
                    else:
                        if block.timestamp <= investors[address(msg.sender)].field_3328:
                            investors[address(msg.sender)].field_2560 = 0
                        else:
                            if investors[address(msg.sender)].field_3328 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < investors[address(msg.sender)].field_3328:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                    revert with 'NH{q', 17
                                if investors[address(msg.sender)].field_2560 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                    revert with 'NH{q', 17
                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                    if investors[address(msg.sender)].field_2048 >= 0:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if 0 < investors[address(msg.sender)].field_2048:
                                            revert with 'NH{q', 17
                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not 80 * investors[address(msg.sender)].field_1792:
                                    if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2560 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                        if investors[address(msg.sender)].field_2048 >= 0:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 0 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                else:
                                    if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 17
                                    if not 80 * investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 18
                                    if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                        investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                    else:
                                        if investors[address(msg.sender)].field_2048 >= 0:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 0 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                else:
                    if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                        revert with 'NH{q', 17
                    if not investors[address(msg.sender)].field_1792:
                        revert with 'NH{q', 18
                    if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                        investors[address(msg.sender)].field_2560 = 0
                    else:
                        if block.timestamp <= investors[address(msg.sender)].field_3328:
                            investors[address(msg.sender)].field_2560 = 0
                        else:
                            if investors[address(msg.sender)].field_3328 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < investors[address(msg.sender)].field_3328:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                    revert with 'NH{q', 17
                                if investors[address(msg.sender)].field_2560 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                    revert with 'NH{q', 17
                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                            revert with 'NH{q', 17
                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not 80 * investors[address(msg.sender)].field_1792:
                                    if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2560 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                else:
                                    if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 17
                                    if not 80 * investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 18
                                    if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                        investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                    else:
                                        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
            if investors[address(msg.sender)].field_1792 > -1:
                revert with 'NH{q', 17
            if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(msg.sender)].field_2304 > -1:
                revert with 'NH{q', 17
            if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                revert with 0, 'SafeMath: addition overflow'
            if sub_aa37d610 > -1:
                revert with 'NH{q', 17
            if sub_aa37d610 < sub_aa37d610:
                revert with 0, 'SafeMath: addition overflow'
            revert with 0, 'Amount must be greater than 0'
        if investors[address(msg.sender)].field_3328 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp < investors[address(msg.sender)].field_3328:
            revert with 'NH{q', 17
        if not investors[address(msg.sender)].field_1792:
            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                revert with 'NH{q', 17
            if investors[address(msg.sender)].field_2560 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                revert with 'NH{q', 17
            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 <= 0:
                if not investors[address(msg.sender)].field_2560:
                    if investors[address(msg.sender)].field_1792 <= 0:
                        revert with 0, 'not active user'
                    if block.timestamp > investors[address(msg.sender)].field_3328:
                        if not investors[address(msg.sender)].field_1792:
                            if investors[address(msg.sender)].field_2048 >= 0:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                        else:
                            if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 18
                            if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                    if investors[address(msg.sender)].field_1792 > -1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    if investors[address(msg.sender)].field_2304 > -1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_aa37d610 > -1:
                        revert with 'NH{q', 17
                    if sub_aa37d610 < sub_aa37d610:
                        revert with 0, 'SafeMath: addition overflow'
                    revert with 0, 'Amount must be greater than 0'
                if investors[address(msg.sender)].field_2560 and 210 > -1 / investors[address(msg.sender)].field_2560:
                    revert with 'NH{q', 17
                if not investors[address(msg.sender)].field_2560:
                    revert with 'NH{q', 18
                if 210 * investors[address(msg.sender)].field_2560 / investors[address(msg.sender)].field_2560 != 210:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if investors[address(msg.sender)].field_1792 <= 0:
                    revert with 0, 'not active user'
                if block.timestamp > investors[address(msg.sender)].field_3328:
                    if not investors[address(msg.sender)].field_1792:
                        if investors[address(msg.sender)].field_2048 >= 0:
                            investors[address(msg.sender)].field_2560 = 0
                        else:
                            if block.timestamp <= investors[address(msg.sender)].field_3328:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if investors[address(msg.sender)].field_3328 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < investors[address(msg.sender)].field_3328:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2560 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                        if investors[address(msg.sender)].field_2048 >= 0:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 0 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                else:
                                    if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 18
                                    if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not 80 * investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                            investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                        else:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                    else:
                        if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                            revert with 'NH{q', 17
                        if not investors[address(msg.sender)].field_1792:
                            revert with 'NH{q', 18
                        if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                            investors[address(msg.sender)].field_2560 = 0
                        else:
                            if block.timestamp <= investors[address(msg.sender)].field_3328:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if investors[address(msg.sender)].field_3328 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < investors[address(msg.sender)].field_3328:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2560 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                else:
                                    if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 18
                                    if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not 80 * investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                        else:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                if investors[address(msg.sender)].field_1792 > -(210 * investors[address(msg.sender)].field_2560 / 1000) - 1:
                    revert with 'NH{q', 17
                if investors[address(msg.sender)].field_1792 + (210 * investors[address(msg.sender)].field_2560 / 1000) < investors[address(msg.sender)].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                investors[address(msg.sender)].field_1792 += 210 * investors[address(msg.sender)].field_2560 / 1000
                if investors[address(msg.sender)].field_2304 > -(210 * investors[address(msg.sender)].field_2560 / 1000) - 1:
                    revert with 'NH{q', 17
                if investors[address(msg.sender)].field_2304 + (210 * investors[address(msg.sender)].field_2560 / 1000) < investors[address(msg.sender)].field_2304:
                    revert with 0, 'SafeMath: addition overflow'
                investors[address(msg.sender)].field_2304 += 210 * investors[address(msg.sender)].field_2560 / 1000
                if sub_aa37d610 > -(210 * investors[address(msg.sender)].field_2560 / 1000) - 1:
                    revert with 'NH{q', 17
                if sub_aa37d610 + (210 * investors[address(msg.sender)].field_2560 / 1000) < sub_aa37d610:
                    revert with 0, 'SafeMath: addition overflow'
                sub_aa37d610 += 210 * investors[address(msg.sender)].field_2560 / 1000
                if 210 * investors[address(msg.sender)].field_2560 / 1000 <= 0:
                    revert with 0, 'Amount must be greater than 0'
                if not 210 * investors[address(msg.sender)].field_2560 / 1000:
                    call sub_f592e82fAddress with:
                         gas 2300 wei
                else:
                    if 210 * investors[address(msg.sender)].field_2560 / 1000 and 60 > -1 / 210 * investors[address(msg.sender)].field_2560 / 1000:
                        revert with 'NH{q', 17
                    if not 210 * investors[address(msg.sender)].field_2560 / 1000:
                        revert with 'NH{q', 18
                    if 60 * 210 * investors[address(msg.sender)].field_2560 / 1000 / 210 * investors[address(msg.sender)].field_2560 / 1000 != 60:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    call sub_f592e82fAddress with:
                       value 60 * 210 * investors[address(msg.sender)].field_2560 / 1000 / 1000 wei
                         gas 2300 * is_zero(value) wei
            else:
                if investors[address(msg.sender)].field_2048 >= 0:
                    if investors[address(msg.sender)].field_1792 <= 0:
                        revert with 0, 'not active user'
                    if block.timestamp > investors[address(msg.sender)].field_3328:
                        if not investors[address(msg.sender)].field_1792:
                            if investors[address(msg.sender)].field_2048 >= 0:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                        else:
                            if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 18
                            if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                    if investors[address(msg.sender)].field_1792 > -1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    if investors[address(msg.sender)].field_2304 > -1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_aa37d610 > -1:
                        revert with 'NH{q', 17
                    if sub_aa37d610 < sub_aa37d610:
                        revert with 0, 'SafeMath: addition overflow'
                    revert with 0, 'Amount must be greater than 0'
                if 0 < investors[address(msg.sender)].field_2048:
                    revert with 'NH{q', 17
                if not -investors[address(msg.sender)].field_2048:
                    if investors[address(msg.sender)].field_1792 <= 0:
                        revert with 0, 'not active user'
                    if block.timestamp > investors[address(msg.sender)].field_3328:
                        if not investors[address(msg.sender)].field_1792:
                            if investors[address(msg.sender)].field_2048 >= 0:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                        else:
                            if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 18
                            if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                    if investors[address(msg.sender)].field_1792 > -1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    if investors[address(msg.sender)].field_2304 > -1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_aa37d610 > -1:
                        revert with 'NH{q', 17
                    if sub_aa37d610 < sub_aa37d610:
                        revert with 0, 'SafeMath: addition overflow'
                    revert with 0, 'Amount must be greater than 0'
                if -investors[address(msg.sender)].field_2048 and 210 > -1 / -investors[address(msg.sender)].field_2048:
                    revert with 'NH{q', 17
                if not -investors[address(msg.sender)].field_2048:
                    revert with 'NH{q', 18
                if -210 * investors[address(msg.sender)].field_2048 / -investors[address(msg.sender)].field_2048 != 210:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if investors[address(msg.sender)].field_1792 <= 0:
                    revert with 0, 'not active user'
                if block.timestamp > investors[address(msg.sender)].field_3328:
                    if not investors[address(msg.sender)].field_1792:
                        if investors[address(msg.sender)].field_2048 >= 0:
                            investors[address(msg.sender)].field_2560 = 0
                        else:
                            if block.timestamp <= investors[address(msg.sender)].field_3328:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if investors[address(msg.sender)].field_3328 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < investors[address(msg.sender)].field_3328:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2560 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                        if investors[address(msg.sender)].field_2048 >= 0:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 0 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                else:
                                    if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 18
                                    if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not 80 * investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                            investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                        else:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                    else:
                        if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                            revert with 'NH{q', 17
                        if not investors[address(msg.sender)].field_1792:
                            revert with 'NH{q', 18
                        if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                            investors[address(msg.sender)].field_2560 = 0
                        else:
                            if block.timestamp <= investors[address(msg.sender)].field_3328:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if investors[address(msg.sender)].field_3328 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < investors[address(msg.sender)].field_3328:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2560 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                else:
                                    if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 18
                                    if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not 80 * investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                        else:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                if investors[address(msg.sender)].field_1792 > -(-210 * investors[address(msg.sender)].field_2048 / 1000) - 1:
                    revert with 'NH{q', 17
                if investors[address(msg.sender)].field_1792 + (-210 * investors[address(msg.sender)].field_2048 / 1000) < investors[address(msg.sender)].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                investors[address(msg.sender)].field_1792 += -210 * investors[address(msg.sender)].field_2048 / 1000
                if investors[address(msg.sender)].field_2304 > -(-210 * investors[address(msg.sender)].field_2048 / 1000) - 1:
                    revert with 'NH{q', 17
                if investors[address(msg.sender)].field_2304 + (-210 * investors[address(msg.sender)].field_2048 / 1000) < investors[address(msg.sender)].field_2304:
                    revert with 0, 'SafeMath: addition overflow'
                investors[address(msg.sender)].field_2304 += -210 * investors[address(msg.sender)].field_2048 / 1000
                if sub_aa37d610 > -(-210 * investors[address(msg.sender)].field_2048 / 1000) - 1:
                    revert with 'NH{q', 17
                if sub_aa37d610 + (-210 * investors[address(msg.sender)].field_2048 / 1000) < sub_aa37d610:
                    revert with 0, 'SafeMath: addition overflow'
                sub_aa37d610 += -210 * investors[address(msg.sender)].field_2048 / 1000
                if -210 * investors[address(msg.sender)].field_2048 / 1000 <= 0:
                    revert with 0, 'Amount must be greater than 0'
                if not -210 * investors[address(msg.sender)].field_2048 / 1000:
                    call sub_f592e82fAddress with:
                         gas 2300 wei
                else:
                    if -210 * investors[address(msg.sender)].field_2048 / 1000 and 60 > -1 / -210 * investors[address(msg.sender)].field_2048 / 1000:
                        revert with 'NH{q', 17
                    if not -210 * investors[address(msg.sender)].field_2048 / 1000:
                        revert with 'NH{q', 18
                    if 60 * -210 * investors[address(msg.sender)].field_2048 / 1000 / -210 * investors[address(msg.sender)].field_2048 / 1000 != 60:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    call sub_f592e82fAddress with:
                       value 60 * -210 * investors[address(msg.sender)].field_2048 / 1000 / 1000 wei
                         gas 2300 * is_zero(value) wei
        else:
            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                revert with 'NH{q', 17
            if not investors[address(msg.sender)].field_1792:
                revert with 'NH{q', 18
            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not 80 * investors[address(msg.sender)].field_1792:
                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                    revert with 'NH{q', 17
                if investors[address(msg.sender)].field_2560 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                    revert with 'NH{q', 17
                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 <= 0:
                    if not investors[address(msg.sender)].field_2560:
                        if investors[address(msg.sender)].field_1792 <= 0:
                            revert with 0, 'not active user'
                        if block.timestamp > investors[address(msg.sender)].field_3328:
                            if not investors[address(msg.sender)].field_1792:
                                if investors[address(msg.sender)].field_2048 >= 0:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                        if investors[address(msg.sender)].field_1792 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        if investors[address(msg.sender)].field_2304 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_aa37d610 > -1:
                            revert with 'NH{q', 17
                        if sub_aa37d610 < sub_aa37d610:
                            revert with 0, 'SafeMath: addition overflow'
                        revert with 0, 'Amount must be greater than 0'
                    if investors[address(msg.sender)].field_2560 and 210 > -1 / investors[address(msg.sender)].field_2560:
                        revert with 'NH{q', 17
                    if not investors[address(msg.sender)].field_2560:
                        revert with 'NH{q', 18
                    if 210 * investors[address(msg.sender)].field_2560 / investors[address(msg.sender)].field_2560 != 210:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if investors[address(msg.sender)].field_1792 <= 0:
                        revert with 0, 'not active user'
                    if block.timestamp > investors[address(msg.sender)].field_3328:
                        if not investors[address(msg.sender)].field_1792:
                            if investors[address(msg.sender)].field_2048 >= 0:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                        else:
                            if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 18
                            if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                    if investors[address(msg.sender)].field_1792 > -(210 * investors[address(msg.sender)].field_2560 / 1000) - 1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_1792 + (210 * investors[address(msg.sender)].field_2560 / 1000) < investors[address(msg.sender)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    investors[address(msg.sender)].field_1792 += 210 * investors[address(msg.sender)].field_2560 / 1000
                    if investors[address(msg.sender)].field_2304 > -(210 * investors[address(msg.sender)].field_2560 / 1000) - 1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_2304 + (210 * investors[address(msg.sender)].field_2560 / 1000) < investors[address(msg.sender)].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    investors[address(msg.sender)].field_2304 += 210 * investors[address(msg.sender)].field_2560 / 1000
                    if sub_aa37d610 > -(210 * investors[address(msg.sender)].field_2560 / 1000) - 1:
                        revert with 'NH{q', 17
                    if sub_aa37d610 + (210 * investors[address(msg.sender)].field_2560 / 1000) < sub_aa37d610:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_aa37d610 += 210 * investors[address(msg.sender)].field_2560 / 1000
                    if 210 * investors[address(msg.sender)].field_2560 / 1000 <= 0:
                        revert with 0, 'Amount must be greater than 0'
                    if not 210 * investors[address(msg.sender)].field_2560 / 1000:
                        call sub_f592e82fAddress with:
                             gas 2300 wei
                    else:
                        if 210 * investors[address(msg.sender)].field_2560 / 1000 and 60 > -1 / 210 * investors[address(msg.sender)].field_2560 / 1000:
                            revert with 'NH{q', 17
                        if not 210 * investors[address(msg.sender)].field_2560 / 1000:
                            revert with 'NH{q', 18
                        if 60 * 210 * investors[address(msg.sender)].field_2560 / 1000 / 210 * investors[address(msg.sender)].field_2560 / 1000 != 60:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        call sub_f592e82fAddress with:
                           value 60 * 210 * investors[address(msg.sender)].field_2560 / 1000 / 1000 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if investors[address(msg.sender)].field_2048 >= 0:
                        if investors[address(msg.sender)].field_1792 <= 0:
                            revert with 0, 'not active user'
                        if block.timestamp > investors[address(msg.sender)].field_3328:
                            if not investors[address(msg.sender)].field_1792:
                                if investors[address(msg.sender)].field_2048 >= 0:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                        if investors[address(msg.sender)].field_1792 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        if investors[address(msg.sender)].field_2304 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_aa37d610 > -1:
                            revert with 'NH{q', 17
                        if sub_aa37d610 < sub_aa37d610:
                            revert with 0, 'SafeMath: addition overflow'
                        revert with 0, 'Amount must be greater than 0'
                    if 0 < investors[address(msg.sender)].field_2048:
                        revert with 'NH{q', 17
                    if not -investors[address(msg.sender)].field_2048:
                        if investors[address(msg.sender)].field_1792 <= 0:
                            revert with 0, 'not active user'
                        if block.timestamp > investors[address(msg.sender)].field_3328:
                            if not investors[address(msg.sender)].field_1792:
                                if investors[address(msg.sender)].field_2048 >= 0:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                        if investors[address(msg.sender)].field_1792 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        if investors[address(msg.sender)].field_2304 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_aa37d610 > -1:
                            revert with 'NH{q', 17
                        if sub_aa37d610 < sub_aa37d610:
                            revert with 0, 'SafeMath: addition overflow'
                        revert with 0, 'Amount must be greater than 0'
                    if -investors[address(msg.sender)].field_2048 and 210 > -1 / -investors[address(msg.sender)].field_2048:
                        revert with 'NH{q', 17
                    if not -investors[address(msg.sender)].field_2048:
                        revert with 'NH{q', 18
                    if -210 * investors[address(msg.sender)].field_2048 / -investors[address(msg.sender)].field_2048 != 210:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if investors[address(msg.sender)].field_1792 <= 0:
                        revert with 0, 'not active user'
                    if block.timestamp > investors[address(msg.sender)].field_3328:
                        if not investors[address(msg.sender)].field_1792:
                            if investors[address(msg.sender)].field_2048 >= 0:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                        else:
                            if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 18
                            if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                    if investors[address(msg.sender)].field_1792 > -(-210 * investors[address(msg.sender)].field_2048 / 1000) - 1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_1792 + (-210 * investors[address(msg.sender)].field_2048 / 1000) < investors[address(msg.sender)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    investors[address(msg.sender)].field_1792 += -210 * investors[address(msg.sender)].field_2048 / 1000
                    if investors[address(msg.sender)].field_2304 > -(-210 * investors[address(msg.sender)].field_2048 / 1000) - 1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_2304 + (-210 * investors[address(msg.sender)].field_2048 / 1000) < investors[address(msg.sender)].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    investors[address(msg.sender)].field_2304 += -210 * investors[address(msg.sender)].field_2048 / 1000
                    if sub_aa37d610 > -(-210 * investors[address(msg.sender)].field_2048 / 1000) - 1:
                        revert with 'NH{q', 17
                    if sub_aa37d610 + (-210 * investors[address(msg.sender)].field_2048 / 1000) < sub_aa37d610:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_aa37d610 += -210 * investors[address(msg.sender)].field_2048 / 1000
                    if -210 * investors[address(msg.sender)].field_2048 / 1000 <= 0:
                        revert with 0, 'Amount must be greater than 0'
                    if not -210 * investors[address(msg.sender)].field_2048 / 1000:
                        call sub_f592e82fAddress with:
                             gas 2300 wei
                    else:
                        if -210 * investors[address(msg.sender)].field_2048 / 1000 and 60 > -1 / -210 * investors[address(msg.sender)].field_2048 / 1000:
                            revert with 'NH{q', 17
                        if not -210 * investors[address(msg.sender)].field_2048 / 1000:
                            revert with 'NH{q', 18
                        if 60 * -210 * investors[address(msg.sender)].field_2048 / 1000 / -210 * investors[address(msg.sender)].field_2048 / 1000 != 60:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        call sub_f592e82fAddress with:
                           value 60 * -210 * investors[address(msg.sender)].field_2048 / 1000 / 1000 wei
                             gas 2300 * is_zero(value) wei
            else:
                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                    revert with 'NH{q', 17
                if not 80 * investors[address(msg.sender)].field_1792:
                    revert with 'NH{q', 18
                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                    revert with 'NH{q', 17
                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                    revert with 0, 'SafeMath: addition overflow'
                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                    revert with 'NH{q', 17
                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                    if not ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560:
                        if investors[address(msg.sender)].field_1792 <= 0:
                            revert with 0, 'not active user'
                        if block.timestamp > investors[address(msg.sender)].field_3328:
                            if not investors[address(msg.sender)].field_1792:
                                if investors[address(msg.sender)].field_2048 >= 0:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                        if investors[address(msg.sender)].field_1792 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        if investors[address(msg.sender)].field_2304 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_aa37d610 > -1:
                            revert with 'NH{q', 17
                        if sub_aa37d610 < sub_aa37d610:
                            revert with 0, 'SafeMath: addition overflow'
                        revert with 0, 'Amount must be greater than 0'
                    if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 and 210 > -1 / ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560:
                        revert with 'NH{q', 17
                    if not ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560:
                        revert with 'NH{q', 18
                    if (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 != 210:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if investors[address(msg.sender)].field_1792 <= 0:
                        revert with 0, 'not active user'
                    if block.timestamp > investors[address(msg.sender)].field_3328:
                        if not investors[address(msg.sender)].field_1792:
                            if investors[address(msg.sender)].field_2048 >= 0:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                        else:
                            if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 18
                            if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                    if investors[address(msg.sender)].field_1792 > -((210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000) - 1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_1792 + ((210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000) < investors[address(msg.sender)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    investors[address(msg.sender)].field_1792 += (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000
                    if investors[address(msg.sender)].field_2304 > -((210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000) - 1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_2304 + ((210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000) < investors[address(msg.sender)].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    investors[address(msg.sender)].field_2304 += (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000
                    if sub_aa37d610 > -((210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000) - 1:
                        revert with 'NH{q', 17
                    if sub_aa37d610 + ((210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000) < sub_aa37d610:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_aa37d610 += (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000
                    if (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000 <= 0:
                        revert with 0, 'Amount must be greater than 0'
                    if not (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000:
                        call sub_f592e82fAddress with:
                             gas 2300 wei
                    else:
                        if (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000 and 60 > -1 / (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000:
                            revert with 'NH{q', 17
                        if not (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000:
                            revert with 'NH{q', 18
                        if 60 * (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000 / (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000 != 60:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        call sub_f592e82fAddress with:
                           value 60 * (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000 / 1000 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if investors[address(msg.sender)].field_2048 >= 0:
                        if investors[address(msg.sender)].field_1792 <= 0:
                            revert with 0, 'not active user'
                        if block.timestamp > investors[address(msg.sender)].field_3328:
                            if not investors[address(msg.sender)].field_1792:
                                if investors[address(msg.sender)].field_2048 >= 0:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                        if investors[address(msg.sender)].field_1792 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        if investors[address(msg.sender)].field_2304 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_aa37d610 > -1:
                            revert with 'NH{q', 17
                        if sub_aa37d610 < sub_aa37d610:
                            revert with 0, 'SafeMath: addition overflow'
                        revert with 0, 'Amount must be greater than 0'
                    if 0 < investors[address(msg.sender)].field_2048:
                        revert with 'NH{q', 17
                    if not -investors[address(msg.sender)].field_2048:
                        if investors[address(msg.sender)].field_1792 <= 0:
                            revert with 0, 'not active user'
                        if block.timestamp > investors[address(msg.sender)].field_3328:
                            if not investors[address(msg.sender)].field_1792:
                                if investors[address(msg.sender)].field_2048 >= 0:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                        if investors[address(msg.sender)].field_1792 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        if investors[address(msg.sender)].field_2304 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_aa37d610 > -1:
                            revert with 'NH{q', 17
                        if sub_aa37d610 < sub_aa37d610:
                            revert with 0, 'SafeMath: addition overflow'
                        revert with 0, 'Amount must be greater than 0'
                    if -investors[address(msg.sender)].field_2048 and 210 > -1 / -investors[address(msg.sender)].field_2048:
                        revert with 'NH{q', 17
                    if not -investors[address(msg.sender)].field_2048:
                        revert with 'NH{q', 18
                    if -210 * investors[address(msg.sender)].field_2048 / -investors[address(msg.sender)].field_2048 != 210:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if investors[address(msg.sender)].field_1792 <= 0:
                        revert with 0, 'not active user'
                    if block.timestamp > investors[address(msg.sender)].field_3328:
                        if not investors[address(msg.sender)].field_1792:
                            if investors[address(msg.sender)].field_2048 >= 0:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                        else:
                            if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 18
                            if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                    if investors[address(msg.sender)].field_1792 > -(-210 * investors[address(msg.sender)].field_2048 / 1000) - 1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_1792 + (-210 * investors[address(msg.sender)].field_2048 / 1000) < investors[address(msg.sender)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    investors[address(msg.sender)].field_1792 += -210 * investors[address(msg.sender)].field_2048 / 1000
                    if investors[address(msg.sender)].field_2304 > -(-210 * investors[address(msg.sender)].field_2048 / 1000) - 1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_2304 + (-210 * investors[address(msg.sender)].field_2048 / 1000) < investors[address(msg.sender)].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    investors[address(msg.sender)].field_2304 += -210 * investors[address(msg.sender)].field_2048 / 1000
                    if sub_aa37d610 > -(-210 * investors[address(msg.sender)].field_2048 / 1000) - 1:
                        revert with 'NH{q', 17
                    if sub_aa37d610 + (-210 * investors[address(msg.sender)].field_2048 / 1000) < sub_aa37d610:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_aa37d610 += -210 * investors[address(msg.sender)].field_2048 / 1000
                    if -210 * investors[address(msg.sender)].field_2048 / 1000 <= 0:
                        revert with 0, 'Amount must be greater than 0'
                    if not -210 * investors[address(msg.sender)].field_2048 / 1000:
                        call sub_f592e82fAddress with:
                             gas 2300 wei
                    else:
                        if -210 * investors[address(msg.sender)].field_2048 / 1000 and 60 > -1 / -210 * investors[address(msg.sender)].field_2048 / 1000:
                            revert with 'NH{q', 17
                        if not -210 * investors[address(msg.sender)].field_2048 / 1000:
                            revert with 'NH{q', 18
                        if 60 * -210 * investors[address(msg.sender)].field_2048 / 1000 / -210 * investors[address(msg.sender)].field_2048 / 1000 != 60:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        call sub_f592e82fAddress with:
                           value 60 * -210 * investors[address(msg.sender)].field_2048 / 1000 / 1000 wei
                             gas 2300 * is_zero(value) wei
    else:
        if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
            revert with 'NH{q', 17
        if not investors[address(msg.sender)].field_1792:
            revert with 'NH{q', 18
        if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
            if investors[address(msg.sender)].field_1792 <= 0:
                revert with 0, 'not active user'
            if block.timestamp > investors[address(msg.sender)].field_3328:
                if not investors[address(msg.sender)].field_1792:
                    if investors[address(msg.sender)].field_2048 >= 0:
                        investors[address(msg.sender)].field_2560 = 0
                    else:
                        if block.timestamp <= investors[address(msg.sender)].field_3328:
                            investors[address(msg.sender)].field_2560 = 0
                        else:
                            if investors[address(msg.sender)].field_3328 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < investors[address(msg.sender)].field_3328:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                    revert with 'NH{q', 17
                                if investors[address(msg.sender)].field_2560 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                    revert with 'NH{q', 17
                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                    if investors[address(msg.sender)].field_2048 >= 0:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if 0 < investors[address(msg.sender)].field_2048:
                                            revert with 'NH{q', 17
                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not 80 * investors[address(msg.sender)].field_1792:
                                    if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2560 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                        if investors[address(msg.sender)].field_2048 >= 0:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 0 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                else:
                                    if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 17
                                    if not 80 * investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 18
                                    if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                        investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                    else:
                                        if investors[address(msg.sender)].field_2048 >= 0:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 0 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                else:
                    if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                        revert with 'NH{q', 17
                    if not investors[address(msg.sender)].field_1792:
                        revert with 'NH{q', 18
                    if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                        investors[address(msg.sender)].field_2560 = 0
                    else:
                        if block.timestamp <= investors[address(msg.sender)].field_3328:
                            investors[address(msg.sender)].field_2560 = 0
                        else:
                            if investors[address(msg.sender)].field_3328 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < investors[address(msg.sender)].field_3328:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                    revert with 'NH{q', 17
                                if investors[address(msg.sender)].field_2560 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                    revert with 'NH{q', 17
                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                            revert with 'NH{q', 17
                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not 80 * investors[address(msg.sender)].field_1792:
                                    if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2560 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                else:
                                    if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 17
                                    if not 80 * investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 18
                                    if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                        investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                    else:
                                        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
            if investors[address(msg.sender)].field_1792 > -1:
                revert with 'NH{q', 17
            if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(msg.sender)].field_2304 > -1:
                revert with 'NH{q', 17
            if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                revert with 0, 'SafeMath: addition overflow'
            if sub_aa37d610 > -1:
                revert with 'NH{q', 17
            if sub_aa37d610 < sub_aa37d610:
                revert with 0, 'SafeMath: addition overflow'
            revert with 0, 'Amount must be greater than 0'
        if block.timestamp <= investors[address(msg.sender)].field_3328:
            if investors[address(msg.sender)].field_1792 <= 0:
                revert with 0, 'not active user'
            if block.timestamp > investors[address(msg.sender)].field_3328:
                if not investors[address(msg.sender)].field_1792:
                    if investors[address(msg.sender)].field_2048 >= 0:
                        investors[address(msg.sender)].field_2560 = 0
                    else:
                        if block.timestamp <= investors[address(msg.sender)].field_3328:
                            investors[address(msg.sender)].field_2560 = 0
                        else:
                            if investors[address(msg.sender)].field_3328 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < investors[address(msg.sender)].field_3328:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                    revert with 'NH{q', 17
                                if investors[address(msg.sender)].field_2560 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                    revert with 'NH{q', 17
                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                    if investors[address(msg.sender)].field_2048 >= 0:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if 0 < investors[address(msg.sender)].field_2048:
                                            revert with 'NH{q', 17
                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not 80 * investors[address(msg.sender)].field_1792:
                                    if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2560 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                        if investors[address(msg.sender)].field_2048 >= 0:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 0 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                else:
                                    if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 17
                                    if not 80 * investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 18
                                    if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                        investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                    else:
                                        if investors[address(msg.sender)].field_2048 >= 0:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 0 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                else:
                    if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                        revert with 'NH{q', 17
                    if not investors[address(msg.sender)].field_1792:
                        revert with 'NH{q', 18
                    if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                        investors[address(msg.sender)].field_2560 = 0
                    else:
                        if block.timestamp <= investors[address(msg.sender)].field_3328:
                            investors[address(msg.sender)].field_2560 = 0
                        else:
                            if investors[address(msg.sender)].field_3328 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < investors[address(msg.sender)].field_3328:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                    revert with 'NH{q', 17
                                if investors[address(msg.sender)].field_2560 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                    revert with 'NH{q', 17
                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                            revert with 'NH{q', 17
                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not 80 * investors[address(msg.sender)].field_1792:
                                    if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2560 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                else:
                                    if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 17
                                    if not 80 * investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 18
                                    if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                        investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                    else:
                                        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
            if investors[address(msg.sender)].field_1792 > -1:
                revert with 'NH{q', 17
            if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(msg.sender)].field_2304 > -1:
                revert with 'NH{q', 17
            if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                revert with 0, 'SafeMath: addition overflow'
            if sub_aa37d610 > -1:
                revert with 'NH{q', 17
            if sub_aa37d610 < sub_aa37d610:
                revert with 0, 'SafeMath: addition overflow'
            revert with 0, 'Amount must be greater than 0'
        if investors[address(msg.sender)].field_3328 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp < investors[address(msg.sender)].field_3328:
            revert with 'NH{q', 17
        if not investors[address(msg.sender)].field_1792:
            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                revert with 'NH{q', 17
            if investors[address(msg.sender)].field_2560 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                revert with 'NH{q', 17
            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                if not investors[address(msg.sender)].field_2560:
                    if investors[address(msg.sender)].field_1792 <= 0:
                        revert with 0, 'not active user'
                    if block.timestamp > investors[address(msg.sender)].field_3328:
                        if not investors[address(msg.sender)].field_1792:
                            if investors[address(msg.sender)].field_2048 >= 0:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                        else:
                            if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 18
                            if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                    if investors[address(msg.sender)].field_1792 > -1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    if investors[address(msg.sender)].field_2304 > -1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_aa37d610 > -1:
                        revert with 'NH{q', 17
                    if sub_aa37d610 < sub_aa37d610:
                        revert with 0, 'SafeMath: addition overflow'
                    revert with 0, 'Amount must be greater than 0'
                if investors[address(msg.sender)].field_2560 and 210 > -1 / investors[address(msg.sender)].field_2560:
                    revert with 'NH{q', 17
                if not investors[address(msg.sender)].field_2560:
                    revert with 'NH{q', 18
                if 210 * investors[address(msg.sender)].field_2560 / investors[address(msg.sender)].field_2560 != 210:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if investors[address(msg.sender)].field_1792 <= 0:
                    revert with 0, 'not active user'
                if block.timestamp > investors[address(msg.sender)].field_3328:
                    if not investors[address(msg.sender)].field_1792:
                        if investors[address(msg.sender)].field_2048 >= 0:
                            investors[address(msg.sender)].field_2560 = 0
                        else:
                            if block.timestamp <= investors[address(msg.sender)].field_3328:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if investors[address(msg.sender)].field_3328 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < investors[address(msg.sender)].field_3328:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2560 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                        if investors[address(msg.sender)].field_2048 >= 0:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 0 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                else:
                                    if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 18
                                    if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not 80 * investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                            investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                        else:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                    else:
                        if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                            revert with 'NH{q', 17
                        if not investors[address(msg.sender)].field_1792:
                            revert with 'NH{q', 18
                        if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                            investors[address(msg.sender)].field_2560 = 0
                        else:
                            if block.timestamp <= investors[address(msg.sender)].field_3328:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if investors[address(msg.sender)].field_3328 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < investors[address(msg.sender)].field_3328:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2560 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                else:
                                    if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 18
                                    if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not 80 * investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                        else:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                if investors[address(msg.sender)].field_1792 > -(210 * investors[address(msg.sender)].field_2560 / 1000) - 1:
                    revert with 'NH{q', 17
                if investors[address(msg.sender)].field_1792 + (210 * investors[address(msg.sender)].field_2560 / 1000) < investors[address(msg.sender)].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                investors[address(msg.sender)].field_1792 += 210 * investors[address(msg.sender)].field_2560 / 1000
                if investors[address(msg.sender)].field_2304 > -(210 * investors[address(msg.sender)].field_2560 / 1000) - 1:
                    revert with 'NH{q', 17
                if investors[address(msg.sender)].field_2304 + (210 * investors[address(msg.sender)].field_2560 / 1000) < investors[address(msg.sender)].field_2304:
                    revert with 0, 'SafeMath: addition overflow'
                investors[address(msg.sender)].field_2304 += 210 * investors[address(msg.sender)].field_2560 / 1000
                if sub_aa37d610 > -(210 * investors[address(msg.sender)].field_2560 / 1000) - 1:
                    revert with 'NH{q', 17
                if sub_aa37d610 + (210 * investors[address(msg.sender)].field_2560 / 1000) < sub_aa37d610:
                    revert with 0, 'SafeMath: addition overflow'
                sub_aa37d610 += 210 * investors[address(msg.sender)].field_2560 / 1000
                if 210 * investors[address(msg.sender)].field_2560 / 1000 <= 0:
                    revert with 0, 'Amount must be greater than 0'
                if not 210 * investors[address(msg.sender)].field_2560 / 1000:
                    call sub_f592e82fAddress with:
                         gas 2300 wei
                else:
                    if 210 * investors[address(msg.sender)].field_2560 / 1000 and 60 > -1 / 210 * investors[address(msg.sender)].field_2560 / 1000:
                        revert with 'NH{q', 17
                    if not 210 * investors[address(msg.sender)].field_2560 / 1000:
                        revert with 'NH{q', 18
                    if 60 * 210 * investors[address(msg.sender)].field_2560 / 1000 / 210 * investors[address(msg.sender)].field_2560 / 1000 != 60:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    call sub_f592e82fAddress with:
                       value 60 * 210 * investors[address(msg.sender)].field_2560 / 1000 / 1000 wei
                         gas 2300 * is_zero(value) wei
            else:
                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                    if investors[address(msg.sender)].field_1792 <= 0:
                        revert with 0, 'not active user'
                    if block.timestamp > investors[address(msg.sender)].field_3328:
                        if not investors[address(msg.sender)].field_1792:
                            if investors[address(msg.sender)].field_2048 >= 0:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                        else:
                            if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 18
                            if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                    if investors[address(msg.sender)].field_1792 > -1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    if investors[address(msg.sender)].field_2304 > -1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_aa37d610 > -1:
                        revert with 'NH{q', 17
                    if sub_aa37d610 < sub_aa37d610:
                        revert with 0, 'SafeMath: addition overflow'
                    revert with 0, 'Amount must be greater than 0'
                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                    revert with 'NH{q', 17
                if not (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048:
                    if investors[address(msg.sender)].field_1792 <= 0:
                        revert with 0, 'not active user'
                    if block.timestamp > investors[address(msg.sender)].field_3328:
                        if not investors[address(msg.sender)].field_1792:
                            if investors[address(msg.sender)].field_2048 >= 0:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                        else:
                            if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 18
                            if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                    if investors[address(msg.sender)].field_1792 > -1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    if investors[address(msg.sender)].field_2304 > -1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_aa37d610 > -1:
                        revert with 'NH{q', 17
                    if sub_aa37d610 < sub_aa37d610:
                        revert with 0, 'SafeMath: addition overflow'
                    revert with 0, 'Amount must be greater than 0'
                if (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048 and 210 > -1 / (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048:
                    revert with 'NH{q', 17
                if not (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048:
                    revert with 'NH{q', 18
                if (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048 != 210:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if investors[address(msg.sender)].field_1792 <= 0:
                    revert with 0, 'not active user'
                if block.timestamp > investors[address(msg.sender)].field_3328:
                    if not investors[address(msg.sender)].field_1792:
                        if investors[address(msg.sender)].field_2048 >= 0:
                            investors[address(msg.sender)].field_2560 = 0
                        else:
                            if block.timestamp <= investors[address(msg.sender)].field_3328:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if investors[address(msg.sender)].field_3328 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < investors[address(msg.sender)].field_3328:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2560 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                        if investors[address(msg.sender)].field_2048 >= 0:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 0 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                else:
                                    if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 18
                                    if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not 80 * investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                            investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                        else:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                    else:
                        if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                            revert with 'NH{q', 17
                        if not investors[address(msg.sender)].field_1792:
                            revert with 'NH{q', 18
                        if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                            investors[address(msg.sender)].field_2560 = 0
                        else:
                            if block.timestamp <= investors[address(msg.sender)].field_3328:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if investors[address(msg.sender)].field_3328 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < investors[address(msg.sender)].field_3328:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2560 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                        revert with 'NH{q', 17
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                        if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            investors[address(msg.sender)].field_2560 = 0
                                        else:
                                            if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                revert with 'NH{q', 17
                                            investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                else:
                                    if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        revert with 'NH{q', 18
                                    if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not 80 * investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                        else:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                if investors[address(msg.sender)].field_1792 > -((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) - 1:
                    revert with 'NH{q', 17
                if investors[address(msg.sender)].field_1792 + ((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) < investors[address(msg.sender)].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                investors[address(msg.sender)].field_1792 += (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000
                if investors[address(msg.sender)].field_2304 > -((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) - 1:
                    revert with 'NH{q', 17
                if investors[address(msg.sender)].field_2304 + ((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) < investors[address(msg.sender)].field_2304:
                    revert with 0, 'SafeMath: addition overflow'
                investors[address(msg.sender)].field_2304 += (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000
                if sub_aa37d610 > -((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) - 1:
                    revert with 'NH{q', 17
                if sub_aa37d610 + ((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) < sub_aa37d610:
                    revert with 0, 'SafeMath: addition overflow'
                sub_aa37d610 += (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000
                if (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000 <= 0:
                    revert with 0, 'Amount must be greater than 0'
                if not (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000:
                    call sub_f592e82fAddress with:
                         gas 2300 wei
                else:
                    if (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000 and 60 > -1 / (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000:
                        revert with 'NH{q', 17
                    if not (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000:
                        revert with 'NH{q', 18
                    if 60 * (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000 / (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000 != 60:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    call sub_f592e82fAddress with:
                       value 60 * (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000 / 1000 wei
                         gas 2300 * is_zero(value) wei
        else:
            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                revert with 'NH{q', 17
            if not investors[address(msg.sender)].field_1792:
                revert with 'NH{q', 18
            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not 80 * investors[address(msg.sender)].field_1792:
                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                    revert with 'NH{q', 17
                if investors[address(msg.sender)].field_2560 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                    revert with 'NH{q', 17
                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                    if not investors[address(msg.sender)].field_2560:
                        if investors[address(msg.sender)].field_1792 <= 0:
                            revert with 0, 'not active user'
                        if block.timestamp > investors[address(msg.sender)].field_3328:
                            if not investors[address(msg.sender)].field_1792:
                                if investors[address(msg.sender)].field_2048 >= 0:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                        if investors[address(msg.sender)].field_1792 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        if investors[address(msg.sender)].field_2304 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_aa37d610 > -1:
                            revert with 'NH{q', 17
                        if sub_aa37d610 < sub_aa37d610:
                            revert with 0, 'SafeMath: addition overflow'
                        revert with 0, 'Amount must be greater than 0'
                    if investors[address(msg.sender)].field_2560 and 210 > -1 / investors[address(msg.sender)].field_2560:
                        revert with 'NH{q', 17
                    if not investors[address(msg.sender)].field_2560:
                        revert with 'NH{q', 18
                    if 210 * investors[address(msg.sender)].field_2560 / investors[address(msg.sender)].field_2560 != 210:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if investors[address(msg.sender)].field_1792 <= 0:
                        revert with 0, 'not active user'
                    if block.timestamp > investors[address(msg.sender)].field_3328:
                        if not investors[address(msg.sender)].field_1792:
                            if investors[address(msg.sender)].field_2048 >= 0:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                        else:
                            if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 18
                            if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                    if investors[address(msg.sender)].field_1792 > -(210 * investors[address(msg.sender)].field_2560 / 1000) - 1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_1792 + (210 * investors[address(msg.sender)].field_2560 / 1000) < investors[address(msg.sender)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    investors[address(msg.sender)].field_1792 += 210 * investors[address(msg.sender)].field_2560 / 1000
                    if investors[address(msg.sender)].field_2304 > -(210 * investors[address(msg.sender)].field_2560 / 1000) - 1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_2304 + (210 * investors[address(msg.sender)].field_2560 / 1000) < investors[address(msg.sender)].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    investors[address(msg.sender)].field_2304 += 210 * investors[address(msg.sender)].field_2560 / 1000
                    if sub_aa37d610 > -(210 * investors[address(msg.sender)].field_2560 / 1000) - 1:
                        revert with 'NH{q', 17
                    if sub_aa37d610 + (210 * investors[address(msg.sender)].field_2560 / 1000) < sub_aa37d610:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_aa37d610 += 210 * investors[address(msg.sender)].field_2560 / 1000
                    if 210 * investors[address(msg.sender)].field_2560 / 1000 <= 0:
                        revert with 0, 'Amount must be greater than 0'
                    if not 210 * investors[address(msg.sender)].field_2560 / 1000:
                        call sub_f592e82fAddress with:
                             gas 2300 wei
                    else:
                        if 210 * investors[address(msg.sender)].field_2560 / 1000 and 60 > -1 / 210 * investors[address(msg.sender)].field_2560 / 1000:
                            revert with 'NH{q', 17
                        if not 210 * investors[address(msg.sender)].field_2560 / 1000:
                            revert with 'NH{q', 18
                        if 60 * 210 * investors[address(msg.sender)].field_2560 / 1000 / 210 * investors[address(msg.sender)].field_2560 / 1000 != 60:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        call sub_f592e82fAddress with:
                           value 60 * 210 * investors[address(msg.sender)].field_2560 / 1000 / 1000 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                        if investors[address(msg.sender)].field_1792 <= 0:
                            revert with 0, 'not active user'
                        if block.timestamp > investors[address(msg.sender)].field_3328:
                            if not investors[address(msg.sender)].field_1792:
                                if investors[address(msg.sender)].field_2048 >= 0:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                        if investors[address(msg.sender)].field_1792 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        if investors[address(msg.sender)].field_2304 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_aa37d610 > -1:
                            revert with 'NH{q', 17
                        if sub_aa37d610 < sub_aa37d610:
                            revert with 0, 'SafeMath: addition overflow'
                        revert with 0, 'Amount must be greater than 0'
                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                        revert with 'NH{q', 17
                    if not (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048:
                        if investors[address(msg.sender)].field_1792 <= 0:
                            revert with 0, 'not active user'
                        if block.timestamp > investors[address(msg.sender)].field_3328:
                            if not investors[address(msg.sender)].field_1792:
                                if investors[address(msg.sender)].field_2048 >= 0:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                        if investors[address(msg.sender)].field_1792 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        if investors[address(msg.sender)].field_2304 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_aa37d610 > -1:
                            revert with 'NH{q', 17
                        if sub_aa37d610 < sub_aa37d610:
                            revert with 0, 'SafeMath: addition overflow'
                        revert with 0, 'Amount must be greater than 0'
                    if (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048 and 210 > -1 / (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048:
                        revert with 'NH{q', 17
                    if not (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048:
                        revert with 'NH{q', 18
                    if (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048 != 210:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if investors[address(msg.sender)].field_1792 <= 0:
                        revert with 0, 'not active user'
                    if block.timestamp > investors[address(msg.sender)].field_3328:
                        if not investors[address(msg.sender)].field_1792:
                            if investors[address(msg.sender)].field_2048 >= 0:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                        else:
                            if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 18
                            if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                    if investors[address(msg.sender)].field_1792 > -((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) - 1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_1792 + ((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) < investors[address(msg.sender)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    investors[address(msg.sender)].field_1792 += (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000
                    if investors[address(msg.sender)].field_2304 > -((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) - 1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_2304 + ((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) < investors[address(msg.sender)].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    investors[address(msg.sender)].field_2304 += (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000
                    if sub_aa37d610 > -((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) - 1:
                        revert with 'NH{q', 17
                    if sub_aa37d610 + ((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) < sub_aa37d610:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_aa37d610 += (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000
                    if (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000 <= 0:
                        revert with 0, 'Amount must be greater than 0'
                    if not (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000:
                        call sub_f592e82fAddress with:
                             gas 2300 wei
                    else:
                        if (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000 and 60 > -1 / (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000:
                            revert with 'NH{q', 17
                        if not (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000:
                            revert with 'NH{q', 18
                        if 60 * (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000 / (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000 != 60:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        call sub_f592e82fAddress with:
                           value 60 * (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000 / 1000 wei
                             gas 2300 * is_zero(value) wei
            else:
                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                    revert with 'NH{q', 17
                if not 80 * investors[address(msg.sender)].field_1792:
                    revert with 'NH{q', 18
                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                    revert with 'NH{q', 17
                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                    revert with 0, 'SafeMath: addition overflow'
                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                    revert with 'NH{q', 17
                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                    if not ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560:
                        if investors[address(msg.sender)].field_1792 <= 0:
                            revert with 0, 'not active user'
                        if block.timestamp > investors[address(msg.sender)].field_3328:
                            if not investors[address(msg.sender)].field_1792:
                                if investors[address(msg.sender)].field_2048 >= 0:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                        if investors[address(msg.sender)].field_1792 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        if investors[address(msg.sender)].field_2304 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_aa37d610 > -1:
                            revert with 'NH{q', 17
                        if sub_aa37d610 < sub_aa37d610:
                            revert with 0, 'SafeMath: addition overflow'
                        revert with 0, 'Amount must be greater than 0'
                    if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 and 210 > -1 / ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560:
                        revert with 'NH{q', 17
                    if not ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560:
                        revert with 'NH{q', 18
                    if (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 != 210:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if investors[address(msg.sender)].field_1792 <= 0:
                        revert with 0, 'not active user'
                    if block.timestamp > investors[address(msg.sender)].field_3328:
                        if not investors[address(msg.sender)].field_1792:
                            if investors[address(msg.sender)].field_2048 >= 0:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                        else:
                            if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 18
                            if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                    if investors[address(msg.sender)].field_1792 > -((210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000) - 1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_1792 + ((210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000) < investors[address(msg.sender)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    investors[address(msg.sender)].field_1792 += (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000
                    if investors[address(msg.sender)].field_2304 > -((210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000) - 1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_2304 + ((210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000) < investors[address(msg.sender)].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    investors[address(msg.sender)].field_2304 += (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000
                    if sub_aa37d610 > -((210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000) - 1:
                        revert with 'NH{q', 17
                    if sub_aa37d610 + ((210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000) < sub_aa37d610:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_aa37d610 += (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000
                    if (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000 <= 0:
                        revert with 0, 'Amount must be greater than 0'
                    if not (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000:
                        call sub_f592e82fAddress with:
                             gas 2300 wei
                    else:
                        if (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000 and 60 > -1 / (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000:
                            revert with 'NH{q', 17
                        if not (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000:
                            revert with 'NH{q', 18
                        if 60 * (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000 / (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000 != 60:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        call sub_f592e82fAddress with:
                           value 60 * (210 * (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + (210 * investors[address(msg.sender)].field_2560) / 1000 / 1000 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                        if investors[address(msg.sender)].field_1792 <= 0:
                            revert with 0, 'not active user'
                        if block.timestamp > investors[address(msg.sender)].field_3328:
                            if not investors[address(msg.sender)].field_1792:
                                if investors[address(msg.sender)].field_2048 >= 0:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                        if investors[address(msg.sender)].field_1792 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        if investors[address(msg.sender)].field_2304 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_aa37d610 > -1:
                            revert with 'NH{q', 17
                        if sub_aa37d610 < sub_aa37d610:
                            revert with 0, 'SafeMath: addition overflow'
                        revert with 0, 'Amount must be greater than 0'
                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                        revert with 'NH{q', 17
                    if not (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048:
                        if investors[address(msg.sender)].field_1792 <= 0:
                            revert with 0, 'not active user'
                        if block.timestamp > investors[address(msg.sender)].field_3328:
                            if not investors[address(msg.sender)].field_1792:
                                if investors[address(msg.sender)].field_2048 >= 0:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 0:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 0 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                            else:
                                if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 17
                                if not investors[address(msg.sender)].field_1792:
                                    revert with 'NH{q', 18
                                if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if block.timestamp <= investors[address(msg.sender)].field_3328:
                                        investors[address(msg.sender)].field_2560 = 0
                                    else:
                                        if investors[address(msg.sender)].field_3328 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < investors[address(msg.sender)].field_3328:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2560 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                            else:
                                                if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 17
                                                if not 80 * investors[address(msg.sender)].field_1792:
                                                    revert with 'NH{q', 18
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                    revert with 'NH{q', 17
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                                else:
                                                    if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                        investors[address(msg.sender)].field_2560 = 0
                                                    else:
                                                        if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                            revert with 'NH{q', 17
                                                        investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                        if investors[address(msg.sender)].field_1792 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        if investors[address(msg.sender)].field_2304 > -1:
                            revert with 'NH{q', 17
                        if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_aa37d610 > -1:
                            revert with 'NH{q', 17
                        if sub_aa37d610 < sub_aa37d610:
                            revert with 0, 'SafeMath: addition overflow'
                        revert with 0, 'Amount must be greater than 0'
                    if (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048 and 210 > -1 / (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048:
                        revert with 'NH{q', 17
                    if not (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048:
                        revert with 'NH{q', 18
                    if (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048 != 210:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if investors[address(msg.sender)].field_1792 <= 0:
                        revert with 0, 'not active user'
                    if block.timestamp > investors[address(msg.sender)].field_3328:
                        if not investors[address(msg.sender)].field_1792:
                            if investors[address(msg.sender)].field_2048 >= 0:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                            if investors[address(msg.sender)].field_2048 >= 0:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 0 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 0:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 0:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 0:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 0 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = -investors[address(msg.sender)].field_2048
                        else:
                            if investors[address(msg.sender)].field_1792 and 2400 > -1 / investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 17
                            if not investors[address(msg.sender)].field_1792:
                                revert with 'NH{q', 18
                            if 2400 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 2400:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                investors[address(msg.sender)].field_2560 = 0
                            else:
                                if block.timestamp <= investors[address(msg.sender)].field_3328:
                                    investors[address(msg.sender)].field_2560 = 0
                                else:
                                    if investors[address(msg.sender)].field_3328 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < investors[address(msg.sender)].field_3328:
                                        revert with 'NH{q', 17
                                    if not investors[address(msg.sender)].field_1792:
                                        if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2560 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                            revert with 'NH{q', 17
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                            if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 = 0
                                            else:
                                                if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                    revert with 'NH{q', 17
                                                investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                    else:
                                        if investors[address(msg.sender)].field_1792 and 80 > -1 / investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 17
                                        if not investors[address(msg.sender)].field_1792:
                                            revert with 'NH{q', 18
                                        if 80 * investors[address(msg.sender)].field_1792 / investors[address(msg.sender)].field_1792 != 80:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 80 * investors[address(msg.sender)].field_1792:
                                            if 0 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2560 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + investors[address(msg.sender)].field_2560 > 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                                        else:
                                            if 80 * investors[address(msg.sender)].field_1792 and block.timestamp - investors[address(msg.sender)].field_3328 > -1 / 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 17
                                            if not 80 * investors[address(msg.sender)].field_1792:
                                                revert with 'NH{q', 18
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 80 * investors[address(msg.sender)].field_1792 != block.timestamp - investors[address(msg.sender)].field_3328:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600 > -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 > -((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + -investors[address(msg.sender)].field_2560 - 1:
                                                revert with 'NH{q', 17
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 < investors[address(msg.sender)].field_2048:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if investors[address(msg.sender)].field_2048 + ((80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600) + investors[address(msg.sender)].field_2560 <= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                investors[address(msg.sender)].field_2560 += (80 * block.timestamp * investors[address(msg.sender)].field_1792) - (80 * investors[address(msg.sender)].field_3328 * investors[address(msg.sender)].field_1792) / 24000 * 24 * 3600
                                            else:
                                                if investors[address(msg.sender)].field_2048 >= 2400 * investors[address(msg.sender)].field_1792 / 1000:
                                                    investors[address(msg.sender)].field_2560 = 0
                                                else:
                                                    if 2400 * investors[address(msg.sender)].field_1792 / 1000 < investors[address(msg.sender)].field_2048:
                                                        revert with 'NH{q', 17
                                                    investors[address(msg.sender)].field_2560 = (2400 * investors[address(msg.sender)].field_1792 / 1000) - investors[address(msg.sender)].field_2048
                    if investors[address(msg.sender)].field_1792 > -((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) - 1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_1792 + ((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) < investors[address(msg.sender)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    investors[address(msg.sender)].field_1792 += (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000
                    if investors[address(msg.sender)].field_2304 > -((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) - 1:
                        revert with 'NH{q', 17
                    if investors[address(msg.sender)].field_2304 + ((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) < investors[address(msg.sender)].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    investors[address(msg.sender)].field_2304 += (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000
                    if sub_aa37d610 > -((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) - 1:
                        revert with 'NH{q', 17
                    if sub_aa37d610 + ((210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000) < sub_aa37d610:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_aa37d610 += (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000
                    if (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000 <= 0:
                        revert with 0, 'Amount must be greater than 0'
                    if not (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000:
                        call sub_f592e82fAddress with:
                             gas 2300 wei
                    else:
                        if (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000 and 60 > -1 / (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000:
                            revert with 'NH{q', 17
                        if not (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000:
                            revert with 'NH{q', 18
                        if 60 * (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000 / (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000 != 60:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        call sub_f592e82fAddress with:
                           value 60 * (210 * 2400 * investors[address(msg.sender)].field_1792 / 1000) - (210 * investors[address(msg.sender)].field_2048) / 1000 / 1000 wei
                             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    investors[address(msg.sender)].field_3584 = block.timestamp
    investors[address(msg.sender)].field_3328 = block.timestamp
}



}
