contract main {




// =====================  Runtime code  =====================


#
#  - getReward()
#  - withdrawAll()
#  - recoverToken(address arg1, uint256 arg2)
#  - initialize(uint256 arg1, address arg2)
#
const zap = 0xfaf0d63821e06e44749a5b571202cbfb12a19036

const poolType = 3


address owner;
uint256 lastPauseTime;
uint8 paused;
mapping of uint8 stor153;
uint8 stor154;
address keeperAddress;
address rewardsTokenAddress;
address stor206;
address maximusChefAddress;
uint256 pid;
uint256 totalShares;
mapping of uint256 sharesOf;
mapping of uint256 principalOf;
mapping of uint256 depositedAt;
uint256 sub_4667e8c4;

function totalSupply() payable {
    return totalShares
}

function depositedAt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return depositedAt[address(arg1)]
}

function totalShares() payable {
    return totalShares
}

function sub_4667e8c4(?) payable {
    return sub_4667e8c4
}

function paused() payable {
    return bool(paused)
}

function principalOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return principalOf[address(arg1)]
}

function stakingToken() payable {
    return rewardsTokenAddress
}

function owner() payable {
    return owner
}

function lastPauseTime() payable {
    return lastPauseTime
}

function maximusChef() payable {
    return maximusChefAddress
}

function keeper() payable {
    return keeperAddress
}

function isWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor153[address(arg1)])
}

function rewardsToken() payable {
    return rewardsTokenAddress
}

function pid() payable {
    return pid
}

function sharesOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sharesOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor154:
        if not stor153[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Whitelist: caller is not on the whitelist'
    revert with 0, 'N/A'
}

function setWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor153[address(arg1)] = uint8(arg2)
    emit Whitelisted(arg2, arg1);
}

function disableWhitelist(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor154 = uint8(arg1)
    if not arg1:
        emit EnableWhitelist()
    else:
        emit DisableWhitelist()
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 != bool(paused):
        paused = uint8(arg1)
        if uint8(arg1):
            lastPauseTime = block.timestamp
        emit PauseChanged(bool(paused));
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

function setMaximusChef(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if maximusChefAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VaultController: setMaximusChef only once'
    maximusChefAddress = arg1
    emit 0xd4edf36b: arg1
}

function balance() payable {
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if keeperAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VaultController: caller is not the owner or keeper'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VaultController: invalid keeper address'
    keeperAddress = arg1
    emit 0xccbb3401: arg1
}

function minter() payable {
    if stor206:
        require ext_code.size(stor206)
        staticcall stor206.isMinter(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            return stor206
        else:
            return 0
    else:
        return 0
}

function priceShare() payable {
    if 0 == totalShares:
        return 10^18
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        if not totalShares:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalShares)
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalShares:
        revert with 0, 'SafeMath: division by zero', 0
    return (10^18 * ext_call.return_data[0] / totalShares)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalShares:
        return 0
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        if not totalShares:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalShares)
    if sharesOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalShares:
        revert with 0, 'SafeMath: division by zero', 0
    return (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares)
}

function withdrawableBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalShares:
        return 0
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        if not totalShares:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalShares)
    if sharesOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalShares:
        revert with 0, 'SafeMath: division by zero', 0
    return (sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares)
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if principalOf[address(arg1)] + 1000 < principalOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if 0 == totalShares:
        if 0 < principalOf[address(arg1)] + 1000:
            return 0
    else:
        require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
        staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            if not totalShares:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / totalShares < principalOf[address(arg1)] + 1000:
                return 0
        else:
            if sharesOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalShares:
                revert with 0, 'SafeMath: division by zero', 0
            if sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares < principalOf[address(arg1)] + 1000:
                return 0
    if 0 == totalShares:
        if principalOf[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return -principalOf[address(arg1)]
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        if not totalShares:
            revert with 0, 'SafeMath: division by zero', 0
        if principalOf[address(arg1)] > 0 / totalShares:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((0 / totalShares) - principalOf[address(arg1)])
    if sharesOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != sharesOf[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalShares:
        revert with 0, 'SafeMath: division by zero', 0
    if principalOf[address(arg1)] > sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return ((sharesOf[address(arg1)] * ext_call.return_data[0] / totalShares) - principalOf[address(arg1)])
}

function harvest() payable {
    if keeperAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VaultController: caller is not the owner or keeper'
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    call 0xd6a4f121ca35509af06a0be99093d08462f53052.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pid, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + sub_4667e8c4 < sub_4667e8c4:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] > ext_call.return_data[0] + sub_4667e8c4:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfaf0d63821e06e44749a5b571202cbfb12a19036)
    call 0xfaf0d63821e06e44749a5b571202cbfb12a19036.zapInToken(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd, sub_4667e8c4, rewardsTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    call 0xd6a4f121ca35509af06a0be99093d08462f53052.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pid, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Harvested(0);
    sub_4667e8c4 = 0
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PausableUpgradeable: cannot be performed while the contract is paused'
    mem[100] = this.address
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    mem[ceil32(return_data.size) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 164] = this.address
    mem[(4 * ceil32(return_data.size)) + 196] = arg1
    mem[(4 * ceil32(return_data.size)) + 96] = 100
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(4 * ceil32(return_data.size)) + 228] = 32
    mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardsTokenAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(rewardsTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[(4 * ceil32(return_data.size)) + 392] = 0
    call rewardsTokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
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
        mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
            if not mem[(4 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 0 == totalShares:
        if totalShares < totalShares:
            revert with 0, 'SafeMath: addition overflow'
        if sharesOf[address(msg.sender)] < sharesOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / ext_call.return_data[0]) + totalShares < totalShares:
            revert with 0, 'SafeMath: addition overflow'
        totalShares += 0 / ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + sharesOf[address(msg.sender)] < sharesOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        sharesOf[address(msg.sender)] += 0 / ext_call.return_data[0]
    if principalOf[address(msg.sender)] < principalOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    depositedAt[address(msg.sender)] = block.timestamp
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    call 0xd6a4f121ca35509af06a0be99093d08462f53052.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pid, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposited(0, msg.sender);
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + sub_4667e8c4 < sub_4667e8c4:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] > ext_call.return_data[0] + sub_4667e8c4:
        revert with 0, 'SafeMath: subtraction overflow', 0
}

function depositAll() payable {
    mem[100] = msg.sender
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if paused:
        revert with 0, 'PausableUpgradeable: cannot be performed while the contract is paused'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    mem[(2 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(6 * ceil32(return_data.size)) + 164] = this.address
    mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 96] = 100
    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(6 * ceil32(return_data.size)) + 228] = 32
    mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardsTokenAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(rewardsTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[(6 * ceil32(return_data.size)) + 392] = 0
    call rewardsTokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
            if not mem[(6 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 0 == totalShares:
        if totalShares < totalShares:
            revert with 0, 'SafeMath: addition overflow'
        if sharesOf[address(msg.sender)] < sharesOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / ext_call.return_data[0]) + totalShares < totalShares:
            revert with 0, 'SafeMath: addition overflow'
        totalShares += 0 / ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + sharesOf[address(msg.sender)] < sharesOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        sharesOf[address(msg.sender)] += 0 / ext_call.return_data[0]
    if principalOf[address(msg.sender)] < principalOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    depositedAt[address(msg.sender)] = block.timestamp
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    call 0xd6a4f121ca35509af06a0be99093d08462f53052.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pid, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposited(0, msg.sender);
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + sub_4667e8c4 < sub_4667e8c4:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] > ext_call.return_data[0] + sub_4667e8c4:
        revert with 0, 'SafeMath: subtraction overflow', 0
}

function setMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor206 = arg1
    if not arg1:
        emit 0xeee84778: arg1
    require ext_code.size(0x885d748c00a279b67a7749ec6b03301700dd0455)
    staticcall 0x885d748c00a279b67a7749ec6b03301700dd0455.0x893d20e8 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 != ext_call.return_data[12 len 20]:
        revert with 0, 'VaultController: not maximus minter'
    mem[ceil32(return_data.size) + 132] = arg1
    mem[ceil32(return_data.size) + 164] = 0
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardsTokenAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(rewardsTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0, 0
    mem[ceil32(return_data.size) + 328] = 0
    call rewardsTokenAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 264] = this.address
        mem[ceil32(return_data.size) + 296] = arg1
        require ext_code.size(rewardsTokenAddress)
        staticcall rewardsTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg1
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 296] = arg1
        mem[(2 * ceil32(return_data.size)) + 328] = -1
        mem[(2 * ceil32(return_data.size)) + 260] = 68
        mem[(2 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 360] = 32
        mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardsTokenAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(rewardsTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg1), -1, 0
        mem[(2 * ceil32(return_data.size)) + 492] = 0
        call rewardsTokenAddress with:
           funct Mask(32, 224, 0, address(arg1), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                if not mem[(2 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0xeee84778: arg1
    mem[ceil32(return_data.size) + 260] = return_data.size
    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
        if not mem[ceil32(return_data.size) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = arg1
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg1
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg1
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardsTokenAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(rewardsTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg1), -1, 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
    call rewardsTokenAddress with:
       funct Mask(32, 224, 0, address(arg1), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, address(arg1), -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0xeee84778: arg1
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        emit 0xeee84778: arg1
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
        emit 0xeee84778: arg1
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function withdrawUnderlying(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[132] = this.address
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if arg1 < principalOf[msg.sender]:
        if not arg1:
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            mem[ceil32(return_data.size) + 196] = this.address
            require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
            staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args pid, this.address
            mem[ceil32(return_data.size) + 160 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require totalShares
            mem[(2 * ceil32(return_data.size)) + 160] = 30
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: subtraction overflow'
            if 0 / ext_call.return_data[0] < sharesOf[msg.sender]:
                if 0 / ext_call.return_data[0] > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                totalShares -= 0 / ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 224] = 30
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                if 0 / ext_call.return_data[0] > sharesOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                sharesOf[msg.sender] -= 0 / ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / totalShares > principalOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                principalOf[msg.sender] -= 0 / ext_call.return_data[0] * ext_call.return_data[0] / totalShares
                mem[(2 * ceil32(return_data.size)) + 356] = this.address
                require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 356] = this.address
                require ext_code.size(rewardsTokenAddress)
                staticcall rewardsTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 388] = 0 / ext_call.return_data[0] * ext_call.return_data[0] / totalShares
                require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
                call 0xd6a4f121ca35509af06a0be99093d08462f53052.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, 0 / ext_call.return_data[0] * ext_call.return_data[0] / totalShares
            else:
                if sharesOf[msg.sender] > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                totalShares -= sharesOf[msg.sender]
                mem[(2 * ceil32(return_data.size)) + 224] = 30
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                if sharesOf[msg.sender] > sharesOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                sharesOf[msg.sender] = 0
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if sharesOf[msg.sender] * ext_call.return_data[0] / totalShares > principalOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                principalOf[msg.sender] -= sharesOf[msg.sender] * ext_call.return_data[0] / totalShares
                mem[(2 * ceil32(return_data.size)) + 356] = this.address
                require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 356] = this.address
                require ext_code.size(rewardsTokenAddress)
                staticcall rewardsTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 388] = sharesOf[msg.sender] * ext_call.return_data[0] / totalShares
                require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
                call 0xd6a4f121ca35509af06a0be99093d08462f53052.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, sharesOf[msg.sender] * ext_call.return_data[0] / totalShares
        else:
            if totalShares * arg1 / arg1 != totalShares:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            mem[ceil32(return_data.size) + 196] = this.address
            require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
            staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args pid, this.address
            mem[ceil32(return_data.size) + 160 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require totalShares
            mem[(2 * ceil32(return_data.size)) + 160] = 30
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: subtraction overflow'
            if totalShares * arg1 / ext_call.return_data[0] < sharesOf[msg.sender]:
                if totalShares * arg1 / ext_call.return_data[0] > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                totalShares -= totalShares * arg1 / ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 224] = 30
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                if totalShares * arg1 / ext_call.return_data[0] > sharesOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                sharesOf[msg.sender] -= totalShares * arg1 / ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if totalShares * arg1 / ext_call.return_data[0] * ext_call.return_data[0] / totalShares > principalOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                principalOf[msg.sender] -= totalShares * arg1 / ext_call.return_data[0] * ext_call.return_data[0] / totalShares
                mem[(2 * ceil32(return_data.size)) + 356] = this.address
                require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 356] = this.address
                require ext_code.size(rewardsTokenAddress)
                staticcall rewardsTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 388] = totalShares * arg1 / ext_call.return_data[0] * ext_call.return_data[0] / totalShares
                require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
                call 0xd6a4f121ca35509af06a0be99093d08462f53052.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, totalShares * arg1 / ext_call.return_data[0] * ext_call.return_data[0] / totalShares
            else:
                if sharesOf[msg.sender] > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                totalShares -= sharesOf[msg.sender]
                mem[(2 * ceil32(return_data.size)) + 224] = 30
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                if sharesOf[msg.sender] > sharesOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                sharesOf[msg.sender] = 0
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if sharesOf[msg.sender] * ext_call.return_data[0] / totalShares > principalOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                principalOf[msg.sender] -= sharesOf[msg.sender] * ext_call.return_data[0] / totalShares
                mem[(2 * ceil32(return_data.size)) + 356] = this.address
                require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 356] = this.address
                require ext_code.size(rewardsTokenAddress)
                staticcall rewardsTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 388] = sharesOf[msg.sender] * ext_call.return_data[0] / totalShares
                require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
                call 0xd6a4f121ca35509af06a0be99093d08462f53052.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, sharesOf[msg.sender] * ext_call.return_data[0] / totalShares
    else:
        if not principalOf[msg.sender]:
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            mem[ceil32(return_data.size) + 196] = this.address
            require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
            staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args pid, this.address
            mem[ceil32(return_data.size) + 160 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require totalShares
            mem[(2 * ceil32(return_data.size)) + 160] = 30
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: subtraction overflow'
            if 0 / ext_call.return_data[0] < sharesOf[msg.sender]:
                if 0 / ext_call.return_data[0] > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                totalShares -= 0 / ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 224] = 30
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                if 0 / ext_call.return_data[0] > sharesOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                sharesOf[msg.sender] -= 0 / ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / totalShares > principalOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                principalOf[msg.sender] -= 0 / ext_call.return_data[0] * ext_call.return_data[0] / totalShares
                mem[(2 * ceil32(return_data.size)) + 356] = this.address
                require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 356] = this.address
                require ext_code.size(rewardsTokenAddress)
                staticcall rewardsTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 388] = 0 / ext_call.return_data[0] * ext_call.return_data[0] / totalShares
                require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
                call 0xd6a4f121ca35509af06a0be99093d08462f53052.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, 0 / ext_call.return_data[0] * ext_call.return_data[0] / totalShares
            else:
                if sharesOf[msg.sender] > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                totalShares -= sharesOf[msg.sender]
                mem[(2 * ceil32(return_data.size)) + 224] = 30
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                if sharesOf[msg.sender] > sharesOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                sharesOf[msg.sender] = 0
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if sharesOf[msg.sender] * ext_call.return_data[0] / totalShares > principalOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                principalOf[msg.sender] -= sharesOf[msg.sender] * ext_call.return_data[0] / totalShares
                mem[(2 * ceil32(return_data.size)) + 356] = this.address
                require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 356] = this.address
                require ext_code.size(rewardsTokenAddress)
                staticcall rewardsTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 388] = sharesOf[msg.sender] * ext_call.return_data[0] / totalShares
                require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
                call 0xd6a4f121ca35509af06a0be99093d08462f53052.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, sharesOf[msg.sender] * ext_call.return_data[0] / totalShares
        else:
            if totalShares * principalOf[msg.sender] / principalOf[msg.sender] != totalShares:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            mem[ceil32(return_data.size) + 196] = this.address
            require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
            staticcall 0xd6a4f121ca35509af06a0be99093d08462f53052.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args pid, this.address
            mem[ceil32(return_data.size) + 160 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require totalShares
            mem[(2 * ceil32(return_data.size)) + 160] = 30
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: subtraction overflow'
            if totalShares * principalOf[msg.sender] / ext_call.return_data[0] < sharesOf[msg.sender]:
                if totalShares * principalOf[msg.sender] / ext_call.return_data[0] > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                totalShares -= totalShares * principalOf[msg.sender] / ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 224] = 30
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                if totalShares * principalOf[msg.sender] / ext_call.return_data[0] > sharesOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                sharesOf[msg.sender] -= totalShares * principalOf[msg.sender] / ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if totalShares * principalOf[msg.sender] / ext_call.return_data[0] * ext_call.return_data[0] / totalShares > principalOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                principalOf[msg.sender] -= totalShares * principalOf[msg.sender] / ext_call.return_data[0] * ext_call.return_data[0] / totalShares
                mem[(2 * ceil32(return_data.size)) + 356] = this.address
                require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 356] = this.address
                require ext_code.size(rewardsTokenAddress)
                staticcall rewardsTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 388] = totalShares * principalOf[msg.sender] / ext_call.return_data[0] * ext_call.return_data[0] / totalShares
                require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
                call 0xd6a4f121ca35509af06a0be99093d08462f53052.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, totalShares * principalOf[msg.sender] / ext_call.return_data[0] * ext_call.return_data[0] / totalShares
            else:
                if sharesOf[msg.sender] > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                totalShares -= sharesOf[msg.sender]
                mem[(2 * ceil32(return_data.size)) + 224] = 30
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                if sharesOf[msg.sender] > sharesOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                sharesOf[msg.sender] = 0
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if sharesOf[msg.sender] * ext_call.return_data[0] / totalShares > principalOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                principalOf[msg.sender] -= sharesOf[msg.sender] * ext_call.return_data[0] / totalShares
                mem[(2 * ceil32(return_data.size)) + 356] = this.address
                require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 356] = this.address
                require ext_code.size(rewardsTokenAddress)
                staticcall rewardsTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 388] = sharesOf[msg.sender] * ext_call.return_data[0] / totalShares
                require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
                call 0xd6a4f121ca35509af06a0be99093d08462f53052.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, sharesOf[msg.sender] * ext_call.return_data[0] / totalShares
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 356] = this.address
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 352] = 30
    mem[(7 * ceil32(return_data.size)) + 384] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[(7 * ceil32(return_data.size)) + 420] = this.address
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(7 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + sub_4667e8c4 < sub_4667e8c4:
        revert with 0, 'SafeMath: addition overflow'
    mem[(8 * ceil32(return_data.size)) + 416] = 30
    mem[(8 * ceil32(return_data.size)) + 448] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0] + sub_4667e8c4:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not stor206:
        mem[(8 * ceil32(return_data.size)) + 516] = msg.sender
        mem[(8 * ceil32(return_data.size)) + 548] = 0
        mem[(8 * ceil32(return_data.size)) + 480] = 68
        mem[(8 * ceil32(return_data.size)) + 516 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(8 * ceil32(return_data.size)) + 512 len 4] = unknown_0xa9059cbb(?????)
        mem[(8 * ceil32(return_data.size)) + 580] = 32
        mem[(8 * ceil32(return_data.size)) + 612] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardsTokenAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(rewardsTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(8 * ceil32(return_data.size)) + 644 len 96] = unknown_0xa9059cbb(?????), msg.sender, 0, 0
        mem[(8 * ceil32(return_data.size)) + 712] = 0
        call rewardsTokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 0, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(8 * ceil32(return_data.size)) + 676 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(8 * ceil32(return_data.size)) + 676] == bool(mem[(8 * ceil32(return_data.size)) + 676])
                if not mem[(8 * ceil32(return_data.size)) + 676]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdrawn(address arg1, uint256 arg2, uint256 arg3):
                       0,
                       msg.sender,
    else:
        mem[(8 * ceil32(return_data.size)) + 484] = this.address
        require ext_code.size(stor206)
        staticcall stor206.isMinter(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[(8 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            mem[(10 * ceil32(return_data.size)) + 516] = msg.sender
            mem[(10 * ceil32(return_data.size)) + 548] = 0
            mem[(10 * ceil32(return_data.size)) + 480] = 68
            mem[(10 * ceil32(return_data.size)) + 516 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(10 * ceil32(return_data.size)) + 512 len 4] = unknown_0xa9059cbb(?????)
            mem[(10 * ceil32(return_data.size)) + 580] = 32
            mem[(10 * ceil32(return_data.size)) + 612] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardsTokenAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(rewardsTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(10 * ceil32(return_data.size)) + 644 len 96] = unknown_0xa9059cbb(?????), msg.sender, 0, 0
            mem[(10 * ceil32(return_data.size)) + 712] = 0
            call rewardsTokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(10 * ceil32(return_data.size)) + 676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(10 * ceil32(return_data.size)) + 676] == bool(mem[(10 * ceil32(return_data.size)) + 676])
                    if not mem[(10 * ceil32(return_data.size)) + 676]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(address arg1, uint256 arg2, uint256 arg3):
                           0,
                           msg.sender,
        else:
            mem[(10 * ceil32(return_data.size)) + 484] = 0
            mem[(10 * ceil32(return_data.size)) + 516] = depositedAt[msg.sender]
            require ext_code.size(stor206)
            staticcall stor206.withdrawalFee(uint256 arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args 0, depositedAt[msg.sender]
            mem[(10 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 1000:
                mem[(11 * ceil32(return_data.size)) + 516] = msg.sender
                mem[(11 * ceil32(return_data.size)) + 548] = 0
                mem[(11 * ceil32(return_data.size)) + 480] = 68
                mem[(11 * ceil32(return_data.size)) + 516 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(11 * ceil32(return_data.size)) + 512 len 4] = unknown_0xa9059cbb(?????)
                mem[(11 * ceil32(return_data.size)) + 580] = 32
                mem[(11 * ceil32(return_data.size)) + 612] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardsTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(rewardsTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(11 * ceil32(return_data.size)) + 644 len 96] = unknown_0xa9059cbb(?????), msg.sender, 0, 0
                mem[(11 * ceil32(return_data.size)) + 712] = 0
                call rewardsTokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 0, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(11 * ceil32(return_data.size)) + 676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(11 * ceil32(return_data.size)) + 676] == bool(mem[(11 * ceil32(return_data.size)) + 676])
                        if not mem[(11 * ceil32(return_data.size)) + 676]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawn(0, ext_call.return_data[0], msg.sender);
            else:
                require ext_code.size(stor206)
                call stor206.mintForV2(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args rewardsTokenAddress, ext_call.return_data[0], 0, msg.sender, depositedAt[msg.sender]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(11 * ceil32(return_data.size)) + 480] = 30
                mem[(11 * ceil32(return_data.size)) + 512] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[(11 * ceil32(return_data.size)) + 580] = msg.sender
                mem[(11 * ceil32(return_data.size)) + 612] = -ext_call.return_data[0]
                mem[(11 * ceil32(return_data.size)) + 544] = 68
                mem[(11 * ceil32(return_data.size)) + 580 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(11 * ceil32(return_data.size)) + 576 len 4] = unknown_0xa9059cbb(?????)
                mem[(11 * ceil32(return_data.size)) + 644] = 32
                mem[(11 * ceil32(return_data.size)) + 676] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardsTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(rewardsTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(11 * ceil32(return_data.size)) + 708 len 96] = unknown_0xa9059cbb(?????), msg.sender, -ext_call.return_data[0], 0
                mem[(11 * ceil32(return_data.size)) + 776] = 0
                call rewardsTokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, -ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, -ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(11 * ceil32(return_data.size)) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(11 * ceil32(return_data.size)) + 740] == bool(mem[(11 * ceil32(return_data.size)) + 740])
                        if not mem[(11 * ceil32(return_data.size)) + 740]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawn(-ext_call.return_data[0], ext_call.return_data[0], msg.sender);
}



}
