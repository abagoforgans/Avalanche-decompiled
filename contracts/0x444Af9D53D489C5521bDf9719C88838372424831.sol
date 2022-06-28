contract main {




// =====================  Runtime code  =====================


#
#  - sub_77f937d5(?)
#  - sub_831046ab(?)
#  - sub_d2472b1b(?)
#
address owner;
address stor1;
address stor2;
mapping of address sub_e68c8f1b;
mapping of uint8 stor10;

function sub_85ba89ce(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor10[arg1])
}

function owner() payable {
    return owner
}

function sub_e68c8f1b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e68c8f1b[arg1]
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

function sub_e43ac5d5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not sub_e68c8f1b[address(arg1)]
    stor10[address(arg1)] = uint8(bool(arg3))
    sub_e68c8f1b[address(arg1)] = address(arg2)
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

function sub_63710ea6(?) payable {
    require ext_code.size(stor1)
    staticcall stor1.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function getRatio(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor2 == arg2:
        if not sub_e68c8f1b[address(arg1)]:
            return 0
    else:
        if not sub_e68c8f1b[address(arg2)]:
            return 0
    if stor2 == arg2:
        require ext_code.size(sub_e68c8f1b[address(arg1)])
        staticcall sub_e68c8f1b[address(arg1)].getReserves() with:
                gas gas_remaining wei
    else:
        require ext_code.size(sub_e68c8f1b[address(arg2)])
        staticcall sub_e68c8f1b[address(arg2)].getReserves() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if arg1 < arg2:
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if not arg3:
                    if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    return (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                    if Mask(112, 0, ext_call.return_data[32]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) * 10^arg3 and 1 > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^arg3:
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    return (Mask(112, 0, ext_call.return_data[32]) * 10^arg3 / Mask(112, 0, ext_call.return_data[0]))
                s = 10
                t = 1
                idx = arg3
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
                if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) * s * t and 1 > -1 / Mask(112, 0, ext_call.return_data[32]) * s * t:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]))
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if not arg3:
                    if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    return (Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]))
                if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                    if Mask(112, 0, ext_call.return_data[32]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) * 10^arg3 and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^arg3:
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    return (Mask(112, 0, ext_call.return_data[32]) * 10^arg3 * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]))
                s = 10
                t = 1
                idx = arg3
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
                if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) * s * t and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]) * s * t:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[32]) * s * t * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]))
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
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
            if not arg3:
                if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]))
            if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                if Mask(112, 0, ext_call.return_data[32]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) * 10^arg3 and s * t > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^arg3:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[32]) * 10^arg3 * s * t / Mask(112, 0, ext_call.return_data[0]))
            u = 10
            v = 1
            idx = arg3
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and u * v > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) * u * v and s * t > -1 / Mask(112, 0, ext_call.return_data[32]) * u * v:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[32]) * u * v * s * t / Mask(112, 0, ext_call.return_data[0]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if not arg3:
                    if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
                if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                    if Mask(112, 0, ext_call.return_data[32]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) * 10^arg3 and 1 > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^arg3:
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return (Mask(112, 0, ext_call.return_data[32]) * 10^arg3 / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
                s = 10
                t = 1
                idx = arg3
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
                if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) * s * t and 1 > -1 / Mask(112, 0, ext_call.return_data[32]) * s * t:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if not arg3:
                    if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return (Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
                if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                    if Mask(112, 0, ext_call.return_data[32]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) * 10^arg3 and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^arg3:
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return (Mask(112, 0, ext_call.return_data[32]) * 10^arg3 * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
                s = 10
                t = 1
                idx = arg3
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
                if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) * s * t and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]) * s * t:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[32]) * s * t * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
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
            if not arg3:
                if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
            if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                if Mask(112, 0, ext_call.return_data[32]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) * 10^arg3 and s * t > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^arg3:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[32]) * 10^arg3 * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
            u = 10
            v = 1
            idx = arg3
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and u * v > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) * u * v and s * t > -1 / Mask(112, 0, ext_call.return_data[32]) * u * v:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[32]) * u * v * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
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
        if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if not arg3:
                if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * s * t)
            if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                if Mask(112, 0, ext_call.return_data[32]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) * 10^arg3 and 1 > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^arg3:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[32]) * 10^arg3 / Mask(112, 0, ext_call.return_data[0]) * s * t)
            u = 10
            v = 1
            idx = arg3
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and u * v > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) * u * v and 1 > -1 / Mask(112, 0, ext_call.return_data[32]) * u * v:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[32]) * u * v / Mask(112, 0, ext_call.return_data[0]) * s * t)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if not arg3:
                if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * s * t)
            if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                if Mask(112, 0, ext_call.return_data[32]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) * 10^arg3 and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^arg3:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[32]) * 10^arg3 * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * s * t)
            u = 10
            v = 1
            idx = arg3
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and u * v > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) * u * v and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]) * u * v:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[32]) * u * v * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * s * t)
        u = 10
        v = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if not arg3:
            if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and u * v > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[32]) * u * v / Mask(112, 0, ext_call.return_data[0]) * s * t)
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if Mask(112, 0, ext_call.return_data[32]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) * 10^arg3 and u * v > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^arg3:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[32]) * 10^arg3 * u * v / Mask(112, 0, ext_call.return_data[0]) * s * t)
        w = 10
        x = 1
        idx = arg3
        while idx > 1:
            if w > -1 / w:
                revert with 0, 17
            if not bool(idx):
                w = w * w
                x = x
                idx = uint255(idx) * 0.5
                continue 
            w = w * w
            x = w * x
            idx = uint255(idx) * 0.5
            continue 
        if x > -1 / w:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) and w * x > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) * w * x and u * v > -1 / Mask(112, 0, ext_call.return_data[32]) * w * x:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]) * s * t:
            revert with 0, 18
        return (Mask(112, 0, ext_call.return_data[32]) * w * x * u * v / Mask(112, 0, ext_call.return_data[0]) * s * t)
    if not ext_call.return_data[31 len 1]:
        if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if not arg3:
                if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                if Mask(112, 0, ext_call.return_data[0]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) * 10^arg3 and 1 > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^arg3:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[0]) * 10^arg3 / Mask(112, 0, ext_call.return_data[32]))
            s = 10
            t = 1
            idx = arg3
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
            if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) * s * t and 1 > -1 / Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if not arg3:
                if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                if Mask(112, 0, ext_call.return_data[0]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) * 10^arg3 and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^arg3:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[0]) * 10^arg3 * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]))
            s = 10
            t = 1
            idx = arg3
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
            if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) * s * t and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[0]) * s * t * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]))
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
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
        if not arg3:
            if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if Mask(112, 0, ext_call.return_data[0]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) * 10^arg3 and s * t > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^arg3:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[0]) * 10^arg3 * s * t / Mask(112, 0, ext_call.return_data[32]))
        u = 10
        v = 1
        idx = arg3
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and u * v > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) * u * v and s * t > -1 / Mask(112, 0, ext_call.return_data[0]) * u * v:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        return (Mask(112, 0, ext_call.return_data[0]) * u * v * s * t / Mask(112, 0, ext_call.return_data[32]))
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if not arg3:
                if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]))
            if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                if Mask(112, 0, ext_call.return_data[0]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) * 10^arg3 and 1 > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^arg3:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[0]) * 10^arg3 / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]))
            s = 10
            t = 1
            idx = arg3
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
            if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) * s * t and 1 > -1 / Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if not arg3:
                if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]))
            if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                if Mask(112, 0, ext_call.return_data[0]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) * 10^arg3 and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^arg3:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return (Mask(112, 0, ext_call.return_data[0]) * 10^arg3 * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]))
            s = 10
            t = 1
            idx = arg3
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
            if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) * s * t and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[0]) * s * t * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]))
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
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
        if not arg3:
            if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]))
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if Mask(112, 0, ext_call.return_data[0]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) * 10^arg3 and s * t > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^arg3:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[0]) * 10^arg3 * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]))
        u = 10
        v = 1
        idx = arg3
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and u * v > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) * u * v and s * t > -1 / Mask(112, 0, ext_call.return_data[0]) * u * v:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        return (Mask(112, 0, ext_call.return_data[0]) * u * v * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]))
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
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
    if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if not arg3:
            if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]) * s * t:
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if Mask(112, 0, ext_call.return_data[0]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) * 10^arg3 and 1 > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^arg3:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]) * s * t:
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[0]) * 10^arg3 / Mask(112, 0, ext_call.return_data[32]) * s * t)
        u = 10
        v = 1
        idx = arg3
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and u * v > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) * u * v and 1 > -1 / Mask(112, 0, ext_call.return_data[0]) * u * v:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            revert with 0, 18
        return (Mask(112, 0, ext_call.return_data[0]) * u * v / Mask(112, 0, ext_call.return_data[32]) * s * t)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if not arg3:
            if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]) * s * t:
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * s * t)
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if Mask(112, 0, ext_call.return_data[0]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) * 10^arg3 and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^arg3:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]) * s * t:
                revert with 0, 18
            return (Mask(112, 0, ext_call.return_data[0]) * 10^arg3 * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * s * t)
        u = 10
        v = 1
        idx = arg3
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and u * v > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) * u * v and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]) * u * v:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            revert with 0, 18
        return (Mask(112, 0, ext_call.return_data[0]) * u * v * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * s * t)
    u = 10
    v = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if not arg3:
        if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and u * v > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            revert with 0, 18
        return (Mask(112, 0, ext_call.return_data[0]) * u * v / Mask(112, 0, ext_call.return_data[32]) * s * t)
    if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
        if Mask(112, 0, ext_call.return_data[0]) and 10^arg3 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) * 10^arg3 and u * v > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^arg3:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            revert with 0, 18
        return (Mask(112, 0, ext_call.return_data[0]) * 10^arg3 * u * v / Mask(112, 0, ext_call.return_data[32]) * s * t)
    w = 10
    x = 1
    idx = arg3
    while idx > 1:
        if w > -1 / w:
            revert with 0, 17
        if not bool(idx):
            w = w * w
            x = x
            idx = uint255(idx) * 0.5
            continue 
        w = w * w
        x = w * x
        idx = uint255(idx) * 0.5
        continue 
    if x > -1 / w:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[0]) and w * x > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[0]) * w * x and u * v > -1 / Mask(112, 0, ext_call.return_data[0]) * w * x:
        revert with 0, 17
    if not Mask(112, 0, ext_call.return_data[32]) * s * t:
        revert with 0, 18
    return (Mask(112, 0, ext_call.return_data[0]) * w * x * u * v / Mask(112, 0, ext_call.return_data[32]) * s * t)
}

function sub_ac2ddb3b(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(stor1)
    staticcall stor1.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if stor2 == stor2:
        if not sub_e68c8f1b[address(arg2)]:
            if ext_call.return_data[32] and 0 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if False and arg3 > 0:
                revert with 0, 17
            emit 0x5b973bc5: arg3, 8, arg4, 0, arg4, block.timestamp, address(arg1), address(arg1)
        else:
            if stor2 == stor2:
                require ext_code.size(sub_e68c8f1b[address(arg2)])
                staticcall sub_e68c8f1b[address(arg2)].getReserves() with:
                        gas gas_remaining wei
            else:
                require ext_code.size(sub_e68c8f1b[stor2])
                staticcall sub_e68c8f1b[stor2].getReserves() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor2)
            staticcall stor2.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if address(arg2) < stor2:
                if not ext_call.return_data[31 len 1]:
                    if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 18
                        if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 18
                            if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
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
                            if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 18
                            if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                                revert with 0, 18
                            if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                                revert with 0, 17
                            emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 18
                                if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 17
                                emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                            else:
                                s = 10
                                t = 1
                                idx = ext_call.return_data[31 len 1]
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
                                if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 18
                                if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 17
                                emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
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
                        if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                                revert with 0, 18
                            if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * s * t > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * s * t and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * s * t:
                                revert with 0, 17
                            emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * s * t * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                                    revert with 0, 18
                                if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * s * t > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * s * t and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * s * t:
                                    revert with 0, 17
                                emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * s * t * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                            else:
                                u = 10
                                v = 1
                                idx = ext_call.return_data[31 len 1]
                                while idx > 1:
                                    if u > -1 / u:
                                        revert with 0, 17
                                    if not bool(idx):
                                        u = u * u
                                        v = v
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    u = u * u
                                    v = u * v
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if v > -1 / u:
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and u * v > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                                    revert with 0, 18
                                if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * u * v / Mask(112, 0, ext_call.return_data[0]) * s * t > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * u * v / Mask(112, 0, ext_call.return_data[0]) * s * t and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * u * v / Mask(112, 0, ext_call.return_data[0]) * s * t:
                                    revert with 0, 17
                                emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * u * v / Mask(112, 0, ext_call.return_data[0]) * s * t * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
            else:
                if not ext_call.return_data[31 len 1]:
                    if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 18
                            if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
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
                            if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 18
                            if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                                revert with 0, 18
                            if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                                revert with 0, 17
                            emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 18
                                if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 17
                                emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                            else:
                                s = 10
                                t = 1
                                idx = ext_call.return_data[31 len 1]
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
                                if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 18
                                if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 17
                                emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
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
                        if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]) * s * t:
                                revert with 0, 18
                            if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t:
                                revert with 0, 17
                            emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]) * s * t:
                                    revert with 0, 18
                                if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * s * t > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * s * t and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * s * t:
                                    revert with 0, 17
                                emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                            else:
                                u = 10
                                v = 1
                                idx = ext_call.return_data[31 len 1]
                                while idx > 1:
                                    if u > -1 / u:
                                        revert with 0, 17
                                    if not bool(idx):
                                        u = u * u
                                        v = v
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    u = u * u
                                    v = u * v
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if v > -1 / u:
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and u * v > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]) * s * t:
                                    revert with 0, 18
                                if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * u * v / Mask(112, 0, ext_call.return_data[32]) * s * t > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * u * v / Mask(112, 0, ext_call.return_data[32]) * s * t and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * u * v / Mask(112, 0, ext_call.return_data[32]) * s * t:
                                    revert with 0, 17
                                emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * u * v / Mask(112, 0, ext_call.return_data[32]) * s * t * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
    else:
        if not sub_e68c8f1b[stor2]:
            if ext_call.return_data[32] and 0 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if False and arg3 > 0:
                revert with 0, 17
            emit 0x5b973bc5: arg3, 8, arg4, 0, arg4, block.timestamp, address(arg1), address(arg1)
        else:
            if stor2 == stor2:
                require ext_code.size(sub_e68c8f1b[address(arg2)])
                staticcall sub_e68c8f1b[address(arg2)].getReserves() with:
                        gas gas_remaining wei
            else:
                require ext_code.size(sub_e68c8f1b[stor2])
                staticcall sub_e68c8f1b[stor2].getReserves() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor2)
            staticcall stor2.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if address(arg2) < stor2:
                if not ext_call.return_data[31 len 1]:
                    if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 18
                        if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 18
                            if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
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
                            if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 18
                            if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                                revert with 0, 18
                            if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                                revert with 0, 17
                            emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 18
                                if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 17
                                emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                            else:
                                s = 10
                                t = 1
                                idx = ext_call.return_data[31 len 1]
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
                                if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 18
                                if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 17
                                emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
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
                        if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                                revert with 0, 18
                            if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * s * t > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * s * t and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * s * t:
                                revert with 0, 17
                            emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * s * t * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                                    revert with 0, 18
                                if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * s * t > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * s * t and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) * s * t:
                                    revert with 0, 17
                                emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * s * t * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                            else:
                                u = 10
                                v = 1
                                idx = ext_call.return_data[31 len 1]
                                while idx > 1:
                                    if u > -1 / u:
                                        revert with 0, 17
                                    if not bool(idx):
                                        u = u * u
                                        v = v
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    u = u * u
                                    v = u * v
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if v > -1 / u:
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[32]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) and u * v > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                                    revert with 0, 18
                                if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * u * v / Mask(112, 0, ext_call.return_data[0]) * s * t > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * u * v / Mask(112, 0, ext_call.return_data[0]) * s * t and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * u * v / Mask(112, 0, ext_call.return_data[0]) * s * t:
                                    revert with 0, 17
                                emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[32]) * u * v / Mask(112, 0, ext_call.return_data[0]) * s * t * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
            else:
                if not ext_call.return_data[31 len 1]:
                    if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 18
                            if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
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
                            if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 18
                            if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                                revert with 0, 18
                            if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                                revert with 0, 17
                            emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 18
                                if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 17
                                emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                            else:
                                s = 10
                                t = 1
                                idx = ext_call.return_data[31 len 1]
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
                                if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 18
                                if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                                    revert with 0, 17
                                emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
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
                        if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]) * s * t:
                                revert with 0, 18
                            if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t > -1 / ext_call.return_data[32]:
                                revert with 0, 17
                            if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t:
                                revert with 0, 17
                            emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]) * s * t:
                                    revert with 0, 18
                                if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * s * t > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * s * t and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) * s * t:
                                    revert with 0, 17
                                emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
                            else:
                                u = 10
                                v = 1
                                idx = ext_call.return_data[31 len 1]
                                while idx > 1:
                                    if u > -1 / u:
                                        revert with 0, 17
                                    if not bool(idx):
                                        u = u * u
                                        v = v
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    u = u * u
                                    v = u * v
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if v > -1 / u:
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[0]) and 100 * 10^6 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) and u * v > -1 / 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]) * s * t:
                                    revert with 0, 18
                                if ext_call.return_data[32] and 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * u * v / Mask(112, 0, ext_call.return_data[32]) * s * t > -1 / ext_call.return_data[32]:
                                    revert with 0, 17
                                if ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * u * v / Mask(112, 0, ext_call.return_data[32]) * s * t and arg3 > -1 / ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * u * v / Mask(112, 0, ext_call.return_data[32]) * s * t:
                                    revert with 0, 17
                                emit 0x5b973bc5: arg3, 8, arg4, ext_call.return_data[32] * 100 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * u * v / Mask(112, 0, ext_call.return_data[32]) * s * t * arg3 / 10^16, arg4, block.timestamp, address(arg1), address(arg1)
}



}
