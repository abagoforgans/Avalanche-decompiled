contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 sub_c93de5f1;
uint256 sub_de53e716;
uint8 stor4;
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
    return sub_de53e716
}

function sub_c93de5f1(?) payable {
    return sub_c93de5f1
}

function sub_de53e716(?) payable {
    return sub_de53e716
}

function canRedeem() payable {
    return bool(stor4)
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
    require not stor4
    require sub_de53e716 <= 2500
    stor4 = 1
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
    require stor4
    if userInfo[address(msg.sender)] < 0:
        revert with 0, 'withdraw: not good'
    require ext_code.size(sub_4ceeef7cAddress)
    staticcall sub_4ceeef7cAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if userInfo[address(msg.sender)] and 1 > -1 / userInfo[address(msg.sender)]:
            revert with 'NH{q', 17
        require ext_code.size(sub_4ceeef7cAddress)
        call sub_4ceeef7cAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, userInfo[address(msg.sender)]
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if userInfo[address(msg.sender)] and 10^ext_call.return_data[31 len 1] > -1 / userInfo[address(msg.sender)]:
                revert with 'NH{q', 17
            require ext_code.size(sub_4ceeef7cAddress)
            call sub_4ceeef7cAddress.0xa9059cbb with:
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
            require ext_code.size(sub_4ceeef7cAddress)
            call sub_4ceeef7cAddress.0xa9059cbb with:
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
    require ext_code.size(tundraTokenAddress)
    staticcall tundraTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(tundraTokenAddress)
        staticcall tundraTokenAddress.0x70a08231 with:
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
            require ext_code.size(tundraTokenAddress)
            staticcall tundraTokenAddress.0x70a08231 with:
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
            require ext_code.size(tundraTokenAddress)
            staticcall tundraTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 50 * t * s:
                return 1
    require ext_code.size(sub_5dd6f92fAddress)
    staticcall sub_5dd6f92fAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(sub_5dd6f92fAddress)
        staticcall sub_5dd6f92fAddress.0x70a08231 with:
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
            require ext_code.size(sub_5dd6f92fAddress)
            staticcall sub_5dd6f92fAddress.0x70a08231 with:
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
            require ext_code.size(sub_5dd6f92fAddress)
            staticcall sub_5dd6f92fAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 25000 * t * s:
                return 1
    require ext_code.size(bookAddress)
    staticcall bookAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(spearAddress)
    staticcall spearAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_17993f43Address)
    staticcall sub_17993f43Address.0x70a08231 with:
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
    require block.timestamp >= 454483 * 3600
    require arg1 > 0
    require not stor4
    if sub_c93de5f1 and arg1 > -1 / sub_c93de5f1:
        revert with 'NH{q', 17
    if sub_de53e716 < arg1:
        revert with 'NH{q', 17
    require sub_de53e716 - arg1 >= 0
    require ext_code.size(presaleTokenAddress)
    staticcall presaleTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] >= sub_c93de5f1 * arg1
    require ext_code.size(tundraTokenAddress)
    staticcall tundraTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(tundraTokenAddress)
        staticcall tundraTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 50:
            if userInfo[address(msg.sender)] > -arg1 - 1:
                revert with 'NH{q', 17
            require userInfo[address(msg.sender)] + arg1 <= 200
        else:
            require ext_code.size(sub_5dd6f92fAddress)
            staticcall sub_5dd6f92fAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                require ext_code.size(sub_5dd6f92fAddress)
                staticcall sub_5dd6f92fAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > 25000:
                    if userInfo[address(msg.sender)] > -arg1 - 1:
                        revert with 'NH{q', 17
                    require userInfo[address(msg.sender)] + arg1 <= 200
                else:
                    require ext_code.size(bookAddress)
                    staticcall bookAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(spearAddress)
                    staticcall spearAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(sub_17993f43Address)
                    staticcall sub_17993f43Address.0x70a08231 with:
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
                        require userInfo[address(msg.sender)] + arg1 <= 100
                    else:
                        require userInfo[address(msg.sender)] + arg1 <= 200
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if 10^ext_call.return_data[31 len 1] > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca81:
                        revert with 'NH{q', 17
                    require ext_code.size(sub_5dd6f92fAddress)
                    staticcall sub_5dd6f92fAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] > 25000 * 10^uint8(ext_call.return_data[0]):
                        if userInfo[address(msg.sender)] > -arg1 - 1:
                            revert with 'NH{q', 17
                        require userInfo[address(msg.sender)] + arg1 <= 200
                    else:
                        require ext_code.size(bookAddress)
                        staticcall bookAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(spearAddress)
                        staticcall spearAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(sub_17993f43Address)
                        staticcall sub_17993f43Address.0x70a08231 with:
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
                            require userInfo[address(msg.sender)] + arg1 <= 100
                        else:
                            require userInfo[address(msg.sender)] + arg1 <= 200
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
                    require ext_code.size(sub_5dd6f92fAddress)
                    staticcall sub_5dd6f92fAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] > 25000 * t * s:
                        if userInfo[address(msg.sender)] > -arg1 - 1:
                            revert with 'NH{q', 17
                        require userInfo[address(msg.sender)] + arg1 <= 200
                    else:
                        require ext_code.size(bookAddress)
                        staticcall bookAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(spearAddress)
                        staticcall spearAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(sub_17993f43Address)
                        staticcall sub_17993f43Address.0x70a08231 with:
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
                            require userInfo[address(msg.sender)] + arg1 <= 100
                        else:
                            require userInfo[address(msg.sender)] + arg1 <= 200
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if 10^ext_call.return_data[31 len 1] > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                revert with 'NH{q', 17
            require ext_code.size(tundraTokenAddress)
            staticcall tundraTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 50 * 10^uint8(ext_call.return_data[0]):
                if userInfo[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                require userInfo[address(msg.sender)] + arg1 <= 200
            else:
                require ext_code.size(sub_5dd6f92fAddress)
                staticcall sub_5dd6f92fAddress.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    require ext_code.size(sub_5dd6f92fAddress)
                    staticcall sub_5dd6f92fAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] > 25000:
                        if userInfo[address(msg.sender)] > -arg1 - 1:
                            revert with 'NH{q', 17
                        require userInfo[address(msg.sender)] + arg1 <= 200
                    else:
                        require ext_code.size(bookAddress)
                        staticcall bookAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(spearAddress)
                        staticcall spearAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(sub_17993f43Address)
                        staticcall sub_17993f43Address.0x70a08231 with:
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
                            require userInfo[address(msg.sender)] + arg1 <= 100
                        else:
                            require userInfo[address(msg.sender)] + arg1 <= 200
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        if 10^ext_call.return_data[31 len 1] > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca81:
                            revert with 'NH{q', 17
                        require ext_code.size(sub_5dd6f92fAddress)
                        staticcall sub_5dd6f92fAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > 25000 * 10^uint8(ext_call.return_data[0]):
                            if userInfo[address(msg.sender)] > -arg1 - 1:
                                revert with 'NH{q', 17
                            require userInfo[address(msg.sender)] + arg1 <= 200
                        else:
                            require ext_code.size(bookAddress)
                            staticcall bookAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(spearAddress)
                            staticcall spearAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(sub_17993f43Address)
                            staticcall sub_17993f43Address.0x70a08231 with:
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
                                require userInfo[address(msg.sender)] + arg1 <= 100
                            else:
                                require userInfo[address(msg.sender)] + arg1 <= 200
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
                        require ext_code.size(sub_5dd6f92fAddress)
                        staticcall sub_5dd6f92fAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > 25000 * t * s:
                            if userInfo[address(msg.sender)] > -arg1 - 1:
                                revert with 'NH{q', 17
                            require userInfo[address(msg.sender)] + arg1 <= 200
                        else:
                            require ext_code.size(bookAddress)
                            staticcall bookAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(spearAddress)
                            staticcall spearAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(sub_17993f43Address)
                            staticcall sub_17993f43Address.0x70a08231 with:
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
                                require userInfo[address(msg.sender)] + arg1 <= 100
                            else:
                                require userInfo[address(msg.sender)] + arg1 <= 200
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
            require ext_code.size(tundraTokenAddress)
            staticcall tundraTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 50 * t * s:
                if userInfo[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                require userInfo[address(msg.sender)] + arg1 <= 200
            else:
                require ext_code.size(sub_5dd6f92fAddress)
                staticcall sub_5dd6f92fAddress.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    require ext_code.size(sub_5dd6f92fAddress)
                    staticcall sub_5dd6f92fAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] > 25000:
                        if userInfo[address(msg.sender)] > -arg1 - 1:
                            revert with 'NH{q', 17
                        require userInfo[address(msg.sender)] + arg1 <= 200
                    else:
                        require ext_code.size(bookAddress)
                        staticcall bookAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(spearAddress)
                        staticcall spearAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(sub_17993f43Address)
                        staticcall sub_17993f43Address.0x70a08231 with:
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
                            require userInfo[address(msg.sender)] + arg1 <= 100
                        else:
                            require userInfo[address(msg.sender)] + arg1 <= 200
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        if 10^ext_call.return_data[31 len 1] > 0x29f16b11c6d1e108c3f3e0370cdc8754f3775b8130164840e1719f7f8ca81:
                            revert with 'NH{q', 17
                        require ext_code.size(sub_5dd6f92fAddress)
                        staticcall sub_5dd6f92fAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > 25000 * 10^uint8(ext_call.return_data[0]):
                            if userInfo[address(msg.sender)] > -arg1 - 1:
                                revert with 'NH{q', 17
                            require userInfo[address(msg.sender)] + arg1 <= 200
                        else:
                            require ext_code.size(bookAddress)
                            staticcall bookAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(spearAddress)
                            staticcall spearAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(sub_17993f43Address)
                            staticcall sub_17993f43Address.0x70a08231 with:
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
                                require userInfo[address(msg.sender)] + arg1 <= 100
                            else:
                                require userInfo[address(msg.sender)] + arg1 <= 200
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
                        require ext_code.size(sub_5dd6f92fAddress)
                        staticcall sub_5dd6f92fAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > 25000 * t * s:
                            if userInfo[address(msg.sender)] > -arg1 - 1:
                                revert with 'NH{q', 17
                            require userInfo[address(msg.sender)] + arg1 <= 200
                        else:
                            require ext_code.size(bookAddress)
                            staticcall bookAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(spearAddress)
                            staticcall spearAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(sub_17993f43Address)
                            staticcall sub_17993f43Address.0x70a08231 with:
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
                                require userInfo[address(msg.sender)] + arg1 <= 100
                            else:
                                require userInfo[address(msg.sender)] + arg1 <= 200
    if sub_de53e716 < arg1:
        revert with 'NH{q', 17
    sub_de53e716 -= arg1
    require ext_code.size(presaleTokenAddress)
    call presaleTokenAddress.0x23b872dd with:
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
