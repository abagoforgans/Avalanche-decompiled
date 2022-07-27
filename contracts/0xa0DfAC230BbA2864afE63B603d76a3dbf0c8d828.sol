contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address conAddress;
address sub_91ca295cAddress;
uint256 sub_87ae97b4;
uint256 sub_ef52471a;
uint256 sub_c25430f0;
uint256 startBlock;
uint256 rewardEndBlock;
uint256 sub_2739f58c;
uint256 sub_516884a5;
address rewardsPoolAddress;
address stor12;
uint256 stor13;
uint256 stor14;
mapping of struct userInfo;

function rewardsPool() payable {
    return rewardsPoolAddress
}

function con() payable {
    return conAddress
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512, userInfo[arg1].field_768
}

function sub_2739f58c(?) payable {
    return sub_2739f58c
}

function startBlock() payable {
    return startBlock
}

function sub_516884a5(?) payable {
    return sub_516884a5
}

function rewardEndBlock() payable {
    return rewardEndBlock
}

function sub_87ae97b4(?) payable {
    return sub_87ae97b4
}

function owner() payable {
    return owner
}

function sub_91ca295c(?) payable {
    return sub_91ca295cAddress
}

function sub_c25430f0(?) payable {
    return sub_c25430f0
}

function sub_ef52471a(?) payable {
    return sub_ef52471a
}

function _fallback() payable {
    revert
}

function poolInfo() payable {
    return stor12, stor13, stor14
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_88765b26(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = arg1
}

function sub_2a7d39ee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c25430f0 = arg1
}

function sub_e58ac728(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ef52471a = arg1
}

function sub_f3bb5031(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_87ae97b4 = arg1
}

function setStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startBlock = arg1
}

function setEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardEndBlock = arg1
}

function sub_f6061526(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = address(arg1)
}

function sub_4a7e1b68(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    conAddress = address(arg1)
}

function setRewardsPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsPoolAddress = arg1
}

function sub_346b55d4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_91ca295cAddress = address(arg1)
}

function sub_ff127bad(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2739f58c = arg1
    sub_516884a5 = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getCurrentRewardsPerBlock() payable {
    if block.number < startBlock:
        return 0
    if block.number >= rewardEndBlock:
        return 0
    if block.number < sub_87ae97b4:
        if sub_c25430f0 and sub_2739f58c > -1 / sub_c25430f0:
            revert with 'NH{q', 17
        return (sub_c25430f0 * sub_2739f58c / 100)
    if block.number >= sub_ef52471a:
        return sub_c25430f0
    if sub_c25430f0 and sub_516884a5 > -1 / sub_c25430f0:
        revert with 'NH{q', 17
    return (sub_c25430f0 * sub_516884a5 / 100)
}

function emergencyWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor12)
    call stor12.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, userInfo[address(arg1)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit EmergencyWithdraw(userInfo[address(arg1)].field_0, arg1);
    userInfo[address(arg1)].field_0 = 0
    userInfo[address(arg1)].field_256 = 0
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if rewardEndBlock < arg2:
        if arg1 >= rewardEndBlock:
            return 0
        if arg1 > sub_87ae97b4:
            if arg1 >= sub_ef52471a:
                if rewardEndBlock < arg1:
                    revert with 'NH{q', 17
                return (rewardEndBlock - arg1)
            if rewardEndBlock <= sub_ef52471a:
                if rewardEndBlock < arg1:
                    revert with 'NH{q', 17
                if rewardEndBlock - arg1 and sub_516884a5 > -1 / rewardEndBlock - arg1:
                    revert with 'NH{q', 17
                return ((rewardEndBlock * sub_516884a5) - (arg1 * sub_516884a5) / 100)
            if rewardEndBlock < sub_ef52471a:
                revert with 'NH{q', 17
            if sub_ef52471a < arg1:
                revert with 'NH{q', 17
            if sub_ef52471a - arg1 and sub_516884a5 > -1 / sub_ef52471a - arg1:
                revert with 'NH{q', 17
            if (sub_ef52471a * sub_516884a5) - (arg1 * sub_516884a5) / 100 > -rewardEndBlock + sub_ef52471a - 1:
                revert with 'NH{q', 17
            return (((sub_ef52471a * sub_516884a5) - (arg1 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a)
        if rewardEndBlock <= sub_87ae97b4:
            if rewardEndBlock < arg1:
                revert with 'NH{q', 17
            if rewardEndBlock - arg1 and sub_2739f58c > -1 / rewardEndBlock - arg1:
                revert with 'NH{q', 17
            return ((rewardEndBlock * sub_2739f58c) - (arg1 * sub_2739f58c) / 100)
        if rewardEndBlock <= sub_ef52471a:
            if rewardEndBlock < sub_87ae97b4:
                revert with 'NH{q', 17
            if rewardEndBlock - sub_87ae97b4 and sub_516884a5 > -1 / rewardEndBlock - sub_87ae97b4:
                revert with 'NH{q', 17
            if sub_87ae97b4 < arg1:
                revert with 'NH{q', 17
            if sub_87ae97b4 - arg1 and sub_2739f58c > -1 / sub_87ae97b4 - arg1:
                revert with 'NH{q', 17
            if (sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) > (-1 * rewardEndBlock * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                revert with 'NH{q', 17
            return ((sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100)
        if rewardEndBlock < sub_ef52471a:
            revert with 'NH{q', 17
        if sub_ef52471a < sub_87ae97b4:
            revert with 'NH{q', 17
        if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
            revert with 'NH{q', 17
        if sub_87ae97b4 < arg1:
            revert with 'NH{q', 17
        if sub_87ae97b4 - arg1 and sub_2739f58c > -1 / sub_87ae97b4 - arg1:
            revert with 'NH{q', 17
        if (sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) > (-1 * sub_ef52471a * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
            revert with 'NH{q', 17
        if (sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > -rewardEndBlock + sub_ef52471a - 1:
            revert with 'NH{q', 17
        return (((sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a)
    if arg1 >= arg2:
        return 0
    if arg1 > sub_87ae97b4:
        if arg1 >= sub_ef52471a:
            if arg2 < arg1:
                revert with 'NH{q', 17
            return (arg2 - arg1)
        if arg2 <= sub_ef52471a:
            if arg2 < arg1:
                revert with 'NH{q', 17
            if arg2 - arg1 and sub_516884a5 > -1 / arg2 - arg1:
                revert with 'NH{q', 17
            return ((arg2 * sub_516884a5) - (arg1 * sub_516884a5) / 100)
        if arg2 < sub_ef52471a:
            revert with 'NH{q', 17
        if sub_ef52471a < arg1:
            revert with 'NH{q', 17
        if sub_ef52471a - arg1 and sub_516884a5 > -1 / sub_ef52471a - arg1:
            revert with 'NH{q', 17
        if (sub_ef52471a * sub_516884a5) - (arg1 * sub_516884a5) / 100 > -arg2 + sub_ef52471a - 1:
            revert with 'NH{q', 17
        return (((sub_ef52471a * sub_516884a5) - (arg1 * sub_516884a5) / 100) + arg2 - sub_ef52471a)
    if arg2 <= sub_87ae97b4:
        if arg2 < arg1:
            revert with 'NH{q', 17
        if arg2 - arg1 and sub_2739f58c > -1 / arg2 - arg1:
            revert with 'NH{q', 17
        return ((arg2 * sub_2739f58c) - (arg1 * sub_2739f58c) / 100)
    if arg2 <= sub_ef52471a:
        if arg2 < sub_87ae97b4:
            revert with 'NH{q', 17
        if arg2 - sub_87ae97b4 and sub_516884a5 > -1 / arg2 - sub_87ae97b4:
            revert with 'NH{q', 17
        if sub_87ae97b4 < arg1:
            revert with 'NH{q', 17
        if sub_87ae97b4 - arg1 and sub_2739f58c > -1 / sub_87ae97b4 - arg1:
            revert with 'NH{q', 17
        if (sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) > (-1 * arg2 * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
            revert with 'NH{q', 17
        return ((sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) + (arg2 * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100)
    if arg2 < sub_ef52471a:
        revert with 'NH{q', 17
    if sub_ef52471a < sub_87ae97b4:
        revert with 'NH{q', 17
    if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
        revert with 'NH{q', 17
    if sub_87ae97b4 < arg1:
        revert with 'NH{q', 17
    if sub_87ae97b4 - arg1 and sub_2739f58c > -1 / sub_87ae97b4 - arg1:
        revert with 'NH{q', 17
    if (sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) > (-1 * sub_ef52471a * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
        revert with 'NH{q', 17
    if (sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > -arg2 + sub_ef52471a - 1:
        revert with 'NH{q', 17
    return (((sub_87ae97b4 * sub_2739f58c) - (arg1 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + arg2 - sub_ef52471a)
}

function updatePool() payable {
    if block.number > stor13:
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if rewardEndBlock < block.number:
                if stor13 >= rewardEndBlock:
                    if False and sub_c25430f0 > 0:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if stor14 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    stor14 += 0 / ext_call.return_data[0]
                else:
                    if stor13 > sub_87ae97b4:
                        if stor13 >= sub_ef52471a:
                            if rewardEndBlock < stor13:
                                revert with 'NH{q', 17
                            if rewardEndBlock - stor13 and sub_c25430f0 > -1 / rewardEndBlock - stor13:
                                revert with 'NH{q', 17
                            if (rewardEndBlock * sub_c25430f0) - (stor13 * sub_c25430f0) and 10^12 > -1 / (rewardEndBlock * sub_c25430f0) - (stor13 * sub_c25430f0):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -((10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]
                        else:
                            if rewardEndBlock <= sub_ef52471a:
                                if rewardEndBlock < stor13:
                                    revert with 'NH{q', 17
                                if rewardEndBlock - stor13 and sub_516884a5 > -1 / rewardEndBlock - stor13:
                                    revert with 'NH{q', 17
                                if (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if rewardEndBlock < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < stor13:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - stor13 and sub_516884a5 > -1 / sub_ef52471a - stor13:
                                    revert with 'NH{q', 17
                                if (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 > -rewardEndBlock + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_c25430f0 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
                    else:
                        if rewardEndBlock <= sub_87ae97b4:
                            if rewardEndBlock < stor13:
                                revert with 'NH{q', 17
                            if rewardEndBlock - stor13 and sub_2739f58c > -1 / rewardEndBlock - stor13:
                                revert with 'NH{q', 17
                            if (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 and sub_c25430f0 > -1 / (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100:
                                revert with 'NH{q', 17
                            if (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 and 10^12 > -1 / (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -(10^12 * (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += 10^12 * (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]
                        else:
                            if rewardEndBlock <= sub_ef52471a:
                                if rewardEndBlock < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if rewardEndBlock - sub_87ae97b4 and sub_516884a5 > -1 / rewardEndBlock - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * rewardEndBlock * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if rewardEndBlock < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * sub_ef52471a * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > -rewardEndBlock + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_c25430f0 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
            else:
                if stor13 >= block.number:
                    if False and sub_c25430f0 > 0:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if stor14 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    stor14 += 0 / ext_call.return_data[0]
                else:
                    if stor13 > sub_87ae97b4:
                        if stor13 >= sub_ef52471a:
                            if block.number < stor13:
                                revert with 'NH{q', 17
                            if block.number - stor13 and sub_c25430f0 > -1 / block.number - stor13:
                                revert with 'NH{q', 17
                            if (block.number * sub_c25430f0) - (stor13 * sub_c25430f0) and 10^12 > -1 / (block.number * sub_c25430f0) - (stor13 * sub_c25430f0):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -((10^12 * block.number * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += (10^12 * block.number * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]
                        else:
                            if block.number <= sub_ef52471a:
                                if block.number < stor13:
                                    revert with 'NH{q', 17
                                if block.number - stor13 and sub_516884a5 > -1 / block.number - stor13:
                                    revert with 'NH{q', 17
                                if (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if block.number < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < stor13:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - stor13 and sub_516884a5 > -1 / sub_ef52471a - stor13:
                                    revert with 'NH{q', 17
                                if (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 > -block.number + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_c25430f0 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + block.number - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
                    else:
                        if block.number <= sub_87ae97b4:
                            if block.number < stor13:
                                revert with 'NH{q', 17
                            if block.number - stor13 and sub_2739f58c > -1 / block.number - stor13:
                                revert with 'NH{q', 17
                            if (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 and sub_c25430f0 > -1 / (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100:
                                revert with 'NH{q', 17
                            if (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 and 10^12 > -1 / (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -(10^12 * (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += 10^12 * (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]
                        else:
                            if block.number <= sub_ef52471a:
                                if block.number < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if block.number - sub_87ae97b4 and sub_516884a5 > -1 / block.number - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * block.number * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if block.number < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * sub_ef52471a * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > -block.number + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_c25430f0 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
        stor13 = block.number
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(stor12)
    if block.number > stor13:
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if rewardEndBlock < block.number:
                if stor13 >= rewardEndBlock:
                    if False and sub_c25430f0 > 0:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if stor14 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    stor14 += 0 / ext_call.return_data[0]
                else:
                    if stor13 > sub_87ae97b4:
                        if stor13 >= sub_ef52471a:
                            if rewardEndBlock < stor13:
                                revert with 'NH{q', 17
                            if rewardEndBlock - stor13 and sub_c25430f0 > -1 / rewardEndBlock - stor13:
                                revert with 'NH{q', 17
                            if (rewardEndBlock * sub_c25430f0) - (stor13 * sub_c25430f0) and 10^12 > -1 / (rewardEndBlock * sub_c25430f0) - (stor13 * sub_c25430f0):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -((10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]
                        else:
                            if rewardEndBlock <= sub_ef52471a:
                                if rewardEndBlock < stor13:
                                    revert with 'NH{q', 17
                                if rewardEndBlock - stor13 and sub_516884a5 > -1 / rewardEndBlock - stor13:
                                    revert with 'NH{q', 17
                                if (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if rewardEndBlock < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < stor13:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - stor13 and sub_516884a5 > -1 / sub_ef52471a - stor13:
                                    revert with 'NH{q', 17
                                if (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 > -rewardEndBlock + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_c25430f0 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
                    else:
                        if rewardEndBlock <= sub_87ae97b4:
                            if rewardEndBlock < stor13:
                                revert with 'NH{q', 17
                            if rewardEndBlock - stor13 and sub_2739f58c > -1 / rewardEndBlock - stor13:
                                revert with 'NH{q', 17
                            if (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 and sub_c25430f0 > -1 / (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100:
                                revert with 'NH{q', 17
                            if (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 and 10^12 > -1 / (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -(10^12 * (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += 10^12 * (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]
                        else:
                            if rewardEndBlock <= sub_ef52471a:
                                if rewardEndBlock < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if rewardEndBlock - sub_87ae97b4 and sub_516884a5 > -1 / rewardEndBlock - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * rewardEndBlock * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if rewardEndBlock < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * sub_ef52471a * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > -rewardEndBlock + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_c25430f0 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
            else:
                if stor13 >= block.number:
                    if False and sub_c25430f0 > 0:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if stor14 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    stor14 += 0 / ext_call.return_data[0]
                else:
                    if stor13 > sub_87ae97b4:
                        if stor13 >= sub_ef52471a:
                            if block.number < stor13:
                                revert with 'NH{q', 17
                            if block.number - stor13 and sub_c25430f0 > -1 / block.number - stor13:
                                revert with 'NH{q', 17
                            if (block.number * sub_c25430f0) - (stor13 * sub_c25430f0) and 10^12 > -1 / (block.number * sub_c25430f0) - (stor13 * sub_c25430f0):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -((10^12 * block.number * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += (10^12 * block.number * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]
                        else:
                            if block.number <= sub_ef52471a:
                                if block.number < stor13:
                                    revert with 'NH{q', 17
                                if block.number - stor13 and sub_516884a5 > -1 / block.number - stor13:
                                    revert with 'NH{q', 17
                                if (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if block.number < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < stor13:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - stor13 and sub_516884a5 > -1 / sub_ef52471a - stor13:
                                    revert with 'NH{q', 17
                                if (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 > -block.number + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_c25430f0 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + block.number - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
                    else:
                        if block.number <= sub_87ae97b4:
                            if block.number < stor13:
                                revert with 'NH{q', 17
                            if block.number - stor13 and sub_2739f58c > -1 / block.number - stor13:
                                revert with 'NH{q', 17
                            if (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 and sub_c25430f0 > -1 / (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100:
                                revert with 'NH{q', 17
                            if (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 and 10^12 > -1 / (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -(10^12 * (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += 10^12 * (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]
                        else:
                            if block.number <= sub_ef52471a:
                                if block.number < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if block.number - sub_87ae97b4 and sub_516884a5 > -1 / block.number - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * block.number * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if block.number < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * sub_ef52471a * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > -block.number + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_c25430f0 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
        stor13 = block.number
    call stor12.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if userInfo[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)].field_0 += arg1
    if not userInfo[address(msg.sender)].field_512:
        userInfo[address(msg.sender)].field_512 = block.timestamp
    userInfo[address(msg.sender)].field_768 = block.timestamp
    if arg1 and stor14 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 * stor14 / 10^12 > -userInfo[address(msg.sender)].field_256 - 1:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)].field_256 += arg1 * stor14 / 10^12
    emit Deposit(arg1, msg.sender);
    stor1 = 1
}

function harvest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 != msg.sender:
        revert with 0, 'Account not signer'
    if block.number > stor13:
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if rewardEndBlock < block.number:
                if stor13 >= rewardEndBlock:
                    if False and sub_c25430f0 > 0:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if stor14 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    stor14 += 0 / ext_call.return_data[0]
                else:
                    if stor13 > sub_87ae97b4:
                        if stor13 >= sub_ef52471a:
                            if rewardEndBlock < stor13:
                                revert with 'NH{q', 17
                            if rewardEndBlock - stor13 and sub_c25430f0 > -1 / rewardEndBlock - stor13:
                                revert with 'NH{q', 17
                            if (rewardEndBlock * sub_c25430f0) - (stor13 * sub_c25430f0) and 10^12 > -1 / (rewardEndBlock * sub_c25430f0) - (stor13 * sub_c25430f0):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -((10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]
                        else:
                            if rewardEndBlock <= sub_ef52471a:
                                if rewardEndBlock < stor13:
                                    revert with 'NH{q', 17
                                if rewardEndBlock - stor13 and sub_516884a5 > -1 / rewardEndBlock - stor13:
                                    revert with 'NH{q', 17
                                if (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if rewardEndBlock < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < stor13:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - stor13 and sub_516884a5 > -1 / sub_ef52471a - stor13:
                                    revert with 'NH{q', 17
                                if (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 > -rewardEndBlock + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_c25430f0 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
                    else:
                        if rewardEndBlock <= sub_87ae97b4:
                            if rewardEndBlock < stor13:
                                revert with 'NH{q', 17
                            if rewardEndBlock - stor13 and sub_2739f58c > -1 / rewardEndBlock - stor13:
                                revert with 'NH{q', 17
                            if (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 and sub_c25430f0 > -1 / (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100:
                                revert with 'NH{q', 17
                            if (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 and 10^12 > -1 / (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -(10^12 * (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += 10^12 * (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]
                        else:
                            if rewardEndBlock <= sub_ef52471a:
                                if rewardEndBlock < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if rewardEndBlock - sub_87ae97b4 and sub_516884a5 > -1 / rewardEndBlock - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * rewardEndBlock * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if rewardEndBlock < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * sub_ef52471a * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > -rewardEndBlock + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_c25430f0 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
            else:
                if stor13 >= block.number:
                    if False and sub_c25430f0 > 0:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if stor14 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    stor14 += 0 / ext_call.return_data[0]
                else:
                    if stor13 > sub_87ae97b4:
                        if stor13 >= sub_ef52471a:
                            if block.number < stor13:
                                revert with 'NH{q', 17
                            if block.number - stor13 and sub_c25430f0 > -1 / block.number - stor13:
                                revert with 'NH{q', 17
                            if (block.number * sub_c25430f0) - (stor13 * sub_c25430f0) and 10^12 > -1 / (block.number * sub_c25430f0) - (stor13 * sub_c25430f0):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -((10^12 * block.number * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += (10^12 * block.number * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]
                        else:
                            if block.number <= sub_ef52471a:
                                if block.number < stor13:
                                    revert with 'NH{q', 17
                                if block.number - stor13 and sub_516884a5 > -1 / block.number - stor13:
                                    revert with 'NH{q', 17
                                if (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if block.number < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < stor13:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - stor13 and sub_516884a5 > -1 / sub_ef52471a - stor13:
                                    revert with 'NH{q', 17
                                if (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 > -block.number + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_c25430f0 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + block.number - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
                    else:
                        if block.number <= sub_87ae97b4:
                            if block.number < stor13:
                                revert with 'NH{q', 17
                            if block.number - stor13 and sub_2739f58c > -1 / block.number - stor13:
                                revert with 'NH{q', 17
                            if (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 and sub_c25430f0 > -1 / (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100:
                                revert with 'NH{q', 17
                            if (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 and 10^12 > -1 / (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -(10^12 * (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += 10^12 * (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]
                        else:
                            if block.number <= sub_ef52471a:
                                if block.number < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if block.number - sub_87ae97b4 and sub_516884a5 > -1 / block.number - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * block.number * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if block.number < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * sub_ef52471a * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > -block.number + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_c25430f0 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
        stor13 = block.number
    if userInfo[address(arg1)].field_0 and stor14 > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 * stor14 / 10^12 < userInfo[address(arg1)].field_256:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 and stor14 > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    userInfo[address(arg1)].field_256 = userInfo[address(arg1)].field_0 * stor14 / 10^12
    if (userInfo[address(arg1)].field_0 * stor14 / 10^12) - userInfo[address(arg1)].field_256 <= 0:
        revert with 0, 'Nothing to claim'
    require ext_code.size(conAddress)
    staticcall conAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(conAddress)
    if (userInfo[address(arg1)].field_0 * stor14 / 10^12) - userInfo[address(arg1)].field_256 <= ext_call.return_data[0]:
        call conAddress.0x23b872dd with:
             gas gas_remaining wei
            args rewardsPoolAddress, address(arg1), (userInfo[address(arg1)].field_0 * stor14 / 10^12) - userInfo[address(arg1)].field_256
    else:
        call conAddress.0x23b872dd with:
             gas gas_remaining wei
            args rewardsPoolAddress, address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Harvest(((userInfo[address(arg1)].field_0 * stor14 / 10^12) - userInfo[address(arg1)].field_256), arg1);
    stor1 = 1
}

function sub_7d6d037d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_91ca295cAddress != msg.sender:
        revert with 0, 'Must be Node Purchaser'
    if arg2 <= 0:
        revert with 0, 'amount 0'
    if userInfo[address(arg1)].field_0 < arg2:
        revert with 0, 'withdraw: not good'
    if block.number > stor13:
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if rewardEndBlock < block.number:
                if stor13 >= rewardEndBlock:
                    if False and sub_c25430f0 > 0:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if stor14 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    stor14 += 0 / ext_call.return_data[0]
                else:
                    if stor13 > sub_87ae97b4:
                        if stor13 >= sub_ef52471a:
                            if rewardEndBlock < stor13:
                                revert with 'NH{q', 17
                            if rewardEndBlock - stor13 and sub_c25430f0 > -1 / rewardEndBlock - stor13:
                                revert with 'NH{q', 17
                            if (rewardEndBlock * sub_c25430f0) - (stor13 * sub_c25430f0) and 10^12 > -1 / (rewardEndBlock * sub_c25430f0) - (stor13 * sub_c25430f0):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -((10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]
                        else:
                            if rewardEndBlock <= sub_ef52471a:
                                if rewardEndBlock < stor13:
                                    revert with 'NH{q', 17
                                if rewardEndBlock - stor13 and sub_516884a5 > -1 / rewardEndBlock - stor13:
                                    revert with 'NH{q', 17
                                if (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if rewardEndBlock < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < stor13:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - stor13 and sub_516884a5 > -1 / sub_ef52471a - stor13:
                                    revert with 'NH{q', 17
                                if (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 > -rewardEndBlock + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_c25430f0 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
                    else:
                        if rewardEndBlock <= sub_87ae97b4:
                            if rewardEndBlock < stor13:
                                revert with 'NH{q', 17
                            if rewardEndBlock - stor13 and sub_2739f58c > -1 / rewardEndBlock - stor13:
                                revert with 'NH{q', 17
                            if (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 and sub_c25430f0 > -1 / (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100:
                                revert with 'NH{q', 17
                            if (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 and 10^12 > -1 / (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -(10^12 * (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += 10^12 * (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]
                        else:
                            if rewardEndBlock <= sub_ef52471a:
                                if rewardEndBlock < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if rewardEndBlock - sub_87ae97b4 and sub_516884a5 > -1 / rewardEndBlock - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * rewardEndBlock * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if rewardEndBlock < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * sub_ef52471a * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > -rewardEndBlock + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_c25430f0 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
            else:
                if stor13 >= block.number:
                    if False and sub_c25430f0 > 0:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if stor14 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    stor14 += 0 / ext_call.return_data[0]
                else:
                    if stor13 > sub_87ae97b4:
                        if stor13 >= sub_ef52471a:
                            if block.number < stor13:
                                revert with 'NH{q', 17
                            if block.number - stor13 and sub_c25430f0 > -1 / block.number - stor13:
                                revert with 'NH{q', 17
                            if (block.number * sub_c25430f0) - (stor13 * sub_c25430f0) and 10^12 > -1 / (block.number * sub_c25430f0) - (stor13 * sub_c25430f0):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -((10^12 * block.number * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += (10^12 * block.number * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]
                        else:
                            if block.number <= sub_ef52471a:
                                if block.number < stor13:
                                    revert with 'NH{q', 17
                                if block.number - stor13 and sub_516884a5 > -1 / block.number - stor13:
                                    revert with 'NH{q', 17
                                if (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if block.number < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < stor13:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - stor13 and sub_516884a5 > -1 / sub_ef52471a - stor13:
                                    revert with 'NH{q', 17
                                if (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 > -block.number + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_c25430f0 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + block.number - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
                    else:
                        if block.number <= sub_87ae97b4:
                            if block.number < stor13:
                                revert with 'NH{q', 17
                            if block.number - stor13 and sub_2739f58c > -1 / block.number - stor13:
                                revert with 'NH{q', 17
                            if (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 and sub_c25430f0 > -1 / (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100:
                                revert with 'NH{q', 17
                            if (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 and 10^12 > -1 / (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -(10^12 * (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += 10^12 * (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]
                        else:
                            if block.number <= sub_ef52471a:
                                if block.number < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if block.number - sub_87ae97b4 and sub_516884a5 > -1 / block.number - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * block.number * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if block.number < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * sub_ef52471a * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > -block.number + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_c25430f0 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
        stor13 = block.number
    if userInfo[address(arg1)].field_0 and stor14 > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 * stor14 / 10^12 < userInfo[address(arg1)].field_256:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 and stor14 > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    userInfo[address(arg1)].field_256 = userInfo[address(arg1)].field_0 * stor14 / 10^12
    if (userInfo[address(arg1)].field_0 * stor14 / 10^12) - userInfo[address(arg1)].field_256 > 0:
        require ext_code.size(conAddress)
        staticcall conAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(conAddress)
        if (userInfo[address(arg1)].field_0 * stor14 / 10^12) - userInfo[address(arg1)].field_256 <= ext_call.return_data[0]:
            call conAddress.0x23b872dd with:
                 gas gas_remaining wei
                args rewardsPoolAddress, address(arg1), (userInfo[address(arg1)].field_0 * stor14 / 10^12) - userInfo[address(arg1)].field_256
        else:
            call conAddress.0x23b872dd with:
                 gas gas_remaining wei
                args rewardsPoolAddress, address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if userInfo[address(arg1)].field_0 < arg2:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 - arg2 and stor14 > -1 / userInfo[address(arg1)].field_0 - arg2:
        revert with 'NH{q', 17
    userInfo[address(arg1)].field_256 = (userInfo[address(arg1)].field_0 * stor14) - (arg2 * stor14) / 10^12
    if userInfo[address(arg1)].field_0 < arg2:
        revert with 'NH{q', 17
    userInfo[address(arg1)].field_0 -= arg2
    require ext_code.size(stor12)
    call stor12.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Withdraw(arg2, address(arg1));
    stor1 = 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 <= 0:
        revert with 0, 'amount 0'
    if userInfo[address(msg.sender)].field_0 < arg1:
        revert with 0, 'withdraw: not good'
    if block.number > stor13:
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if rewardEndBlock < block.number:
                if stor13 >= rewardEndBlock:
                    if False and sub_c25430f0 > 0:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if stor14 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    stor14 += 0 / ext_call.return_data[0]
                else:
                    if stor13 > sub_87ae97b4:
                        if stor13 >= sub_ef52471a:
                            if rewardEndBlock < stor13:
                                revert with 'NH{q', 17
                            if rewardEndBlock - stor13 and sub_c25430f0 > -1 / rewardEndBlock - stor13:
                                revert with 'NH{q', 17
                            if (rewardEndBlock * sub_c25430f0) - (stor13 * sub_c25430f0) and 10^12 > -1 / (rewardEndBlock * sub_c25430f0) - (stor13 * sub_c25430f0):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -((10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]
                        else:
                            if rewardEndBlock <= sub_ef52471a:
                                if rewardEndBlock < stor13:
                                    revert with 'NH{q', 17
                                if rewardEndBlock - stor13 and sub_516884a5 > -1 / rewardEndBlock - stor13:
                                    revert with 'NH{q', 17
                                if (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if rewardEndBlock < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < stor13:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - stor13 and sub_516884a5 > -1 / sub_ef52471a - stor13:
                                    revert with 'NH{q', 17
                                if (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 > -rewardEndBlock + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_c25430f0 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
                    else:
                        if rewardEndBlock <= sub_87ae97b4:
                            if rewardEndBlock < stor13:
                                revert with 'NH{q', 17
                            if rewardEndBlock - stor13 and sub_2739f58c > -1 / rewardEndBlock - stor13:
                                revert with 'NH{q', 17
                            if (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 and sub_c25430f0 > -1 / (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100:
                                revert with 'NH{q', 17
                            if (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 and 10^12 > -1 / (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -(10^12 * (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += 10^12 * (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]
                        else:
                            if rewardEndBlock <= sub_ef52471a:
                                if rewardEndBlock < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if rewardEndBlock - sub_87ae97b4 and sub_516884a5 > -1 / rewardEndBlock - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * rewardEndBlock * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if rewardEndBlock < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * sub_ef52471a * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > -rewardEndBlock + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_c25430f0 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
            else:
                if stor13 >= block.number:
                    if False and sub_c25430f0 > 0:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if stor14 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    stor14 += 0 / ext_call.return_data[0]
                else:
                    if stor13 > sub_87ae97b4:
                        if stor13 >= sub_ef52471a:
                            if block.number < stor13:
                                revert with 'NH{q', 17
                            if block.number - stor13 and sub_c25430f0 > -1 / block.number - stor13:
                                revert with 'NH{q', 17
                            if (block.number * sub_c25430f0) - (stor13 * sub_c25430f0) and 10^12 > -1 / (block.number * sub_c25430f0) - (stor13 * sub_c25430f0):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -((10^12 * block.number * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += (10^12 * block.number * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]
                        else:
                            if block.number <= sub_ef52471a:
                                if block.number < stor13:
                                    revert with 'NH{q', 17
                                if block.number - stor13 and sub_516884a5 > -1 / block.number - stor13:
                                    revert with 'NH{q', 17
                                if (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if block.number < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < stor13:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - stor13 and sub_516884a5 > -1 / sub_ef52471a - stor13:
                                    revert with 'NH{q', 17
                                if (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 > -block.number + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_c25430f0 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + block.number - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
                    else:
                        if block.number <= sub_87ae97b4:
                            if block.number < stor13:
                                revert with 'NH{q', 17
                            if block.number - stor13 and sub_2739f58c > -1 / block.number - stor13:
                                revert with 'NH{q', 17
                            if (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 and sub_c25430f0 > -1 / (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100:
                                revert with 'NH{q', 17
                            if (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 and 10^12 > -1 / (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor14 > -(10^12 * (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            stor14 += 10^12 * (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]
                        else:
                            if block.number <= sub_ef52471a:
                                if block.number < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if block.number - sub_87ae97b4 and sub_516884a5 > -1 / block.number - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * block.number * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += 10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]
                            else:
                                if block.number < sub_ef52471a:
                                    revert with 'NH{q', 17
                                if sub_ef52471a < sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 < stor13:
                                    revert with 'NH{q', 17
                                if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * sub_ef52471a * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                                    revert with 'NH{q', 17
                                if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > -block.number + sub_ef52471a - 1:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_c25430f0 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a:
                                    revert with 'NH{q', 17
                                if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if stor14 > -((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                stor14 += (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]
        stor13 = block.number
    if userInfo[address(msg.sender)].field_0 and stor14 > -1 / userInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if userInfo[address(msg.sender)].field_0 * stor14 / 10^12 < userInfo[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if userInfo[address(msg.sender)].field_0 and stor14 > -1 / userInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor14 / 10^12
    if (userInfo[address(msg.sender)].field_0 * stor14 / 10^12) - userInfo[address(msg.sender)].field_256 > 0:
        require ext_code.size(conAddress)
        staticcall conAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(conAddress)
        if (userInfo[address(msg.sender)].field_0 * stor14 / 10^12) - userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
            call conAddress.0x23b872dd with:
                 gas gas_remaining wei
                args rewardsPoolAddress, msg.sender, (userInfo[address(msg.sender)].field_0 * stor14 / 10^12) - userInfo[address(msg.sender)].field_256
        else:
            call conAddress.0x23b872dd with:
                 gas gas_remaining wei
                args rewardsPoolAddress, msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if userInfo[address(msg.sender)].field_0 < arg1:
        revert with 'NH{q', 17
    if userInfo[address(msg.sender)].field_0 - arg1 and stor14 > -1 / userInfo[address(msg.sender)].field_0 - arg1:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)].field_256 = (userInfo[address(msg.sender)].field_0 * stor14) - (arg1 * stor14) / 10^12
    if userInfo[address(msg.sender)].field_0 < arg1:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)].field_0 -= arg1
    require ext_code.size(stor12)
    call stor12.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Withdraw(arg1, msg.sender);
    stor1 = 1
}

function pendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.number <= stor13:
        if userInfo[address(arg1)].field_0 and stor14 > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * stor14 / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * stor14 / 10^12) - userInfo[address(arg1)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[address(arg1)].field_0 and stor14 > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * stor14 / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * stor14 / 10^12) - userInfo[address(arg1)].field_256)
    if rewardEndBlock < block.number:
        if stor13 >= rewardEndBlock:
            if False and sub_c25430f0 > 0:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if stor14 > -(0 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if userInfo[address(arg1)].field_0 and stor14 + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if (stor14 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((stor14 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if stor13 > sub_87ae97b4:
            if stor13 >= sub_ef52471a:
                if rewardEndBlock < stor13:
                    revert with 'NH{q', 17
                if rewardEndBlock - stor13 and sub_c25430f0 > -1 / rewardEndBlock - stor13:
                    revert with 'NH{q', 17
                if (rewardEndBlock * sub_c25430f0) - (stor13 * sub_c25430f0) and 10^12 > -1 / (rewardEndBlock * sub_c25430f0) - (stor13 * sub_c25430f0):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if stor14 > -((10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if userInfo[address(arg1)].field_0 and stor14 + ((10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if (stor14 * userInfo[address(arg1)].field_0) + ((10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return (((stor14 * userInfo[address(arg1)].field_0) + ((10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
            if rewardEndBlock <= sub_ef52471a:
                if rewardEndBlock < stor13:
                    revert with 'NH{q', 17
                if rewardEndBlock - stor13 and sub_516884a5 > -1 / rewardEndBlock - stor13:
                    revert with 'NH{q', 17
                if (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100:
                    revert with 'NH{q', 17
                if (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if stor14 > -(10^12 * (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if userInfo[address(arg1)].field_0 and stor14 + (10^12 * (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if (stor14 * userInfo[address(arg1)].field_0) + (10^12 * (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                    revert with 'NH{q', 17
                return (((stor14 * userInfo[address(arg1)].field_0) + (10^12 * (rewardEndBlock * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
            if rewardEndBlock < sub_ef52471a:
                revert with 'NH{q', 17
            if sub_ef52471a < stor13:
                revert with 'NH{q', 17
            if sub_ef52471a - stor13 and sub_516884a5 > -1 / sub_ef52471a - stor13:
                revert with 'NH{q', 17
            if (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 > -rewardEndBlock + sub_ef52471a - 1:
                revert with 'NH{q', 17
            if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_c25430f0 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
                revert with 'NH{q', 17
            if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if stor14 > -((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if userInfo[address(arg1)].field_0 and stor14 + ((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if (stor14 * userInfo[address(arg1)].field_0) + ((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((stor14 * userInfo[address(arg1)].field_0) + ((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if rewardEndBlock <= sub_87ae97b4:
            if rewardEndBlock < stor13:
                revert with 'NH{q', 17
            if rewardEndBlock - stor13 and sub_2739f58c > -1 / rewardEndBlock - stor13:
                revert with 'NH{q', 17
            if (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 and sub_c25430f0 > -1 / (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100:
                revert with 'NH{q', 17
            if (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 and 10^12 > -1 / (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if stor14 > -(10^12 * (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if userInfo[address(arg1)].field_0 and stor14 + (10^12 * (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if (stor14 * userInfo[address(arg1)].field_0) + (10^12 * (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((stor14 * userInfo[address(arg1)].field_0) + (10^12 * (rewardEndBlock * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if rewardEndBlock <= sub_ef52471a:
            if rewardEndBlock < sub_87ae97b4:
                revert with 'NH{q', 17
            if rewardEndBlock - sub_87ae97b4 and sub_516884a5 > -1 / rewardEndBlock - sub_87ae97b4:
                revert with 'NH{q', 17
            if sub_87ae97b4 < stor13:
                revert with 'NH{q', 17
            if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
                revert with 'NH{q', 17
            if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * rewardEndBlock * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
                revert with 'NH{q', 17
            if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
                revert with 'NH{q', 17
            if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if stor14 > -(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if userInfo[address(arg1)].field_0 and stor14 + (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if (stor14 * userInfo[address(arg1)].field_0) + (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((stor14 * userInfo[address(arg1)].field_0) + (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (rewardEndBlock * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if rewardEndBlock < sub_ef52471a:
            revert with 'NH{q', 17
        if sub_ef52471a < sub_87ae97b4:
            revert with 'NH{q', 17
        if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
            revert with 'NH{q', 17
        if sub_87ae97b4 < stor13:
            revert with 'NH{q', 17
        if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
            revert with 'NH{q', 17
        if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * sub_ef52471a * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
            revert with 'NH{q', 17
        if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > -rewardEndBlock + sub_ef52471a - 1:
            revert with 'NH{q', 17
        if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a and sub_c25430f0 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + rewardEndBlock - sub_ef52471a:
            revert with 'NH{q', 17
        if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (rewardEndBlock * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if stor14 > -((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and stor14 + ((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (stor14 * userInfo[address(arg1)].field_0) + ((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((stor14 * userInfo[address(arg1)].field_0) + ((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * rewardEndBlock * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if stor13 >= block.number:
        if False and sub_c25430f0 > 0:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if stor14 > -(0 / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and stor14 + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (stor14 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((stor14 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if stor13 > sub_87ae97b4:
        if stor13 >= sub_ef52471a:
            if block.number < stor13:
                revert with 'NH{q', 17
            if block.number - stor13 and sub_c25430f0 > -1 / block.number - stor13:
                revert with 'NH{q', 17
            if (block.number * sub_c25430f0) - (stor13 * sub_c25430f0) and 10^12 > -1 / (block.number * sub_c25430f0) - (stor13 * sub_c25430f0):
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if stor14 > -((10^12 * block.number * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if userInfo[address(arg1)].field_0 and stor14 + ((10^12 * block.number * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if (stor14 * userInfo[address(arg1)].field_0) + ((10^12 * block.number * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((stor14 * userInfo[address(arg1)].field_0) + ((10^12 * block.number * sub_c25430f0) - (10^12 * stor13 * sub_c25430f0) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if block.number <= sub_ef52471a:
            if block.number < stor13:
                revert with 'NH{q', 17
            if block.number - stor13 and sub_516884a5 > -1 / block.number - stor13:
                revert with 'NH{q', 17
            if (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100:
                revert with 'NH{q', 17
            if (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if stor14 > -(10^12 * (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if userInfo[address(arg1)].field_0 and stor14 + (10^12 * (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if (stor14 * userInfo[address(arg1)].field_0) + (10^12 * (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((stor14 * userInfo[address(arg1)].field_0) + (10^12 * (block.number * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if block.number < sub_ef52471a:
            revert with 'NH{q', 17
        if sub_ef52471a < stor13:
            revert with 'NH{q', 17
        if sub_ef52471a - stor13 and sub_516884a5 > -1 / sub_ef52471a - stor13:
            revert with 'NH{q', 17
        if (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 > -block.number + sub_ef52471a - 1:
            revert with 'NH{q', 17
        if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_c25430f0 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100) + block.number - sub_ef52471a:
            revert with 'NH{q', 17
        if ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if stor14 > -((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and stor14 + ((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (stor14 * userInfo[address(arg1)].field_0) + ((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((stor14 * userInfo[address(arg1)].field_0) + ((10^12 * (sub_ef52471a * sub_516884a5) - (stor13 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if block.number <= sub_87ae97b4:
        if block.number < stor13:
            revert with 'NH{q', 17
        if block.number - stor13 and sub_2739f58c > -1 / block.number - stor13:
            revert with 'NH{q', 17
        if (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 and sub_c25430f0 > -1 / (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100:
            revert with 'NH{q', 17
        if (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 and 10^12 > -1 / (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if stor14 > -(10^12 * (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and stor14 + (10^12 * (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (stor14 * userInfo[address(arg1)].field_0) + (10^12 * (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((stor14 * userInfo[address(arg1)].field_0) + (10^12 * (block.number * sub_2739f58c) - (stor13 * sub_2739f58c) / 100 * sub_c25430f0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if block.number <= sub_ef52471a:
        if block.number < sub_87ae97b4:
            revert with 'NH{q', 17
        if block.number - sub_87ae97b4 and sub_516884a5 > -1 / block.number - sub_87ae97b4:
            revert with 'NH{q', 17
        if sub_87ae97b4 < stor13:
            revert with 'NH{q', 17
        if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
            revert with 'NH{q', 17
        if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * block.number * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
            revert with 'NH{q', 17
        if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 and sub_c25430f0 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100:
            revert with 'NH{q', 17
        if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 and 10^12 > -1 / (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if stor14 > -(10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and stor14 + (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (stor14 * userInfo[address(arg1)].field_0) + (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((stor14 * userInfo[address(arg1)].field_0) + (10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (block.number * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if block.number < sub_ef52471a:
        revert with 'NH{q', 17
    if sub_ef52471a < sub_87ae97b4:
        revert with 'NH{q', 17
    if sub_ef52471a - sub_87ae97b4 and sub_516884a5 > -1 / sub_ef52471a - sub_87ae97b4:
        revert with 'NH{q', 17
    if sub_87ae97b4 < stor13:
        revert with 'NH{q', 17
    if sub_87ae97b4 - stor13 and sub_2739f58c > -1 / sub_87ae97b4 - stor13:
        revert with 'NH{q', 17
    if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) > (-1 * sub_ef52471a * sub_516884a5) + (sub_87ae97b4 * sub_516884a5) - 1:
        revert with 'NH{q', 17
    if (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 > -block.number + sub_ef52471a - 1:
        revert with 'NH{q', 17
    if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a and sub_c25430f0 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100) + block.number - sub_ef52471a:
        revert with 'NH{q', 17
    if ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0) and 10^12 > -1 / ((sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (block.number * sub_c25430f0) - (sub_ef52471a * sub_c25430f0):
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if stor14 > -((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 and stor14 + ((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if (stor14 * userInfo[address(arg1)].field_0) + ((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
        revert with 'NH{q', 17
    return (((stor14 * userInfo[address(arg1)].field_0) + ((10^12 * (sub_87ae97b4 * sub_2739f58c) - (stor13 * sub_2739f58c) + (sub_ef52471a * sub_516884a5) - (sub_87ae97b4 * sub_516884a5) / 100 * sub_c25430f0) + (10^12 * block.number * sub_c25430f0) - (10^12 * sub_ef52471a * sub_c25430f0) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
}



}
