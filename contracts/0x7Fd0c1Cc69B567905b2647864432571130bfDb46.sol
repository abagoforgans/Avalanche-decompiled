contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 sub_c93de5f1;
uint256 presaleAmount;
uint8 canRedeem;
address tundraTokenAddress; offset 8
address sub_5dd6f92fAddress;
address sub_17993f43Address;
address spearAddress;
address bookAddress;
address sub_4ceeef7cAddress;
address presaleTokenAddress;
address presaleWalletAddress;
mapping of uint256 userInfo;

function book() payable {
    return bookAddress
}

function sub_17993f43(?) payable {
    return sub_17993f43Address
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1]
}

function presaleWallet() payable {
    return presaleWalletAddress
}

function presaleToken() payable {
    return presaleTokenAddress
}

function sub_2c4d05e6(?) payable {
    return userInfo[address(msg.sender)]
}

function sub_4ceeef7c(?) payable {
    return sub_4ceeef7cAddress
}

function sub_5dd6f92f(?) payable {
    return sub_5dd6f92fAddress
}

function tundraToken() payable {
    return tundraTokenAddress
}

function owner() payable {
    return owner
}

function spear() payable {
    return spearAddress
}

function presaleAmount() payable {
    return presaleAmount
}

function sub_c93de5f1(?) payable {
    return sub_c93de5f1
}

function canRedeem() payable {
    return bool(canRedeem)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_32cbf8e2(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not canRedeem
    require presaleAmount <= 2500
    canRedeem = 1
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

function redeem() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require canRedeem
    if userInfo[address(msg.sender)] < 0:
        revert with 0, 'withdraw: not good'
    staticcall sub_4ceeef7cAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if userInfo[address(msg.sender)] and 1 > -1 / userInfo[address(msg.sender)]:
            revert with 'NH{q', 17
        call sub_4ceeef7cAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, userInfo[address(msg.sender)]
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if userInfo[address(msg.sender)] and 10^ext_call.return_data[31 len 1] > -1 / userInfo[address(msg.sender)]:
                revert with 'NH{q', 17
            call sub_4ceeef7cAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, userInfo[address(msg.sender)] * 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if userInfo[address(msg.sender)] and t * s > -1 / userInfo[address(msg.sender)]:
                revert with 'NH{q', 17
            call sub_4ceeef7cAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, userInfo[address(msg.sender)] * t * s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    userInfo[address(msg.sender)] = 0
    stor1 = 1
}

function sub_782ee57d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall tundraTokenAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        staticcall tundraTokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 50:
            return 1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if 10^ext_call.return_data[31 len 1] > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                revert with 'NH{q', 17
            staticcall tundraTokenAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 50 * 10^uint8(ext_call.return_data[0]):
                return 1
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if t * s > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                revert with 'NH{q', 17
            staticcall tundraTokenAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 50 * t * s:
                return 1
    staticcall sub_5dd6f92fAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        staticcall sub_5dd6f92fAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 25000:
            return 1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if 10^ext_call.return_data[31 len 1] > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca81:
                revert with 'NH{q', 17
            staticcall sub_5dd6f92fAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 25000 * 10^uint8(ext_call.return_data[0]):
                return 1
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if t * s > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca81:
                revert with 'NH{q', 17
            staticcall sub_5dd6f92fAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 25000 * t * s:
                return 1
    staticcall bookAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall spearAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall sub_17993f43Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    return 3 * ext_call.return_data[0] >= 3
}

function sub_169372b9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require block.timestamp >= 454891 * 3600
    require arg1 > 0
    require not canRedeem
    if sub_c93de5f1 and arg1 > -1 / sub_c93de5f1:
        revert with 'NH{q', 17
    if presaleAmount < arg1:
        revert with 'NH{q', 17
    require presaleAmount - arg1 >= 0
    staticcall presaleTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] >= sub_c93de5f1 * arg1
    staticcall tundraTokenAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        staticcall tundraTokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 50:
            if userInfo[address(msg.sender)] > -arg1 - 1:
                revert with 'NH{q', 17
            require userInfo[address(msg.sender)] + arg1 <= 400
        else:
            staticcall sub_5dd6f92fAddress.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                staticcall sub_5dd6f92fAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > 25000:
                    if userInfo[address(msg.sender)] > -arg1 - 1:
                        revert with 'NH{q', 17
                    require userInfo[address(msg.sender)] + arg1 <= 400
                else:
                    staticcall bookAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    staticcall spearAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    staticcall sub_17993f43Address.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    if userInfo[address(msg.sender)] > -arg1 - 1:
                        revert with 'NH{q', 17
                    if 3 * ext_call.return_data[0] < 3:
                        require userInfo[address(msg.sender)] + arg1 <= 200
                    else:
                        require userInfo[address(msg.sender)] + arg1 <= 400
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if 10^ext_call.return_data[31 len 1] > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca81:
                        revert with 'NH{q', 17
                    staticcall sub_5dd6f92fAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] > 25000 * 10^uint8(ext_call.return_data[0]):
                        if userInfo[address(msg.sender)] > -arg1 - 1:
                            revert with 'NH{q', 17
                        require userInfo[address(msg.sender)] + arg1 <= 400
                    else:
                        staticcall bookAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        staticcall spearAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        staticcall sub_17993f43Address.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        if userInfo[address(msg.sender)] > -arg1 - 1:
                            revert with 'NH{q', 17
                        if 3 * ext_call.return_data[0] < 3:
                            require userInfo[address(msg.sender)] + arg1 <= 200
                        else:
                            require userInfo[address(msg.sender)] + arg1 <= 400
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if t * s > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca81:
                        revert with 'NH{q', 17
                    staticcall sub_5dd6f92fAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] > 25000 * t * s:
                        if userInfo[address(msg.sender)] > -arg1 - 1:
                            revert with 'NH{q', 17
                        require userInfo[address(msg.sender)] + arg1 <= 400
                    else:
                        staticcall bookAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        staticcall spearAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        staticcall sub_17993f43Address.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        if userInfo[address(msg.sender)] > -arg1 - 1:
                            revert with 'NH{q', 17
                        if 3 * ext_call.return_data[0] < 3:
                            require userInfo[address(msg.sender)] + arg1 <= 200
                        else:
                            require userInfo[address(msg.sender)] + arg1 <= 400
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if 10^ext_call.return_data[31 len 1] > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                revert with 'NH{q', 17
            staticcall tundraTokenAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 50 * 10^uint8(ext_call.return_data[0]):
                if userInfo[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                require userInfo[address(msg.sender)] + arg1 <= 400
            else:
                staticcall sub_5dd6f92fAddress.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    staticcall sub_5dd6f92fAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] > 25000:
                        if userInfo[address(msg.sender)] > -arg1 - 1:
                            revert with 'NH{q', 17
                        require userInfo[address(msg.sender)] + arg1 <= 400
                    else:
                        staticcall bookAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        staticcall spearAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        staticcall sub_17993f43Address.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        if userInfo[address(msg.sender)] > -arg1 - 1:
                            revert with 'NH{q', 17
                        if 3 * ext_call.return_data[0] < 3:
                            require userInfo[address(msg.sender)] + arg1 <= 200
                        else:
                            require userInfo[address(msg.sender)] + arg1 <= 400
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        if 10^ext_call.return_data[31 len 1] > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca81:
                            revert with 'NH{q', 17
                        staticcall sub_5dd6f92fAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > 25000 * 10^uint8(ext_call.return_data[0]):
                            if userInfo[address(msg.sender)] > -arg1 - 1:
                                revert with 'NH{q', 17
                            require userInfo[address(msg.sender)] + arg1 <= 400
                        else:
                            staticcall bookAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            staticcall spearAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            staticcall sub_17993f43Address.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            if userInfo[address(msg.sender)] > -arg1 - 1:
                                revert with 'NH{q', 17
                            if 3 * ext_call.return_data[0] < 3:
                                require userInfo[address(msg.sender)] + arg1 <= 200
                            else:
                                require userInfo[address(msg.sender)] + arg1 <= 400
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        if t * s > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca81:
                            revert with 'NH{q', 17
                        staticcall sub_5dd6f92fAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > 25000 * t * s:
                            if userInfo[address(msg.sender)] > -arg1 - 1:
                                revert with 'NH{q', 17
                            require userInfo[address(msg.sender)] + arg1 <= 400
                        else:
                            staticcall bookAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            staticcall spearAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            staticcall sub_17993f43Address.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            if userInfo[address(msg.sender)] > -arg1 - 1:
                                revert with 'NH{q', 17
                            if 3 * ext_call.return_data[0] < 3:
                                require userInfo[address(msg.sender)] + arg1 <= 200
                            else:
                                require userInfo[address(msg.sender)] + arg1 <= 400
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if t * s > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                revert with 'NH{q', 17
            staticcall tundraTokenAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 50 * t * s:
                if userInfo[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                require userInfo[address(msg.sender)] + arg1 <= 400
            else:
                staticcall sub_5dd6f92fAddress.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    staticcall sub_5dd6f92fAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] > 25000:
                        if userInfo[address(msg.sender)] > -arg1 - 1:
                            revert with 'NH{q', 17
                        require userInfo[address(msg.sender)] + arg1 <= 400
                    else:
                        staticcall bookAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        staticcall spearAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        staticcall sub_17993f43Address.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        if userInfo[address(msg.sender)] > -arg1 - 1:
                            revert with 'NH{q', 17
                        if 3 * ext_call.return_data[0] < 3:
                            require userInfo[address(msg.sender)] + arg1 <= 200
                        else:
                            require userInfo[address(msg.sender)] + arg1 <= 400
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        if 10^ext_call.return_data[31 len 1] > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca81:
                            revert with 'NH{q', 17
                        staticcall sub_5dd6f92fAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > 25000 * 10^uint8(ext_call.return_data[0]):
                            if userInfo[address(msg.sender)] > -arg1 - 1:
                                revert with 'NH{q', 17
                            require userInfo[address(msg.sender)] + arg1 <= 400
                        else:
                            staticcall bookAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            staticcall spearAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            staticcall sub_17993f43Address.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            if userInfo[address(msg.sender)] > -arg1 - 1:
                                revert with 'NH{q', 17
                            if 3 * ext_call.return_data[0] < 3:
                                require userInfo[address(msg.sender)] + arg1 <= 200
                            else:
                                require userInfo[address(msg.sender)] + arg1 <= 400
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        if t * s > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca81:
                            revert with 'NH{q', 17
                        staticcall sub_5dd6f92fAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > 25000 * t * s:
                            if userInfo[address(msg.sender)] > -arg1 - 1:
                                revert with 'NH{q', 17
                            require userInfo[address(msg.sender)] + arg1 <= 400
                        else:
                            staticcall bookAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            staticcall spearAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            staticcall sub_17993f43Address.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            if userInfo[address(msg.sender)] > -arg1 - 1:
                                revert with 'NH{q', 17
                            if 3 * ext_call.return_data[0] < 3:
                                require userInfo[address(msg.sender)] + arg1 <= 200
                            else:
                                require userInfo[address(msg.sender)] + arg1 <= 400
    if presaleAmount < arg1:
        revert with 'NH{q', 17
    presaleAmount -= arg1
    call presaleTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, presaleWalletAddress, sub_c93de5f1 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if userInfo[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)] += arg1
    stor1 = 1
}



}
