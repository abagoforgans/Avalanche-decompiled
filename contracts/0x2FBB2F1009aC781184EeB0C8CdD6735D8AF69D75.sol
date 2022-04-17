contract main {




// =====================  Runtime code  =====================


#
#  - sub_ff4c13cf(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
address sub_ffe6e7d7Address;
address sub_0457dad2Address;
address sub_3ec4d4d6Address;
address sub_f8ab6a85Address;
address sub_c6e89915Address;
address claimRewardAddress;
address sub_e7912d4aAddress;
address feePoolAddress;

function sub_0457dad2(?) {
    return sub_0457dad2Address
}

function sub_3ec4d4d6(?) {
    return sub_3ec4d4d6Address
}

function owner() {
    return owner
}

function feePool() {
    return feePoolAddress
}

function claimReward() {
    return claimRewardAddress
}

function sub_c6e89915(?) {
    return sub_c6e89915Address
}

function sub_e7912d4a(?) {
    return sub_e7912d4aAddress
}

function sub_f8ab6a85(?) {
    return sub_f8ab6a85Address
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

function sub_ff5c102a(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x9dd9ba6d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 0)
}

function hasVoted(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0xf46d7b8a with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 0)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_9006e504(?) {
    require calldata.size - 4 >= 256
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'S:1'
    if not arg2:
        revert with 0, 'S:2'
    if not arg3:
        revert with 0, 'S:2'
    if not arg4:
        revert with 0, 'S:3'
    if not arg5:
        revert with 0, 'S:4'
    if not arg6:
        revert with 0, 'S:5'
    if not arg7:
        revert with 0, 'S:6'
    if not arg8:
        revert with 0, 'S:7'
    sub_ffe6e7d7Address = arg1
    sub_0457dad2Address = arg2
    sub_3ec4d4d6Address = arg3
    sub_f8ab6a85Address = arg4
    sub_c6e89915Address = arg5
    claimRewardAddress = arg6
    sub_e7912d4aAddress = arg7
    feePoolAddress = arg8
}

function sub_dfb3f894(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0x3a8d2b9c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (arg1 * ext_call.return_data[0] / 10000)
}

function sub_e84de93d(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x65651c2d with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0xf46d7b8a with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(claimRewardAddress)
    staticcall claimRewardAddress.getClaimAssessorRewardAmount(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[0]
}

function sub_825ae5fc(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 6:
        return 0
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x9430a5f8 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0xa404d9e3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] <= 0:
        return 0
    if block.timestamp < ext_call.return_data[0]:
        return 0
    if block.timestamp >= ext_call.return_data[0]:
        return 0
    return 1
}

function sub_206499f0(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x52cf2872 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c6e89915Address)
    staticcall sub_c6e89915Address.getOverviewPriorNumOfAssessorAndVotes(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0xedd21328 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    else:
        if 10000 * arg2 / arg2 != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if 10000 * arg2 / ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    return 1
}

function sub_28597c9d(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0xf332c24 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x70586d97 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0x2c37ba51 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 2 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * ext_call.return_data[0]
        if 0 / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    else:
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 2 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * ext_call.return_data[0]
        if 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        return 2
    return 1
}

function sub_4913845e(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x54f6c5ec with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x3ca858f1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0x2c37ba51 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 2 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * ext_call.return_data[0]
        if 0 / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    else:
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 2 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * ext_call.return_data[0]
        if 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        return 2
    return 1
}

function sub_15e23153(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0x2c37ba51 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 <= arg2:
        if not arg2:
            if arg1 + arg2 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg1 + arg2
            if 0 / arg1 + arg2 < ext_call.return_data[0]:
                return 0
        else:
            if 10000 * arg2 / arg2 != 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg1 + arg2 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg1 + arg2
            if 10000 * arg2 / arg1 + arg2 < ext_call.return_data[0]:
                return 0
        return 2
    if not arg1:
        if arg1 + arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1 + arg2
        if 0 / arg1 + arg2 < ext_call.return_data[0]:
            return 0
    else:
        if 10000 * arg1 / arg1 != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 + arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1 + arg2
        if 10000 * arg1 / arg1 + arg2 < ext_call.return_data[0]:
            return 0
    return 1
}

function sub_4a9140cd(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0xc0cb8553 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x52cf2872 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c6e89915Address)
    staticcall sub_c6e89915Address.getOverviewPriorNumOfAssessorAndVotes(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0xedd21328 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    else:
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    return 1
}

function sub_515f78c3(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x2fde4a98 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x52cf2872 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c6e89915Address)
    staticcall sub_c6e89915Address.getOverviewPriorNumOfAssessorAndVotes(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0xedd21328 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    else:
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    return 1
}

function startVoting(uint256 arg1) {
    require calldata.size - 4 >= 32
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
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_f8ab6a85Address)
    call sub_f8ab6a85Address.0xce720a45 with:
         gas gas_remaining wei
        args arg1, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0x394bf571 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    call sub_f8ab6a85Address.0xd5313915 with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0] + block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0x8cd48f07 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0x394bf571 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    call sub_f8ab6a85Address.0xd40e824d with:
         gas gas_remaining wei
        args arg1, (2 * ext_call.return_data[0]) + block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f8ab6a85Address)
    call sub_f8ab6a85Address.0x8f9163d7 with:
         gas gas_remaining wei
        args arg1, block.number
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}

function sub_3b3e7413(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x2fde4a98 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x52cf2872 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c6e89915Address)
    staticcall sub_c6e89915Address.getOverviewPriorNumOfAssessorAndVotes(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0xedd21328 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    else:
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0xf332c24 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x70586d97 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0x2c37ba51 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 2 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * ext_call.return_data[0]
        if 0 / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    else:
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 2 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * ext_call.return_data[0]
        if 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    return 1
}

function sub_ad508daa(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0xc0cb8553 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x52cf2872 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c6e89915Address)
    staticcall sub_c6e89915Address.getOverviewPriorNumOfAssessorAndVotes(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0xedd21328 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    else:
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x54f6c5ec with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x3ca858f1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0x2c37ba51 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 2 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * ext_call.return_data[0]
        if 0 / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    else:
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 2 * ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * ext_call.return_data[0]
        if 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            return 0
    return 1
}

function sub_0e31edbb(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x2e88bc87 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < ext_call.return_data[0]:
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0x6b1c6dbf with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < ext_call.return_data[0]:
            return 0
        if block.timestamp >= ext_call.return_data[0]:
            return 0
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0xc0cb8553 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0x52cf2872 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c6e89915Address)
        staticcall sub_c6e89915Address.getOverviewPriorNumOfAssessorAndVotes(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(sub_0457dad2Address)
        staticcall sub_0457dad2Address.0xedd21328 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] < ext_call.return_data[0]:
                return 0
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] < ext_call.return_data[0]:
                return 0
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0x54f6c5ec with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0x3ca858f1 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_0457dad2Address)
        staticcall sub_0457dad2Address.0x2c37ba51 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 2 * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * ext_call.return_data[0]
            if 0 / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                return 0
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * ext_call.return_data[0]
            if 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                return 0
    return 1
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor101 = 1
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
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor101 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
}

function sub_24ae44d6(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x2e88bc87 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    if block.timestamp < ext_call.return_data[0]:
        staticcall sub_f8ab6a85Address.0x6b1c6dbf with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < ext_call.return_data[0]:
            return 0
        if block.timestamp >= ext_call.return_data[0]:
            return 0
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0xc0cb8553 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0x52cf2872 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c6e89915Address)
        staticcall sub_c6e89915Address.getOverviewPriorNumOfAssessorAndVotes(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(sub_0457dad2Address)
        staticcall sub_0457dad2Address.0xedd21328 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] < ext_call.return_data[0]:
                return 0
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] < ext_call.return_data[0]:
                return 0
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0x54f6c5ec with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0x3ca858f1 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_0457dad2Address)
        staticcall sub_0457dad2Address.0x2c37ba51 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 2 * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * ext_call.return_data[0]
            if 0 / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                return 0
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * ext_call.return_data[0]
            if 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                return 0
    staticcall sub_f8ab6a85Address.0xa404d9e3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if block.timestamp < ext_call.return_data[0]:
        return 0
    return 1
}

function sub_157a3c0b(?) {
    require calldata.size - 4 >= 32
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
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x2e88bc87 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    if block.timestamp < ext_call.return_data[0]:
        staticcall sub_f8ab6a85Address.0x6b1c6dbf with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < ext_call.return_data[0]:
            revert with 0, 'SC: 1'
        if block.timestamp >= ext_call.return_data[0]:
            revert with 0, 'SC: 1'
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0xc0cb8553 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0x52cf2872 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c6e89915Address)
        staticcall sub_c6e89915Address.getOverviewPriorNumOfAssessorAndVotes(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            revert with 0, 'SC: 1'
        require ext_code.size(sub_0457dad2Address)
        staticcall sub_0457dad2Address.0xedd21328 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SC: 1'
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SC: 1'
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0x54f6c5ec with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0x3ca858f1 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_0457dad2Address)
        staticcall sub_0457dad2Address.0x2c37ba51 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 2 * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * ext_call.return_data[0]
            if 0 / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SC: 1'
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * ext_call.return_data[0]
            if 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SC: 1'
    call sub_f8ab6a85Address.0x21edf397 with:
         gas gas_remaining wei
        args arg1, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0x8db80acc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    call sub_f8ab6a85Address.0x4ce22ace with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0] + block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}

function sub_08bb0df6(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x6b1c6dbf with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x2e88bc87 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp >= ext_call.return_data[0]:
        if block.timestamp < ext_call.return_data[0]:
            require ext_code.size(sub_f8ab6a85Address)
            staticcall sub_f8ab6a85Address.0xc0cb8553 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_f8ab6a85Address)
            staticcall sub_f8ab6a85Address.0x52cf2872 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_c6e89915Address)
            staticcall sub_c6e89915Address.getOverviewPriorNumOfAssessorAndVotes(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0]:
                require ext_code.size(sub_0457dad2Address)
                staticcall sub_0457dad2Address.0xedd21328 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] >= ext_call.return_data[0]:
                        require ext_code.size(sub_f8ab6a85Address)
                        staticcall sub_f8ab6a85Address.0x54f6c5ec with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_f8ab6a85Address)
                        staticcall sub_f8ab6a85Address.0x3ca858f1 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_0457dad2Address)
                        staticcall sub_0457dad2Address.0x2c37ba51 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                        if 2 * ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 2 * ext_call.return_data[0]
                else:
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] >= ext_call.return_data[0]:
                        require ext_code.size(sub_f8ab6a85Address)
                        staticcall sub_f8ab6a85Address.0x54f6c5ec with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_f8ab6a85Address)
                        staticcall sub_f8ab6a85Address.0x3ca858f1 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_0457dad2Address)
                        staticcall sub_0457dad2Address.0x2c37ba51 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                        if 2 * ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 2 * ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_61125bf7(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x6b1c6dbf with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x2e88bc87 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp >= ext_call.return_data[0]:
        if block.timestamp < ext_call.return_data[0]:
            require ext_code.size(sub_f8ab6a85Address)
            staticcall sub_f8ab6a85Address.0xc0cb8553 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_f8ab6a85Address)
            staticcall sub_f8ab6a85Address.0x52cf2872 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_c6e89915Address)
            staticcall sub_c6e89915Address.getOverviewPriorNumOfAssessorAndVotes(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0]:
                require ext_code.size(sub_0457dad2Address)
                staticcall sub_0457dad2Address.0xedd21328 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] >= ext_call.return_data[0]:
                        require ext_code.size(sub_f8ab6a85Address)
                        staticcall sub_f8ab6a85Address.0x54f6c5ec with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_f8ab6a85Address)
                        staticcall sub_f8ab6a85Address.0x3ca858f1 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_0457dad2Address)
                        staticcall sub_0457dad2Address.0x2c37ba51 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                        if 2 * ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 2 * ext_call.return_data[0]
                else:
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] >= ext_call.return_data[0]:
                        require ext_code.size(sub_f8ab6a85Address)
                        staticcall sub_f8ab6a85Address.0x54f6c5ec with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_f8ab6a85Address)
                        staticcall sub_f8ab6a85Address.0x3ca858f1 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_0457dad2Address)
                        staticcall sub_0457dad2Address.0x2c37ba51 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                        if 2 * ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 2 * ext_call.return_data[0]
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0xf332c24 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x70586d97 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function sub_ec269cfc(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == 3:
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0x2e88bc87 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < ext_call.return_data[0]:
            require ext_code.size(sub_f8ab6a85Address)
            staticcall sub_f8ab6a85Address.0x6b1c6dbf with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < ext_call.return_data[0]:
                return ext_call.return_data[0]
            if block.timestamp >= ext_call.return_data[0]:
                return ext_call.return_data[0]
            require ext_code.size(sub_f8ab6a85Address)
            staticcall sub_f8ab6a85Address.0xc0cb8553 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_f8ab6a85Address)
            staticcall sub_f8ab6a85Address.0x52cf2872 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_c6e89915Address)
            staticcall sub_c6e89915Address.getOverviewPriorNumOfAssessorAndVotes(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[0]:
                return ext_call.return_data[0]
            require ext_code.size(sub_0457dad2Address)
            staticcall sub_0457dad2Address.0xedd21328 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] < ext_call.return_data[0]:
                    return ext_call.return_data[0]
            else:
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] < ext_call.return_data[0]:
                    return ext_call.return_data[0]
            require ext_code.size(sub_f8ab6a85Address)
            staticcall sub_f8ab6a85Address.0x54f6c5ec with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_f8ab6a85Address)
            staticcall sub_f8ab6a85Address.0x3ca858f1 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_0457dad2Address)
            staticcall sub_0457dad2Address.0x2c37ba51 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * ext_call.return_data[0]
                if 0 / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    return ext_call.return_data[0]
            else:
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * ext_call.return_data[0]
                if 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    return ext_call.return_data[0]
        return 4
    if ext_call.return_data[0] != 6:
        return ext_call.return_data[0]
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x2e88bc87 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    if block.timestamp < ext_call.return_data[0]:
        staticcall sub_f8ab6a85Address.0x6b1c6dbf with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < ext_call.return_data[0]:
            return ext_call.return_data[0]
        if block.timestamp >= ext_call.return_data[0]:
            return ext_call.return_data[0]
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0xc0cb8553 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0x52cf2872 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c6e89915Address)
        staticcall sub_c6e89915Address.getOverviewPriorNumOfAssessorAndVotes(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            return ext_call.return_data[0]
        require ext_code.size(sub_0457dad2Address)
        staticcall sub_0457dad2Address.0xedd21328 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] < ext_call.return_data[0]:
                return ext_call.return_data[0]
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] < ext_call.return_data[0]:
                return ext_call.return_data[0]
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0x54f6c5ec with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f8ab6a85Address)
        staticcall sub_f8ab6a85Address.0x3ca858f1 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_0457dad2Address)
        staticcall sub_0457dad2Address.0x2c37ba51 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 2 * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * ext_call.return_data[0]
            if 0 / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                return ext_call.return_data[0]
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * ext_call.return_data[0]
            if 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                return ext_call.return_data[0]
    staticcall sub_f8ab6a85Address.0xa404d9e3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ext_call.return_data[0]
    if block.timestamp < ext_call.return_data[0]:
        return ext_call.return_data[0]
    return 7
}

function vote(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 3:
        revert with 0, 'CVT: 1'
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x5707add3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == msg.sender:
        revert with 0, 'CVT: 2'
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x2e88bc87 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp >= ext_call.return_data[0]:
        revert with 0, 'CVT: 3'
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x6b1c6dbf with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp >= ext_call.return_data[0]:
        if block.timestamp < ext_call.return_data[0]:
            require ext_code.size(sub_f8ab6a85Address)
            staticcall sub_f8ab6a85Address.0xc0cb8553 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_f8ab6a85Address)
            staticcall sub_f8ab6a85Address.0x52cf2872 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_c6e89915Address)
            staticcall sub_c6e89915Address.getOverviewPriorNumOfAssessorAndVotes(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0]:
                require ext_code.size(sub_0457dad2Address)
                staticcall sub_0457dad2Address.0xedd21328 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] >= ext_call.return_data[0]:
                        require ext_code.size(sub_f8ab6a85Address)
                        staticcall sub_f8ab6a85Address.0x54f6c5ec with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_f8ab6a85Address)
                        staticcall sub_f8ab6a85Address.0x3ca858f1 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_0457dad2Address)
                        staticcall sub_0457dad2Address.0x2c37ba51 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * ext_call.return_data[0]
                            if 0 / 2 * ext_call.return_data[0] >= ext_call.return_data[0]:
                                revert with 0, 'CVT: 3'
                        else:
                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * ext_call.return_data[0]
                            if 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] >= ext_call.return_data[0]:
                                revert with 0, 'CVT: 3'
                else:
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] >= ext_call.return_data[0]:
                        require ext_code.size(sub_f8ab6a85Address)
                        staticcall sub_f8ab6a85Address.0x54f6c5ec with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_f8ab6a85Address)
                        staticcall sub_f8ab6a85Address.0x3ca858f1 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_0457dad2Address)
                        staticcall sub_0457dad2Address.0x2c37ba51 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * ext_call.return_data[0]
                            if 0 / 2 * ext_call.return_data[0] >= ext_call.return_data[0]:
                                revert with 0, 'CVT: 3'
                        else:
                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * ext_call.return_data[0]
                            if 10000 * ext_call.return_data[0] / 2 * ext_call.return_data[0] >= ext_call.return_data[0]:
                                revert with 0, 'CVT: 3'
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0xf46d7b8a with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        revert with 0, 'CVT: 4'
    require ext_code.size(claimRewardAddress)
    call claimRewardAddress.recalculateAssessor(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x52cf2872 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c6e89915Address)
    staticcall sub_c6e89915Address.getAssessorPriorNumOfVotes(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'CVT: 5'
    require ext_code.size(sub_c6e89915Address)
    staticcall sub_c6e89915Address.getOverviewPriorNumOfAssessorAndVotes(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[32]:
        revert with 0, 'CVT: 6'
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0x8dada74b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[32] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[32]
        if 0 / ext_call.return_data[32] <= ext_call.return_data[0]:
            require ext_code.size(sub_f8ab6a85Address)
            call sub_f8ab6a85Address.0x509df948 with:
                 gas gas_remaining wei
                args arg1, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_f8ab6a85Address)
            call sub_f8ab6a85Address.0x4863e8a0 with:
                 gas gas_remaining wei
                args arg1, msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_f8ab6a85Address)
            call sub_f8ab6a85Address.0xb9cae226 with:
                 gas gas_remaining wei
                args arg1, msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_f8ab6a85Address)
            staticcall sub_f8ab6a85Address.0x6b1c6dbf with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_f8ab6a85Address)
            if ext_call.return_data[0] > block.timestamp:
                call sub_f8ab6a85Address.0xf7f6b930 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                if not arg2:
                    call sub_f8ab6a85Address.0xa69c495f with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0]
                else:
                    call sub_f8ab6a85Address.0x89abedaf with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call sub_f8ab6a85Address.0xffc6d945 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_f8ab6a85Address)
            if not arg2:
                call sub_f8ab6a85Address.0xff8a9556 with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0]
            else:
                call sub_f8ab6a85Address.0xdd84930f with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_c6e89915Address)
            call sub_c6e89915Address.setLatestVoteTimestamp(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_e7912d4aAddress)
            call sub_e7912d4aAddress.0x9baa1ca9 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xeaa2cdac: arg1, ext_call.return_data[0], arg2, msg.sender
        else:
            if not ext_call.return_data[32]:
                require ext_code.size(sub_f8ab6a85Address)
                call sub_f8ab6a85Address.0x509df948 with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                call sub_f8ab6a85Address.0x4863e8a0 with:
                     gas gas_remaining wei
                    args arg1, msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                call sub_f8ab6a85Address.0xb9cae226 with:
                     gas gas_remaining wei
                    args arg1, msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                staticcall sub_f8ab6a85Address.0x6b1c6dbf with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_f8ab6a85Address)
                if ext_call.return_data[0] > block.timestamp:
                    call sub_f8ab6a85Address.0xf7f6b930 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_f8ab6a85Address)
                    if not arg2:
                        call sub_f8ab6a85Address.0xa69c495f with:
                             gas gas_remaining wei
                            args arg1, 0
                    else:
                        call sub_f8ab6a85Address.0x89abedaf with:
                             gas gas_remaining wei
                            args arg1, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call sub_f8ab6a85Address.0xffc6d945 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                if not arg2:
                    call sub_f8ab6a85Address.0xff8a9556 with:
                         gas gas_remaining wei
                        args arg1, 0
                else:
                    call sub_f8ab6a85Address.0xdd84930f with:
                         gas gas_remaining wei
                        args arg1, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_c6e89915Address)
                call sub_c6e89915Address.setLatestVoteTimestamp(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_e7912d4aAddress)
                call sub_e7912d4aAddress.0x9baa1ca9 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xeaa2cdac: arg1, 0, arg2, msg.sender
            else:
                if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(sub_f8ab6a85Address)
                call sub_f8ab6a85Address.0x509df948 with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                call sub_f8ab6a85Address.0x4863e8a0 with:
                     gas gas_remaining wei
                    args arg1, msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                call sub_f8ab6a85Address.0xb9cae226 with:
                     gas gas_remaining wei
                    args arg1, msg.sender, ext_call.return_data[0] * ext_call.return_data[32] / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                staticcall sub_f8ab6a85Address.0x6b1c6dbf with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_f8ab6a85Address)
                if ext_call.return_data[0] > block.timestamp:
                    call sub_f8ab6a85Address.0xf7f6b930 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_f8ab6a85Address)
                    if not arg2:
                        call sub_f8ab6a85Address.0xa69c495f with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0] * ext_call.return_data[32] / 10000
                    else:
                        call sub_f8ab6a85Address.0x89abedaf with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0] * ext_call.return_data[32] / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call sub_f8ab6a85Address.0xffc6d945 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                if not arg2:
                    call sub_f8ab6a85Address.0xff8a9556 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0] * ext_call.return_data[32] / 10000
                else:
                    call sub_f8ab6a85Address.0xdd84930f with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0] * ext_call.return_data[32] / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_c6e89915Address)
                call sub_c6e89915Address.setLatestVoteTimestamp(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_e7912d4aAddress)
                call sub_e7912d4aAddress.0x9baa1ca9 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xeaa2cdac: arg1, ext_call.return_data[0] * ext_call.return_data[32] / 10000, arg2, msg.sender
    else:
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[32] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[32]
        if 10000 * ext_call.return_data[0] / ext_call.return_data[32] <= ext_call.return_data[0]:
            require ext_code.size(sub_f8ab6a85Address)
            call sub_f8ab6a85Address.0x509df948 with:
                 gas gas_remaining wei
                args arg1, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_f8ab6a85Address)
            call sub_f8ab6a85Address.0x4863e8a0 with:
                 gas gas_remaining wei
                args arg1, msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_f8ab6a85Address)
            call sub_f8ab6a85Address.0xb9cae226 with:
                 gas gas_remaining wei
                args arg1, msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_f8ab6a85Address)
            staticcall sub_f8ab6a85Address.0x6b1c6dbf with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_f8ab6a85Address)
            if ext_call.return_data[0] > block.timestamp:
                call sub_f8ab6a85Address.0xf7f6b930 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                if not arg2:
                    call sub_f8ab6a85Address.0xa69c495f with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0]
                else:
                    call sub_f8ab6a85Address.0x89abedaf with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call sub_f8ab6a85Address.0xffc6d945 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_f8ab6a85Address)
            if not arg2:
                call sub_f8ab6a85Address.0xff8a9556 with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0]
            else:
                call sub_f8ab6a85Address.0xdd84930f with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_c6e89915Address)
            call sub_c6e89915Address.setLatestVoteTimestamp(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_e7912d4aAddress)
            call sub_e7912d4aAddress.0x9baa1ca9 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xeaa2cdac: arg1, ext_call.return_data[0], arg2, msg.sender
        else:
            if not ext_call.return_data[32]:
                require ext_code.size(sub_f8ab6a85Address)
                call sub_f8ab6a85Address.0x509df948 with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                call sub_f8ab6a85Address.0x4863e8a0 with:
                     gas gas_remaining wei
                    args arg1, msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                call sub_f8ab6a85Address.0xb9cae226 with:
                     gas gas_remaining wei
                    args arg1, msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                staticcall sub_f8ab6a85Address.0x6b1c6dbf with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_f8ab6a85Address)
                if ext_call.return_data[0] > block.timestamp:
                    call sub_f8ab6a85Address.0xf7f6b930 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_f8ab6a85Address)
                    if not arg2:
                        call sub_f8ab6a85Address.0xa69c495f with:
                             gas gas_remaining wei
                            args arg1, 0
                    else:
                        call sub_f8ab6a85Address.0x89abedaf with:
                             gas gas_remaining wei
                            args arg1, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call sub_f8ab6a85Address.0xffc6d945 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                if not arg2:
                    call sub_f8ab6a85Address.0xff8a9556 with:
                         gas gas_remaining wei
                        args arg1, 0
                else:
                    call sub_f8ab6a85Address.0xdd84930f with:
                         gas gas_remaining wei
                        args arg1, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_c6e89915Address)
                call sub_c6e89915Address.setLatestVoteTimestamp(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_e7912d4aAddress)
                call sub_e7912d4aAddress.0x9baa1ca9 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xeaa2cdac: arg1, 0, arg2, msg.sender
            else:
                if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(sub_f8ab6a85Address)
                call sub_f8ab6a85Address.0x509df948 with:
                     gas gas_remaining wei
                    args arg1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                call sub_f8ab6a85Address.0x4863e8a0 with:
                     gas gas_remaining wei
                    args arg1, msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                call sub_f8ab6a85Address.0xb9cae226 with:
                     gas gas_remaining wei
                    args arg1, msg.sender, ext_call.return_data[0] * ext_call.return_data[32] / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                staticcall sub_f8ab6a85Address.0x6b1c6dbf with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_f8ab6a85Address)
                if ext_call.return_data[0] > block.timestamp:
                    call sub_f8ab6a85Address.0xf7f6b930 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_f8ab6a85Address)
                    if not arg2:
                        call sub_f8ab6a85Address.0xa69c495f with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0] * ext_call.return_data[32] / 10000
                    else:
                        call sub_f8ab6a85Address.0x89abedaf with:
                             gas gas_remaining wei
                            args arg1, ext_call.return_data[0] * ext_call.return_data[32] / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call sub_f8ab6a85Address.0xffc6d945 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_f8ab6a85Address)
                if not arg2:
                    call sub_f8ab6a85Address.0xff8a9556 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0] * ext_call.return_data[32] / 10000
                else:
                    call sub_f8ab6a85Address.0xdd84930f with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0] * ext_call.return_data[32] / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_c6e89915Address)
                call sub_c6e89915Address.setLatestVoteTimestamp(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_e7912d4aAddress)
                call sub_e7912d4aAddress.0x9baa1ca9 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xeaa2cdac: arg1, ext_call.return_data[0] * ext_call.return_data[32] / 10000, arg2, msg.sender
    stor101 = 1
}



}
