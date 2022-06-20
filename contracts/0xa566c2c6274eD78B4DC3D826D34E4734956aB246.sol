contract main {




// =====================  Runtime code  =====================


#
#  - withdraw()
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
uint256 startTime;
uint256 endTime;
uint256 sub_c5043d13;
mapping of uint256 sub_a44bca8e;
uint256 totalRewards;
uint256 sub_a968a8bb;
mapping of uint256 sub_8320a5bb;
uint8 isActive; offset 160
address sub_5de29741Address;
array of address participants;
mapping of uint256 sub_a5399607;
uint256 sub_01934a83;
mapping of uint8 stor162;
address sub_125c67ddAddress;
uint256 stor164;
mapping of uint8 stor165;

function sub_01934a83(?) payable {
    return sub_01934a83
}

function totalRewards() payable {
    return totalRewards
}

function sub_125c67dd(?) payable {
    return sub_125c67ddAddress
}

function isActive() payable {
    return bool(isActive)
}

function endTime() payable {
    return endTime
}

function participants(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < participants.length
    return participants[arg1]
}

function sub_5de29741(?) payable {
    return sub_5de29741Address
}

function startTime() payable {
    return startTime
}

function isRemoved(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor165[arg1])
}

function sub_8320a5bb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8320a5bb[arg1]
}

function owner() payable {
    return owner
}

function sub_a44bca8e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a44bca8e[arg1]
}

function sub_a5399607(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a5399607[arg1]
}

function sub_a968a8bb(?) payable {
    return sub_a968a8bb
}

function sub_b6a6dff6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor162[arg1])
}

function sub_c5043d13(?) payable {
    return sub_c5043d13
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < endTime:
        return block.timestamp
    return endTime
}

function sub_a113601b(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isActive = 0
    emit 0x875f4bca 
    emit 0x0 
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setEndTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0, 'End time can not be in the past'
    endTime = arg1
    sub_c5043d13 = arg1 - startTime
    emit 0xf6cbe484: arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if isActive:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Linear farm is activated, you can't remove user'
    if sub_a44bca8e[address(arg1)] <= sub_8320a5bb[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User can not be kicked, he is already paid'
    if sub_8320a5bb[address(arg1)] > sub_a44bca8e[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_a44bca8e[address(arg1)] - sub_8320a5bb[address(arg1)] > totalRewards:
        revert with 0, 'SafeMath: subtraction overflow'
    totalRewards = totalRewards - sub_a44bca8e[address(arg1)] + sub_8320a5bb[address(arg1)]
    if sub_a44bca8e[address(arg1)] - sub_8320a5bb[address(arg1)] > sub_a968a8bb:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_a968a8bb = sub_a968a8bb - sub_a44bca8e[address(arg1)] + sub_8320a5bb[address(arg1)]
    sub_a44bca8e[address(arg1)] = sub_8320a5bb[address(arg1)]
    stor165[address(arg1)] = 1
    emit 0x2ef90f86: (sub_a44bca8e[address(arg1)] - sub_8320a5bb[address(arg1)]), arg1, sub_a44bca8e[address(arg1)], sub_8320a5bb[address(arg1)]
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < endTime:
        if not sub_a44bca8e[address(arg1)]:
            if sub_c5043d13 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_c5043d13:
                return (0 / sub_c5043d13)
        else:
            if (block.timestamp * sub_a44bca8e[address(arg1)]) - (startTime * sub_a44bca8e[address(arg1)]) / sub_a44bca8e[address(arg1)] != block.timestamp - startTime:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_c5043d13 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_c5043d13:
                return ((block.timestamp * sub_a44bca8e[address(arg1)]) - (startTime * sub_a44bca8e[address(arg1)]) / sub_c5043d13)
    else:
        if not sub_a44bca8e[address(arg1)]:
            if sub_c5043d13 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_c5043d13:
                return (0 / sub_c5043d13)
        else:
            if (endTime * sub_a44bca8e[address(arg1)]) - (startTime * sub_a44bca8e[address(arg1)]) / sub_a44bca8e[address(arg1)] != endTime - startTime:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_c5043d13 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_c5043d13:
                return ((endTime * sub_a44bca8e[address(arg1)]) - (startTime * sub_a44bca8e[address(arg1)]) / sub_c5043d13)
    ('iszero', ('stor', ('name', 'sub_c5043d13', 153)))
    revert
}

function sub_962d89bb(?) payable {
    if block.timestamp < endTime:
        if not totalRewards:
            if sub_c5043d13 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_c5043d13:
                return totalRewards - (0 / sub_c5043d13), 0 / sub_c5043d13, stor164
        else:
            if (block.timestamp * totalRewards) - (startTime * totalRewards) / totalRewards != block.timestamp - startTime:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_c5043d13 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_c5043d13:
                return totalRewards - ((block.timestamp * totalRewards) - (startTime * totalRewards) / sub_c5043d13), 
                       (block.timestamp * totalRewards) - (startTime * totalRewards) / sub_c5043d13,
                       stor164
    else:
        if not totalRewards:
            if sub_c5043d13 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_c5043d13:
                return totalRewards - (0 / sub_c5043d13), 0 / sub_c5043d13, stor164
        else:
            if (endTime * totalRewards) - (startTime * totalRewards) / totalRewards != endTime - startTime:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_c5043d13 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_c5043d13:
                return totalRewards - ((endTime * totalRewards) - (startTime * totalRewards) / sub_c5043d13), 
                       (endTime * totalRewards) - (startTime * totalRewards) / sub_c5043d13,
                       stor164
    ('iszero', ('stor', ('name', 'sub_c5043d13', 153)))
    revert
}

function sub_70d5f009(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if isActive:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farm is activated you can not add more users'
    idx = 0
    while idx < ('cd', 4).length:
        if cd[((64 * idx) + cd[4] + 68)] > 0:
            require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((64 * idx) + cd[4] + 36)])
            mem[32] = 162
            if not stor162[address(cd[((64 * idx) + cd[4] + 36)])]:
                require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
                if cd[((64 * idx) + cd[4] + 68)] + totalRewards < totalRewards:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_a44bca8e[address(cd[((64 * idx) + cd[4] + 36)])] > cd[((64 * idx) + cd[4] + 68)] + totalRewards:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalRewards = cd[((64 * idx) + cd[4] + 68)] + totalRewards - sub_a44bca8e[address(cd[((64 * idx) + cd[4] + 36)])]
                require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
                if cd[((64 * idx) + cd[4] + 68)] + sub_a968a8bb < sub_a968a8bb:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_a44bca8e[address(cd[((64 * idx) + cd[4] + 36)])] > cd[((64 * idx) + cd[4] + 68)] + sub_a968a8bb:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_a968a8bb = cd[((64 * idx) + cd[4] + 68)] + sub_a968a8bb - sub_a44bca8e[address(cd[((64 * idx) + cd[4] + 36)])]
                require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
                sub_a5399607[address(cd[((64 * idx) + cd[4] + 36)])] = sub_01934a83
                sub_01934a83++
                require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
                participants.length++
                participants[participants.length] = address(cd[((64 * idx) + cd[4] + 36)])
                require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
                sub_a44bca8e[address(cd[((64 * idx) + cd[4] + 36)])] = cd[((64 * idx) + cd[4] + 68)]
                require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
                mem[0] = address(cd[((64 * idx) + cd[4] + 36)])
                mem[32] = 162
                stor162[address(cd[((64 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_42c0a0e2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if isActive:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Farm is active you can't emergency withdraw'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address of token can not be 0x0 address'
    if not address(arg2):
        revert with 0, 'Collector can not be 0x0 address'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 132] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit EmergencyWithdraw(address(arg1), ext_call.return_data[0], msg.sender);
}

function sub_bc69f6f7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= endTime:
        revert with 0, 'Farm is not finished yet'
    mem[100] = this.address
    require ext_code.size(sub_5de29741Address)
    staticcall sub_5de29741Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_a968a8bb:
        revert with 0, 'There is no superfluous tokens on factory'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(sub_5de29741Address)
    staticcall sub_5de29741Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_a968a8bb > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - sub_a968a8bb
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_5de29741Address):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0] - sub_a968a8bb, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call sub_5de29741Address with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0] - sub_a968a8bb, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0] - sub_a968a8bb, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(sub_5de29741Address)
    staticcall sub_5de29741Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xbd0a89a1: sub_a968a8bb, ext_call.return_data[0] - sub_a968a8bb, address(arg1), ext_call.return_data[0]
}

function sub_e2adf1ae(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(sub_5de29741Address)
    staticcall sub_5de29741Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_a968a8bb > ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(sub_5de29741Address)
        staticcall sub_5de29741Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = this.address
        mem[(2 * ceil32(return_data.size)) + 196] = sub_a968a8bb - ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = 100
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(2 * ceil32(return_data.size)) + 228] = 32
        mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_5de29741Address):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_a968a8bb - ext_call.return_data[0], 0
        mem[(2 * ceil32(return_data.size)) + 392] = 0
        call sub_5de29741Address with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_a968a8bb - ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_a968a8bb - ext_call.return_data[0], 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                if not mem[(2 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(sub_5de29741Address)
    staticcall sub_5de29741Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_a968a8bb:
        revert with 0, 'There is not enough money to payout all users'
    isActive = 1
    emit 0x49d36d58 
    emit 0x1 
}

function initialize(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 == arg4
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor101 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
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
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
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
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
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
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
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
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            stor101 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                stor101 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor101 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
    if not arg1:
        revert with 0, 'Tokens address can not be 0x0'
    if arg2 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Start time can not be in the past'
    if arg3 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'End time can not be before start time'
    startTime = arg2
    endTime = arg3
    sub_c5043d13 = arg3 - arg2
    sub_5de29741Address = arg1
    isActive = 0
    sub_125c67ddAddress = arg4
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
