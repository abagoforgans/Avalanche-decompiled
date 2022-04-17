contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
address sub_ffe6e7d7Address;
address sub_0457dad2Address;
address claimRewardAddress;
mapping of uint256 sub_1c77a1e5;
mapping of uint256 sub_1e512726;
mapping of uint256 sub_ed57fa6f;
mapping of uint256 sub_917e1dbd;
mapping of uint256 sub_cb14ca65;
uint256 sub_0b72d086;
uint256 sub_08978c2b;
uint256 sub_0f50dbeb;
mapping of uint256 sub_dccc37b6;
mapping of uint256 sub_c80ceebe;
mapping of uint256 sub_0d8ac3c5;
address sub_a64fb0a6Address;
uint256 stor8FA6;

function sub_0457dad2(?) {
    return sub_0457dad2Address
}

function sub_08978c2b(?) {
    return sub_08978c2b
}

function sub_0b72d086(?) {
    return sub_0b72d086
}

function sub_0d8ac3c5(?) {
    require calldata.size - 4 >= 32
    return sub_0d8ac3c5[arg1]
}

function sub_0f50dbeb(?) {
    return sub_0f50dbeb
}

function sub_1c77a1e5(?) {
    require calldata.size - 4 >= 32
    return sub_1c77a1e5[arg1]
}

function sub_1e512726(?) {
    require calldata.size - 4 >= 64
    return sub_1e512726[arg1][arg2]
}

function owner() {
    return owner
}

function sub_917e1dbd(?) {
    require calldata.size - 4 >= 32
    return sub_917e1dbd[arg1]
}

function sub_a64fb0a6(?) {
    return sub_a64fb0a6Address
}

function claimReward() {
    return claimRewardAddress
}

function sub_c80ceebe(?) {
    require calldata.size - 4 >= 32
    return sub_c80ceebe[arg1]
}

function sub_cb14ca65(?) {
    require calldata.size - 4 >= 32
    return sub_cb14ca65[arg1]
}

function sub_dccc37b6(?) {
    require calldata.size - 4 >= 32
    return sub_dccc37b6[arg1]
}

function sub_ed57fa6f(?) {
    require calldata.size - 4 >= 64
    return sub_ed57fa6f[arg1][arg2]
}

function sub_ffe6e7d7(?) {
    return sub_ffe6e7d7Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setup(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'S:1'
    if not arg2:
        revert with 0, 'S:2'
    if not arg3:
        revert with 0, 'S:3'
    if not arg4:
        revert with 0, 'S:4'
    sub_ffe6e7d7Address = arg1
    sub_a64fb0a6Address = arg2
    sub_0457dad2Address = arg3
    claimRewardAddress = arg4
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setLatestVoteTimestamp(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    sub_917e1dbd[address(arg1)] = arg2
}

function getOverviewPriorNumOfAssessorAndVotes(uint256 arg1) {
    require calldata.size - 4 >= 32
    if 0 == sub_0f50dbeb:
        return sub_08978c2b, sub_0b72d086
    if arg1 >= sub_dccc37b6[stor161 - 1]:
        return sub_c80ceebe[stor161 - 1], sub_0d8ac3c5[stor161 - 1]
    if arg1 < stor8FA6:
        return 0
    idx = 0
    while sub_0f50dbeb - 1 > idx:
        mem[0] = sub_0f50dbeb + -(sub_0f50dbeb + -idx - 1 / 2) - 1
        mem[32] = 162
        if sub_dccc37b6[stor161 + -(0.5 / stor161 + -idx - 1) - 1] == arg1:
            return sub_c80ceebe[stor161 + -(0.5 / stor161 + -idx - 1) - 1], sub_0d8ac3c5[stor161 + -(0.5 / stor161 + -idx - 1) - 1]
        if sub_dccc37b6[stor161 + -(0.5 / stor161 + -idx - 1) - 1] >= arg1:
            idx = idx
            continue 
        idx = sub_0f50dbeb + -(sub_0f50dbeb + -idx - 1 / 2) - 1
        continue 
    return sub_c80ceebe[idx], sub_0d8ac3c5[idx]
}

function getAssessorPriorNumOfVotes(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not sub_1c77a1e5[address(arg1)]:
        return 0
    if arg2 >= sub_1e512726[address(arg1)][stor154[address(arg1)] - 1]:
        return sub_ed57fa6f[address(arg1)][stor154[address(arg1)] - 1]
    if arg2 < sub_1e512726[address(arg1)][0]:
        return 0
    idx = 0
    while sub_1c77a1e5[address(arg1)] - 1 > idx:
        mem[0] = sub_1c77a1e5[address(arg1)] + -(sub_1c77a1e5[address(arg1)] + -idx - 1 / 2) - 1
        mem[32] = sha3(address(arg1), 155)
        if sub_1e512726[address(arg1)][stor154[address(arg1)] + -(0.5 / stor154[address(arg1)] + -idx - 1) - 1] == arg2:
            return sub_ed57fa6f[address(arg1)][stor154[address(arg1)] + -(0.5 / stor154[address(arg1)] + -idx - 1) - 1]
        if sub_1e512726[address(arg1)][stor154[address(arg1)] + -(0.5 / stor154[address(arg1)] + -idx - 1) - 1] >= arg2:
            idx = idx
            continue 
        idx = sub_1c77a1e5[address(arg1)] + -(sub_1c77a1e5[address(arg1)] + -idx - 1 / 2) - 1
        continue 
    return sub_ed57fa6f[address(arg1)][idx]
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor101 = 1
        sub_0b72d086 = 0
        sub_08978c2b = 0
        sub_0f50dbeb = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            stor101 = 1
            sub_0b72d086 = 0
            sub_08978c2b = 0
            sub_0f50dbeb = 0
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                stor101 = 1
                sub_0b72d086 = 0
                sub_08978c2b = 0
                sub_0f50dbeb = 0
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    stor101 = 1
                    sub_0b72d086 = 0
                    sub_08978c2b = 0
                    sub_0f50dbeb = 0
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        stor101 = 1
                        sub_0b72d086 = 0
                        sub_08978c2b = 0
                        sub_0f50dbeb = 0
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor101 = 1
                            sub_0b72d086 = 0
                            sub_08978c2b = 0
                            sub_0f50dbeb = 0
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                stor101 = 1
                                sub_0b72d086 = 0
                                sub_08978c2b = 0
                                sub_0f50dbeb = 0
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor101 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                sub_0b72d086 = 0
                                sub_08978c2b = 0
                                sub_0f50dbeb = 0
                                uint8(stor0.field_8) = 0
}

function stake(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if sub_a64fb0a6Address != arg1:
        revert with 0, 'STK: 1'
    if arg2 <= 0:
        revert with 0, 'STK: 2'
    require ext_code.size(claimRewardAddress)
    call claimRewardAddress.0x3bf24384 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if not msg.sender:
        revert with 0, 'IV: 1'
    if arg2 <= 0:
        revert with 0, 'IV: 2'
    if not sub_cb14ca65[address(msg.sender)]:
        if sub_08978c2b + 1 < sub_08978c2b:
            revert with 0, 'SafeMath: addition overflow'
        sub_08978c2b++
    if arg2 + sub_0b72d086 < sub_0b72d086:
        revert with 0, 'SafeMath: addition overflow'
    sub_0b72d086 += arg2
    if arg2 + sub_cb14ca65[address(msg.sender)] < sub_cb14ca65[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_cb14ca65[address(msg.sender)] += arg2
    if msg.sender != 0:
        if arg2 > 0:
            if msg.sender:
                if sub_1c77a1e5[address(msg.sender)]:
                    if arg2 + sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)] - 1] < sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)] - 1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_1c77a1e5[address(msg.sender)] <= 0:
                        sub_1e512726[address(msg.sender)][stor154[address(msg.sender)]] = block.number
                        sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)]] = arg2 + sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)] - 1]
                        if sub_1c77a1e5[address(msg.sender)] + 1 < sub_1c77a1e5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_1c77a1e5[address(msg.sender)]++
                    else:
                        if block.number == sub_1e512726[address(msg.sender)][stor154[address(msg.sender)] - 1]:
                            sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)] - 1] += arg2
                        else:
                            sub_1e512726[address(msg.sender)][stor154[address(msg.sender)]] = block.number
                            sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)]] = arg2 + sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)] - 1]
                            if sub_1c77a1e5[address(msg.sender)] + 1 < sub_1c77a1e5[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_1c77a1e5[address(msg.sender)]++
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_1c77a1e5[address(msg.sender)] <= 0:
                        sub_1e512726[address(msg.sender)][stor154[address(msg.sender)]] = block.number
                        sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)]] = arg2
                        if sub_1c77a1e5[address(msg.sender)] + 1 < sub_1c77a1e5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_1c77a1e5[address(msg.sender)]++
                    else:
                        if block.number == sub_1e512726[address(msg.sender)][stor154[address(msg.sender)] - 1]:
                            sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)] - 1] = arg2
                        else:
                            sub_1e512726[address(msg.sender)][stor154[address(msg.sender)]] = block.number
                            sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)]] = arg2
                            if sub_1c77a1e5[address(msg.sender)] + 1 < sub_1c77a1e5[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_1c77a1e5[address(msg.sender)]++
    if sub_0f50dbeb <= 0:
        sub_dccc37b6[stor161] = block.number
        sub_c80ceebe[stor161] = sub_08978c2b
        sub_0d8ac3c5[stor161] = sub_0b72d086
        if sub_0f50dbeb + 1 < sub_0f50dbeb:
            revert with 0, 'SafeMath: addition overflow'
        sub_0f50dbeb++
    else:
        if block.number == sub_dccc37b6[stor161 - 1]:
            sub_c80ceebe[stor161 - 1] = sub_08978c2b
            sub_0d8ac3c5[stor161 - 1] = sub_0b72d086
        else:
            sub_dccc37b6[stor161] = block.number
            sub_c80ceebe[stor161] = sub_08978c2b
            sub_0d8ac3c5[stor161] = sub_0b72d086
            if sub_0f50dbeb + 1 < sub_0f50dbeb:
                revert with 0, 'SafeMath: addition overflow'
            sub_0f50dbeb++
    emit AssessorStakeEvent(arg2, msg.sender);
    stor101 = 1
}

function unstake(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if sub_a64fb0a6Address != arg1:
        revert with 0, 'USTK: 1'
    require ext_code.size(claimRewardAddress)
    call claimRewardAddress.0x3bf24384 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_917e1dbd[address(msg.sender)]:
        require ext_code.size(sub_0457dad2Address)
        staticcall sub_0457dad2Address.0xc8343fca with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + sub_917e1dbd[address(msg.sender)] < sub_917e1dbd[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp <= ext_call.return_data[0] + sub_917e1dbd[address(msg.sender)]:
            revert with 0, 'USTK: 2'
    if arg2 > sub_cb14ca65[address(msg.sender)]:
        revert with 0, 'USTK: 3'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'USTK: 4'
    if not msg.sender:
        revert with 0, 'DV: 1'
    if arg2 <= 0:
        revert with 0, 'DV: 2'
    if arg2 > sub_cb14ca65[address(msg.sender)]:
        revert with 0, 'DV: 2'
    if arg2 > sub_0b72d086:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_0b72d086 -= arg2
    if arg2 > sub_cb14ca65[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_cb14ca65[address(msg.sender)] -= arg2
    if not sub_cb14ca65[address(msg.sender)] - arg2:
        if 1 > sub_08978c2b:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_08978c2b--
        sub_cb14ca65[address(msg.sender)] = 0
    if msg.sender:
        if arg2 > 0:
            if msg.sender:
                if sub_1c77a1e5[address(msg.sender)]:
                    if arg2 > sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)] - 1]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_1c77a1e5[address(msg.sender)] <= 0:
                        sub_1e512726[address(msg.sender)][stor154[address(msg.sender)]] = block.number
                        sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)]] = sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)] - 1] - arg2
                        if sub_1c77a1e5[address(msg.sender)] + 1 < sub_1c77a1e5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_1c77a1e5[address(msg.sender)]++
                    else:
                        if block.number == sub_1e512726[address(msg.sender)][stor154[address(msg.sender)] - 1]:
                            sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)] - 1] -= arg2
                        else:
                            sub_1e512726[address(msg.sender)][stor154[address(msg.sender)]] = block.number
                            sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)]] = sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)] - 1] - arg2
                            if sub_1c77a1e5[address(msg.sender)] + 1 < sub_1c77a1e5[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_1c77a1e5[address(msg.sender)]++
                else:
                    if arg2 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_1c77a1e5[address(msg.sender)] <= 0:
                        sub_1e512726[address(msg.sender)][stor154[address(msg.sender)]] = block.number
                        sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)]] = -arg2
                        if sub_1c77a1e5[address(msg.sender)] + 1 < sub_1c77a1e5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_1c77a1e5[address(msg.sender)]++
                    else:
                        if block.number == sub_1e512726[address(msg.sender)][stor154[address(msg.sender)] - 1]:
                            sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)] - 1] = -arg2
                        else:
                            sub_1e512726[address(msg.sender)][stor154[address(msg.sender)]] = block.number
                            sub_ed57fa6f[address(msg.sender)][stor154[address(msg.sender)]] = -arg2
                            if sub_1c77a1e5[address(msg.sender)] + 1 < sub_1c77a1e5[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_1c77a1e5[address(msg.sender)]++
    if sub_0f50dbeb <= 0:
        sub_dccc37b6[stor161] = block.number
        sub_c80ceebe[stor161] = sub_08978c2b
        sub_0d8ac3c5[stor161] = sub_0b72d086
        if sub_0f50dbeb + 1 < sub_0f50dbeb:
            revert with 0, 'SafeMath: addition overflow'
        sub_0f50dbeb++
    else:
        if block.number == sub_dccc37b6[stor161 - 1]:
            sub_c80ceebe[stor161 - 1] = sub_08978c2b
            sub_0d8ac3c5[stor161 - 1] = sub_0b72d086
        else:
            sub_dccc37b6[stor161] = block.number
            sub_c80ceebe[stor161] = sub_08978c2b
            sub_0d8ac3c5[stor161] = sub_0b72d086
            if sub_0f50dbeb + 1 < sub_0f50dbeb:
                revert with 0, 'SafeMath: addition overflow'
            sub_0f50dbeb++
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit AssessorUnstakeEvent(arg2, msg.sender);
    stor101 = 1
}



}
