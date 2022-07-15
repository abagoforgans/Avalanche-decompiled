contract main {




// =====================  Runtime code  =====================


#
#  - sub_36a1bbbd(?)
#  - sub_831e81a4(?)
#
address owner;
address sub_3462eb78Address;
uint256 sub_f425f560;
uint256 stor3;
uint8 stor4;
address sub_a6c99117Address; offset 8

function sub_3462eb78(?) payable {
    return sub_3462eb78Address
}

function owner() payable {
    return owner
}

function sub_a6c99117(?) payable {
    return sub_a6c99117Address
}

function sub_f425f560(?) payable {
    return sub_f425f560
}

function _fallback() payable {
    revert
}

function sub_26f73544(?) payable {
    return stor3, bool(stor4)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_b5c01e45(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f425f560 = arg1
}

function sub_79aa7b93(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a6c99117Address = address(arg1)
}

function sub_0b37f588(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
    stor4 = uint8(bool(arg2))
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

function ownerWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
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
}

function sub_6017b9f7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(sub_3462eb78Address)
    staticcall sub_3462eb78Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
        if 3 > !uint8(ext_call.return_data[0]):
            revert with 0, 17
        if uint8(ext_call.return_data[0]) > -1:
            revert with 0, 17
        if 3 > !uint8(ext_call.return_data[0]):
            revert with 0, 17
        if not bool(uint8(ext_call.return_data[0]) + 3):
            if not uint8(ext_call.return_data[0]) + 3 / 2:
                return 1
            if bool(bool(uint8(ext_call.return_data[0]) + 3 / 2 < 78)) or bool(bool(uint8(ext_call.return_data[0]) + 3 / 2 < 32)):
                return 10^(uint8(ext_call.return_data[0]) + 3 / 2)
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) + 3 / 2
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
        else:
            if uint8(ext_call.return_data[0]) + 3 / 2 > -2:
                revert with 0, 17
            if not (uint8(ext_call.return_data[0]) + 3 / 2) + 1:
                return 1
            if bool(bool((uint8(ext_call.return_data[0]) + 3 / 2) + 1 < 78)) or bool(bool((uint8(ext_call.return_data[0]) + 3 / 2) + 1 < 32)):
                return 10^((uint8(ext_call.return_data[0]) + 3 / 2) + 1)
            s = 10
            t = 1
            idx = (uint8(ext_call.return_data[0]) + 3 / 2) + 1
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
    else:
        if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if uint8(ext_call.return_data[0]) > !(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
            revert with 0, 17
        if 3 > !((2 * uint8(ext_call.return_data[0])) - ext_call.return_data[31 len 1]):
            revert with 0, 17
        if uint8(ext_call.return_data[0]) > !(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
            revert with 0, 17
        if 3 > !((2 * uint8(ext_call.return_data[0])) - ext_call.return_data[31 len 1]):
            revert with 0, 17
        if not bool((2 * uint8(ext_call.return_data[0])) + -ext_call.return_data[31 len 1] + 3):
            if not (2 * uint8(ext_call.return_data[0])) + -ext_call.return_data[31 len 1] + 3 / 2:
                return 1
            if bool(bool((2 * uint8(ext_call.return_data[0])) + -ext_call.return_data[31 len 1] + 3 / 2 < 78)) or bool(bool((2 * uint8(ext_call.return_data[0])) + -ext_call.return_data[31 len 1] + 3 / 2 < 32)):
                return 10^((2 * uint8(ext_call.return_data[0])) + -ext_call.return_data[31 len 1] + 3 / 2)
            s = 10
            t = 1
            idx = (2 * uint8(ext_call.return_data[0])) + -ext_call.return_data[31 len 1] + 3 / 2
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
        else:
            if (2 * uint8(ext_call.return_data[0])) + -ext_call.return_data[31 len 1] + 3 / 2 > -2:
                revert with 0, 17
            if not ((2 * uint8(ext_call.return_data[0])) + -ext_call.return_data[31 len 1] + 3 / 2) + 1:
                return 1
            if bool(bool(((2 * uint8(ext_call.return_data[0])) + -ext_call.return_data[31 len 1] + 3 / 2) + 1 < 78)) or bool(bool(((2 * uint8(ext_call.return_data[0])) + -ext_call.return_data[31 len 1] + 3 / 2) + 1 < 32)):
                return 10^(((2 * uint8(ext_call.return_data[0])) + -ext_call.return_data[31 len 1] + 3 / 2) + 1)
            s = 10
            t = 1
            idx = ((2 * uint8(ext_call.return_data[0])) + -ext_call.return_data[31 len 1] + 3 / 2) + 1
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
    if t > -1 / s:
        revert with 0, 17
    return (s * t)
}

function sub_86855643(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'CT_TOKEN_AMOUNT_EXCEED_SUPPLY'
    if not arg2:
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath sub failed'
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if sub_3462eb78Address == address(arg3):
                    return 0
                if not address(arg3):
                    return 0
                if not sub_a6c99117Address:
                    revert with 0, 'NO_PRICE_ORACLE!'
                require ext_code.size(sub_a6c99117Address)
                staticcall sub_a6c99117Address.0x27109066 with:
                        gas gas_remaining wei
                       args address(arg3), sub_3462eb78Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath mul failed'
            if ext_call.return_data[0] * ext_call.return_data[0] > 0x36f9bfb3af7b756fad5cd10396a21346cbefc1bf33a44ab72e36108ba8:
                revert with 0, 17
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 78125000 != ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'SafeMath mul failed'
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] > -1:
                revert with 0, 17
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] < 78125000 * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'SafeMath add failed'
            if 0 > 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 < 0:
                revert with 0, 17
            if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18:
                if sub_3462eb78Address == address(arg3):
                    return 0
                if not address(arg3):
                    return 0
                if not sub_a6c99117Address:
                    revert with 0, 'NO_PRICE_ORACLE!'
                require ext_code.size(sub_a6c99117Address)
                staticcall sub_a6c99117Address.0x27109066 with:
                        gas gas_remaining wei
                       args address(arg3), sub_3462eb78Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 and sub_f425f560 > -1 / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18:
                revert with 0, 17
            if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18:
                revert with 0, 18
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 != sub_f425f560:
                revert with 0, 'SafeMath mul failed'
            if sub_3462eb78Address == address(arg3):
                return (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560)
            if not address(arg3):
                return (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560)
            if not sub_a6c99117Address:
                revert with 0, 'NO_PRICE_ORACLE!'
            require ext_code.size(sub_a6c99117Address)
            staticcall sub_a6c99117Address.0x27109066 with:
                    gas gas_remaining wei
                   args address(arg3), sub_3462eb78Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560:
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 and ext_call.return_data[18 len 14] > -1 / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560:
                revert with 0, 17
            if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560:
                revert with 0, 18
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14] / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 != ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath mul failed'
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath mul failed'
        if 10^18 * ext_call.return_data[0] > 0x1e0626c036ca9b87da35af0ec5b568fd1e34eb1f70626cd312549:
            revert with 0, 17
        if 149999843750000 * 10^18 * ext_call.return_data[0] / 149999843750000 != 10^18 * ext_call.return_data[0]:
            revert with 0, 'SafeMath mul failed'
        if not ext_call.return_data[0]:
            if 0 > !(149999843750000 * 10^18 * ext_call.return_data[0] / 2):
                revert with 0, 17
            if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 < 0:
                revert with 0, 'SafeMath add failed'
            if 0 > 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 < 0:
                revert with 0, 17
            if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18:
                if sub_3462eb78Address == address(arg3):
                    return 0
                if not address(arg3):
                    return 0
                if not sub_a6c99117Address:
                    revert with 0, 'NO_PRICE_ORACLE!'
                require ext_code.size(sub_a6c99117Address)
                staticcall sub_a6c99117Address.0x27109066 with:
                        gas gas_remaining wei
                       args address(arg3), sub_3462eb78Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 and sub_f425f560 > -1 / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18:
                revert with 0, 17
            if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18:
                revert with 0, 18
            if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 != sub_f425f560:
                revert with 0, 'SafeMath mul failed'
            if sub_3462eb78Address == address(arg3):
                return (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560)
            if not address(arg3):
                return (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560)
            if not sub_a6c99117Address:
                revert with 0, 'NO_PRICE_ORACLE!'
            require ext_code.size(sub_a6c99117Address)
            staticcall sub_a6c99117Address.0x27109066 with:
                    gas gas_remaining wei
                   args address(arg3), sub_3462eb78Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560:
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 and ext_call.return_data[18 len 14] > -1 / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560:
                revert with 0, 17
            if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560:
                revert with 0, 18
            if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14] / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 != ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath mul failed'
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath mul failed'
        if ext_call.return_data[0] * ext_call.return_data[0] > 0x36f9bfb3af7b756fad5cd10396a21346cbefc1bf33a44ab72e36108ba8:
            revert with 0, 17
        if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 78125000 != ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 'SafeMath mul failed'
        if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] > !(149999843750000 * 10^18 * ext_call.return_data[0] / 2):
            revert with 0, 17
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) < 78125000 * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 'SafeMath add failed'
        if 0 > (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 < 0:
            revert with 0, 17
        if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18:
            if sub_3462eb78Address == address(arg3):
                return 0
            if not address(arg3):
                return 0
            if not sub_a6c99117Address:
                revert with 0, 'NO_PRICE_ORACLE!'
            require ext_code.size(sub_a6c99117Address)
            staticcall sub_a6c99117Address.0x27109066 with:
                    gas gas_remaining wei
                   args address(arg3), sub_3462eb78Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 and sub_f425f560 > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18:
            revert with 0, 17
        if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18:
            revert with 0, 18
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 != sub_f425f560:
            revert with 0, 'SafeMath mul failed'
        if sub_3462eb78Address == address(arg3):
            return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560)
        if not address(arg3):
            return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560)
        if not sub_a6c99117Address:
            revert with 0, 'NO_PRICE_ORACLE!'
        require ext_code.size(sub_a6c99117Address)
        staticcall sub_a6c99117Address.0x27109066 with:
                gas gas_remaining wei
               args address(arg3), sub_3462eb78Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560:
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 and ext_call.return_data[18 len 14] > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560:
            revert with 0, 17
        if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560:
            revert with 0, 18
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14] / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 != ext_call.return_data[18 len 14]:
            revert with 0, 'SafeMath mul failed'
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(sub_3462eb78Address)
        staticcall sub_3462eb78Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
            if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                    revert with 0, 18
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s * t)
        if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 1:
                revert with 0, 'SafeMath mul failed'
            return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                revert with 0, 'SafeMath mul failed'
            return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            return 0
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != s * t:
            revert with 0, 'SafeMath mul failed'
        return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t)
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'SafeMath sub failed'
    if ext_call.return_data[0] < arg2:
        revert with 0, 17
    if not ext_call.return_data[0] - arg2:
        if not ext_call.return_data[0] - arg2:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    if sub_3462eb78Address == address(arg3):
                        return 0
                    if not address(arg3):
                        return 0
                    if not sub_a6c99117Address:
                        revert with 0, 'NO_PRICE_ORACLE!'
                    require ext_code.size(sub_a6c99117Address)
                    staticcall sub_a6c99117Address.0x27109066 with:
                            gas gas_remaining wei
                           args address(arg3), sub_3462eb78Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    require ext_code.size(sub_3462eb78Address)
                    staticcall sub_3462eb78Address.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                        if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                            return (0 / Mask(112, 0, ext_call.return_data[32]))
                        if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                            if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                                revert with 0, 18
                            return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                    if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                        revert with 0, 17
                    if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                    s = 10
                    t = 1
                    idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath mul failed'
                if ext_call.return_data[0] * ext_call.return_data[0] > 0x36f9bfb3af7b756fad5cd10396a21346cbefc1bf33a44ab72e36108ba8:
                    revert with 0, 17
                if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 78125000 != ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 'SafeMath mul failed'
                if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] > -1:
                    revert with 0, 17
                if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] < 78125000 * ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 'SafeMath add failed'
                if 0 > 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath sub failed'
                if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 < 0:
                    revert with 0, 17
                if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18:
                    if sub_3462eb78Address == address(arg3):
                        return 0
                    if not address(arg3):
                        return 0
                    if not sub_a6c99117Address:
                        revert with 0, 'NO_PRICE_ORACLE!'
                    require ext_code.size(sub_a6c99117Address)
                    staticcall sub_a6c99117Address.0x27109066 with:
                            gas gas_remaining wei
                           args address(arg3), sub_3462eb78Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    require ext_code.size(sub_3462eb78Address)
                    staticcall sub_3462eb78Address.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                        if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                            return (0 / Mask(112, 0, ext_call.return_data[32]))
                        if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                            if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                                revert with 0, 18
                            return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                    if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                        revert with 0, 17
                    if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                    s = 10
                    t = 1
                    idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
                if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 and sub_f425f560 > -1 / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18:
                    revert with 0, 18
                if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 != sub_f425f560:
                    revert with 0, 'SafeMath mul failed'
                if sub_3462eb78Address == address(arg3):
                    return (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560)
                if not address(arg3):
                    return (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560)
                if not sub_a6c99117Address:
                    revert with 0, 'NO_PRICE_ORACLE!'
                require ext_code.size(sub_a6c99117Address)
                staticcall sub_a6c99117Address.0x27109066 with:
                        gas gas_remaining wei
                       args address(arg3), sub_3462eb78Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560:
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    require ext_code.size(sub_3462eb78Address)
                    staticcall sub_3462eb78Address.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                        if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                            return (0 / Mask(112, 0, ext_call.return_data[32]))
                        if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                            if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                                revert with 0, 18
                            return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                    if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                        revert with 0, 17
                    if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                    s = 10
                    t = 1
                    idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
                if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 and ext_call.return_data[18 len 14] > -1 / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560:
                    revert with 0, 17
                if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560:
                    revert with 0, 18
                if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14] / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 != ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath mul failed'
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t / 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath mul failed'
            if 10^18 * ext_call.return_data[0] > 0x1e0626c036ca9b87da35af0ec5b568fd1e34eb1f70626cd312549:
                revert with 0, 17
            if 149999843750000 * 10^18 * ext_call.return_data[0] / 149999843750000 != 10^18 * ext_call.return_data[0]:
                revert with 0, 'SafeMath mul failed'
            if not ext_call.return_data[0]:
                if 0 > !(149999843750000 * 10^18 * ext_call.return_data[0] / 2):
                    revert with 0, 17
                if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 < 0:
                    revert with 0, 'SafeMath add failed'
                if 0 > 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath sub failed'
                if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 < 0:
                    revert with 0, 17
                if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18:
                    if sub_3462eb78Address == address(arg3):
                        return 0
                    if not address(arg3):
                        return 0
                    if not sub_a6c99117Address:
                        revert with 0, 'NO_PRICE_ORACLE!'
                    require ext_code.size(sub_a6c99117Address)
                    staticcall sub_a6c99117Address.0x27109066 with:
                            gas gas_remaining wei
                           args address(arg3), sub_3462eb78Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    require ext_code.size(sub_3462eb78Address)
                    staticcall sub_3462eb78Address.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                        if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                            return (0 / Mask(112, 0, ext_call.return_data[32]))
                        if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                            if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                                revert with 0, 18
                            return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                    if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                        revert with 0, 17
                    if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                    s = 10
                    t = 1
                    idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
                if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 and sub_f425f560 > -1 / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18:
                    revert with 0, 18
                if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 != sub_f425f560:
                    revert with 0, 'SafeMath mul failed'
                if sub_3462eb78Address == address(arg3):
                    return (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560)
                if not address(arg3):
                    return (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560)
                if not sub_a6c99117Address:
                    revert with 0, 'NO_PRICE_ORACLE!'
                require ext_code.size(sub_a6c99117Address)
                staticcall sub_a6c99117Address.0x27109066 with:
                        gas gas_remaining wei
                       args address(arg3), sub_3462eb78Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560:
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    require ext_code.size(sub_3462eb78Address)
                    staticcall sub_3462eb78Address.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                        if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                            return (0 / Mask(112, 0, ext_call.return_data[32]))
                        if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                            if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                                revert with 0, 18
                            return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                    if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                        revert with 0, 17
                    if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                    s = 10
                    t = 1
                    idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
                if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 and ext_call.return_data[18 len 14] > -1 / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560:
                    revert with 0, 17
                if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560:
                    revert with 0, 18
                if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14] / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 != ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath mul failed'
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t / 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath mul failed'
            if ext_call.return_data[0] * ext_call.return_data[0] > 0x36f9bfb3af7b756fad5cd10396a21346cbefc1bf33a44ab72e36108ba8:
                revert with 0, 17
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 78125000 != ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'SafeMath mul failed'
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] > !(149999843750000 * 10^18 * ext_call.return_data[0] / 2):
                revert with 0, 17
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) < 78125000 * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'SafeMath add failed'
            if 0 > (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 < 0:
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18:
                if sub_3462eb78Address == address(arg3):
                    return 0
                if not address(arg3):
                    return 0
                if not sub_a6c99117Address:
                    revert with 0, 'NO_PRICE_ORACLE!'
                require ext_code.size(sub_a6c99117Address)
                staticcall sub_a6c99117Address.0x27109066 with:
                        gas gas_remaining wei
                       args address(arg3), sub_3462eb78Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 and sub_f425f560 > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18:
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18:
                revert with 0, 18
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 != sub_f425f560:
                revert with 0, 'SafeMath mul failed'
            if sub_3462eb78Address == address(arg3):
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560)
            if not address(arg3):
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560)
            if not sub_a6c99117Address:
                revert with 0, 'NO_PRICE_ORACLE!'
            require ext_code.size(sub_a6c99117Address)
            staticcall sub_a6c99117Address.0x27109066 with:
                    gas gas_remaining wei
                   args address(arg3), sub_3462eb78Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560:
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 and ext_call.return_data[18 len 14] > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560:
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560:
                revert with 0, 18
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14] / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 != ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath mul failed'
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t / (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if ext_call.return_data[0] - arg2 and ext_call.return_data[0] - arg2 > -1 / ext_call.return_data[0] - arg2:
            revert with 0, 17
        if not ext_call.return_data[0] - arg2:
            revert with 0, 18
        if (ext_call.return_data[0] * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * arg2) + (arg2 * arg2) / ext_call.return_data[0] - arg2 != ext_call.return_data[0] - arg2:
            revert with 0, 'SafeMath mul failed'
        if (ext_call.return_data[0] * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * arg2) + (arg2 * arg2) > 0x36f9bfb3af7b756fad5cd10396a21346cbefc1bf33a44ab72e36108ba8:
            revert with 0, 17
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 78125000 != (ext_call.return_data[0] * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * arg2) + (arg2 * arg2):
            revert with 0, 'SafeMath mul failed'
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) > -1:
            revert with 0, 17
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 > 0:
                    revert with 0, 'SafeMath sub failed'
                if 0 < (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if not -(78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18:
                    if sub_3462eb78Address == address(arg3):
                        return 0
                    if not address(arg3):
                        return 0
                    if not sub_a6c99117Address:
                        revert with 0, 'NO_PRICE_ORACLE!'
                    require ext_code.size(sub_a6c99117Address)
                    staticcall sub_a6c99117Address.0x27109066 with:
                            gas gas_remaining wei
                           args address(arg3), sub_3462eb78Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    require ext_code.size(sub_3462eb78Address)
                    staticcall sub_3462eb78Address.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                        if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                            return (0 / Mask(112, 0, ext_call.return_data[32]))
                        if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                            if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                                revert with 0, 18
                            return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                    if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                        revert with 0, 17
                    if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                    s = 10
                    t = 1
                    idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
                if -(78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 and sub_f425f560 > -1 / -(78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if not -(78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18:
                    revert with 0, 18
                if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 / -(78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 != sub_f425f560:
                    revert with 0, 'SafeMath mul failed'
                if sub_3462eb78Address == address(arg3):
                    return (-1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560)
                if not address(arg3):
                    return (-1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560)
                if not sub_a6c99117Address:
                    revert with 0, 'NO_PRICE_ORACLE!'
                require ext_code.size(sub_a6c99117Address)
                staticcall sub_a6c99117Address.0x27109066 with:
                        gas gas_remaining wei
                       args address(arg3), sub_3462eb78Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                if not -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560:
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    require ext_code.size(sub_3462eb78Address)
                    staticcall sub_3462eb78Address.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                        if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                            return (0 / Mask(112, 0, ext_call.return_data[32]))
                        if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                            if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                                revert with 0, 18
                            return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                    if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                        revert with 0, 17
                    if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                    s = 10
                    t = 1
                    idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
                if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 and ext_call.return_data[18 len 14] > -1 / -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560:
                    revert with 0, 17
                if not -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560:
                    revert with 0, 18
                if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14] / -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 != ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath mul failed'
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (-1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (-1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (-1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (-1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (-1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t / -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (-1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath mul failed'
            if ext_call.return_data[0] * ext_call.return_data[0] > 0x36f9bfb3af7b756fad5cd10396a21346cbefc1bf33a44ab72e36108ba8:
                revert with 0, 17
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 78125000 != ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'SafeMath mul failed'
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] > -1:
                revert with 0, 17
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] < 78125000 * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'SafeMath add failed'
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 > 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 < (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18:
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18):
                if sub_3462eb78Address == address(arg3):
                    return 0
                if not address(arg3):
                    return 0
                if not sub_a6c99117Address:
                    revert with 0, 'NO_PRICE_ORACLE!'
                require ext_code.size(sub_a6c99117Address)
                staticcall sub_a6c99117Address.0x27109066 with:
                        gas gas_remaining wei
                       args address(arg3), sub_3462eb78Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18) and sub_f425f560 > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18):
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18):
                revert with 0, 18
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560) / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18) != sub_f425f560:
                revert with 0, 'SafeMath mul failed'
            if sub_3462eb78Address == address(arg3):
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560))
            if not address(arg3):
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560))
            if not sub_a6c99117Address:
                revert with 0, 'NO_PRICE_ORACLE!'
            require ext_code.size(sub_a6c99117Address)
            staticcall sub_a6c99117Address.0x27109066 with:
                    gas gas_remaining wei
                   args address(arg3), sub_3462eb78Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560):
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560) and ext_call.return_data[18 len 14] > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560):
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560):
                revert with 0, 18
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560) != ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath mul failed'
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath mul failed'
        if 10^18 * ext_call.return_data[0] > 0x1e0626c036ca9b87da35af0ec5b568fd1e34eb1f70626cd312549:
            revert with 0, 17
        if 149999843750000 * 10^18 * ext_call.return_data[0] / 149999843750000 != 10^18 * ext_call.return_data[0]:
            revert with 0, 'SafeMath mul failed'
        if not ext_call.return_data[0]:
            if 0 > !(149999843750000 * 10^18 * ext_call.return_data[0] / 2):
                revert with 0, 17
            if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 < 0:
                revert with 0, 'SafeMath add failed'
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 > 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 < (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18:
                revert with 0, 17
            if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18):
                if sub_3462eb78Address == address(arg3):
                    return 0
                if not address(arg3):
                    return 0
                if not sub_a6c99117Address:
                    revert with 0, 'NO_PRICE_ORACLE!'
                require ext_code.size(sub_a6c99117Address)
                staticcall sub_a6c99117Address.0x27109066 with:
                        gas gas_remaining wei
                       args address(arg3), sub_3462eb78Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18) and sub_f425f560 > -1 / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18):
                revert with 0, 17
            if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18):
                revert with 0, 18
            if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560) / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18) != sub_f425f560:
                revert with 0, 'SafeMath mul failed'
            if sub_3462eb78Address == address(arg3):
                return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560))
            if not address(arg3):
                return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560))
            if not sub_a6c99117Address:
                revert with 0, 'NO_PRICE_ORACLE!'
            require ext_code.size(sub_a6c99117Address)
            staticcall sub_a6c99117Address.0x27109066 with:
                    gas gas_remaining wei
                   args address(arg3), sub_3462eb78Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560):
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560) and ext_call.return_data[18 len 14] > -1 / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560):
                revert with 0, 17
            if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560):
                revert with 0, 18
            if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560) != ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath mul failed'
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath mul failed'
        if ext_call.return_data[0] * ext_call.return_data[0] > 0x36f9bfb3af7b756fad5cd10396a21346cbefc1bf33a44ab72e36108ba8:
            revert with 0, 17
        if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 78125000 != ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 'SafeMath mul failed'
        if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] > !(149999843750000 * 10^18 * ext_call.return_data[0] / 2):
            revert with 0, 17
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) < 78125000 * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 'SafeMath add failed'
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 > (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 < (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18:
            revert with 0, 17
        if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18):
            if sub_3462eb78Address == address(arg3):
                return 0
            if not address(arg3):
                return 0
            if not sub_a6c99117Address:
                revert with 0, 'NO_PRICE_ORACLE!'
            require ext_code.size(sub_a6c99117Address)
            staticcall sub_a6c99117Address.0x27109066 with:
                    gas gas_remaining wei
                   args address(arg3), sub_3462eb78Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18) and sub_f425f560 > -1 / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18):
            revert with 0, 17
        if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18):
            revert with 0, 18
        if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560) / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18) != sub_f425f560:
            revert with 0, 'SafeMath mul failed'
        if sub_3462eb78Address == address(arg3):
            return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560))
        if not address(arg3):
            return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560))
        if not sub_a6c99117Address:
            revert with 0, 'NO_PRICE_ORACLE!'
        require ext_code.size(sub_a6c99117Address)
        staticcall sub_a6c99117Address.0x27109066 with:
                gas gas_remaining wei
               args address(arg3), sub_3462eb78Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560):
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560) and ext_call.return_data[18 len 14] > -1 / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560):
            revert with 0, 17
        if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560):
            revert with 0, 18
        if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560) != ext_call.return_data[18 len 14]:
            revert with 0, 'SafeMath mul failed'
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(sub_3462eb78Address)
        staticcall sub_3462eb78Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
            if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                    revert with 0, 18
                return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / s * t)
        if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
            if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 1:
                revert with 0, 'SafeMath mul failed'
            return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
            if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                revert with 0, 'SafeMath mul failed'
            return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            return 0
        if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != s * t:
            revert with 0, 'SafeMath mul failed'
        return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t)
    if ext_call.return_data[0] - arg2 and 10^18 > -1 / ext_call.return_data[0] - arg2:
        revert with 0, 17
    if not ext_call.return_data[0] - arg2:
        revert with 0, 18
    if (10^18 * ext_call.return_data[0]) - (10^18 * arg2) / ext_call.return_data[0] - arg2 != 10^18:
        revert with 0, 'SafeMath mul failed'
    if (10^18 * ext_call.return_data[0]) - (10^18 * arg2) > 0x1e0626c036ca9b87da35af0ec5b568fd1e34eb1f70626cd312549:
        revert with 0, 17
    if (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 149999843750000 != (10^18 * ext_call.return_data[0]) - (10^18 * arg2):
        revert with 0, 'SafeMath mul failed'
    if not ext_call.return_data[0] - arg2:
        if 0 > !((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2):
            revert with 0, 17
        if (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 > 0:
                    revert with 0, 'SafeMath sub failed'
                if 0 < (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if not -(149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18:
                    if sub_3462eb78Address == address(arg3):
                        return 0
                    if not address(arg3):
                        return 0
                    if not sub_a6c99117Address:
                        revert with 0, 'NO_PRICE_ORACLE!'
                    require ext_code.size(sub_a6c99117Address)
                    staticcall sub_a6c99117Address.0x27109066 with:
                            gas gas_remaining wei
                           args address(arg3), sub_3462eb78Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    require ext_code.size(sub_3462eb78Address)
                    staticcall sub_3462eb78Address.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                        if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                            return (0 / Mask(112, 0, ext_call.return_data[32]))
                        if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                            if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                                revert with 0, 18
                            return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                    if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                        revert with 0, 17
                    if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                    s = 10
                    t = 1
                    idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
                if -(149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 and sub_f425f560 > -1 / -(149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if not -(149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18:
                    revert with 0, 18
                if -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 / -(149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 != sub_f425f560:
                    revert with 0, 'SafeMath mul failed'
                if sub_3462eb78Address == address(arg3):
                    return (-1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560)
                if not address(arg3):
                    return (-1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560)
                if not sub_a6c99117Address:
                    revert with 0, 'NO_PRICE_ORACLE!'
                require ext_code.size(sub_a6c99117Address)
                staticcall sub_a6c99117Address.0x27109066 with:
                        gas gas_remaining wei
                       args address(arg3), sub_3462eb78Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                if not -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560:
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    require ext_code.size(sub_3462eb78Address)
                    staticcall sub_3462eb78Address.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                        if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                            return (0 / Mask(112, 0, ext_call.return_data[32]))
                        if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                            if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                                revert with 0, 18
                            return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                    if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                        revert with 0, 17
                    if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            return 0
                        if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                            revert with 0, 'SafeMath mul failed'
                        return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                    s = 10
                    t = 1
                    idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
                if -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 and ext_call.return_data[18 len 14] > -1 / -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560:
                    revert with 0, 17
                if not -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560:
                    revert with 0, 18
                if -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14] / -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 != ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath mul failed'
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (-1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (-1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (-1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (-1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (-1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t / -1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (-1 * (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath mul failed'
            if ext_call.return_data[0] * ext_call.return_data[0] > 0x36f9bfb3af7b756fad5cd10396a21346cbefc1bf33a44ab72e36108ba8:
                revert with 0, 17
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 78125000 != ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'SafeMath mul failed'
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] > -1:
                revert with 0, 17
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] < 78125000 * ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'SafeMath add failed'
            if (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 > 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 < (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18:
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18):
                if sub_3462eb78Address == address(arg3):
                    return 0
                if not address(arg3):
                    return 0
                if not sub_a6c99117Address:
                    revert with 0, 'NO_PRICE_ORACLE!'
                require ext_code.size(sub_a6c99117Address)
                staticcall sub_a6c99117Address.0x27109066 with:
                        gas gas_remaining wei
                       args address(arg3), sub_3462eb78Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18) and sub_f425f560 > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18):
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18):
                revert with 0, 18
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560) / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18) != sub_f425f560:
                revert with 0, 'SafeMath mul failed'
            if sub_3462eb78Address == address(arg3):
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560))
            if not address(arg3):
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560))
            if not sub_a6c99117Address:
                revert with 0, 'NO_PRICE_ORACLE!'
            require ext_code.size(sub_a6c99117Address)
            staticcall sub_a6c99117Address.0x27109066 with:
                    gas gas_remaining wei
                   args address(arg3), sub_3462eb78Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560):
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560) and ext_call.return_data[18 len 14] > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560):
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560):
                revert with 0, 18
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560) != ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath mul failed'
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath mul failed'
        if 10^18 * ext_call.return_data[0] > 0x1e0626c036ca9b87da35af0ec5b568fd1e34eb1f70626cd312549:
            revert with 0, 17
        if 149999843750000 * 10^18 * ext_call.return_data[0] / 149999843750000 != 10^18 * ext_call.return_data[0]:
            revert with 0, 'SafeMath mul failed'
        if not ext_call.return_data[0]:
            if 0 > !(149999843750000 * 10^18 * ext_call.return_data[0] / 2):
                revert with 0, 17
            if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 < 0:
                revert with 0, 'SafeMath add failed'
            if (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 > 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath sub failed'
            if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 < (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18:
                revert with 0, 17
            if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18):
                if sub_3462eb78Address == address(arg3):
                    return 0
                if not address(arg3):
                    return 0
                if not sub_a6c99117Address:
                    revert with 0, 'NO_PRICE_ORACLE!'
                require ext_code.size(sub_a6c99117Address)
                staticcall sub_a6c99117Address.0x27109066 with:
                        gas gas_remaining wei
                       args address(arg3), sub_3462eb78Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18) and sub_f425f560 > -1 / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18):
                revert with 0, 17
            if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18):
                revert with 0, 18
            if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560) / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18) != sub_f425f560:
                revert with 0, 'SafeMath mul failed'
            if sub_3462eb78Address == address(arg3):
                return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560))
            if not address(arg3):
                return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560))
            if not sub_a6c99117Address:
                revert with 0, 'NO_PRICE_ORACLE!'
            require ext_code.size(sub_a6c99117Address)
            staticcall sub_a6c99117Address.0x27109066 with:
                    gas gas_remaining wei
                   args address(arg3), sub_3462eb78Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560):
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560) and ext_call.return_data[18 len 14] > -1 / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560):
                revert with 0, 17
            if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560):
                revert with 0, 18
            if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560) != ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath mul failed'
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath mul failed'
        if ext_call.return_data[0] * ext_call.return_data[0] > 0x36f9bfb3af7b756fad5cd10396a21346cbefc1bf33a44ab72e36108ba8:
            revert with 0, 17
        if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 78125000 != ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 'SafeMath mul failed'
        if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] > !(149999843750000 * 10^18 * ext_call.return_data[0] / 2):
            revert with 0, 17
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) < 78125000 * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 'SafeMath add failed'
        if (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 > (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 < (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18:
            revert with 0, 17
        if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18):
            if sub_3462eb78Address == address(arg3):
                return 0
            if not address(arg3):
                return 0
            if not sub_a6c99117Address:
                revert with 0, 'NO_PRICE_ORACLE!'
            require ext_code.size(sub_a6c99117Address)
            staticcall sub_a6c99117Address.0x27109066 with:
                    gas gas_remaining wei
                   args address(arg3), sub_3462eb78Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18) and sub_f425f560 > -1 / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18):
            revert with 0, 17
        if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18):
            revert with 0, 18
        if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560) / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18) != sub_f425f560:
            revert with 0, 'SafeMath mul failed'
        if sub_3462eb78Address == address(arg3):
            return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560))
        if not address(arg3):
            return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560))
        if not sub_a6c99117Address:
            revert with 0, 'NO_PRICE_ORACLE!'
        require ext_code.size(sub_a6c99117Address)
        staticcall sub_a6c99117Address.0x27109066 with:
                gas gas_remaining wei
               args address(arg3), sub_3462eb78Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560):
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560) and ext_call.return_data[18 len 14] > -1 / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560):
            revert with 0, 17
        if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560):
            revert with 0, 18
        if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560) != ext_call.return_data[18 len 14]:
            revert with 0, 'SafeMath mul failed'
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(sub_3462eb78Address)
        staticcall sub_3462eb78Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
            if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                    revert with 0, 18
                return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / s * t)
        if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
            if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 1:
                revert with 0, 'SafeMath mul failed'
            return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
            if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                revert with 0, 'SafeMath mul failed'
            return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            return 0
        if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != s * t:
            revert with 0, 'SafeMath mul failed'
        return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t)
    if ext_call.return_data[0] - arg2 and ext_call.return_data[0] - arg2 > -1 / ext_call.return_data[0] - arg2:
        revert with 0, 17
    if not ext_call.return_data[0] - arg2:
        revert with 0, 18
    if (ext_call.return_data[0] * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * arg2) + (arg2 * arg2) / ext_call.return_data[0] - arg2 != ext_call.return_data[0] - arg2:
        revert with 0, 'SafeMath mul failed'
    if (ext_call.return_data[0] * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * arg2) + (arg2 * arg2) > 0x36f9bfb3af7b756fad5cd10396a21346cbefc1bf33a44ab72e36108ba8:
        revert with 0, 17
    if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) / 78125000 != (ext_call.return_data[0] * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * arg2) + (arg2 * arg2):
        revert with 0, 'SafeMath mul failed'
    if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) > !((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2):
        revert with 0, 17
    if (149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2 < 0:
        revert with 0, 'SafeMath add failed'
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 > 0:
                revert with 0, 'SafeMath sub failed'
            if 0 < (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18:
                revert with 0, 17
            if not -(78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18:
                if sub_3462eb78Address == address(arg3):
                    return 0
                if not address(arg3):
                    return 0
                if not sub_a6c99117Address:
                    revert with 0, 'NO_PRICE_ORACLE!'
                require ext_code.size(sub_a6c99117Address)
                staticcall sub_a6c99117Address.0x27109066 with:
                        gas gas_remaining wei
                       args address(arg3), sub_3462eb78Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if -(78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 and sub_f425f560 > -1 / -(78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18:
                revert with 0, 17
            if not -(78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18:
                revert with 0, 18
            if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 / -(78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 != sub_f425f560:
                revert with 0, 'SafeMath mul failed'
            if sub_3462eb78Address == address(arg3):
                return (-1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560)
            if not address(arg3):
                return (-1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560)
            if not sub_a6c99117Address:
                revert with 0, 'NO_PRICE_ORACLE!'
            require ext_code.size(sub_a6c99117Address)
            staticcall sub_a6c99117Address.0x27109066 with:
                    gas gas_remaining wei
                   args address(arg3), sub_3462eb78Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            if not -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560:
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(sub_3462eb78Address)
                staticcall sub_3462eb78Address.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                    if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                        if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                            revert with 0, 18
                        return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
                if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        return 0
                    if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                        revert with 0, 'SafeMath mul failed'
                    return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
            if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 and ext_call.return_data[18 len 14] > -1 / -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560:
                revert with 0, 17
            if not -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560:
                revert with 0, 18
            if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14] / -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 != ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath mul failed'
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return (-1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return (-1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (-1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return (-1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return (-1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t / -1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return (-1 * (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath mul failed'
        if ext_call.return_data[0] * ext_call.return_data[0] > 0x36f9bfb3af7b756fad5cd10396a21346cbefc1bf33a44ab72e36108ba8:
            revert with 0, 17
        if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 78125000 != ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 'SafeMath mul failed'
        if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] > -1:
            revert with 0, 17
        if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] < 78125000 * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 'SafeMath add failed'
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 > 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 < (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18:
            revert with 0, 17
        if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18):
            if sub_3462eb78Address == address(arg3):
                return 0
            if not address(arg3):
                return 0
            if not sub_a6c99117Address:
                revert with 0, 'NO_PRICE_ORACLE!'
            require ext_code.size(sub_a6c99117Address)
            staticcall sub_a6c99117Address.0x27109066 with:
                    gas gas_remaining wei
                   args address(arg3), sub_3462eb78Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18) and sub_f425f560 > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18):
            revert with 0, 17
        if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18):
            revert with 0, 18
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560) / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18) != sub_f425f560:
            revert with 0, 'SafeMath mul failed'
        if sub_3462eb78Address == address(arg3):
            return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560))
        if not address(arg3):
            return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560))
        if not sub_a6c99117Address:
            revert with 0, 'NO_PRICE_ORACLE!'
        require ext_code.size(sub_a6c99117Address)
        staticcall sub_a6c99117Address.0x27109066 with:
                gas gas_remaining wei
               args address(arg3), sub_3462eb78Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560):
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560) and ext_call.return_data[18 len 14] > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560):
            revert with 0, 17
        if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560):
            revert with 0, 18
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560) != ext_call.return_data[18 len 14]:
            revert with 0, 'SafeMath mul failed'
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(sub_3462eb78Address)
        staticcall sub_3462eb78Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
            if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                    revert with 0, 18
                return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / s * t)
        if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 1:
                revert with 0, 'SafeMath mul failed'
            return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                revert with 0, 'SafeMath mul failed'
            return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            return 0
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t / (78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != s * t:
            revert with 0, 'SafeMath mul failed'
        return ((78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t)
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath mul failed'
    if 10^18 * ext_call.return_data[0] > 0x1e0626c036ca9b87da35af0ec5b568fd1e34eb1f70626cd312549:
        revert with 0, 17
    if 149999843750000 * 10^18 * ext_call.return_data[0] / 149999843750000 != 10^18 * ext_call.return_data[0]:
        revert with 0, 'SafeMath mul failed'
    if not ext_call.return_data[0]:
        if 0 > !(149999843750000 * 10^18 * ext_call.return_data[0] / 2):
            revert with 0, 17
        if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 < 0:
            revert with 0, 'SafeMath add failed'
        if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 > 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath sub failed'
        if 149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 < (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18:
            revert with 0, 17
        if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18):
            if sub_3462eb78Address == address(arg3):
                return 0
            if not address(arg3):
                return 0
            if not sub_a6c99117Address:
                revert with 0, 'NO_PRICE_ORACLE!'
            require ext_code.size(sub_a6c99117Address)
            staticcall sub_a6c99117Address.0x27109066 with:
                    gas gas_remaining wei
                   args address(arg3), sub_3462eb78Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18) and sub_f425f560 > -1 / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18):
            revert with 0, 17
        if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18):
            revert with 0, 18
        if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560) / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18) != sub_f425f560:
            revert with 0, 'SafeMath mul failed'
        if sub_3462eb78Address == address(arg3):
            return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560))
        if not address(arg3):
            return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560))
        if not sub_a6c99117Address:
            revert with 0, 'NO_PRICE_ORACLE!'
        require ext_code.size(sub_a6c99117Address)
        staticcall sub_a6c99117Address.0x27109066 with:
                gas gas_remaining wei
               args address(arg3), sub_3462eb78Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560):
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(sub_3462eb78Address)
            staticcall sub_3462eb78Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
                if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                    if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                        revert with 0, 18
                    return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
            if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    return 0
                if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                    revert with 0, 'SafeMath mul failed'
                return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
                revert with 0, 'SafeMath mul failed'
            return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560) and ext_call.return_data[18 len 14] > -1 / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560):
            revert with 0, 17
        if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560):
            revert with 0, 18
        if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560) != ext_call.return_data[18 len 14]:
            revert with 0, 'SafeMath mul failed'
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(sub_3462eb78Address)
        staticcall sub_3462eb78Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
            if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                    revert with 0, 18
                return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / s * t)
        if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
            if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 1:
                revert with 0, 'SafeMath mul failed'
            return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
            if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                revert with 0, 'SafeMath mul failed'
            return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            return 0
        if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t / (149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != s * t:
            revert with 0, 'SafeMath mul failed'
        return ((149999843750000 * 10^18 * ext_call.return_data[0] / 2 / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t)
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath mul failed'
    if ext_call.return_data[0] * ext_call.return_data[0] > 0x36f9bfb3af7b756fad5cd10396a21346cbefc1bf33a44ab72e36108ba8:
        revert with 0, 17
    if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] / 78125000 != ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 0, 'SafeMath mul failed'
    if 78125000 * ext_call.return_data[0] * ext_call.return_data[0] > !(149999843750000 * 10^18 * ext_call.return_data[0] / 2):
        revert with 0, 17
    if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) < 78125000 * ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 0, 'SafeMath add failed'
    if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 > (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath sub failed'
    if (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 < (78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18:
        revert with 0, 17
    if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18):
        if sub_3462eb78Address == address(arg3):
            return 0
        if not address(arg3):
            return 0
        if not sub_a6c99117Address:
            revert with 0, 'NO_PRICE_ORACLE!'
        require ext_code.size(sub_a6c99117Address)
        staticcall sub_a6c99117Address.0x27109066 with:
                gas gas_remaining wei
               args address(arg3), sub_3462eb78Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(sub_3462eb78Address)
        staticcall sub_3462eb78Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
            if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                return (0 / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                    revert with 0, 18
                return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
        if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                revert with 0, 'SafeMath mul failed'
            return (0 / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                revert with 0, 'SafeMath mul failed'
            return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if not 0 / Mask(112, 0, ext_call.return_data[32]):
            return 0
        if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not 0 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
            revert with 0, 'SafeMath mul failed'
        return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
    if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18) and sub_f425f560 > -1 / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18):
        revert with 0, 17
    if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18):
        revert with 0, 18
    if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560) / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18) != sub_f425f560:
        revert with 0, 'SafeMath mul failed'
    if sub_3462eb78Address == address(arg3):
        return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560))
    if not address(arg3):
        return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560))
    if not sub_a6c99117Address:
        revert with 0, 'NO_PRICE_ORACLE!'
    require ext_code.size(sub_a6c99117Address)
    staticcall sub_a6c99117Address.0x27109066 with:
            gas gas_remaining wei
           args address(arg3), sub_3462eb78Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560):
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(sub_3462eb78Address)
        staticcall sub_3462eb78Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
            if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
                return (0 / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
                if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                    revert with 0, 18
                return (0 / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (0 / Mask(112, 0, ext_call.return_data[32]) / s * t)
        if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if 0 / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 1:
                revert with 0, 'SafeMath mul failed'
            return (0 / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                return 0
            if 0 / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
                revert with 0, 'SafeMath mul failed'
            return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if not 0 / Mask(112, 0, ext_call.return_data[32]):
            return 0
        if 0 / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 0 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not 0 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if 0 / Mask(112, 0, ext_call.return_data[32]) * s * t / 0 / Mask(112, 0, ext_call.return_data[32]) != s * t:
            revert with 0, 'SafeMath mul failed'
        return (0 / Mask(112, 0, ext_call.return_data[32]) * s * t)
    if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560) and ext_call.return_data[18 len 14] > -1 / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560):
        revert with 0, 17
    if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560):
        revert with 0, 18
    if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * ext_call.return_data[18 len 14]) / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560) != ext_call.return_data[18 len 14]:
        revert with 0, 'SafeMath mul failed'
    if not ext_call.return_data[50 len 14]:
        revert with 0, 18
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(sub_3462eb78Address)
    staticcall sub_3462eb78Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if uint8(ext_call.return_data[0]) <= ext_call.return_data[31 len 1]:
        if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]):
            return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 78)) or bool(bool(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]) < 32)):
            if not 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
                revert with 0, 18
            return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / 10^(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])))
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / s * t)
    if uint8(ext_call.return_data[0]) < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]:
        if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            return 0
        if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 1:
            revert with 0, 'SafeMath mul failed'
        return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]))
    if bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 78)) or bool(bool(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1] < 32)):
        if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            return 0
        if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) > -1 / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]) / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]):
            revert with 0, 'SafeMath mul failed'
        return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * 10^(uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]))
    s = 10
    t = 1
    idx = uint8(ext_call.return_data[0]) - ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
        return 0
    if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if not ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 18
    if ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t / ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) != s * t:
        revert with 0, 'SafeMath mul failed'
    return (((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) + (149999843750000 * 10^18 * ext_call.return_data[0] / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) - ((78125000 * ext_call.return_data[0] * ext_call.return_data[0]) - (78125000 * arg2 * ext_call.return_data[0]) - (78125000 * ext_call.return_data[0] * arg2) + (78125000 * arg2 * arg2) + ((149999843750000 * 10^18 * ext_call.return_data[0]) - (149999843750000 * 10^18 * arg2) / 2) / 1000000000000000000 * 10^18 * sub_f425f560 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32]) * s * t)
}



}
