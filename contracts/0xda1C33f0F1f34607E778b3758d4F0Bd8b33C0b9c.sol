contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of address sub_10c7f0b9;

function sub_10c7f0b9(?) payable {
    require calldata.size - 4 >= 32
    return sub_10c7f0b9[arg1]
}

function owner() payable {
    return owner
}

function getOracleForPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_10c7f0b9[arg1][arg2]
}

function _fallback() payable {
    revert
}

function pokeOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 1
}

function updateOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 1
}

function initializeOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 1
}

function oracleNeedsPoking(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function oracleNeedsUpdates(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function getTimePeriodAfterPoke(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function oracleNeedsInitialization(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setAddressRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function getPairHasOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        return arg1 != arg2
    return not not sub_10c7f0b9[arg1][arg2]
}

function canOracleBeCreatedForRoute(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        return arg1 != arg2
    return not not sub_10c7f0b9[arg1][arg2]
}

function addOracle(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_10c7f0b9[arg1][arg2] = arg3
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

function sub_1bb0671c(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    idx = 0
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307() or ceil32(32 * ('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    idx = 0
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307() or ceil32(32 * ('cd', 68).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    idx = 0
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        _65 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _69 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
        mem[mem[64] + 52] = address(_69)
        _71 = mem[64]
        mem[mem[64]] = 40
        mem[64] = mem[64] + 72
        mem[0] = sha3(mem[_71 + 32 len mem[_71]])
        mem[32] = 2
        sub_10c7f0b9[mem[0]] = address(_65)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getInstantPrice(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_10c7f0b9[arg1][arg2])
    staticcall sub_10c7f0b9[arg1][arg2].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(sub_10c7f0b9[arg1][arg2])
    staticcall sub_10c7f0b9[arg1][arg2].0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[32] >= 0:
        if 840 == arg2:
            if not ext_call.return_data[0]:
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                return ext_call.return_data[32]
            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                if not ext_call.return_data[0]:
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if not 10^ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    return (ext_call.return_data[32] / 10^ext_call.return_data[0])
                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                    if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if not 10^ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    return (ext_call.return_data[32] * 10^ext_call.return_data[0] / 10^ext_call.return_data[0])
                s = 10
                t = 1
                idx = ext_call.return_data[0]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
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
                    revert with 'NH{q', 17
                if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if not 10^ext_call.return_data[0]:
                    revert with 'NH{q', 18
                return (ext_call.return_data[32] * s * t / 10^ext_call.return_data[0])
            s = 10
            t = 1
            idx = ext_call.return_data[0]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
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
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if not s * t:
                    revert with 'NH{q', 18
                return (ext_call.return_data[32] / s * t)
            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if not s * t:
                    revert with 'NH{q', 18
                return (ext_call.return_data[32] * 10^ext_call.return_data[0] / s * t)
            u = 10
            v = 1
            idx = ext_call.return_data[0]
            while idx > 1:
                if u > -1 / u:
                    revert with 'NH{q', 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
        else:
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                if not ext_call.return_data[0]:
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    return ext_call.return_data[32]
                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        if not 10^ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        return (ext_call.return_data[32] / 10^ext_call.return_data[0])
                    if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                        if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        if not 10^ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        return (ext_call.return_data[32] * 10^ext_call.return_data[0] / 10^ext_call.return_data[0])
                    s = 10
                    t = 1
                    idx = ext_call.return_data[0]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if not 10^ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    return (ext_call.return_data[32] * s * t / 10^ext_call.return_data[0])
                s = 10
                t = 1
                idx = ext_call.return_data[0]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
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
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if not s * t:
                        revert with 'NH{q', 18
                    return (ext_call.return_data[32] / s * t)
                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                    if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if not s * t:
                        revert with 'NH{q', 18
                    return (ext_call.return_data[32] * 10^ext_call.return_data[0] / s * t)
                u = 10
                v = 1
                idx = ext_call.return_data[0]
                while idx > 1:
                    if u > -1 / u:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
            else:
                if 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb == arg2:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        return ext_call.return_data[32]
                    if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                revert with 'NH{q', 17
                            if not 10^ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            return (ext_call.return_data[32] / 10^ext_call.return_data[0])
                        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                            if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                                revert with 'NH{q', 17
                            if not 10^ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            return (ext_call.return_data[32] * 10^ext_call.return_data[0] / 10^ext_call.return_data[0])
                        s = 10
                        t = 1
                        idx = ext_call.return_data[0]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
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
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        if not 10^ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        return (ext_call.return_data[32] * s * t / 10^ext_call.return_data[0])
                    s = 10
                    t = 1
                    idx = ext_call.return_data[0]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        if not s * t:
                            revert with 'NH{q', 18
                        return (ext_call.return_data[32] / s * t)
                    if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                        if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        if not s * t:
                            revert with 'NH{q', 18
                        return (ext_call.return_data[32] * 10^ext_call.return_data[0] / s * t)
                    u = 10
                    v = 1
                    idx = ext_call.return_data[0]
                    while idx > 1:
                        if u > -1 / u:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = u * v
                        idx = uint255(idx) * 0.5
                        continue 
                else:
                    if 826 == arg2:
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                revert with 'NH{q', 17
                            return ext_call.return_data[32]
                        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                if not 10^ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                return (ext_call.return_data[32] / 10^ext_call.return_data[0])
                            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                                if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                if not 10^ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                return (ext_call.return_data[32] * 10^ext_call.return_data[0] / 10^ext_call.return_data[0])
                            s = 10
                            t = 1
                            idx = ext_call.return_data[0]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
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
                                revert with 'NH{q', 17
                            if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                                revert with 'NH{q', 17
                            if not 10^ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            return (ext_call.return_data[32] * s * t / 10^ext_call.return_data[0])
                        s = 10
                        t = 1
                        idx = ext_call.return_data[0]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
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
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                revert with 'NH{q', 17
                            if not s * t:
                                revert with 'NH{q', 18
                            return (ext_call.return_data[32] / s * t)
                        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                            if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                                revert with 'NH{q', 17
                            if not s * t:
                                revert with 'NH{q', 18
                            return (ext_call.return_data[32] * 10^ext_call.return_data[0] / s * t)
                        u = 10
                        v = 1
                        idx = ext_call.return_data[0]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                    else:
                        if 978 == arg2:
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                return ext_call.return_data[32]
                            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                        revert with 'NH{q', 17
                                    if not 10^ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    return (ext_call.return_data[32] / 10^ext_call.return_data[0])
                                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                                    if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                                        revert with 'NH{q', 17
                                    if not 10^ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    return (ext_call.return_data[32] * 10^ext_call.return_data[0] / 10^ext_call.return_data[0])
                                s = 10
                                t = 1
                                idx = ext_call.return_data[0]
                                while idx > 1:
                                    if s > -1 / s:
                                        revert with 'NH{q', 17
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
                                    revert with 'NH{q', 17
                                if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                if not 10^ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                return (ext_call.return_data[32] * s * t / 10^ext_call.return_data[0])
                            s = 10
                            t = 1
                            idx = ext_call.return_data[0]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
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
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                if not s * t:
                                    revert with 'NH{q', 18
                                return (ext_call.return_data[32] / s * t)
                            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                                if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                if not s * t:
                                    revert with 'NH{q', 18
                                return (ext_call.return_data[32] * 10^ext_call.return_data[0] / s * t)
                            u = 10
                            v = 1
                            idx = ext_call.return_data[0]
                            while idx > 1:
                                if u > -1 / u:
                                    revert with 'NH{q', 17
                                if not bool(idx):
                                    u = u * u
                                    v = v
                                    idx = uint255(idx) * 0.5
                                    continue 
                                u = u * u
                                v = u * v
                                idx = uint255(idx) * 0.5
                                continue 
                        else:
                            require ext_code.size(arg2)
                            staticcall arg2.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if not ext_call.return_data[0]:
                                if not ext_call.return_data[31 len 1]:
                                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                        revert with 'NH{q', 17
                                    return ext_call.return_data[32]
                                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                    if ext_call.return_data[32] and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[32]:
                                        revert with 'NH{q', 17
                                    return (ext_call.return_data[32] * 10^ext_call.return_data[31 len 1])
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
                                    t = s * t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if t > -1 / s:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                return (ext_call.return_data[32] * s * t)
                            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                                if not ext_call.return_data[31 len 1]:
                                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                        revert with 'NH{q', 17
                                    if not 10^ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    return (ext_call.return_data[32] / 10^ext_call.return_data[0])
                                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                    if ext_call.return_data[32] and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[32]:
                                        revert with 'NH{q', 17
                                    if not 10^ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    return (ext_call.return_data[32] * 10^ext_call.return_data[31 len 1] / 10^ext_call.return_data[0])
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
                                    t = s * t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if t > -1 / s:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                if not 10^ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                return (ext_call.return_data[32] * s * t / 10^ext_call.return_data[0])
                            s = 10
                            t = 1
                            idx = ext_call.return_data[0]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
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
                                revert with 'NH{q', 17
                            if not ext_call.return_data[31 len 1]:
                                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                if not s * t:
                                    revert with 'NH{q', 18
                                return (ext_call.return_data[32] / s * t)
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if ext_call.return_data[32] and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                if not s * t:
                                    revert with 'NH{q', 18
                                return (ext_call.return_data[32] * 10^ext_call.return_data[31 len 1] / s * t)
                            u = 10
                            v = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if u > -1 / u:
                                    revert with 'NH{q', 17
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
            revert with 'NH{q', 17
        if ext_call.return_data[32] and u * v > -1 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if not s * t:
            revert with 'NH{q', 18
        return (ext_call.return_data[32] * u * v / s * t)
    if 840 == arg2:
        if not ext_call.return_data[0]:
            return 0
        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
            if ext_call.return_data[0]:
                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                    if False and 10^ext_call.return_data[0] > 0:
                        revert with 'NH{q', 17
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[0]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
                    if False and s * t > 0:
                        revert with 'NH{q', 17
            if not 10^ext_call.return_data[0]:
                revert with 'NH{q', 18
            return (0 / 10^ext_call.return_data[0])
        s = 10
        t = 1
        idx = ext_call.return_data[0]
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
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
            revert with 'NH{q', 17
        if ext_call.return_data[0]:
            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                if False and 10^ext_call.return_data[0] > 0:
                    revert with 'NH{q', 17
            else:
                u = 10
                v = 1
                idx = ext_call.return_data[0]
                while idx > 1:
                    if u > -1 / u:
                        revert with 'NH{q', 17
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
                    revert with 'NH{q', 17
                if False and u * v > 0:
                    revert with 'NH{q', 17
    else:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
            if not ext_call.return_data[0]:
                return 0
            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                if ext_call.return_data[0]:
                    if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                        if False and 10^ext_call.return_data[0] > 0:
                            revert with 'NH{q', 17
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[0]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
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
                            revert with 'NH{q', 17
                        if False and s * t > 0:
                            revert with 'NH{q', 17
                if not 10^ext_call.return_data[0]:
                    revert with 'NH{q', 18
                return (0 / 10^ext_call.return_data[0])
            s = 10
            t = 1
            idx = ext_call.return_data[0]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
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
                revert with 'NH{q', 17
            if ext_call.return_data[0]:
                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                    if False and 10^ext_call.return_data[0] > 0:
                        revert with 'NH{q', 17
                else:
                    u = 10
                    v = 1
                    idx = ext_call.return_data[0]
                    while idx > 1:
                        if u > -1 / u:
                            revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
                    if False and u * v > 0:
                        revert with 'NH{q', 17
        else:
            if 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb == arg2:
                if not ext_call.return_data[0]:
                    return 0
                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                    if ext_call.return_data[0]:
                        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                            if False and 10^ext_call.return_data[0] > 0:
                                revert with 'NH{q', 17
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[0]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
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
                                revert with 'NH{q', 17
                            if False and s * t > 0:
                                revert with 'NH{q', 17
                    if not 10^ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    return (0 / 10^ext_call.return_data[0])
                s = 10
                t = 1
                idx = ext_call.return_data[0]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
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
                    revert with 'NH{q', 17
                if ext_call.return_data[0]:
                    if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                        if False and 10^ext_call.return_data[0] > 0:
                            revert with 'NH{q', 17
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[0]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 'NH{q', 17
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
                            revert with 'NH{q', 17
                        if False and u * v > 0:
                            revert with 'NH{q', 17
            else:
                if 826 == arg2:
                    if not ext_call.return_data[0]:
                        return 0
                    if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                        if ext_call.return_data[0]:
                            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                                if False and 10^ext_call.return_data[0] > 0:
                                    revert with 'NH{q', 17
                            else:
                                s = 10
                                t = 1
                                idx = ext_call.return_data[0]
                                while idx > 1:
                                    if s > -1 / s:
                                        revert with 'NH{q', 17
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
                                    revert with 'NH{q', 17
                                if False and s * t > 0:
                                    revert with 'NH{q', 17
                        if not 10^ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        return (0 / 10^ext_call.return_data[0])
                    s = 10
                    t = 1
                    idx = ext_call.return_data[0]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
                    if ext_call.return_data[0]:
                        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                            if False and 10^ext_call.return_data[0] > 0:
                                revert with 'NH{q', 17
                        else:
                            u = 10
                            v = 1
                            idx = ext_call.return_data[0]
                            while idx > 1:
                                if u > -1 / u:
                                    revert with 'NH{q', 17
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
                                revert with 'NH{q', 17
                            if False and u * v > 0:
                                revert with 'NH{q', 17
                else:
                    if 978 == arg2:
                        if not ext_call.return_data[0]:
                            return 0
                        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                            if ext_call.return_data[0]:
                                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                                    if False and 10^ext_call.return_data[0] > 0:
                                        revert with 'NH{q', 17
                                else:
                                    s = 10
                                    t = 1
                                    idx = ext_call.return_data[0]
                                    while idx > 1:
                                        if s > -1 / s:
                                            revert with 'NH{q', 17
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
                                        revert with 'NH{q', 17
                                    if False and s * t > 0:
                                        revert with 'NH{q', 17
                            if not 10^ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            return (0 / 10^ext_call.return_data[0])
                        s = 10
                        t = 1
                        idx = ext_call.return_data[0]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
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
                            revert with 'NH{q', 17
                        if ext_call.return_data[0]:
                            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                                if False and 10^ext_call.return_data[0] > 0:
                                    revert with 'NH{q', 17
                            else:
                                u = 10
                                v = 1
                                idx = ext_call.return_data[0]
                                while idx > 1:
                                    if u > -1 / u:
                                        revert with 'NH{q', 17
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
                                    revert with 'NH{q', 17
                                if False and u * v > 0:
                                    revert with 'NH{q', 17
                    else:
                        require ext_code.size(arg2)
                        staticcall arg2.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[31 len 1]:
                                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                    if False and 10^ext_call.return_data[31 len 1] > 0:
                                        revert with 'NH{q', 17
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
                                        t = s * t
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if t > -1 / s:
                                        revert with 'NH{q', 17
                                    if False and s * t > 0:
                                        revert with 'NH{q', 17
                                return 0
                            else:
                                return 0
                        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                            if ext_call.return_data[31 len 1]:
                                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                    if False and 10^ext_call.return_data[31 len 1] > 0:
                                        revert with 'NH{q', 17
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
                                        t = s * t
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if t > -1 / s:
                                        revert with 'NH{q', 17
                                    if False and s * t > 0:
                                        revert with 'NH{q', 17
                            if not 10^ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            return (0 / 10^ext_call.return_data[0])
                        s = 10
                        t = 1
                        idx = ext_call.return_data[0]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
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
                            revert with 'NH{q', 17
                        if ext_call.return_data[31 len 1]:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if False and 10^ext_call.return_data[31 len 1] > 0:
                                    revert with 'NH{q', 17
                            else:
                                u = 10
                                v = 1
                                idx = ext_call.return_data[31 len 1]
                                while idx > 1:
                                    if u > -1 / u:
                                        revert with 'NH{q', 17
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
                                    revert with 'NH{q', 17
                                if False and u * v > 0:
                                    revert with 'NH{q', 17
    if not s * t:
        revert with 'NH{q', 18
    return (0 / s * t)
}

function getValueOfAsset(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(sub_10c7f0b9[arg1][arg2])
    staticcall sub_10c7f0b9[arg1][arg2].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(sub_10c7f0b9[arg1][arg2])
    staticcall sub_10c7f0b9[arg1][arg2].0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[32] >= 0:
        if 840 == arg2:
            if not ext_call.return_data[0]:
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                return ext_call.return_data[32]
            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                if not ext_call.return_data[0]:
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if not 10^ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    return (ext_call.return_data[32] / 10^ext_call.return_data[0])
                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                    if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if not 10^ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    return (ext_call.return_data[32] * 10^ext_call.return_data[0] / 10^ext_call.return_data[0])
                s = 10
                t = 1
                idx = ext_call.return_data[0]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
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
                    revert with 'NH{q', 17
                if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if not 10^ext_call.return_data[0]:
                    revert with 'NH{q', 18
                return (ext_call.return_data[32] * s * t / 10^ext_call.return_data[0])
            s = 10
            t = 1
            idx = ext_call.return_data[0]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
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
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if not s * t:
                    revert with 'NH{q', 18
                return (ext_call.return_data[32] / s * t)
            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if not s * t:
                    revert with 'NH{q', 18
                return (ext_call.return_data[32] * 10^ext_call.return_data[0] / s * t)
            u = 10
            v = 1
            idx = ext_call.return_data[0]
            while idx > 1:
                if u > -1 / u:
                    revert with 'NH{q', 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
        else:
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                if not ext_call.return_data[0]:
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    return ext_call.return_data[32]
                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        if not 10^ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        return (ext_call.return_data[32] / 10^ext_call.return_data[0])
                    if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                        if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        if not 10^ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        return (ext_call.return_data[32] * 10^ext_call.return_data[0] / 10^ext_call.return_data[0])
                    s = 10
                    t = 1
                    idx = ext_call.return_data[0]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if not 10^ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    return (ext_call.return_data[32] * s * t / 10^ext_call.return_data[0])
                s = 10
                t = 1
                idx = ext_call.return_data[0]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
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
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if not s * t:
                        revert with 'NH{q', 18
                    return (ext_call.return_data[32] / s * t)
                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                    if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if not s * t:
                        revert with 'NH{q', 18
                    return (ext_call.return_data[32] * 10^ext_call.return_data[0] / s * t)
                u = 10
                v = 1
                idx = ext_call.return_data[0]
                while idx > 1:
                    if u > -1 / u:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
            else:
                if 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb == arg2:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        return ext_call.return_data[32]
                    if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                revert with 'NH{q', 17
                            if not 10^ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            return (ext_call.return_data[32] / 10^ext_call.return_data[0])
                        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                            if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                                revert with 'NH{q', 17
                            if not 10^ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            return (ext_call.return_data[32] * 10^ext_call.return_data[0] / 10^ext_call.return_data[0])
                        s = 10
                        t = 1
                        idx = ext_call.return_data[0]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
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
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        if not 10^ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        return (ext_call.return_data[32] * s * t / 10^ext_call.return_data[0])
                    s = 10
                    t = 1
                    idx = ext_call.return_data[0]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        if not s * t:
                            revert with 'NH{q', 18
                        return (ext_call.return_data[32] / s * t)
                    if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                        if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        if not s * t:
                            revert with 'NH{q', 18
                        return (ext_call.return_data[32] * 10^ext_call.return_data[0] / s * t)
                    u = 10
                    v = 1
                    idx = ext_call.return_data[0]
                    while idx > 1:
                        if u > -1 / u:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = u * v
                        idx = uint255(idx) * 0.5
                        continue 
                else:
                    if 826 == arg2:
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                revert with 'NH{q', 17
                            return ext_call.return_data[32]
                        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                if not 10^ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                return (ext_call.return_data[32] / 10^ext_call.return_data[0])
                            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                                if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                if not 10^ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                return (ext_call.return_data[32] * 10^ext_call.return_data[0] / 10^ext_call.return_data[0])
                            s = 10
                            t = 1
                            idx = ext_call.return_data[0]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
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
                                revert with 'NH{q', 17
                            if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                                revert with 'NH{q', 17
                            if not 10^ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            return (ext_call.return_data[32] * s * t / 10^ext_call.return_data[0])
                        s = 10
                        t = 1
                        idx = ext_call.return_data[0]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
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
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                revert with 'NH{q', 17
                            if not s * t:
                                revert with 'NH{q', 18
                            return (ext_call.return_data[32] / s * t)
                        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                            if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                                revert with 'NH{q', 17
                            if not s * t:
                                revert with 'NH{q', 18
                            return (ext_call.return_data[32] * 10^ext_call.return_data[0] / s * t)
                        u = 10
                        v = 1
                        idx = ext_call.return_data[0]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                    else:
                        if 978 == arg2:
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                return ext_call.return_data[32]
                            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                        revert with 'NH{q', 17
                                    if not 10^ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    return (ext_call.return_data[32] / 10^ext_call.return_data[0])
                                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                                    if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                                        revert with 'NH{q', 17
                                    if not 10^ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    return (ext_call.return_data[32] * 10^ext_call.return_data[0] / 10^ext_call.return_data[0])
                                s = 10
                                t = 1
                                idx = ext_call.return_data[0]
                                while idx > 1:
                                    if s > -1 / s:
                                        revert with 'NH{q', 17
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
                                    revert with 'NH{q', 17
                                if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                if not 10^ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                return (ext_call.return_data[32] * s * t / 10^ext_call.return_data[0])
                            s = 10
                            t = 1
                            idx = ext_call.return_data[0]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
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
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                if not s * t:
                                    revert with 'NH{q', 18
                                return (ext_call.return_data[32] / s * t)
                            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                                if ext_call.return_data[32] and 10^ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                if not s * t:
                                    revert with 'NH{q', 18
                                return (ext_call.return_data[32] * 10^ext_call.return_data[0] / s * t)
                            u = 10
                            v = 1
                            idx = ext_call.return_data[0]
                            while idx > 1:
                                if u > -1 / u:
                                    revert with 'NH{q', 17
                                if not bool(idx):
                                    u = u * u
                                    v = v
                                    idx = uint255(idx) * 0.5
                                    continue 
                                u = u * u
                                v = u * v
                                idx = uint255(idx) * 0.5
                                continue 
                        else:
                            require ext_code.size(arg2)
                            staticcall arg2.0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if not ext_call.return_data[0]:
                                if not ext_call.return_data[31 len 1]:
                                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                        revert with 'NH{q', 17
                                    return ext_call.return_data[32]
                                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                    if ext_call.return_data[32] and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[32]:
                                        revert with 'NH{q', 17
                                    return (ext_call.return_data[32] * 10^ext_call.return_data[31 len 1])
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
                                    t = s * t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if t > -1 / s:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                return (ext_call.return_data[32] * s * t)
                            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                                if not ext_call.return_data[31 len 1]:
                                    if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                        revert with 'NH{q', 17
                                    if not 10^ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    return (ext_call.return_data[32] / 10^ext_call.return_data[0])
                                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                    if ext_call.return_data[32] and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[32]:
                                        revert with 'NH{q', 17
                                    if not 10^ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    return (ext_call.return_data[32] * 10^ext_call.return_data[31 len 1] / 10^ext_call.return_data[0])
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
                                    t = s * t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if t > -1 / s:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[32] and s * t > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                if not 10^ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                return (ext_call.return_data[32] * s * t / 10^ext_call.return_data[0])
                            s = 10
                            t = 1
                            idx = ext_call.return_data[0]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
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
                                revert with 'NH{q', 17
                            if not ext_call.return_data[31 len 1]:
                                if ext_call.return_data[32] and 1 > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                if not s * t:
                                    revert with 'NH{q', 18
                                return (ext_call.return_data[32] / s * t)
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if ext_call.return_data[32] and 10^ext_call.return_data[31 len 1] > -1 / ext_call.return_data[32]:
                                    revert with 'NH{q', 17
                                if not s * t:
                                    revert with 'NH{q', 18
                                return (ext_call.return_data[32] * 10^ext_call.return_data[31 len 1] / s * t)
                            u = 10
                            v = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if u > -1 / u:
                                    revert with 'NH{q', 17
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
            revert with 'NH{q', 17
        if ext_call.return_data[32] and u * v > -1 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if not s * t:
            revert with 'NH{q', 18
        return (ext_call.return_data[32] * u * v / s * t)
    if 840 == arg2:
        if not ext_call.return_data[0]:
            return 0
        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
            if ext_call.return_data[0]:
                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                    if False and 10^ext_call.return_data[0] > 0:
                        revert with 'NH{q', 17
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[0]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
                    if False and s * t > 0:
                        revert with 'NH{q', 17
            if not 10^ext_call.return_data[0]:
                revert with 'NH{q', 18
            return (0 / 10^ext_call.return_data[0])
        s = 10
        t = 1
        idx = ext_call.return_data[0]
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
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
            revert with 'NH{q', 17
        if ext_call.return_data[0]:
            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                if False and 10^ext_call.return_data[0] > 0:
                    revert with 'NH{q', 17
            else:
                u = 10
                v = 1
                idx = ext_call.return_data[0]
                while idx > 1:
                    if u > -1 / u:
                        revert with 'NH{q', 17
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
                    revert with 'NH{q', 17
                if False and u * v > 0:
                    revert with 'NH{q', 17
    else:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
            if not ext_call.return_data[0]:
                return 0
            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                if ext_call.return_data[0]:
                    if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                        if False and 10^ext_call.return_data[0] > 0:
                            revert with 'NH{q', 17
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[0]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
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
                            revert with 'NH{q', 17
                        if False and s * t > 0:
                            revert with 'NH{q', 17
                if not 10^ext_call.return_data[0]:
                    revert with 'NH{q', 18
                return (0 / 10^ext_call.return_data[0])
            s = 10
            t = 1
            idx = ext_call.return_data[0]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
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
                revert with 'NH{q', 17
            if ext_call.return_data[0]:
                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                    if False and 10^ext_call.return_data[0] > 0:
                        revert with 'NH{q', 17
                else:
                    u = 10
                    v = 1
                    idx = ext_call.return_data[0]
                    while idx > 1:
                        if u > -1 / u:
                            revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
                    if False and u * v > 0:
                        revert with 'NH{q', 17
        else:
            if 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb == arg2:
                if not ext_call.return_data[0]:
                    return 0
                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                    if ext_call.return_data[0]:
                        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                            if False and 10^ext_call.return_data[0] > 0:
                                revert with 'NH{q', 17
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[0]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
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
                                revert with 'NH{q', 17
                            if False and s * t > 0:
                                revert with 'NH{q', 17
                    if not 10^ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    return (0 / 10^ext_call.return_data[0])
                s = 10
                t = 1
                idx = ext_call.return_data[0]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
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
                    revert with 'NH{q', 17
                if ext_call.return_data[0]:
                    if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                        if False and 10^ext_call.return_data[0] > 0:
                            revert with 'NH{q', 17
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[0]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 'NH{q', 17
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
                            revert with 'NH{q', 17
                        if False and u * v > 0:
                            revert with 'NH{q', 17
            else:
                if 826 == arg2:
                    if not ext_call.return_data[0]:
                        return 0
                    if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                        if ext_call.return_data[0]:
                            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                                if False and 10^ext_call.return_data[0] > 0:
                                    revert with 'NH{q', 17
                            else:
                                s = 10
                                t = 1
                                idx = ext_call.return_data[0]
                                while idx > 1:
                                    if s > -1 / s:
                                        revert with 'NH{q', 17
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
                                    revert with 'NH{q', 17
                                if False and s * t > 0:
                                    revert with 'NH{q', 17
                        if not 10^ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        return (0 / 10^ext_call.return_data[0])
                    s = 10
                    t = 1
                    idx = ext_call.return_data[0]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
                    if ext_call.return_data[0]:
                        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                            if False and 10^ext_call.return_data[0] > 0:
                                revert with 'NH{q', 17
                        else:
                            u = 10
                            v = 1
                            idx = ext_call.return_data[0]
                            while idx > 1:
                                if u > -1 / u:
                                    revert with 'NH{q', 17
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
                                revert with 'NH{q', 17
                            if False and u * v > 0:
                                revert with 'NH{q', 17
                else:
                    if 978 == arg2:
                        if not ext_call.return_data[0]:
                            return 0
                        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                            if ext_call.return_data[0]:
                                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                                    if False and 10^ext_call.return_data[0] > 0:
                                        revert with 'NH{q', 17
                                else:
                                    s = 10
                                    t = 1
                                    idx = ext_call.return_data[0]
                                    while idx > 1:
                                        if s > -1 / s:
                                            revert with 'NH{q', 17
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
                                        revert with 'NH{q', 17
                                    if False and s * t > 0:
                                        revert with 'NH{q', 17
                            if not 10^ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            return (0 / 10^ext_call.return_data[0])
                        s = 10
                        t = 1
                        idx = ext_call.return_data[0]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
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
                            revert with 'NH{q', 17
                        if ext_call.return_data[0]:
                            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                                if False and 10^ext_call.return_data[0] > 0:
                                    revert with 'NH{q', 17
                            else:
                                u = 10
                                v = 1
                                idx = ext_call.return_data[0]
                                while idx > 1:
                                    if u > -1 / u:
                                        revert with 'NH{q', 17
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
                                    revert with 'NH{q', 17
                                if False and u * v > 0:
                                    revert with 'NH{q', 17
                    else:
                        require ext_code.size(arg2)
                        staticcall arg2.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[31 len 1]:
                                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                    if False and 10^ext_call.return_data[31 len 1] > 0:
                                        revert with 'NH{q', 17
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
                                        t = s * t
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if t > -1 / s:
                                        revert with 'NH{q', 17
                                    if False and s * t > 0:
                                        revert with 'NH{q', 17
                                return 0
                            else:
                                return 0
                        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                            if ext_call.return_data[31 len 1]:
                                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                    if False and 10^ext_call.return_data[31 len 1] > 0:
                                        revert with 'NH{q', 17
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
                                        t = s * t
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if t > -1 / s:
                                        revert with 'NH{q', 17
                                    if False and s * t > 0:
                                        revert with 'NH{q', 17
                            if not 10^ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            return (0 / 10^ext_call.return_data[0])
                        s = 10
                        t = 1
                        idx = ext_call.return_data[0]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
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
                            revert with 'NH{q', 17
                        if ext_call.return_data[31 len 1]:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if False and 10^ext_call.return_data[31 len 1] > 0:
                                    revert with 'NH{q', 17
                            else:
                                u = 10
                                v = 1
                                idx = ext_call.return_data[31 len 1]
                                while idx > 1:
                                    if u > -1 / u:
                                        revert with 'NH{q', 17
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
                                    revert with 'NH{q', 17
                                if False and u * v > 0:
                                    revert with 'NH{q', 17
    if not s * t:
        revert with 'NH{q', 18
    return (0 / s * t)
}



}
