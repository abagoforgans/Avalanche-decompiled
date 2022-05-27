contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1)
#
const sub_4225229c(?) = 0xdc13687554205e5b89ac783db14bb5bba4a1edac

const sub_9f4f7fd8(?) = 0xce095a9657a02025081e0607c8d8b081c76a75ea

const joeAddress = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd


address owner;
uint32 stor1;
address sub_c0fcbda9Address;
uint256 stor1;
address wantAddress;
address sub_89cf7e4dAddress;
uint256 poolId;
array of address sub_38946a8c;

function sub_38946a8c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_38946a8c.length
    return sub_38946a8c[arg1]
}

function poolId() payable {
    return poolId
}

function sub_89cf7e4d(?) payable {
    return sub_89cf7e4dAddress
}

function owner() payable {
    return owner
}

function sub_c0fcbda9(?) payable {
    return address(sub_c0fcbda9Address)
}

function wantAddress() payable {
    return wantAddress
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

function wantLockedInHere() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[132] = this.address
    require ext_code.size(0xdc13687554205e5b89ac783db14bb5bba4a1edac)
    call 0xdc13687554205e5b89ac783db14bb5bba4a1edac.claimReward(uint8 arg1, address arg2) with:
         gas gas_remaining wei
        args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    require ext_code.size(sub_89cf7e4dAddress)
    staticcall sub_89cf7e4dAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    require ext_code.size(0xce095a9657a02025081e0607c8d8b081c76a75ea)
    call 0xce095a9657a02025081e0607c8d8b081c76a75ea.redeem(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + 132] = address(sub_c0fcbda9Address)
        mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(4 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 296] = arg1
                mem[(4 * ceil32(return_data.size)) + 328] = 160
                mem[(4 * ceil32(return_data.size)) + 424] = sub_38946a8c.length
                mem[0] = 5
                idx = 0
                s = (4 * ceil32(return_data.size)) + 456
                t = 0
                while idx < sub_38946a8c.length:
                    mem[s] = sub_38946a8c[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 1
                    continue 
                mem[(4 * ceil32(return_data.size)) + 360] = this.address
                mem[(4 * ceil32(return_data.size)) + 392] = block.timestamp + 600
                require ext_code.size(address(sub_c0fcbda9Address))
                call address(sub_c0fcbda9Address).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg1, Array(len=sub_38946a8c.length, data=mem[(4 * ceil32(return_data.size)) + 456 len 32 * sub_38946a8c.length]), address(this.address), block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 260
                require return_data.size >= 32
                _2779 = mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                require mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 260 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                _2795 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                mem[(6 * ceil32(return_data.size)) + 260] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                require return_data.size >= _2779 + (32 * _2795) + 32
                mem[(6 * ceil32(return_data.size)) + 292 len 32 * _2795] = mem[(4 * ceil32(return_data.size)) + _2779 + 292 len 32 * _2795]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3963 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3979 = mem[_3963]
                _3995 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _3979
                _4015 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_3995 + 100] = 32
                mem[_3995 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _4123 = mem[_4015]
                mem[_3995 + 164 len ceil32(mem[_4015])] = mem[_4015 + 32 len ceil32(mem[_4015])]
                if ceil32(_4123) > _4123:
                    mem[_4123 + _3995 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_3995 + 168 len _4123 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, address(this.address) << 64 == bool(0, address(this.address) << 64)
                        if not 0, address(this.address) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_3995 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_3995 + 196] == bool(mem[_3995 + 196])
                        if not mem[_3995 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require ext_call.return_data[0] >= 32
                require 0, address(this.address) << 64 == bool(0, address(this.address) << 64)
                if not 0, address(this.address) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(4 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 296] = arg1
                mem[(4 * ceil32(return_data.size)) + 328] = 160
                mem[(4 * ceil32(return_data.size)) + 424] = sub_38946a8c.length
                mem[0] = 5
                idx = 0
                s = (4 * ceil32(return_data.size)) + 456
                t = 0
                while idx < sub_38946a8c.length:
                    mem[s] = sub_38946a8c[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 1
                    continue 
                mem[(4 * ceil32(return_data.size)) + 360] = this.address
                mem[(4 * ceil32(return_data.size)) + 392] = block.timestamp + 600
                require ext_code.size(address(sub_c0fcbda9Address))
                call address(sub_c0fcbda9Address).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg1, Array(len=sub_38946a8c.length, data=mem[(4 * ceil32(return_data.size)) + 456 len 32 * sub_38946a8c.length]), address(this.address), block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 260
                require return_data.size >= 32
                _2780 = mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                require mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (4 * ceil32(return_data.size)) + return_data.size + 260 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                _2796 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                mem[(6 * ceil32(return_data.size)) + 260] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                require return_data.size >= _2780 + (32 * _2796) + 32
                mem[(6 * ceil32(return_data.size)) + 292 len 32 * _2796] = mem[(4 * ceil32(return_data.size)) + _2780 + 292 len 32 * _2796]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3964 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3980 = mem[_3964]
                _3996 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _3980
                _4017 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_3996 + 100] = 32
                mem[_3996 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _4124 = mem[_4017]
                mem[_3996 + 164 len ceil32(mem[_4017])] = mem[_4017 + 32 len ceil32(mem[_4017])]
                if ceil32(_4124) > _4124:
                    mem[_4124 + _3996 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_3996 + 168 len _4124 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, address(this.address) << 64 == bool(0, address(this.address) << 64)
                        if not 0, address(this.address) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_3996 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_3996 + 196] == bool(mem[_3996 + 196])
                        if not mem[_3996 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg1
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = sub_38946a8c.length
                mem[0] = 5
                idx = 0
                s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                t = 0
                while idx < sub_38946a8c.length:
                    mem[s] = sub_38946a8c[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 1
                    continue 
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 600
                require ext_code.size(address(sub_c0fcbda9Address))
                call address(sub_c0fcbda9Address).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg1, Array(len=sub_38946a8c.length, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * sub_38946a8c.length]), address(this.address), block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                require return_data.size >= 32
                _2781 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                _2797 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                require return_data.size >= _2781 + (32 * _2797) + 32
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2797] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _2781 + 293 len 32 * _2797]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3965 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3981 = mem[_3965]
                _3997 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _3981
                _4019 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_3997 + 100] = 32
                mem[_3997 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _4125 = mem[_4019]
                mem[_3997 + 164 len ceil32(mem[_4019])] = mem[_4019 + 32 len ceil32(mem[_4019])]
                if ceil32(_4125) > _4125:
                    mem[_4125 + _3997 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_3997 + 168 len _4125 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, address(this.address) << 64 == bool(0, address(this.address) << 64)
                        if not 0, address(this.address) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_3997 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_3997 + 196] == bool(mem[_3997 + 196])
                        if not mem[_3997 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg1
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = sub_38946a8c.length
                mem[0] = 5
                idx = 0
                s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                t = 0
                while idx < sub_38946a8c.length:
                    mem[s] = sub_38946a8c[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 1
                    continue 
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 600
                require ext_code.size(address(sub_c0fcbda9Address))
                call address(sub_c0fcbda9Address).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg1, Array(len=sub_38946a8c.length, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * sub_38946a8c.length]), address(this.address), block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                require return_data.size >= 32
                _2782 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                _2798 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                require return_data.size >= _2782 + (32 * _2798) + 32
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2798] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _2782 + 293 len 32 * _2798]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3966 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3982 = mem[_3966]
                _3998 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _3982
                _4021 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_3998 + 100] = 32
                mem[_3998 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _4126 = mem[_4021]
                mem[_3998 + 164 len ceil32(mem[_4021])] = mem[_4021 + 32 len ceil32(mem[_4021])]
                if ceil32(_4126) > _4126:
                    mem[_4126 + _3998 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_3998 + 168 len _4126 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, address(this.address) << 64 == bool(0, address(this.address) << 64)
                        if not 0, address(this.address) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_3998 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_3998 + 196] == bool(mem[_3998 + 196])
                        if not mem[_3998 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        mem[(4 * ceil32(return_data.size)) + 132] = address(sub_c0fcbda9Address)
        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
        staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(sub_c0fcbda9Address)
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(6 * ceil32(return_data.size)) + 132] = address(sub_c0fcbda9Address)
        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = 68
        mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1)
        mem[(6 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(6 * ceil32(return_data.size)) + 196] = 32
        mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd):
            revert with 0, 'Address: call to non-contract'
        mem[(6 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
        mem[(6 * ceil32(return_data.size)) + 328] = 0
        call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(6 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 296] = arg1
                mem[(6 * ceil32(return_data.size)) + 328] = 160
                mem[(6 * ceil32(return_data.size)) + 424] = sub_38946a8c.length
                mem[0] = 5
                idx = 0
                s = (6 * ceil32(return_data.size)) + 456
                t = 0
                while idx < sub_38946a8c.length:
                    mem[s] = sub_38946a8c[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 1
                    continue 
                mem[(6 * ceil32(return_data.size)) + 360] = this.address
                mem[(6 * ceil32(return_data.size)) + 392] = block.timestamp + 600
                require ext_code.size(address(sub_c0fcbda9Address))
                call address(sub_c0fcbda9Address).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg1, Array(len=sub_38946a8c.length, data=mem[(6 * ceil32(return_data.size)) + 456 len 32 * sub_38946a8c.length]), address(this.address), block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 260
                require return_data.size >= 32
                _2787 = mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 260 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                _2803 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                mem[(7 * ceil32(return_data.size)) + 260] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                require return_data.size >= _2787 + (32 * _2803) + 32
                mem[(7 * ceil32(return_data.size)) + 292 len 32 * _2803] = mem[(6 * ceil32(return_data.size)) + _2787 + 292 len 32 * _2803]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3971 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3987 = mem[_3971]
                _4003 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _3987
                _4031 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_4003 + 100] = 32
                mem[_4003 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _4131 = mem[_4031]
                mem[_4003 + 164 len ceil32(mem[_4031])] = mem[_4031 + 32 len ceil32(mem[_4031])]
                if ceil32(_4131) > _4131:
                    mem[_4131 + _4003 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_4003 + 168 len _4131 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, address(this.address) << 64 == bool(0, address(this.address) << 64)
                        if not 0, address(this.address) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_4003 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_4003 + 196] == bool(mem[_4003 + 196])
                        if not mem[_4003 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require ext_call.return_data[0] >= 32
                require 0, address(this.address) << 64 == bool(0, address(this.address) << 64)
                if not 0, address(this.address) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(6 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 296] = arg1
                mem[(6 * ceil32(return_data.size)) + 328] = 160
                mem[(6 * ceil32(return_data.size)) + 424] = sub_38946a8c.length
                mem[0] = 5
                idx = 0
                s = (6 * ceil32(return_data.size)) + 456
                t = 0
                while idx < sub_38946a8c.length:
                    mem[s] = sub_38946a8c[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 1
                    continue 
                mem[(6 * ceil32(return_data.size)) + 360] = this.address
                mem[(6 * ceil32(return_data.size)) + 392] = block.timestamp + 600
                require ext_code.size(address(sub_c0fcbda9Address))
                call address(sub_c0fcbda9Address).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg1, Array(len=sub_38946a8c.length, data=mem[(6 * ceil32(return_data.size)) + 456 len 32 * sub_38946a8c.length]), address(this.address), block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 260
                require return_data.size >= 32
                _2788 = mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 260 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                _2804 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                mem[(7 * ceil32(return_data.size)) + 260] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                require return_data.size >= _2788 + (32 * _2804) + 32
                mem[(7 * ceil32(return_data.size)) + 292 len 32 * _2804] = mem[(6 * ceil32(return_data.size)) + _2788 + 292 len 32 * _2804]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3972 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3988 = mem[_3972]
                _4004 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _3988
                _4033 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_4004 + 100] = 32
                mem[_4004 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _4132 = mem[_4033]
                mem[_4004 + 164 len ceil32(mem[_4033])] = mem[_4033 + 32 len ceil32(mem[_4033])]
                if ceil32(_4132) > _4132:
                    mem[_4132 + _4004 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_4004 + 168 len _4132 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, address(this.address) << 64 == bool(0, address(this.address) << 64)
                        if not 0, address(this.address) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_4004 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_4004 + 196] == bool(mem[_4004 + 196])
                        if not mem[_4004 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(6 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg1
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = sub_38946a8c.length
                mem[0] = 5
                idx = 0
                s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                t = 0
                while idx < sub_38946a8c.length:
                    mem[s] = sub_38946a8c[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 1
                    continue 
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 600
                require ext_code.size(address(sub_c0fcbda9Address))
                call address(sub_c0fcbda9Address).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg1, Array(len=sub_38946a8c.length, data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * sub_38946a8c.length]), address(this.address), block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                require return_data.size >= 32
                _2789 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                _2805 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (7 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                require return_data.size >= _2789 + (32 * _2805) + 32
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2805] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + _2789 + 293 len 32 * _2805]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3973 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3989 = mem[_3973]
                _4005 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _3989
                _4035 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_4005 + 100] = 32
                mem[_4005 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _4133 = mem[_4035]
                mem[_4005 + 164 len ceil32(mem[_4035])] = mem[_4035 + 32 len ceil32(mem[_4035])]
                if ceil32(_4133) > _4133:
                    mem[_4133 + _4005 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_4005 + 168 len _4133 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, address(this.address) << 64 == bool(0, address(this.address) << 64)
                        if not 0, address(this.address) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_4005 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_4005 + 196] == bool(mem[_4005 + 196])
                        if not mem[_4005 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                if not mem[(6 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg1
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = sub_38946a8c.length
                mem[0] = 5
                idx = 0
                s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                t = 0
                while idx < sub_38946a8c.length:
                    mem[s] = sub_38946a8c[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 1
                    continue 
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 600
                require ext_code.size(address(sub_c0fcbda9Address))
                call address(sub_c0fcbda9Address).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg1, Array(len=sub_38946a8c.length, data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * sub_38946a8c.length]), address(this.address), block.timestamp + 600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                require return_data.size >= 32
                _2790 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                _2806 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (7 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                require return_data.size >= _2790 + (32 * _2806) + 32
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2806] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + _2790 + 293 len 32 * _2806]
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3974 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3990 = mem[_3974]
                _4006 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _3990
                _4037 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_4006 + 100] = 32
                mem[_4006 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _4134 = mem[_4037]
                mem[_4006 + 164 len ceil32(mem[_4037])] = mem[_4037 + 32 len ceil32(mem[_4037])]
                if ceil32(_4134) > _4134:
                    mem[_4134 + _4006 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_4006 + 168 len _4134 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, address(this.address) << 64 == bool(0, address(this.address) << 64)
                        if not 0, address(this.address) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_4006 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_4006 + 196] == bool(mem[_4006 + 196])
                        if not mem[_4006 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
