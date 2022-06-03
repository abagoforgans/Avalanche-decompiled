contract main {




// =====================  Runtime code  =====================


#
#  - sub_7d640186(?)
#  - sub_e9aedb00(?)
#  - _fallback()
#
const sub_a2a68ded(?) = 0xd66b92fd29a6e1f9a1ccb8075a88d955fa4a409d

const MAG = 0x1d60109178c48e4a937d8ab71699d8ebb6f7c5de

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66

const MIM = 0x130966628846bfd36ff31a822705796e8cb8c18d


address owner;
address stor1;
address stor3;
mapping of address routePair;
array of address tokens;

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function owner() {
    return owner
}

function routePair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return routePair[address(arg1)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRoutePairAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routePair[address(arg1)] = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function removeToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tokens.length < 1:
        revert with 0, 17
    if tokens.length - 1 >= tokens.length:
        revert with 0, 50
    if arg1 >= tokens.length:
        revert with 0, 50
    tokens[arg1] = tokens[tokens.length]
    if not tokens.length:
        revert with 0, 49
    tokens[tokens.length] = 0
    tokens.length--
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_86cef246(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.kLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if arg1 and arg2 > -1 / arg1:
        revert with 0, 17
    if arg1 * arg2 <= 3:
        if not arg1 * arg2:
            if ext_call.return_data[0] <= 3:
                return 0
            if 1 > !(ext_call.return_data[0] / 2):
                revert with 0, 17
            s = (ext_call.return_data[0] / 2) + 1
            t = ext_call.return_data[0]
            while s < t:
                if not s:
                    revert with 0, 18
                if ext_call.return_data[0] / s > !s:
                    revert with 0, 17
                s = (ext_call.return_data[0] / s) + s / 2
                t = s
                continue 
            if 0 <= t:
                return 0
            if 0 < t:
                revert with 0, 17
            require ext_code.size(stor1)
            staticcall stor1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and -t > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if 0 > !t:
                revert with 0, 17
            if not t:
                revert with 0, 18
            return (-1 * ext_call.return_data[0] * t / t)
        if ext_call.return_data[0] <= 3:
            if ext_call.return_data[0]:
                return 0
            require ext_code.size(stor1)
            staticcall stor1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] / 5)
        if 1 > !(ext_call.return_data[0] / 2):
            revert with 0, 17
        s = (ext_call.return_data[0] / 2) + 1
        t = ext_call.return_data[0]
        while s < t:
            if not s:
                revert with 0, 18
            if ext_call.return_data[0] / s > !s:
                revert with 0, 17
            s = (ext_call.return_data[0] / s) + s / 2
            t = s
            continue 
        if 1 <= t:
            return 0
        if 1 < t:
            revert with 0, 17
        require ext_code.size(stor1)
        staticcall stor1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and -t + 1 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 5 > !t:
            revert with 0, 17
        if not t + 5:
            revert with 0, 18
        return (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5)
    if 1 > !(arg1 * arg2 / 2):
        revert with 0, 17
    s = (arg1 * arg2 / 2) + 1
    t = arg1 * arg2
    while s < t:
        if not s:
            revert with 0, 18
        if arg1 * arg2 / s > !s:
            revert with 0, 17
        s = (arg1 * arg2 / s) + s / 2
        t = s
        continue 
    if ext_call.return_data[0] <= 3:
        if not ext_call.return_data[0]:
            if t <= 0:
                return 0
            if t < 0:
                revert with 0, 17
            require ext_code.size(stor1)
            staticcall stor1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and t > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if 5 * t > -1:
                revert with 0, 17
            if not 5 * t:
                revert with 0, 18
            return (ext_call.return_data[0] * t / 5 * t)
        if t <= 1:
            return 0
        if t < 1:
            revert with 0, 17
        require ext_code.size(stor1)
        staticcall stor1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and t - 1 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        if 5 * t > -2:
            revert with 0, 17
        if not (5 * t) + 1:
            revert with 0, 18
        return (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1)
    if 1 > !(ext_call.return_data[0] / 2):
        revert with 0, 17
    s = (ext_call.return_data[0] / 2) + 1
    u = ext_call.return_data[0]
    while s < u:
        if not s:
            revert with 0, 18
        if ext_call.return_data[0] / s > !s:
            revert with 0, 17
        s = (ext_call.return_data[0] / s) + s / 2
        u = s
        continue 
    if t <= u:
        return 0
    if t < u:
        revert with 0, 17
    require ext_code.size(stor1)
    staticcall stor1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and t - u > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if 5 * t > !u:
        revert with 0, 17
    if not (5 * t) + u:
        revert with 0, 18
    return ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u)
}

function sweep() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < tokens.length:
        mem[0] = 5
        if tokens[idx]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokens[idx])
            staticcall tokens[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _54 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _55 = mem[_54]
            if mem[_54]:
                mem[0] = 5
                if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == tokens[idx]:
                    mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _55
                    require ext_code.size(tokens[idx])
                    call tokens[idx].0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _55
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[0] = tokens[idx]
                    mem[32] = 4
                    if not routePair[stor5[idx]]:
                        _61 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_61]:
                            revert with 0, 50
                        mem[_61 + 32] = tokens[idx]
                        mem[0] = tokens[idx]
                        if 1 >= mem[_61]:
                            revert with 0, 50
                        mem[_61 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                        mem[_61 + 96] = 0x676528d100000000000000000000000000000000000000000000000000000000
                        mem[_61 + 100] = _55
                        mem[_61 + 132] = 0
                        mem[_61 + 164] = 160
                        mem[_61 + 260] = mem[_61]
                        s = 0
                        t = _61 + 32
                        u = _61 + 292
                        while s < mem[_61]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_61 + 196] = owner
                        mem[_61 + 228] = block.timestamp
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _61 + (32 * mem[_61]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _101 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _103 = mem[_101]
                        require mem[_101] <= test266151307()
                        require _101 + mem[_101] + 31 < _101 + return_data.size
                        _105 = mem[_101 + mem[_101]]
                        if mem[_101 + mem[_101]] > test266151307():
                            revert with 0, 65
                        if _101 + ceil32(return_data.size) + ceil32(32 * mem[_101 + mem[_101]]) + 1 > test266151307() or ceil32(32 * mem[_101 + mem[_101]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _101 + ceil32(return_data.size) + ceil32(32 * mem[_101 + mem[_101]]) + 1
                        mem[_101 + ceil32(return_data.size)] = _105
                        require (32 * _105) + _103 + 32 <= return_data.size
                        t = _101 + ceil32(return_data.size) + 32
                        s = _101 + _103 + 32
                        while s < (32 * _105) + _101 + _103 + 32:
                            mem[t] = mem[s]
                            t = t + 32
                            s = s + 32
                            continue 
                        if _105 < 1:
                            revert with 0, 17
                        if _105 - 1 >= _105:
                            revert with 0, 50
                    else:
                        _63 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_63]:
                            revert with 0, 50
                        mem[_63 + 32] = tokens[idx]
                        mem[0] = tokens[idx]
                        mem[32] = 4
                        if 1 >= mem[_63]:
                            revert with 0, 50
                        mem[_63 + 64] = routePair[stor5[idx]]
                        mem[0] = tokens[idx]
                        if 2 >= mem[_63]:
                            revert with 0, 50
                        mem[_63 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                        mem[_63 + 128] = 0x676528d100000000000000000000000000000000000000000000000000000000
                        mem[_63 + 132] = _55
                        mem[_63 + 164] = 0
                        mem[_63 + 196] = 160
                        mem[_63 + 292] = mem[_63]
                        s = 0
                        t = _63 + 32
                        u = _63 + 324
                        while s < mem[_63]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_63 + 228] = owner
                        mem[_63 + 260] = block.timestamp
                        require ext_code.size(stor3)
                        call stor3.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _63 + (32 * mem[_63]) + -mem[64] + 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _102 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _104 = mem[_102]
                        require mem[_102] <= test266151307()
                        require _102 + mem[_102] + 31 < _102 + return_data.size
                        _106 = mem[_102 + mem[_102]]
                        if mem[_102 + mem[_102]] > test266151307():
                            revert with 0, 65
                        if _102 + ceil32(return_data.size) + ceil32(32 * mem[_102 + mem[_102]]) + 1 > test266151307() or ceil32(32 * mem[_102 + mem[_102]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _102 + ceil32(return_data.size) + ceil32(32 * mem[_102 + mem[_102]]) + 1
                        mem[_102 + ceil32(return_data.size)] = _106
                        require (32 * _106) + _104 + 32 <= return_data.size
                        t = _102 + ceil32(return_data.size) + 32
                        s = _102 + _104 + 32
                        while s < (32 * _106) + _102 + _104 + 32:
                            mem[t] = mem[s]
                            t = t + 32
                            s = s + 32
                            continue 
                        if _106 < 1:
                            revert with 0, 17
                        if _106 - 1 >= _106:
                            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if eth.balance(this.address):
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_731b0ceb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if routePair[address(arg1)]:
        if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg1):
            mem[128] = address(arg1)
            mem[160] = routePair[address(arg1)]
        else:
            if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg2):
                mem[128] = address(arg1)
                mem[160] = routePair[address(arg1)]
            else:
                if not routePair[address(arg1)]:
                    if routePair[address(arg1)]:
                        if routePair[address(arg2)]:
                            if routePair[address(arg2)] != routePair[address(arg1)]:
                                mem[128] = address(arg1)
                                mem[160] = routePair[address(arg1)]
                                mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                mem[224] = routePair[address(arg2)]
                                mem[256] = address(arg2)
                                mem[288] = 32
                                idx = 0
                                s = 128
                                t = 352
                                while idx < 5:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return Array(len=5, data=mem[352 len 160])
                    if routePair[address(arg1)]:
                        if routePair[address(arg1)]:
                            mem[128] = address(arg1)
                            mem[160] = routePair[address(arg1)]
                            mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                            mem[224] = address(arg2)
                            mem[256] = 32
                            idx = 0
                            s = 128
                            t = 320
                            while idx < 4:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return Array(len=4, data=mem[320 len 128])
                        if routePair[address(arg1)]:
                            if routePair[address(arg2)]:
                                mem[128] = address(arg1)
                                mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                mem[192] = routePair[address(arg1)]
                                mem[224] = address(arg2)
                                mem[256] = 32
                                idx = 0
                                s = 128
                                t = 320
                                while idx < 4:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return Array(len=4, data=mem[320 len 128])
                    mem[128] = address(arg1)
                    if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg1):
                        mem[160] = address(arg2)
                        mem[192] = 32
                        idx = 0
                        s = 128
                        t = 256
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return Array(len=2, data=mem[256 len 64])
                    if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg2):
                        mem[160] = address(arg2)
                        mem[192] = 32
                        idx = 0
                        s = 128
                        t = 256
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return Array(len=2, data=mem[256 len 64])
                    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                else:
                    if address(arg1) == routePair[address(arg1)]:
                        mem[128] = address(arg1)
                        mem[160] = address(arg2)
                        mem[192] = 32
                        idx = 0
                        s = 128
                        t = 256
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return Array(len=2, data=mem[256 len 64])
                    if address(arg2) == routePair[address(arg1)]:
                        mem[128] = address(arg1)
                        mem[160] = address(arg2)
                        mem[192] = 32
                        idx = 0
                        s = 128
                        t = 256
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return Array(len=2, data=mem[256 len 64])
                    if not routePair[address(arg1)]:
                        if routePair[address(arg1)]:
                            if routePair[address(arg2)]:
                                if routePair[address(arg2)] != routePair[address(arg1)]:
                                    mem[128] = address(arg1)
                                    mem[160] = routePair[address(arg1)]
                                    mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                    mem[224] = routePair[address(arg2)]
                                    mem[256] = address(arg2)
                                    mem[288] = 32
                                    idx = 0
                                    s = 128
                                    t = 352
                                    while idx < 5:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return Array(len=5, data=mem[352 len 160])
                        if routePair[address(arg1)]:
                            if routePair[address(arg1)]:
                                mem[128] = address(arg1)
                                mem[160] = routePair[address(arg1)]
                                mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                mem[224] = address(arg2)
                                mem[256] = 32
                                idx = 0
                                s = 128
                                t = 320
                                while idx < 4:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return Array(len=4, data=mem[320 len 128])
                            if routePair[address(arg1)]:
                                if routePair[address(arg2)]:
                                    mem[128] = address(arg1)
                                    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                    mem[192] = routePair[address(arg1)]
                                    mem[224] = address(arg2)
                                    mem[256] = 32
                                    idx = 0
                                    s = 128
                                    t = 320
                                    while idx < 4:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return Array(len=4, data=mem[320 len 128])
                        mem[128] = address(arg1)
                        if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg1):
                            mem[160] = address(arg2)
                            mem[192] = 32
                            idx = 0
                            s = 128
                            t = 256
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return Array(len=2, data=mem[256 len 64])
                        if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg2):
                            mem[160] = address(arg2)
                            mem[192] = 32
                            idx = 0
                            s = 128
                            t = 256
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return Array(len=2, data=mem[256 len 64])
                        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                    else:
                        if routePair[address(arg2)] == routePair[address(arg1)]:
                            mem[128] = address(arg1)
                            mem[160] = routePair[address(arg1)]
                        else:
                            if routePair[address(arg1)]:
                                if routePair[address(arg2)]:
                                    if routePair[address(arg2)] != routePair[address(arg1)]:
                                        mem[128] = address(arg1)
                                        mem[160] = routePair[address(arg1)]
                                        mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                        mem[224] = routePair[address(arg2)]
                                        mem[256] = address(arg2)
                                        mem[288] = 32
                                        idx = 0
                                        s = 128
                                        t = 352
                                        while idx < 5:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return Array(len=5, data=mem[352 len 160])
                            if routePair[address(arg1)]:
                                if routePair[address(arg1)]:
                                    mem[128] = address(arg1)
                                    mem[160] = routePair[address(arg1)]
                                    mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                    mem[224] = address(arg2)
                                    mem[256] = 32
                                    idx = 0
                                    s = 128
                                    t = 320
                                    while idx < 4:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return Array(len=4, data=mem[320 len 128])
                                if routePair[address(arg1)]:
                                    if routePair[address(arg2)]:
                                        mem[128] = address(arg1)
                                        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                        mem[192] = routePair[address(arg1)]
                                        mem[224] = address(arg2)
                                        mem[256] = 32
                                        idx = 0
                                        s = 128
                                        t = 320
                                        while idx < 4:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return Array(len=4, data=mem[320 len 128])
                            mem[128] = address(arg1)
                            if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg1):
                                mem[160] = address(arg2)
                                mem[192] = 32
                                idx = 0
                                s = 128
                                t = 256
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return Array(len=2, data=mem[256 len 64])
                            if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg2):
                                mem[160] = address(arg2)
                                mem[192] = 32
                                idx = 0
                                s = 128
                                t = 256
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return Array(len=2, data=mem[256 len 64])
                            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    else:
        if not routePair[address(arg2)]:
            if routePair[address(arg1)]:
                if routePair[address(arg2)]:
                    if routePair[address(arg2)] != routePair[address(arg1)]:
                        mem[128] = address(arg1)
                        mem[160] = routePair[address(arg1)]
                        mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                        mem[224] = routePair[address(arg2)]
                        mem[256] = address(arg2)
                        mem[288] = 32
                        idx = 0
                        s = 128
                        t = 352
                        while idx < 5:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return Array(len=5, data=mem[352 len 160])
            if routePair[address(arg2)]:
                if routePair[address(arg1)]:
                    mem[128] = address(arg1)
                    mem[160] = routePair[address(arg2)]
                    mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                    mem[224] = address(arg2)
                    mem[256] = 32
                    idx = 0
                    s = 128
                    t = 320
                    while idx < 4:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return Array(len=4, data=mem[320 len 128])
                if routePair[address(arg2)]:
                    if routePair[address(arg2)]:
                        mem[128] = address(arg1)
                        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                        mem[192] = routePair[address(arg2)]
                        mem[224] = address(arg2)
                        mem[256] = 32
                        idx = 0
                        s = 128
                        t = 320
                        while idx < 4:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return Array(len=4, data=mem[320 len 128])
            mem[128] = address(arg1)
            if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg1):
                mem[160] = address(arg2)
                mem[192] = 32
                idx = 0
                s = 128
                t = 256
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return Array(len=2, data=mem[256 len 64])
            if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg2):
                mem[160] = address(arg2)
                mem[192] = 32
                idx = 0
                s = 128
                t = 256
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return Array(len=2, data=mem[256 len 64])
            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        else:
            if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg1):
                mem[128] = address(arg1)
                mem[160] = routePair[address(arg2)]
            else:
                if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg2):
                    mem[128] = address(arg1)
                    mem[160] = routePair[address(arg2)]
                else:
                    if not routePair[address(arg2)]:
                        if routePair[address(arg1)]:
                            if routePair[address(arg2)]:
                                if routePair[address(arg2)] != routePair[address(arg1)]:
                                    mem[128] = address(arg1)
                                    mem[160] = routePair[address(arg1)]
                                    mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                    mem[224] = routePair[address(arg2)]
                                    mem[256] = address(arg2)
                                    mem[288] = 32
                                    idx = 0
                                    s = 128
                                    t = 352
                                    while idx < 5:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return Array(len=5, data=mem[352 len 160])
                        if routePair[address(arg2)]:
                            if routePair[address(arg1)]:
                                mem[128] = address(arg1)
                                mem[160] = routePair[address(arg2)]
                                mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                mem[224] = address(arg2)
                                mem[256] = 32
                                idx = 0
                                s = 128
                                t = 320
                                while idx < 4:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return Array(len=4, data=mem[320 len 128])
                            if routePair[address(arg2)]:
                                if routePair[address(arg2)]:
                                    mem[128] = address(arg1)
                                    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                    mem[192] = routePair[address(arg2)]
                                    mem[224] = address(arg2)
                                    mem[256] = 32
                                    idx = 0
                                    s = 128
                                    t = 320
                                    while idx < 4:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return Array(len=4, data=mem[320 len 128])
                        mem[128] = address(arg1)
                        if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg1):
                            mem[160] = address(arg2)
                            mem[192] = 32
                            idx = 0
                            s = 128
                            t = 256
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return Array(len=2, data=mem[256 len 64])
                        if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg2):
                            mem[160] = address(arg2)
                            mem[192] = 32
                            idx = 0
                            s = 128
                            t = 256
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return Array(len=2, data=mem[256 len 64])
                        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                    else:
                        if address(arg1) == routePair[address(arg2)]:
                            mem[128] = address(arg1)
                            mem[160] = address(arg2)
                            mem[192] = 32
                            idx = 0
                            s = 128
                            t = 256
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return Array(len=2, data=mem[256 len 64])
                        if address(arg2) == routePair[address(arg2)]:
                            mem[128] = address(arg1)
                            mem[160] = address(arg2)
                            mem[192] = 32
                            idx = 0
                            s = 128
                            t = 256
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return Array(len=2, data=mem[256 len 64])
                        if not routePair[address(arg2)]:
                            if routePair[address(arg1)]:
                                if routePair[address(arg2)]:
                                    if routePair[address(arg2)] != routePair[address(arg1)]:
                                        mem[128] = address(arg1)
                                        mem[160] = routePair[address(arg1)]
                                        mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                        mem[224] = routePair[address(arg2)]
                                        mem[256] = address(arg2)
                                        mem[288] = 32
                                        idx = 0
                                        s = 128
                                        t = 352
                                        while idx < 5:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return Array(len=5, data=mem[352 len 160])
                            if routePair[address(arg2)]:
                                if routePair[address(arg1)]:
                                    mem[128] = address(arg1)
                                    mem[160] = routePair[address(arg2)]
                                    mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                    mem[224] = address(arg2)
                                    mem[256] = 32
                                    idx = 0
                                    s = 128
                                    t = 320
                                    while idx < 4:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return Array(len=4, data=mem[320 len 128])
                                if routePair[address(arg2)]:
                                    if routePair[address(arg2)]:
                                        mem[128] = address(arg1)
                                        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                        mem[192] = routePair[address(arg2)]
                                        mem[224] = address(arg2)
                                        mem[256] = 32
                                        idx = 0
                                        s = 128
                                        t = 320
                                        while idx < 4:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return Array(len=4, data=mem[320 len 128])
                            mem[128] = address(arg1)
                            if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg1):
                                mem[160] = address(arg2)
                                mem[192] = 32
                                idx = 0
                                s = 128
                                t = 256
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return Array(len=2, data=mem[256 len 64])
                            if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg2):
                                mem[160] = address(arg2)
                                mem[192] = 32
                                idx = 0
                                s = 128
                                t = 256
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return Array(len=2, data=mem[256 len 64])
                            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                        else:
                            if routePair[address(arg2)] == routePair[address(arg1)]:
                                mem[128] = address(arg1)
                                mem[160] = routePair[address(arg2)]
                            else:
                                if routePair[address(arg1)]:
                                    if routePair[address(arg2)]:
                                        if routePair[address(arg2)] != routePair[address(arg1)]:
                                            mem[128] = address(arg1)
                                            mem[160] = routePair[address(arg1)]
                                            mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                            mem[224] = routePair[address(arg2)]
                                            mem[256] = address(arg2)
                                            mem[288] = 32
                                            idx = 0
                                            s = 128
                                            t = 352
                                            while idx < 5:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            return Array(len=5, data=mem[352 len 160])
                                if routePair[address(arg2)]:
                                    if routePair[address(arg1)]:
                                        mem[128] = address(arg1)
                                        mem[160] = routePair[address(arg2)]
                                        mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                        mem[224] = address(arg2)
                                        mem[256] = 32
                                        idx = 0
                                        s = 128
                                        t = 320
                                        while idx < 4:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return Array(len=4, data=mem[320 len 128])
                                    if routePair[address(arg2)]:
                                        if routePair[address(arg2)]:
                                            mem[128] = address(arg1)
                                            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                                            mem[192] = routePair[address(arg2)]
                                            mem[224] = address(arg2)
                                            mem[256] = 32
                                            idx = 0
                                            s = 128
                                            t = 320
                                            while idx < 4:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            return Array(len=4, data=mem[320 len 128])
                                mem[128] = address(arg1)
                                if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg1):
                                    mem[160] = address(arg2)
                                    mem[192] = 32
                                    idx = 0
                                    s = 128
                                    t = 256
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return Array(len=2, data=mem[256 len 64])
                                if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(arg2):
                                    mem[160] = address(arg2)
                                    mem[192] = 32
                                    idx = 0
                                    s = 128
                                    t = 256
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return Array(len=2, data=mem[256 len 64])
                                mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[192] = address(arg2)
    mem[224] = 32
    idx = 0
    s = 128
    t = 288
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=3, data=mem[288 len 96])
}

function sub_ae083b5d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[32] = 4
    if not routePair[address(arg1)]:
        mem[96] = 2
        mem[128] = address(arg1)
        mem[0] = address(arg1)
        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg2
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 128
        t = 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor3)
        staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _1546 = mem[192 len 4], Mask(224, 32, arg2) >> 32
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 223 < return_data.size + 192
        _1548 = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require (32 * _1548) + _1546 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224 len ceil32(32 * _1548)] = mem[_1546 + 224 len ceil32(32 * _1548)]
        require ext_code.size(0xd66b92fd29a6e1f9a1ccb8075a88d955fa4a409d)
        staticcall 0xd66b92fd29a6e1f9a1ccb8075a88d955fa4a409d.token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3732 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3734 = mem[_3732]
        require mem[_3732] == mem[_3732 + 12 len 20]
        require ext_code.size(0xd66b92fd29a6e1f9a1ccb8075a88d955fa4a409d)
        staticcall 0xd66b92fd29a6e1f9a1ccb8075a88d955fa4a409d.token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3740 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3742 = mem[_3740]
        require mem[_3740] == mem[_3740 + 12 len 20]
        if _1548 < 1:
            revert with 0, 17
        if _1548 - 1 >= _1548:
            revert with 0, 50
        _3748 = mem[(32 * _1548 - 1) + ceil32(return_data.size) + 224]
        mem[32] = 4
        if not routePair[address(_3734)]:
            _3752 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[0] = address(_3734)
            if 0 >= mem[_3752]:
                revert with 0, 50
            mem[_3752 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
            if 1 >= mem[_3752]:
                revert with 0, 50
            mem[_3752 + 64] = address(_3734)
            mem[_3752 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_3752 + 100] = _3748 / 2
            mem[_3752 + 132] = 64
            mem[_3752 + 164] = mem[_3752]
            idx = 0
            s = _3752 + 32
            t = _3752 + 196
            while idx < mem[_3752]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor3)
            staticcall stor3.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _3752 + (32 * mem[_3752]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6304 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6308 = mem[_6304]
            require mem[_6304] <= test266151307()
            require _6304 + mem[_6304] + 31 < _6304 + return_data.size
            _6312 = mem[_6304 + mem[_6304]]
            if mem[_6304 + mem[_6304]] > test266151307():
                revert with 0, 65
            if _6304 + ceil32(return_data.size) + ceil32(32 * mem[_6304 + mem[_6304]]) + 1 > test266151307() or ceil32(32 * mem[_6304 + mem[_6304]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _6304 + ceil32(return_data.size) + ceil32(32 * mem[_6304 + mem[_6304]]) + 1
            mem[_6304 + ceil32(return_data.size)] = _6312
            require (32 * _6312) + _6308 + 32 <= return_data.size
            mem[_6304 + ceil32(return_data.size) + 32 len ceil32(32 * _6312)] = mem[_6304 + _6308 + 32 len ceil32(32 * _6312)]
            if mem[ceil32(return_data.size) + 192] < 1:
                revert with 0, 17
            if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                revert with 0, 50
            _9044 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
            if mem[ceil32(return_data.size) + 192] < 1:
                revert with 0, 17
            if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                revert with 0, 50
            _9056 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
            if mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] / 2:
                revert with 0, 17
            mem[32] = 4
            if not routePair[address(_3742)]:
                _9064 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[0] = address(_3742)
                if 0 >= mem[_9064]:
                    revert with 0, 50
                mem[_9064 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                if 1 >= mem[_9064]:
                    revert with 0, 50
                mem[_9064 + 64] = address(_3742)
                mem[_9064 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_9064 + 100] = _9056 - (_9044 / 2)
                mem[_9064 + 132] = 64
                mem[_9064 + 164] = mem[_9064]
                idx = 0
                s = _9064 + 32
                t = _9064 + 196
                while idx < mem[_9064]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _9064 + (32 * mem[_9064]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11760 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11768 = mem[_11760]
                require mem[_11760] <= test266151307()
                require _11760 + mem[_11760] + 31 < _11760 + return_data.size
                _11776 = mem[_11760 + mem[_11760]]
                if mem[_11760 + mem[_11760]] > test266151307():
                    revert with 0, 65
                if _11760 + ceil32(return_data.size) + ceil32(32 * mem[_11760 + mem[_11760]]) + 1 > test266151307() or ceil32(32 * mem[_11760 + mem[_11760]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _11760 + ceil32(return_data.size) + ceil32(32 * mem[_11760 + mem[_11760]]) + 1
                mem[_11760 + ceil32(return_data.size)] = _11776
                require (32 * _11776) + _11768 + 32 <= return_data.size
                mem[_11760 + ceil32(return_data.size) + 32 len ceil32(32 * _11776)] = mem[_11760 + _11768 + 32 len ceil32(32 * _11776)]
                if mem[_6304 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_6304 + ceil32(return_data.size)] - 1 >= mem[_6304 + ceil32(return_data.size)]:
                    revert with 0, 50
                _14384 = mem[(32 * mem[_6304 + ceil32(return_data.size)] - 1) + _6304 + ceil32(return_data.size) + 32]
                if _11776 < 1:
                    revert with 0, 17
                if _11776 - 1 >= _11776:
                    revert with 0, 50
                _14408 = mem[(32 * _11776 - 1) + _11760 + ceil32(return_data.size) + 32]
                require ext_code.size(stor1)
                staticcall stor1.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14432 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _14440 = mem[_14432]
                require mem[_14432] == mem[_14432 + 18 len 14]
                _14448 = mem[_14432 + 32]
                require mem[_14432 + 32] == mem[_14432 + 50 len 14]
                require mem[_14432 + 64] == mem[_14432 + 92 len 4]
                if _14384 <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                if mem[_14432 + 18 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if mem[_14432 + 50 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if _14384 and mem[_14432 + 50 len 14] > -1 / _14384:
                    revert with 0, 17
                if not mem[_14432 + 18 len 14]:
                    revert with 0, 18
                if _14384 * mem[_14432 + 50 len 14] / mem[_14432 + 18 len 14] <= _14408:
                    require ext_code.size(stor1)
                    staticcall stor1.kLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14545 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_14545]:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14608 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_14608] > -1:
                            revert with 0, 17
                        if _14384 and mem[_14608] > -1 / _14384:
                            revert with 0, 17
                        if not Mask(112, 0, _14440):
                            revert with 0, 18
                        if _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) and mem[_14608] > -1 / _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440):
                            revert with 0, 17
                        if not Mask(112, 0, _14448):
                            revert with 0, 18
                        if _14384 * mem[_14608] / Mask(112, 0, _14440) < _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_14608] / Mask(112, 0, _14448):
                            mem[mem[64]] = _14384 * mem[_14608] / Mask(112, 0, _14440)
                        else:
                            mem[mem[64]] = _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_14608] / Mask(112, 0, _14448)
                    else:
                        if Mask(112, 0, _14440) and Mask(112, 0, _14448) > -1 / Mask(112, 0, _14440):
                            revert with 0, 17
                        if Mask(112, 0, _14440) * Mask(112, 0, _14448) <= 3:
                            if not Mask(112, 0, _14440) * Mask(112, 0, _14448):
                                if mem[_14545] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not mem[_14545]:
                                        _14705 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14705] > -1:
                                            revert with 0, 17
                                        if _14384 and mem[_14705] > -1 / _14384:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) and mem[_14705] > -1 / _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if _14384 * mem[_14705] / Mask(112, 0, _14440) < _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_14705] / Mask(112, 0, _14448):
                                            mem[mem[64]] = _14384 * mem[_14705] / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_14705] / Mask(112, 0, _14448)
                                    else:
                                        _14752 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14752] > -1:
                                            revert with 0, 17
                                        if _14384 and mem[_14752] > -1 / _14384:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) and mem[_14752] > -1 / _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if _14384 * mem[_14752] / Mask(112, 0, _14440) < _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_14752] / Mask(112, 0, _14448):
                                            mem[mem[64]] = _14384 * mem[_14752] / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_14752] / Mask(112, 0, _14448)
                                else:
                                    if 1 > !(mem[_14545] / 2):
                                        revert with 0, 17
                                    s = (mem[_14545] / 2) + 1
                                    t = mem[_14545]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14545] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14545] / s) + s / 2
                                        t = s
                                        continue 
                                    if 0 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17058 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17058] > -1:
                                            revert with 0, 17
                                        if _14384 and mem[_17058] > -1 / _14384:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) and mem[_17058] > -1 / _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if _14384 * mem[_17058] / Mask(112, 0, _14440) < _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_17058] / Mask(112, 0, _14448):
                                            mem[mem[64]] = _14384 * mem[_17058] / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_17058] / Mask(112, 0, _14448)
                                    else:
                                        if 0 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17090 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17190 = mem[_17090]
                                        if mem[_17090] and -t > -1 / mem[_17090]:
                                            revert with 0, 17
                                        if 0 > !t:
                                            revert with 0, 17
                                        if not t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17634 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17634] > !(-1 * _17190 * t / t):
                                            revert with 0, 17
                                        if _14384 and mem[_17634] + (-1 * _17190 * t / t) > -1 / _14384:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) and mem[_17634] + (-1 * _17190 * t / t) > -1 / _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if (mem[_17634] * _14384) + (-1 * _17190 * t / t * _14384) / Mask(112, 0, _14440) < (mem[_17634] * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) + (-1 * _17190 * t / t * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) / Mask(112, 0, _14448):
                                            mem[mem[64]] = (mem[_17634] * _14384) + (-1 * _17190 * t / t * _14384) / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = (mem[_17634] * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) + (-1 * _17190 * t / t * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) / Mask(112, 0, _14448)
                            else:
                                if mem[_14545] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_14545]:
                                        _14763 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14763] > -1:
                                            revert with 0, 17
                                        if _14384 and mem[_14763] > -1 / _14384:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) and mem[_14763] > -1 / _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if _14384 * mem[_14763] / Mask(112, 0, _14440) < _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_14763] / Mask(112, 0, _14448):
                                            mem[mem[64]] = _14384 * mem[_14763] / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_14763] / Mask(112, 0, _14448)
                                    else:
                                        _14762 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _14800 = mem[_14762]
                                        if mem[_14762] and 1 > -1 / mem[_14762]:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _15494 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15494] > !(_14800 / 5):
                                            revert with 0, 17
                                        if _14384 and mem[_15494] + (_14800 / 5) > -1 / _14384:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) and mem[_15494] + (_14800 / 5) > -1 / _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if (mem[_15494] * _14384) + (_14800 / 5 * _14384) / Mask(112, 0, _14440) < (mem[_15494] * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) + (_14800 / 5 * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) / Mask(112, 0, _14448):
                                            mem[mem[64]] = (mem[_15494] * _14384) + (_14800 / 5 * _14384) / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = (mem[_15494] * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) + (_14800 / 5 * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) / Mask(112, 0, _14448)
                                else:
                                    if 1 > !(mem[_14545] / 2):
                                        revert with 0, 17
                                    s = (mem[_14545] / 2) + 1
                                    t = mem[_14545]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14545] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14545] / s) + s / 2
                                        t = s
                                        continue 
                                    if 1 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17059 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17059] > -1:
                                            revert with 0, 17
                                        if _14384 and mem[_17059] > -1 / _14384:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) and mem[_17059] > -1 / _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if _14384 * mem[_17059] / Mask(112, 0, _14440) < _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_17059] / Mask(112, 0, _14448):
                                            mem[mem[64]] = _14384 * mem[_17059] / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_17059] / Mask(112, 0, _14448)
                                    else:
                                        if 1 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17091 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17191 = mem[_17091]
                                        if mem[_17091] and -t + 1 > -1 / mem[_17091]:
                                            revert with 0, 17
                                        if 5 > !t:
                                            revert with 0, 17
                                        if not t + 5:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17635 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17635] > !(_17191 - (t * _17191) / t + 5):
                                            revert with 0, 17
                                        if _14384 and mem[_17635] + (_17191 - (t * _17191) / t + 5) > -1 / _14384:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) and mem[_17635] + (_17191 - (t * _17191) / t + 5) > -1 / _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if (mem[_17635] * _14384) + (_17191 - (t * _17191) / t + 5 * _14384) / Mask(112, 0, _14440) < (mem[_17635] * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) + (_17191 - (t * _17191) / t + 5 * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) / Mask(112, 0, _14448):
                                            mem[mem[64]] = (mem[_17635] * _14384) + (_17191 - (t * _17191) / t + 5 * _14384) / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = (mem[_17635] * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) + (_17191 - (t * _17191) / t + 5 * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) / Mask(112, 0, _14448)
                        else:
                            if 1 > !(Mask(112, 0, _14440) * Mask(112, 0, _14448) / 2):
                                revert with 0, 17
                            s = (Mask(112, 0, _14440) * Mask(112, 0, _14448) / 2) + 1
                            t = Mask(112, 0, _14440) * Mask(112, 0, _14448)
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if Mask(112, 0, _14440) * Mask(112, 0, _14448) / s > !s:
                                    revert with 0, 17
                                s = (Mask(112, 0, _14440) * Mask(112, 0, _14448) / s) + s / 2
                                t = s
                                continue 
                            if mem[_14545] <= 3:
                                if not mem[_14545]:
                                    if t <= 0:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17283 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17283] > -1:
                                            revert with 0, 17
                                        if _14384 and mem[_17283] > -1 / _14384:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) and mem[_17283] > -1 / _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if _14384 * mem[_17283] / Mask(112, 0, _14440) < _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_17283] / Mask(112, 0, _14448):
                                            mem[mem[64]] = _14384 * mem[_17283] / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_17283] / Mask(112, 0, _14448)
                                    else:
                                        if t < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17330 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17394 = mem[_17330]
                                        if mem[_17330] and t > -1 / mem[_17330]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -1:
                                            revert with 0, 17
                                        if not 5 * t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17889 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17889] > !(_17394 * t / 5 * t):
                                            revert with 0, 17
                                        if _14384 and mem[_17889] + (_17394 * t / 5 * t) > -1 / _14384:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) and mem[_17889] + (_17394 * t / 5 * t) > -1 / _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if (mem[_17889] * _14384) + (_17394 * t / 5 * t * _14384) / Mask(112, 0, _14440) < (mem[_17889] * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) + (_17394 * t / 5 * t * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) / Mask(112, 0, _14448):
                                            mem[mem[64]] = (mem[_17889] * _14384) + (_17394 * t / 5 * t * _14384) / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = (mem[_17889] * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) + (_17394 * t / 5 * t * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) / Mask(112, 0, _14448)
                                else:
                                    if t <= 1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17331 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17331] > -1:
                                            revert with 0, 17
                                        if _14384 and mem[_17331] > -1 / _14384:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) and mem[_17331] > -1 / _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if _14384 * mem[_17331] / Mask(112, 0, _14440) < _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_17331] / Mask(112, 0, _14448):
                                            mem[mem[64]] = _14384 * mem[_17331] / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_17331] / Mask(112, 0, _14448)
                                    else:
                                        if t < 1:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17363 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17425 = mem[_17363]
                                        if mem[_17363] and t - 1 > -1 / mem[_17363]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -2:
                                            revert with 0, 17
                                        if not (5 * t) + 1:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17907 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17907] > !(-_17425 + (t * _17425) / (5 * t) + 1):
                                            revert with 0, 17
                                        if _14384 and mem[_17907] + (-_17425 + (t * _17425) / (5 * t) + 1) > -1 / _14384:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) and mem[_17907] + (-_17425 + (t * _17425) / (5 * t) + 1) > -1 / _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if (mem[_17907] * _14384) + (-_17425 + (t * _17425) / (5 * t) + 1 * _14384) / Mask(112, 0, _14440) < (mem[_17907] * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) + (-_17425 + (t * _17425) / (5 * t) + 1 * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) / Mask(112, 0, _14448):
                                            mem[mem[64]] = (mem[_17907] * _14384) + (-_17425 + (t * _17425) / (5 * t) + 1 * _14384) / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = (mem[_17907] * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) + (-_17425 + (t * _17425) / (5 * t) + 1 * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) / Mask(112, 0, _14448)
                            else:
                                if 1 > !(mem[_14545] / 2):
                                    revert with 0, 17
                                s = (mem[_14545] / 2) + 1
                                u = mem[_14545]
                                while s < u:
                                    if not s:
                                        revert with 0, 18
                                    if mem[_14545] / s > !s:
                                        revert with 0, 17
                                    s = (mem[_14545] / s) + s / 2
                                    u = s
                                    continue 
                                if t <= u:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18593 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18593] > -1:
                                        revert with 0, 17
                                    if _14384 and mem[_18593] > -1 / _14384:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14440):
                                        revert with 0, 18
                                    if _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) and mem[_18593] > -1 / _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14448):
                                        revert with 0, 18
                                    if _14384 * mem[_18593] / Mask(112, 0, _14440) < _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_18593] / Mask(112, 0, _14448):
                                        mem[mem[64]] = _14384 * mem[_18593] / Mask(112, 0, _14440)
                                    else:
                                        mem[mem[64]] = _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) * mem[_18593] / Mask(112, 0, _14448)
                                else:
                                    if t < u:
                                        revert with 0, 17
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18609 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _18641 = mem[_18609]
                                    if mem[_18609] and t - u > -1 / mem[_18609]:
                                        revert with 0, 17
                                    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                        revert with 0, 17
                                    if 5 * t > !u:
                                        revert with 0, 17
                                    if not (5 * t) + u:
                                        revert with 0, 18
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18689 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18689] > !((t * _18641) - (u * _18641) / (5 * t) + u):
                                        revert with 0, 17
                                    if _14384 and mem[_18689] + ((t * _18641) - (u * _18641) / (5 * t) + u) > -1 / _14384:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14440):
                                        revert with 0, 18
                                    if _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440) and mem[_18689] + ((t * _18641) - (u * _18641) / (5 * t) + u) > -1 / _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14448):
                                        revert with 0, 18
                                    if (mem[_18689] * _14384) + ((t * _18641) - (u * _18641) / (5 * t) + u * _14384) / Mask(112, 0, _14440) < (mem[_18689] * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) + ((t * _18641) - (u * _18641) / (5 * t) + u * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) / Mask(112, 0, _14448):
                                        mem[mem[64]] = (mem[_18689] * _14384) + ((t * _18641) - (u * _18641) / (5 * t) + u * _14384) / Mask(112, 0, _14440)
                                    else:
                                        mem[mem[64]] = (mem[_18689] * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) + ((t * _18641) - (u * _18641) / (5 * t) + u * _14384 * Mask(112, 0, _14448) / Mask(112, 0, _14440)) / Mask(112, 0, _14448)
                else:
                    if _14408 <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                    if mem[_14432 + 50 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if mem[_14432 + 18 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if _14408 and mem[_14432 + 18 len 14] > -1 / _14408:
                        revert with 0, 17
                    if not mem[_14432 + 50 len 14]:
                        revert with 0, 18
                    if _14408 * mem[_14432 + 18 len 14] / mem[_14432 + 50 len 14] > _14384:
                        revert with 0, 1
                    require ext_code.size(stor1)
                    staticcall stor1.kLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14640 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_14640]:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14704 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_14704] > -1:
                            revert with 0, 17
                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) and mem[_14704] > -1 / _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448):
                            revert with 0, 17
                        if not Mask(112, 0, _14440):
                            revert with 0, 18
                        if _14408 and mem[_14704] > -1 / _14408:
                            revert with 0, 17
                        if not Mask(112, 0, _14448):
                            revert with 0, 18
                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_14704] / Mask(112, 0, _14440) < _14408 * mem[_14704] / Mask(112, 0, _14448):
                            mem[mem[64]] = _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_14704] / Mask(112, 0, _14440)
                        else:
                            mem[mem[64]] = _14408 * mem[_14704] / Mask(112, 0, _14448)
                    else:
                        if Mask(112, 0, _14440) and Mask(112, 0, _14448) > -1 / Mask(112, 0, _14440):
                            revert with 0, 17
                        if Mask(112, 0, _14440) * Mask(112, 0, _14448) <= 3:
                            if not Mask(112, 0, _14440) * Mask(112, 0, _14448):
                                if mem[_14640] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not mem[_14640]:
                                        _15152 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15152] > -1:
                                            revert with 0, 17
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) and mem[_15152] > -1 / _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14408 and mem[_15152] > -1 / _14408:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_15152] / Mask(112, 0, _14440) < _14408 * mem[_15152] / Mask(112, 0, _14448):
                                            mem[mem[64]] = _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_15152] / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = _14408 * mem[_15152] / Mask(112, 0, _14448)
                                    else:
                                        _15208 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15208] > -1:
                                            revert with 0, 17
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) and mem[_15208] > -1 / _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14408 and mem[_15208] > -1 / _14408:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_15208] / Mask(112, 0, _14440) < _14408 * mem[_15208] / Mask(112, 0, _14448):
                                            mem[mem[64]] = _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_15208] / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = _14408 * mem[_15208] / Mask(112, 0, _14448)
                                else:
                                    if 1 > !(mem[_14640] / 2):
                                        revert with 0, 17
                                    s = (mem[_14640] / 2) + 1
                                    t = mem[_14640]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14640] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14640] / s) + s / 2
                                        t = s
                                        continue 
                                    if 0 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17056 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17056] > -1:
                                            revert with 0, 17
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) and mem[_17056] > -1 / _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14408 and mem[_17056] > -1 / _14408:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_17056] / Mask(112, 0, _14440) < _14408 * mem[_17056] / Mask(112, 0, _14448):
                                            mem[mem[64]] = _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_17056] / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = _14408 * mem[_17056] / Mask(112, 0, _14448)
                                    else:
                                        if 0 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17088 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17184 = mem[_17088]
                                        if mem[_17088] and -t > -1 / mem[_17088]:
                                            revert with 0, 17
                                        if 0 > !t:
                                            revert with 0, 17
                                        if not t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17632 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17632] > !(-1 * _17184 * t / t):
                                            revert with 0, 17
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) and mem[_17632] + (-1 * _17184 * t / t) > -1 / _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14408 and mem[_17632] + (-1 * _17184 * t / t) > -1 / _14408:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if (mem[_17632] * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) + (-1 * _17184 * t / t * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) / Mask(112, 0, _14440) < (mem[_17632] * _14408) + (-1 * _17184 * t / t * _14408) / Mask(112, 0, _14448):
                                            mem[mem[64]] = (mem[_17632] * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) + (-1 * _17184 * t / t * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = (mem[_17632] * _14408) + (-1 * _17184 * t / t * _14408) / Mask(112, 0, _14448)
                            else:
                                if mem[_14640] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_14640]:
                                        _15226 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15226] > -1:
                                            revert with 0, 17
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) and mem[_15226] > -1 / _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14408 and mem[_15226] > -1 / _14408:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_15226] / Mask(112, 0, _14440) < _14408 * mem[_15226] / Mask(112, 0, _14448):
                                            mem[mem[64]] = _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_15226] / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = _14408 * mem[_15226] / Mask(112, 0, _14448)
                                    else:
                                        _15225 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _15272 = mem[_15225]
                                        if mem[_15225] and 1 > -1 / mem[_15225]:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _16065 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_16065] > !(_15272 / 5):
                                            revert with 0, 17
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) and mem[_16065] + (_15272 / 5) > -1 / _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14408 and mem[_16065] + (_15272 / 5) > -1 / _14408:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if (mem[_16065] * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) + (_15272 / 5 * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) / Mask(112, 0, _14440) < (mem[_16065] * _14408) + (_15272 / 5 * _14408) / Mask(112, 0, _14448):
                                            mem[mem[64]] = (mem[_16065] * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) + (_15272 / 5 * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = (mem[_16065] * _14408) + (_15272 / 5 * _14408) / Mask(112, 0, _14448)
                                else:
                                    if 1 > !(mem[_14640] / 2):
                                        revert with 0, 17
                                    s = (mem[_14640] / 2) + 1
                                    t = mem[_14640]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14640] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14640] / s) + s / 2
                                        t = s
                                        continue 
                                    if 1 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17057 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17057] > -1:
                                            revert with 0, 17
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) and mem[_17057] > -1 / _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14408 and mem[_17057] > -1 / _14408:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_17057] / Mask(112, 0, _14440) < _14408 * mem[_17057] / Mask(112, 0, _14448):
                                            mem[mem[64]] = _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_17057] / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = _14408 * mem[_17057] / Mask(112, 0, _14448)
                                    else:
                                        if 1 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17089 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17185 = mem[_17089]
                                        if mem[_17089] and -t + 1 > -1 / mem[_17089]:
                                            revert with 0, 17
                                        if 5 > !t:
                                            revert with 0, 17
                                        if not t + 5:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17633 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17633] > !(_17185 - (t * _17185) / t + 5):
                                            revert with 0, 17
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) and mem[_17633] + (_17185 - (t * _17185) / t + 5) > -1 / _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14408 and mem[_17633] + (_17185 - (t * _17185) / t + 5) > -1 / _14408:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if (mem[_17633] * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) + (_17185 - (t * _17185) / t + 5 * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) / Mask(112, 0, _14440) < (mem[_17633] * _14408) + (_17185 - (t * _17185) / t + 5 * _14408) / Mask(112, 0, _14448):
                                            mem[mem[64]] = (mem[_17633] * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) + (_17185 - (t * _17185) / t + 5 * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = (mem[_17633] * _14408) + (_17185 - (t * _17185) / t + 5 * _14408) / Mask(112, 0, _14448)
                        else:
                            if 1 > !(Mask(112, 0, _14440) * Mask(112, 0, _14448) / 2):
                                revert with 0, 17
                            s = (Mask(112, 0, _14440) * Mask(112, 0, _14448) / 2) + 1
                            t = Mask(112, 0, _14440) * Mask(112, 0, _14448)
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if Mask(112, 0, _14440) * Mask(112, 0, _14448) / s > !s:
                                    revert with 0, 17
                                s = (Mask(112, 0, _14440) * Mask(112, 0, _14448) / s) + s / 2
                                t = s
                                continue 
                            if mem[_14640] <= 3:
                                if not mem[_14640]:
                                    if t <= 0:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17280 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17280] > -1:
                                            revert with 0, 17
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) and mem[_17280] > -1 / _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14408 and mem[_17280] > -1 / _14408:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_17280] / Mask(112, 0, _14440) < _14408 * mem[_17280] / Mask(112, 0, _14448):
                                            mem[mem[64]] = _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_17280] / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = _14408 * mem[_17280] / Mask(112, 0, _14448)
                                    else:
                                        if t < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17328 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17392 = mem[_17328]
                                        if mem[_17328] and t > -1 / mem[_17328]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -1:
                                            revert with 0, 17
                                        if not 5 * t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17888 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17888] > !(_17392 * t / 5 * t):
                                            revert with 0, 17
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) and mem[_17888] + (_17392 * t / 5 * t) > -1 / _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14408 and mem[_17888] + (_17392 * t / 5 * t) > -1 / _14408:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if (mem[_17888] * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) + (_17392 * t / 5 * t * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) / Mask(112, 0, _14440) < (mem[_17888] * _14408) + (_17392 * t / 5 * t * _14408) / Mask(112, 0, _14448):
                                            mem[mem[64]] = (mem[_17888] * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) + (_17392 * t / 5 * t * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = (mem[_17888] * _14408) + (_17392 * t / 5 * t * _14408) / Mask(112, 0, _14448)
                                else:
                                    if t <= 1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17329 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17329] > -1:
                                            revert with 0, 17
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) and mem[_17329] > -1 / _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14408 and mem[_17329] > -1 / _14408:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_17329] / Mask(112, 0, _14440) < _14408 * mem[_17329] / Mask(112, 0, _14448):
                                            mem[mem[64]] = _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_17329] / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = _14408 * mem[_17329] / Mask(112, 0, _14448)
                                    else:
                                        if t < 1:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17361 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17424 = mem[_17361]
                                        if mem[_17361] and t - 1 > -1 / mem[_17361]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -2:
                                            revert with 0, 17
                                        if not (5 * t) + 1:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17905 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17905] > !(-_17424 + (t * _17424) / (5 * t) + 1):
                                            revert with 0, 17
                                        if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) and mem[_17905] + (-_17424 + (t * _17424) / (5 * t) + 1) > -1 / _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14440):
                                            revert with 0, 18
                                        if _14408 and mem[_17905] + (-_17424 + (t * _17424) / (5 * t) + 1) > -1 / _14408:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14448):
                                            revert with 0, 18
                                        if (mem[_17905] * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) + (-_17424 + (t * _17424) / (5 * t) + 1 * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) / Mask(112, 0, _14440) < (mem[_17905] * _14408) + (-_17424 + (t * _17424) / (5 * t) + 1 * _14408) / Mask(112, 0, _14448):
                                            mem[mem[64]] = (mem[_17905] * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) + (-_17424 + (t * _17424) / (5 * t) + 1 * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) / Mask(112, 0, _14440)
                                        else:
                                            mem[mem[64]] = (mem[_17905] * _14408) + (-_17424 + (t * _17424) / (5 * t) + 1 * _14408) / Mask(112, 0, _14448)
                            else:
                                if 1 > !(mem[_14640] / 2):
                                    revert with 0, 17
                                s = (mem[_14640] / 2) + 1
                                u = mem[_14640]
                                while s < u:
                                    if not s:
                                        revert with 0, 18
                                    if mem[_14640] / s > !s:
                                        revert with 0, 17
                                    s = (mem[_14640] / s) + s / 2
                                    u = s
                                    continue 
                                if t <= u:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18592 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18592] > -1:
                                        revert with 0, 17
                                    if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) and mem[_18592] > -1 / _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14440):
                                        revert with 0, 18
                                    if _14408 and mem[_18592] > -1 / _14408:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14448):
                                        revert with 0, 18
                                    if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_18592] / Mask(112, 0, _14440) < _14408 * mem[_18592] / Mask(112, 0, _14448):
                                        mem[mem[64]] = _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) * mem[_18592] / Mask(112, 0, _14440)
                                    else:
                                        mem[mem[64]] = _14408 * mem[_18592] / Mask(112, 0, _14448)
                                else:
                                    if t < u:
                                        revert with 0, 17
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18608 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _18640 = mem[_18608]
                                    if mem[_18608] and t - u > -1 / mem[_18608]:
                                        revert with 0, 17
                                    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                        revert with 0, 17
                                    if 5 * t > !u:
                                        revert with 0, 17
                                    if not (5 * t) + u:
                                        revert with 0, 18
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18688 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18688] > !((t * _18640) - (u * _18640) / (5 * t) + u):
                                        revert with 0, 17
                                    if _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448) and mem[_18688] + ((t * _18640) - (u * _18640) / (5 * t) + u) > -1 / _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14440):
                                        revert with 0, 18
                                    if _14408 and mem[_18688] + ((t * _18640) - (u * _18640) / (5 * t) + u) > -1 / _14408:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14448):
                                        revert with 0, 18
                                    if (mem[_18688] * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) + ((t * _18640) - (u * _18640) / (5 * t) + u * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) / Mask(112, 0, _14440) < (mem[_18688] * _14408) + ((t * _18640) - (u * _18640) / (5 * t) + u * _14408) / Mask(112, 0, _14448):
                                        mem[mem[64]] = (mem[_18688] * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) + ((t * _18640) - (u * _18640) / (5 * t) + u * _14408 * Mask(112, 0, _14440) / Mask(112, 0, _14448)) / Mask(112, 0, _14440)
                                    else:
                                        mem[mem[64]] = (mem[_18688] * _14408) + ((t * _18640) - (u * _18640) / (5 * t) + u * _14408) / Mask(112, 0, _14448)
            else:
                _9068 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                mem[0] = address(_3742)
                if 0 >= mem[_9068]:
                    revert with 0, 50
                mem[_9068 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                mem[0] = address(_3742)
                mem[32] = 4
                if 1 >= mem[_9068]:
                    revert with 0, 50
                mem[_9068 + 64] = routePair[address(_3742)]
                if 2 >= mem[_9068]:
                    revert with 0, 50
                mem[_9068 + 96] = address(_3742)
                mem[_9068 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_9068 + 132] = _9056 - (_9044 / 2)
                mem[_9068 + 164] = 64
                mem[_9068 + 196] = mem[_9068]
                idx = 0
                s = _9068 + 32
                t = _9068 + 228
                while idx < mem[_9068]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _9068 + (32 * mem[_9068]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11761 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11769 = mem[_11761]
                require mem[_11761] <= test266151307()
                require _11761 + mem[_11761] + 31 < _11761 + return_data.size
                _11777 = mem[_11761 + mem[_11761]]
                if mem[_11761 + mem[_11761]] > test266151307():
                    revert with 0, 65
                if _11761 + ceil32(return_data.size) + ceil32(32 * mem[_11761 + mem[_11761]]) + 1 > test266151307() or ceil32(32 * mem[_11761 + mem[_11761]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _11761 + ceil32(return_data.size) + ceil32(32 * mem[_11761 + mem[_11761]]) + 1
                mem[_11761 + ceil32(return_data.size)] = _11777
                require (32 * _11777) + _11769 + 32 <= return_data.size
                mem[_11761 + ceil32(return_data.size) + 32 len ceil32(32 * _11777)] = mem[_11761 + _11769 + 32 len ceil32(32 * _11777)]
                if mem[_6304 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_6304 + ceil32(return_data.size)] - 1 >= mem[_6304 + ceil32(return_data.size)]:
                    revert with 0, 50
                _14386 = mem[(32 * mem[_6304 + ceil32(return_data.size)] - 1) + _6304 + ceil32(return_data.size) + 32]
                if _11777 < 1:
                    revert with 0, 17
                if _11777 - 1 >= _11777:
                    revert with 0, 50
                _14411 = mem[(32 * _11777 - 1) + _11761 + ceil32(return_data.size) + 32]
                require ext_code.size(stor1)
                staticcall stor1.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14433 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _14441 = mem[_14433]
                require mem[_14433] == mem[_14433 + 18 len 14]
                _14449 = mem[_14433 + 32]
                require mem[_14433 + 32] == mem[_14433 + 50 len 14]
                require mem[_14433 + 64] == mem[_14433 + 92 len 4]
                if _14386 <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                if mem[_14433 + 18 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if mem[_14433 + 50 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if _14386 and mem[_14433 + 50 len 14] > -1 / _14386:
                    revert with 0, 17
                if not mem[_14433 + 18 len 14]:
                    revert with 0, 18
                if _14386 * mem[_14433 + 50 len 14] / mem[_14433 + 18 len 14] <= _14411:
                    require ext_code.size(stor1)
                    staticcall stor1.kLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14547 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_14547]:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14609 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_14609] > -1:
                            revert with 0, 17
                        if _14386 and mem[_14609] > -1 / _14386:
                            revert with 0, 17
                        if not Mask(112, 0, _14441):
                            revert with 0, 18
                        if _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) and mem[_14609] > -1 / _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441):
                            revert with 0, 17
                        if not Mask(112, 0, _14449):
                            revert with 0, 18
                        if _14386 * mem[_14609] / Mask(112, 0, _14441) < _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_14609] / Mask(112, 0, _14449):
                            mem[mem[64]] = _14386 * mem[_14609] / Mask(112, 0, _14441)
                        else:
                            mem[mem[64]] = _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_14609] / Mask(112, 0, _14449)
                    else:
                        if Mask(112, 0, _14441) and Mask(112, 0, _14449) > -1 / Mask(112, 0, _14441):
                            revert with 0, 17
                        if Mask(112, 0, _14441) * Mask(112, 0, _14449) <= 3:
                            if not Mask(112, 0, _14441) * Mask(112, 0, _14449):
                                if mem[_14547] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not mem[_14547]:
                                        _14711 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14711] > -1:
                                            revert with 0, 17
                                        if _14386 and mem[_14711] > -1 / _14386:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) and mem[_14711] > -1 / _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if _14386 * mem[_14711] / Mask(112, 0, _14441) < _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_14711] / Mask(112, 0, _14449):
                                            mem[mem[64]] = _14386 * mem[_14711] / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_14711] / Mask(112, 0, _14449)
                                    else:
                                        _14753 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14753] > -1:
                                            revert with 0, 17
                                        if _14386 and mem[_14753] > -1 / _14386:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) and mem[_14753] > -1 / _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if _14386 * mem[_14753] / Mask(112, 0, _14441) < _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_14753] / Mask(112, 0, _14449):
                                            mem[mem[64]] = _14386 * mem[_14753] / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_14753] / Mask(112, 0, _14449)
                                else:
                                    if 1 > !(mem[_14547] / 2):
                                        revert with 0, 17
                                    s = (mem[_14547] / 2) + 1
                                    t = mem[_14547]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14547] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14547] / s) + s / 2
                                        t = s
                                        continue 
                                    if 0 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17062 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17062] > -1:
                                            revert with 0, 17
                                        if _14386 and mem[_17062] > -1 / _14386:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) and mem[_17062] > -1 / _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if _14386 * mem[_17062] / Mask(112, 0, _14441) < _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_17062] / Mask(112, 0, _14449):
                                            mem[mem[64]] = _14386 * mem[_17062] / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_17062] / Mask(112, 0, _14449)
                                    else:
                                        if 0 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17094 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17202 = mem[_17094]
                                        if mem[_17094] and -t > -1 / mem[_17094]:
                                            revert with 0, 17
                                        if 0 > !t:
                                            revert with 0, 17
                                        if not t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17638 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17638] > !(-1 * _17202 * t / t):
                                            revert with 0, 17
                                        if _14386 and mem[_17638] + (-1 * _17202 * t / t) > -1 / _14386:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) and mem[_17638] + (-1 * _17202 * t / t) > -1 / _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if (mem[_17638] * _14386) + (-1 * _17202 * t / t * _14386) / Mask(112, 0, _14441) < (mem[_17638] * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) + (-1 * _17202 * t / t * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) / Mask(112, 0, _14449):
                                            mem[mem[64]] = (mem[_17638] * _14386) + (-1 * _17202 * t / t * _14386) / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = (mem[_17638] * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) + (-1 * _17202 * t / t * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) / Mask(112, 0, _14449)
                            else:
                                if mem[_14547] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_14547]:
                                        _14767 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14767] > -1:
                                            revert with 0, 17
                                        if _14386 and mem[_14767] > -1 / _14386:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) and mem[_14767] > -1 / _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if _14386 * mem[_14767] / Mask(112, 0, _14441) < _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_14767] / Mask(112, 0, _14449):
                                            mem[mem[64]] = _14386 * mem[_14767] / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_14767] / Mask(112, 0, _14449)
                                    else:
                                        _14766 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _14802 = mem[_14766]
                                        if mem[_14766] and 1 > -1 / mem[_14766]:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _15501 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15501] > !(_14802 / 5):
                                            revert with 0, 17
                                        if _14386 and mem[_15501] + (_14802 / 5) > -1 / _14386:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) and mem[_15501] + (_14802 / 5) > -1 / _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if (mem[_15501] * _14386) + (_14802 / 5 * _14386) / Mask(112, 0, _14441) < (mem[_15501] * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) + (_14802 / 5 * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) / Mask(112, 0, _14449):
                                            mem[mem[64]] = (mem[_15501] * _14386) + (_14802 / 5 * _14386) / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = (mem[_15501] * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) + (_14802 / 5 * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) / Mask(112, 0, _14449)
                                else:
                                    if 1 > !(mem[_14547] / 2):
                                        revert with 0, 17
                                    s = (mem[_14547] / 2) + 1
                                    t = mem[_14547]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14547] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14547] / s) + s / 2
                                        t = s
                                        continue 
                                    if 1 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17063 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17063] > -1:
                                            revert with 0, 17
                                        if _14386 and mem[_17063] > -1 / _14386:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) and mem[_17063] > -1 / _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if _14386 * mem[_17063] / Mask(112, 0, _14441) < _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_17063] / Mask(112, 0, _14449):
                                            mem[mem[64]] = _14386 * mem[_17063] / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_17063] / Mask(112, 0, _14449)
                                    else:
                                        if 1 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17095 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17203 = mem[_17095]
                                        if mem[_17095] and -t + 1 > -1 / mem[_17095]:
                                            revert with 0, 17
                                        if 5 > !t:
                                            revert with 0, 17
                                        if not t + 5:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17639 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17639] > !(_17203 - (t * _17203) / t + 5):
                                            revert with 0, 17
                                        if _14386 and mem[_17639] + (_17203 - (t * _17203) / t + 5) > -1 / _14386:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) and mem[_17639] + (_17203 - (t * _17203) / t + 5) > -1 / _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if (mem[_17639] * _14386) + (_17203 - (t * _17203) / t + 5 * _14386) / Mask(112, 0, _14441) < (mem[_17639] * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) + (_17203 - (t * _17203) / t + 5 * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) / Mask(112, 0, _14449):
                                            mem[mem[64]] = (mem[_17639] * _14386) + (_17203 - (t * _17203) / t + 5 * _14386) / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = (mem[_17639] * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) + (_17203 - (t * _17203) / t + 5 * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) / Mask(112, 0, _14449)
                        else:
                            if 1 > !(Mask(112, 0, _14441) * Mask(112, 0, _14449) / 2):
                                revert with 0, 17
                            s = (Mask(112, 0, _14441) * Mask(112, 0, _14449) / 2) + 1
                            t = Mask(112, 0, _14441) * Mask(112, 0, _14449)
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if Mask(112, 0, _14441) * Mask(112, 0, _14449) / s > !s:
                                    revert with 0, 17
                                s = (Mask(112, 0, _14441) * Mask(112, 0, _14449) / s) + s / 2
                                t = s
                                continue 
                            if mem[_14547] <= 3:
                                if not mem[_14547]:
                                    if t <= 0:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17289 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17289] > -1:
                                            revert with 0, 17
                                        if _14386 and mem[_17289] > -1 / _14386:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) and mem[_17289] > -1 / _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if _14386 * mem[_17289] / Mask(112, 0, _14441) < _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_17289] / Mask(112, 0, _14449):
                                            mem[mem[64]] = _14386 * mem[_17289] / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_17289] / Mask(112, 0, _14449)
                                    else:
                                        if t < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17334 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17398 = mem[_17334]
                                        if mem[_17334] and t > -1 / mem[_17334]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -1:
                                            revert with 0, 17
                                        if not 5 * t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17891 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17891] > !(_17398 * t / 5 * t):
                                            revert with 0, 17
                                        if _14386 and mem[_17891] + (_17398 * t / 5 * t) > -1 / _14386:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) and mem[_17891] + (_17398 * t / 5 * t) > -1 / _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if (mem[_17891] * _14386) + (_17398 * t / 5 * t * _14386) / Mask(112, 0, _14441) < (mem[_17891] * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) + (_17398 * t / 5 * t * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) / Mask(112, 0, _14449):
                                            mem[mem[64]] = (mem[_17891] * _14386) + (_17398 * t / 5 * t * _14386) / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = (mem[_17891] * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) + (_17398 * t / 5 * t * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) / Mask(112, 0, _14449)
                                else:
                                    if t <= 1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17335 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17335] > -1:
                                            revert with 0, 17
                                        if _14386 and mem[_17335] > -1 / _14386:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) and mem[_17335] > -1 / _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if _14386 * mem[_17335] / Mask(112, 0, _14441) < _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_17335] / Mask(112, 0, _14449):
                                            mem[mem[64]] = _14386 * mem[_17335] / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_17335] / Mask(112, 0, _14449)
                                    else:
                                        if t < 1:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17367 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17427 = mem[_17367]
                                        if mem[_17367] and t - 1 > -1 / mem[_17367]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -2:
                                            revert with 0, 17
                                        if not (5 * t) + 1:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17911 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17911] > !(-_17427 + (t * _17427) / (5 * t) + 1):
                                            revert with 0, 17
                                        if _14386 and mem[_17911] + (-_17427 + (t * _17427) / (5 * t) + 1) > -1 / _14386:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) and mem[_17911] + (-_17427 + (t * _17427) / (5 * t) + 1) > -1 / _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if (mem[_17911] * _14386) + (-_17427 + (t * _17427) / (5 * t) + 1 * _14386) / Mask(112, 0, _14441) < (mem[_17911] * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) + (-_17427 + (t * _17427) / (5 * t) + 1 * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) / Mask(112, 0, _14449):
                                            mem[mem[64]] = (mem[_17911] * _14386) + (-_17427 + (t * _17427) / (5 * t) + 1 * _14386) / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = (mem[_17911] * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) + (-_17427 + (t * _17427) / (5 * t) + 1 * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) / Mask(112, 0, _14449)
                            else:
                                if 1 > !(mem[_14547] / 2):
                                    revert with 0, 17
                                s = (mem[_14547] / 2) + 1
                                u = mem[_14547]
                                while s < u:
                                    if not s:
                                        revert with 0, 18
                                    if mem[_14547] / s > !s:
                                        revert with 0, 17
                                    s = (mem[_14547] / s) + s / 2
                                    u = s
                                    continue 
                                if t <= u:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18595 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18595] > -1:
                                        revert with 0, 17
                                    if _14386 and mem[_18595] > -1 / _14386:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14441):
                                        revert with 0, 18
                                    if _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) and mem[_18595] > -1 / _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14449):
                                        revert with 0, 18
                                    if _14386 * mem[_18595] / Mask(112, 0, _14441) < _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_18595] / Mask(112, 0, _14449):
                                        mem[mem[64]] = _14386 * mem[_18595] / Mask(112, 0, _14441)
                                    else:
                                        mem[mem[64]] = _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) * mem[_18595] / Mask(112, 0, _14449)
                                else:
                                    if t < u:
                                        revert with 0, 17
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18611 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _18643 = mem[_18611]
                                    if mem[_18611] and t - u > -1 / mem[_18611]:
                                        revert with 0, 17
                                    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                        revert with 0, 17
                                    if 5 * t > !u:
                                        revert with 0, 17
                                    if not (5 * t) + u:
                                        revert with 0, 18
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18691 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18691] > !((t * _18643) - (u * _18643) / (5 * t) + u):
                                        revert with 0, 17
                                    if _14386 and mem[_18691] + ((t * _18643) - (u * _18643) / (5 * t) + u) > -1 / _14386:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14441):
                                        revert with 0, 18
                                    if _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441) and mem[_18691] + ((t * _18643) - (u * _18643) / (5 * t) + u) > -1 / _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14449):
                                        revert with 0, 18
                                    if (mem[_18691] * _14386) + ((t * _18643) - (u * _18643) / (5 * t) + u * _14386) / Mask(112, 0, _14441) < (mem[_18691] * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) + ((t * _18643) - (u * _18643) / (5 * t) + u * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) / Mask(112, 0, _14449):
                                        mem[mem[64]] = (mem[_18691] * _14386) + ((t * _18643) - (u * _18643) / (5 * t) + u * _14386) / Mask(112, 0, _14441)
                                    else:
                                        mem[mem[64]] = (mem[_18691] * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) + ((t * _18643) - (u * _18643) / (5 * t) + u * _14386 * Mask(112, 0, _14449) / Mask(112, 0, _14441)) / Mask(112, 0, _14449)
                else:
                    if _14411 <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                    if mem[_14433 + 50 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if mem[_14433 + 18 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if _14411 and mem[_14433 + 18 len 14] > -1 / _14411:
                        revert with 0, 17
                    if not mem[_14433 + 50 len 14]:
                        revert with 0, 18
                    if _14411 * mem[_14433 + 18 len 14] / mem[_14433 + 50 len 14] > _14386:
                        revert with 0, 1
                    require ext_code.size(stor1)
                    staticcall stor1.kLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14641 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_14641]:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14710 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_14710] > -1:
                            revert with 0, 17
                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) and mem[_14710] > -1 / _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449):
                            revert with 0, 17
                        if not Mask(112, 0, _14441):
                            revert with 0, 18
                        if _14411 and mem[_14710] > -1 / _14411:
                            revert with 0, 17
                        if not Mask(112, 0, _14449):
                            revert with 0, 18
                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_14710] / Mask(112, 0, _14441) < _14411 * mem[_14710] / Mask(112, 0, _14449):
                            mem[mem[64]] = _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_14710] / Mask(112, 0, _14441)
                        else:
                            mem[mem[64]] = _14411 * mem[_14710] / Mask(112, 0, _14449)
                    else:
                        if Mask(112, 0, _14441) and Mask(112, 0, _14449) > -1 / Mask(112, 0, _14441):
                            revert with 0, 17
                        if Mask(112, 0, _14441) * Mask(112, 0, _14449) <= 3:
                            if not Mask(112, 0, _14441) * Mask(112, 0, _14449):
                                if mem[_14641] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not mem[_14641]:
                                        _15159 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15159] > -1:
                                            revert with 0, 17
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) and mem[_15159] > -1 / _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14411 and mem[_15159] > -1 / _14411:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_15159] / Mask(112, 0, _14441) < _14411 * mem[_15159] / Mask(112, 0, _14449):
                                            mem[mem[64]] = _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_15159] / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = _14411 * mem[_15159] / Mask(112, 0, _14449)
                                    else:
                                        _15210 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15210] > -1:
                                            revert with 0, 17
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) and mem[_15210] > -1 / _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14411 and mem[_15210] > -1 / _14411:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_15210] / Mask(112, 0, _14441) < _14411 * mem[_15210] / Mask(112, 0, _14449):
                                            mem[mem[64]] = _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_15210] / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = _14411 * mem[_15210] / Mask(112, 0, _14449)
                                else:
                                    if 1 > !(mem[_14641] / 2):
                                        revert with 0, 17
                                    s = (mem[_14641] / 2) + 1
                                    t = mem[_14641]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14641] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14641] / s) + s / 2
                                        t = s
                                        continue 
                                    if 0 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17060 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17060] > -1:
                                            revert with 0, 17
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) and mem[_17060] > -1 / _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14411 and mem[_17060] > -1 / _14411:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_17060] / Mask(112, 0, _14441) < _14411 * mem[_17060] / Mask(112, 0, _14449):
                                            mem[mem[64]] = _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_17060] / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = _14411 * mem[_17060] / Mask(112, 0, _14449)
                                    else:
                                        if 0 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17092 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17196 = mem[_17092]
                                        if mem[_17092] and -t > -1 / mem[_17092]:
                                            revert with 0, 17
                                        if 0 > !t:
                                            revert with 0, 17
                                        if not t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17636 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17636] > !(-1 * _17196 * t / t):
                                            revert with 0, 17
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) and mem[_17636] + (-1 * _17196 * t / t) > -1 / _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14411 and mem[_17636] + (-1 * _17196 * t / t) > -1 / _14411:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if (mem[_17636] * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) + (-1 * _17196 * t / t * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) / Mask(112, 0, _14441) < (mem[_17636] * _14411) + (-1 * _17196 * t / t * _14411) / Mask(112, 0, _14449):
                                            mem[mem[64]] = (mem[_17636] * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) + (-1 * _17196 * t / t * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = (mem[_17636] * _14411) + (-1 * _17196 * t / t * _14411) / Mask(112, 0, _14449)
                            else:
                                if mem[_14641] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_14641]:
                                        _15230 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15230] > -1:
                                            revert with 0, 17
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) and mem[_15230] > -1 / _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14411 and mem[_15230] > -1 / _14411:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_15230] / Mask(112, 0, _14441) < _14411 * mem[_15230] / Mask(112, 0, _14449):
                                            mem[mem[64]] = _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_15230] / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = _14411 * mem[_15230] / Mask(112, 0, _14449)
                                    else:
                                        _15229 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _15275 = mem[_15229]
                                        if mem[_15229] and 1 > -1 / mem[_15229]:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _16068 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_16068] > !(_15275 / 5):
                                            revert with 0, 17
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) and mem[_16068] + (_15275 / 5) > -1 / _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14411 and mem[_16068] + (_15275 / 5) > -1 / _14411:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if (mem[_16068] * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) + (_15275 / 5 * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) / Mask(112, 0, _14441) < (mem[_16068] * _14411) + (_15275 / 5 * _14411) / Mask(112, 0, _14449):
                                            mem[mem[64]] = (mem[_16068] * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) + (_15275 / 5 * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = (mem[_16068] * _14411) + (_15275 / 5 * _14411) / Mask(112, 0, _14449)
                                else:
                                    if 1 > !(mem[_14641] / 2):
                                        revert with 0, 17
                                    s = (mem[_14641] / 2) + 1
                                    t = mem[_14641]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14641] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14641] / s) + s / 2
                                        t = s
                                        continue 
                                    if 1 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17061 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17061] > -1:
                                            revert with 0, 17
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) and mem[_17061] > -1 / _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14411 and mem[_17061] > -1 / _14411:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_17061] / Mask(112, 0, _14441) < _14411 * mem[_17061] / Mask(112, 0, _14449):
                                            mem[mem[64]] = _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_17061] / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = _14411 * mem[_17061] / Mask(112, 0, _14449)
                                    else:
                                        if 1 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17093 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17197 = mem[_17093]
                                        if mem[_17093] and -t + 1 > -1 / mem[_17093]:
                                            revert with 0, 17
                                        if 5 > !t:
                                            revert with 0, 17
                                        if not t + 5:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17637 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17637] > !(_17197 - (t * _17197) / t + 5):
                                            revert with 0, 17
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) and mem[_17637] + (_17197 - (t * _17197) / t + 5) > -1 / _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14411 and mem[_17637] + (_17197 - (t * _17197) / t + 5) > -1 / _14411:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if (mem[_17637] * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) + (_17197 - (t * _17197) / t + 5 * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) / Mask(112, 0, _14441) < (mem[_17637] * _14411) + (_17197 - (t * _17197) / t + 5 * _14411) / Mask(112, 0, _14449):
                                            mem[mem[64]] = (mem[_17637] * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) + (_17197 - (t * _17197) / t + 5 * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = (mem[_17637] * _14411) + (_17197 - (t * _17197) / t + 5 * _14411) / Mask(112, 0, _14449)
                        else:
                            if 1 > !(Mask(112, 0, _14441) * Mask(112, 0, _14449) / 2):
                                revert with 0, 17
                            s = (Mask(112, 0, _14441) * Mask(112, 0, _14449) / 2) + 1
                            t = Mask(112, 0, _14441) * Mask(112, 0, _14449)
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if Mask(112, 0, _14441) * Mask(112, 0, _14449) / s > !s:
                                    revert with 0, 17
                                s = (Mask(112, 0, _14441) * Mask(112, 0, _14449) / s) + s / 2
                                t = s
                                continue 
                            if mem[_14641] <= 3:
                                if not mem[_14641]:
                                    if t <= 0:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17286 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17286] > -1:
                                            revert with 0, 17
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) and mem[_17286] > -1 / _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14411 and mem[_17286] > -1 / _14411:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_17286] / Mask(112, 0, _14441) < _14411 * mem[_17286] / Mask(112, 0, _14449):
                                            mem[mem[64]] = _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_17286] / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = _14411 * mem[_17286] / Mask(112, 0, _14449)
                                    else:
                                        if t < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17332 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17396 = mem[_17332]
                                        if mem[_17332] and t > -1 / mem[_17332]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -1:
                                            revert with 0, 17
                                        if not 5 * t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17890 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17890] > !(_17396 * t / 5 * t):
                                            revert with 0, 17
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) and mem[_17890] + (_17396 * t / 5 * t) > -1 / _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14411 and mem[_17890] + (_17396 * t / 5 * t) > -1 / _14411:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if (mem[_17890] * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) + (_17396 * t / 5 * t * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) / Mask(112, 0, _14441) < (mem[_17890] * _14411) + (_17396 * t / 5 * t * _14411) / Mask(112, 0, _14449):
                                            mem[mem[64]] = (mem[_17890] * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) + (_17396 * t / 5 * t * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = (mem[_17890] * _14411) + (_17396 * t / 5 * t * _14411) / Mask(112, 0, _14449)
                                else:
                                    if t <= 1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17333 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17333] > -1:
                                            revert with 0, 17
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) and mem[_17333] > -1 / _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14411 and mem[_17333] > -1 / _14411:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_17333] / Mask(112, 0, _14441) < _14411 * mem[_17333] / Mask(112, 0, _14449):
                                            mem[mem[64]] = _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_17333] / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = _14411 * mem[_17333] / Mask(112, 0, _14449)
                                    else:
                                        if t < 1:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17365 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17426 = mem[_17365]
                                        if mem[_17365] and t - 1 > -1 / mem[_17365]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -2:
                                            revert with 0, 17
                                        if not (5 * t) + 1:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17909 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17909] > !(-_17426 + (t * _17426) / (5 * t) + 1):
                                            revert with 0, 17
                                        if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) and mem[_17909] + (-_17426 + (t * _17426) / (5 * t) + 1) > -1 / _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14441):
                                            revert with 0, 18
                                        if _14411 and mem[_17909] + (-_17426 + (t * _17426) / (5 * t) + 1) > -1 / _14411:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14449):
                                            revert with 0, 18
                                        if (mem[_17909] * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) + (-_17426 + (t * _17426) / (5 * t) + 1 * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) / Mask(112, 0, _14441) < (mem[_17909] * _14411) + (-_17426 + (t * _17426) / (5 * t) + 1 * _14411) / Mask(112, 0, _14449):
                                            mem[mem[64]] = (mem[_17909] * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) + (-_17426 + (t * _17426) / (5 * t) + 1 * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) / Mask(112, 0, _14441)
                                        else:
                                            mem[mem[64]] = (mem[_17909] * _14411) + (-_17426 + (t * _17426) / (5 * t) + 1 * _14411) / Mask(112, 0, _14449)
                            else:
                                if 1 > !(mem[_14641] / 2):
                                    revert with 0, 17
                                s = (mem[_14641] / 2) + 1
                                u = mem[_14641]
                                while s < u:
                                    if not s:
                                        revert with 0, 18
                                    if mem[_14641] / s > !s:
                                        revert with 0, 17
                                    s = (mem[_14641] / s) + s / 2
                                    u = s
                                    continue 
                                if t <= u:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18594 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18594] > -1:
                                        revert with 0, 17
                                    if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) and mem[_18594] > -1 / _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14441):
                                        revert with 0, 18
                                    if _14411 and mem[_18594] > -1 / _14411:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14449):
                                        revert with 0, 18
                                    if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_18594] / Mask(112, 0, _14441) < _14411 * mem[_18594] / Mask(112, 0, _14449):
                                        mem[mem[64]] = _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) * mem[_18594] / Mask(112, 0, _14441)
                                    else:
                                        mem[mem[64]] = _14411 * mem[_18594] / Mask(112, 0, _14449)
                                else:
                                    if t < u:
                                        revert with 0, 17
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18610 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _18642 = mem[_18610]
                                    if mem[_18610] and t - u > -1 / mem[_18610]:
                                        revert with 0, 17
                                    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                        revert with 0, 17
                                    if 5 * t > !u:
                                        revert with 0, 17
                                    if not (5 * t) + u:
                                        revert with 0, 18
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18690 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18690] > !((t * _18642) - (u * _18642) / (5 * t) + u):
                                        revert with 0, 17
                                    if _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449) and mem[_18690] + ((t * _18642) - (u * _18642) / (5 * t) + u) > -1 / _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14441):
                                        revert with 0, 18
                                    if _14411 and mem[_18690] + ((t * _18642) - (u * _18642) / (5 * t) + u) > -1 / _14411:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14449):
                                        revert with 0, 18
                                    if (mem[_18690] * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) + ((t * _18642) - (u * _18642) / (5 * t) + u * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) / Mask(112, 0, _14441) < (mem[_18690] * _14411) + ((t * _18642) - (u * _18642) / (5 * t) + u * _14411) / Mask(112, 0, _14449):
                                        mem[mem[64]] = (mem[_18690] * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) + ((t * _18642) - (u * _18642) / (5 * t) + u * _14411 * Mask(112, 0, _14441) / Mask(112, 0, _14449)) / Mask(112, 0, _14441)
                                    else:
                                        mem[mem[64]] = (mem[_18690] * _14411) + ((t * _18642) - (u * _18642) / (5 * t) + u * _14411) / Mask(112, 0, _14449)
        else:
            _3756 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            mem[0] = address(_3734)
            if 0 >= mem[_3756]:
                revert with 0, 50
            mem[_3756 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
            mem[0] = address(_3734)
            mem[32] = 4
            if 1 >= mem[_3756]:
                revert with 0, 50
            mem[_3756 + 64] = routePair[address(_3734)]
            if 2 >= mem[_3756]:
                revert with 0, 50
            mem[_3756 + 96] = address(_3734)
            mem[_3756 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_3756 + 132] = _3748 / 2
            mem[_3756 + 164] = 64
            mem[_3756 + 196] = mem[_3756]
            idx = 0
            s = _3756 + 32
            t = _3756 + 228
            while idx < mem[_3756]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor3)
            staticcall stor3.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _3756 + (32 * mem[_3756]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6305 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6309 = mem[_6305]
            require mem[_6305] <= test266151307()
            require _6305 + mem[_6305] + 31 < _6305 + return_data.size
            _6313 = mem[_6305 + mem[_6305]]
            if mem[_6305 + mem[_6305]] > test266151307():
                revert with 0, 65
            if _6305 + ceil32(return_data.size) + ceil32(32 * mem[_6305 + mem[_6305]]) + 1 > test266151307() or ceil32(32 * mem[_6305 + mem[_6305]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _6305 + ceil32(return_data.size) + ceil32(32 * mem[_6305 + mem[_6305]]) + 1
            mem[_6305 + ceil32(return_data.size)] = _6313
            require (32 * _6313) + _6309 + 32 <= return_data.size
            mem[_6305 + ceil32(return_data.size) + 32 len ceil32(32 * _6313)] = mem[_6305 + _6309 + 32 len ceil32(32 * _6313)]
            if mem[ceil32(return_data.size) + 192] < 1:
                revert with 0, 17
            if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                revert with 0, 50
            _9045 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
            if mem[ceil32(return_data.size) + 192] < 1:
                revert with 0, 17
            if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                revert with 0, 50
            _9057 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
            if mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] / 2:
                revert with 0, 17
            mem[32] = 4
            if not routePair[address(_3742)]:
                _9072 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[0] = address(_3742)
                if 0 >= mem[_9072]:
                    revert with 0, 50
                mem[_9072 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                if 1 >= mem[_9072]:
                    revert with 0, 50
                mem[_9072 + 64] = address(_3742)
                mem[_9072 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_9072 + 100] = _9057 - (_9045 / 2)
                mem[_9072 + 132] = 64
                mem[_9072 + 164] = mem[_9072]
                idx = 0
                s = _9072 + 32
                t = _9072 + 196
                while idx < mem[_9072]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _9072 + (32 * mem[_9072]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11762 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11770 = mem[_11762]
                require mem[_11762] <= test266151307()
                require _11762 + mem[_11762] + 31 < _11762 + return_data.size
                _11778 = mem[_11762 + mem[_11762]]
                if mem[_11762 + mem[_11762]] > test266151307():
                    revert with 0, 65
                if _11762 + ceil32(return_data.size) + ceil32(32 * mem[_11762 + mem[_11762]]) + 1 > test266151307() or ceil32(32 * mem[_11762 + mem[_11762]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _11762 + ceil32(return_data.size) + ceil32(32 * mem[_11762 + mem[_11762]]) + 1
                mem[_11762 + ceil32(return_data.size)] = _11778
                require (32 * _11778) + _11770 + 32 <= return_data.size
                mem[_11762 + ceil32(return_data.size) + 32 len ceil32(32 * _11778)] = mem[_11762 + _11770 + 32 len ceil32(32 * _11778)]
                if mem[_6305 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_6305 + ceil32(return_data.size)] - 1 >= mem[_6305 + ceil32(return_data.size)]:
                    revert with 0, 50
                _14388 = mem[(32 * mem[_6305 + ceil32(return_data.size)] - 1) + _6305 + ceil32(return_data.size) + 32]
                if _11778 < 1:
                    revert with 0, 17
                if _11778 - 1 >= _11778:
                    revert with 0, 50
                _14414 = mem[(32 * _11778 - 1) + _11762 + ceil32(return_data.size) + 32]
                require ext_code.size(stor1)
                staticcall stor1.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14434 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _14442 = mem[_14434]
                require mem[_14434] == mem[_14434 + 18 len 14]
                _14450 = mem[_14434 + 32]
                require mem[_14434 + 32] == mem[_14434 + 50 len 14]
                require mem[_14434 + 64] == mem[_14434 + 92 len 4]
                if _14388 <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                if mem[_14434 + 18 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if mem[_14434 + 50 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if _14388 and mem[_14434 + 50 len 14] > -1 / _14388:
                    revert with 0, 17
                if not mem[_14434 + 18 len 14]:
                    revert with 0, 18
                if _14388 * mem[_14434 + 50 len 14] / mem[_14434 + 18 len 14] <= _14414:
                    require ext_code.size(stor1)
                    staticcall stor1.kLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14549 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_14549]:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14610 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_14610] > -1:
                            revert with 0, 17
                        if _14388 and mem[_14610] > -1 / _14388:
                            revert with 0, 17
                        if not Mask(112, 0, _14442):
                            revert with 0, 18
                        if _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) and mem[_14610] > -1 / _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442):
                            revert with 0, 17
                        if not Mask(112, 0, _14450):
                            revert with 0, 18
                        if _14388 * mem[_14610] / Mask(112, 0, _14442) < _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_14610] / Mask(112, 0, _14450):
                            mem[mem[64]] = _14388 * mem[_14610] / Mask(112, 0, _14442)
                        else:
                            mem[mem[64]] = _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_14610] / Mask(112, 0, _14450)
                    else:
                        if Mask(112, 0, _14442) and Mask(112, 0, _14450) > -1 / Mask(112, 0, _14442):
                            revert with 0, 17
                        if Mask(112, 0, _14442) * Mask(112, 0, _14450) <= 3:
                            if not Mask(112, 0, _14442) * Mask(112, 0, _14450):
                                if mem[_14549] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not mem[_14549]:
                                        _14717 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14717] > -1:
                                            revert with 0, 17
                                        if _14388 and mem[_14717] > -1 / _14388:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) and mem[_14717] > -1 / _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if _14388 * mem[_14717] / Mask(112, 0, _14442) < _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_14717] / Mask(112, 0, _14450):
                                            mem[mem[64]] = _14388 * mem[_14717] / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_14717] / Mask(112, 0, _14450)
                                    else:
                                        _14754 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14754] > -1:
                                            revert with 0, 17
                                        if _14388 and mem[_14754] > -1 / _14388:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) and mem[_14754] > -1 / _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if _14388 * mem[_14754] / Mask(112, 0, _14442) < _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_14754] / Mask(112, 0, _14450):
                                            mem[mem[64]] = _14388 * mem[_14754] / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_14754] / Mask(112, 0, _14450)
                                else:
                                    if 1 > !(mem[_14549] / 2):
                                        revert with 0, 17
                                    s = (mem[_14549] / 2) + 1
                                    t = mem[_14549]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14549] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14549] / s) + s / 2
                                        t = s
                                        continue 
                                    if 0 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17066 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17066] > -1:
                                            revert with 0, 17
                                        if _14388 and mem[_17066] > -1 / _14388:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) and mem[_17066] > -1 / _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if _14388 * mem[_17066] / Mask(112, 0, _14442) < _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_17066] / Mask(112, 0, _14450):
                                            mem[mem[64]] = _14388 * mem[_17066] / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_17066] / Mask(112, 0, _14450)
                                    else:
                                        if 0 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17098 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17214 = mem[_17098]
                                        if mem[_17098] and -t > -1 / mem[_17098]:
                                            revert with 0, 17
                                        if 0 > !t:
                                            revert with 0, 17
                                        if not t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17642 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17642] > !(-1 * _17214 * t / t):
                                            revert with 0, 17
                                        if _14388 and mem[_17642] + (-1 * _17214 * t / t) > -1 / _14388:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) and mem[_17642] + (-1 * _17214 * t / t) > -1 / _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if (mem[_17642] * _14388) + (-1 * _17214 * t / t * _14388) / Mask(112, 0, _14442) < (mem[_17642] * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) + (-1 * _17214 * t / t * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) / Mask(112, 0, _14450):
                                            mem[mem[64]] = (mem[_17642] * _14388) + (-1 * _17214 * t / t * _14388) / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = (mem[_17642] * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) + (-1 * _17214 * t / t * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) / Mask(112, 0, _14450)
                            else:
                                if mem[_14549] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_14549]:
                                        _14771 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14771] > -1:
                                            revert with 0, 17
                                        if _14388 and mem[_14771] > -1 / _14388:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) and mem[_14771] > -1 / _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if _14388 * mem[_14771] / Mask(112, 0, _14442) < _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_14771] / Mask(112, 0, _14450):
                                            mem[mem[64]] = _14388 * mem[_14771] / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_14771] / Mask(112, 0, _14450)
                                    else:
                                        _14770 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _14804 = mem[_14770]
                                        if mem[_14770] and 1 > -1 / mem[_14770]:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _15508 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15508] > !(_14804 / 5):
                                            revert with 0, 17
                                        if _14388 and mem[_15508] + (_14804 / 5) > -1 / _14388:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) and mem[_15508] + (_14804 / 5) > -1 / _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if (mem[_15508] * _14388) + (_14804 / 5 * _14388) / Mask(112, 0, _14442) < (mem[_15508] * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) + (_14804 / 5 * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) / Mask(112, 0, _14450):
                                            mem[mem[64]] = (mem[_15508] * _14388) + (_14804 / 5 * _14388) / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = (mem[_15508] * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) + (_14804 / 5 * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) / Mask(112, 0, _14450)
                                else:
                                    if 1 > !(mem[_14549] / 2):
                                        revert with 0, 17
                                    s = (mem[_14549] / 2) + 1
                                    t = mem[_14549]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14549] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14549] / s) + s / 2
                                        t = s
                                        continue 
                                    if 1 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17067 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17067] > -1:
                                            revert with 0, 17
                                        if _14388 and mem[_17067] > -1 / _14388:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) and mem[_17067] > -1 / _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if _14388 * mem[_17067] / Mask(112, 0, _14442) < _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_17067] / Mask(112, 0, _14450):
                                            mem[mem[64]] = _14388 * mem[_17067] / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_17067] / Mask(112, 0, _14450)
                                    else:
                                        if 1 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17099 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17215 = mem[_17099]
                                        if mem[_17099] and -t + 1 > -1 / mem[_17099]:
                                            revert with 0, 17
                                        if 5 > !t:
                                            revert with 0, 17
                                        if not t + 5:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17643 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17643] > !(_17215 - (t * _17215) / t + 5):
                                            revert with 0, 17
                                        if _14388 and mem[_17643] + (_17215 - (t * _17215) / t + 5) > -1 / _14388:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) and mem[_17643] + (_17215 - (t * _17215) / t + 5) > -1 / _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if (mem[_17643] * _14388) + (_17215 - (t * _17215) / t + 5 * _14388) / Mask(112, 0, _14442) < (mem[_17643] * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) + (_17215 - (t * _17215) / t + 5 * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) / Mask(112, 0, _14450):
                                            mem[mem[64]] = (mem[_17643] * _14388) + (_17215 - (t * _17215) / t + 5 * _14388) / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = (mem[_17643] * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) + (_17215 - (t * _17215) / t + 5 * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) / Mask(112, 0, _14450)
                        else:
                            if 1 > !(Mask(112, 0, _14442) * Mask(112, 0, _14450) / 2):
                                revert with 0, 17
                            s = (Mask(112, 0, _14442) * Mask(112, 0, _14450) / 2) + 1
                            t = Mask(112, 0, _14442) * Mask(112, 0, _14450)
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if Mask(112, 0, _14442) * Mask(112, 0, _14450) / s > !s:
                                    revert with 0, 17
                                s = (Mask(112, 0, _14442) * Mask(112, 0, _14450) / s) + s / 2
                                t = s
                                continue 
                            if mem[_14549] <= 3:
                                if not mem[_14549]:
                                    if t <= 0:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17295 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17295] > -1:
                                            revert with 0, 17
                                        if _14388 and mem[_17295] > -1 / _14388:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) and mem[_17295] > -1 / _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if _14388 * mem[_17295] / Mask(112, 0, _14442) < _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_17295] / Mask(112, 0, _14450):
                                            mem[mem[64]] = _14388 * mem[_17295] / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_17295] / Mask(112, 0, _14450)
                                    else:
                                        if t < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17338 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17402 = mem[_17338]
                                        if mem[_17338] and t > -1 / mem[_17338]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -1:
                                            revert with 0, 17
                                        if not 5 * t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17893 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17893] > !(_17402 * t / 5 * t):
                                            revert with 0, 17
                                        if _14388 and mem[_17893] + (_17402 * t / 5 * t) > -1 / _14388:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) and mem[_17893] + (_17402 * t / 5 * t) > -1 / _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if (mem[_17893] * _14388) + (_17402 * t / 5 * t * _14388) / Mask(112, 0, _14442) < (mem[_17893] * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) + (_17402 * t / 5 * t * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) / Mask(112, 0, _14450):
                                            mem[mem[64]] = (mem[_17893] * _14388) + (_17402 * t / 5 * t * _14388) / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = (mem[_17893] * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) + (_17402 * t / 5 * t * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) / Mask(112, 0, _14450)
                                else:
                                    if t <= 1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17339 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17339] > -1:
                                            revert with 0, 17
                                        if _14388 and mem[_17339] > -1 / _14388:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) and mem[_17339] > -1 / _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if _14388 * mem[_17339] / Mask(112, 0, _14442) < _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_17339] / Mask(112, 0, _14450):
                                            mem[mem[64]] = _14388 * mem[_17339] / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_17339] / Mask(112, 0, _14450)
                                    else:
                                        if t < 1:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17371 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17429 = mem[_17371]
                                        if mem[_17371] and t - 1 > -1 / mem[_17371]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -2:
                                            revert with 0, 17
                                        if not (5 * t) + 1:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17915 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17915] > !(-_17429 + (t * _17429) / (5 * t) + 1):
                                            revert with 0, 17
                                        if _14388 and mem[_17915] + (-_17429 + (t * _17429) / (5 * t) + 1) > -1 / _14388:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) and mem[_17915] + (-_17429 + (t * _17429) / (5 * t) + 1) > -1 / _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if (mem[_17915] * _14388) + (-_17429 + (t * _17429) / (5 * t) + 1 * _14388) / Mask(112, 0, _14442) < (mem[_17915] * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) + (-_17429 + (t * _17429) / (5 * t) + 1 * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) / Mask(112, 0, _14450):
                                            mem[mem[64]] = (mem[_17915] * _14388) + (-_17429 + (t * _17429) / (5 * t) + 1 * _14388) / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = (mem[_17915] * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) + (-_17429 + (t * _17429) / (5 * t) + 1 * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) / Mask(112, 0, _14450)
                            else:
                                if 1 > !(mem[_14549] / 2):
                                    revert with 0, 17
                                s = (mem[_14549] / 2) + 1
                                u = mem[_14549]
                                while s < u:
                                    if not s:
                                        revert with 0, 18
                                    if mem[_14549] / s > !s:
                                        revert with 0, 17
                                    s = (mem[_14549] / s) + s / 2
                                    u = s
                                    continue 
                                if t <= u:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18597 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18597] > -1:
                                        revert with 0, 17
                                    if _14388 and mem[_18597] > -1 / _14388:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14442):
                                        revert with 0, 18
                                    if _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) and mem[_18597] > -1 / _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14450):
                                        revert with 0, 18
                                    if _14388 * mem[_18597] / Mask(112, 0, _14442) < _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_18597] / Mask(112, 0, _14450):
                                        mem[mem[64]] = _14388 * mem[_18597] / Mask(112, 0, _14442)
                                    else:
                                        mem[mem[64]] = _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) * mem[_18597] / Mask(112, 0, _14450)
                                else:
                                    if t < u:
                                        revert with 0, 17
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18613 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _18645 = mem[_18613]
                                    if mem[_18613] and t - u > -1 / mem[_18613]:
                                        revert with 0, 17
                                    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                        revert with 0, 17
                                    if 5 * t > !u:
                                        revert with 0, 17
                                    if not (5 * t) + u:
                                        revert with 0, 18
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18693 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18693] > !((t * _18645) - (u * _18645) / (5 * t) + u):
                                        revert with 0, 17
                                    if _14388 and mem[_18693] + ((t * _18645) - (u * _18645) / (5 * t) + u) > -1 / _14388:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14442):
                                        revert with 0, 18
                                    if _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442) and mem[_18693] + ((t * _18645) - (u * _18645) / (5 * t) + u) > -1 / _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14450):
                                        revert with 0, 18
                                    if (mem[_18693] * _14388) + ((t * _18645) - (u * _18645) / (5 * t) + u * _14388) / Mask(112, 0, _14442) < (mem[_18693] * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) + ((t * _18645) - (u * _18645) / (5 * t) + u * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) / Mask(112, 0, _14450):
                                        mem[mem[64]] = (mem[_18693] * _14388) + ((t * _18645) - (u * _18645) / (5 * t) + u * _14388) / Mask(112, 0, _14442)
                                    else:
                                        mem[mem[64]] = (mem[_18693] * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) + ((t * _18645) - (u * _18645) / (5 * t) + u * _14388 * Mask(112, 0, _14450) / Mask(112, 0, _14442)) / Mask(112, 0, _14450)
                else:
                    if _14414 <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                    if mem[_14434 + 50 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if mem[_14434 + 18 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if _14414 and mem[_14434 + 18 len 14] > -1 / _14414:
                        revert with 0, 17
                    if not mem[_14434 + 50 len 14]:
                        revert with 0, 18
                    if _14414 * mem[_14434 + 18 len 14] / mem[_14434 + 50 len 14] > _14388:
                        revert with 0, 1
                    require ext_code.size(stor1)
                    staticcall stor1.kLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_14642]:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14716 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_14716] > -1:
                            revert with 0, 17
                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) and mem[_14716] > -1 / _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450):
                            revert with 0, 17
                        if not Mask(112, 0, _14442):
                            revert with 0, 18
                        if _14414 and mem[_14716] > -1 / _14414:
                            revert with 0, 17
                        if not Mask(112, 0, _14450):
                            revert with 0, 18
                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_14716] / Mask(112, 0, _14442) < _14414 * mem[_14716] / Mask(112, 0, _14450):
                            mem[mem[64]] = _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_14716] / Mask(112, 0, _14442)
                        else:
                            mem[mem[64]] = _14414 * mem[_14716] / Mask(112, 0, _14450)
                    else:
                        if Mask(112, 0, _14442) and Mask(112, 0, _14450) > -1 / Mask(112, 0, _14442):
                            revert with 0, 17
                        if Mask(112, 0, _14442) * Mask(112, 0, _14450) <= 3:
                            if not Mask(112, 0, _14442) * Mask(112, 0, _14450):
                                if mem[_14642] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not mem[_14642]:
                                        _15166 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15166] > -1:
                                            revert with 0, 17
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) and mem[_15166] > -1 / _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14414 and mem[_15166] > -1 / _14414:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_15166] / Mask(112, 0, _14442) < _14414 * mem[_15166] / Mask(112, 0, _14450):
                                            mem[mem[64]] = _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_15166] / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = _14414 * mem[_15166] / Mask(112, 0, _14450)
                                    else:
                                        _15212 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15212] > -1:
                                            revert with 0, 17
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) and mem[_15212] > -1 / _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14414 and mem[_15212] > -1 / _14414:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_15212] / Mask(112, 0, _14442) < _14414 * mem[_15212] / Mask(112, 0, _14450):
                                            mem[mem[64]] = _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_15212] / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = _14414 * mem[_15212] / Mask(112, 0, _14450)
                                else:
                                    if 1 > !(mem[_14642] / 2):
                                        revert with 0, 17
                                    s = (mem[_14642] / 2) + 1
                                    t = mem[_14642]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14642] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14642] / s) + s / 2
                                        t = s
                                        continue 
                                    if 0 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17064 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17064] > -1:
                                            revert with 0, 17
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) and mem[_17064] > -1 / _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14414 and mem[_17064] > -1 / _14414:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_17064] / Mask(112, 0, _14442) < _14414 * mem[_17064] / Mask(112, 0, _14450):
                                            mem[mem[64]] = _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_17064] / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = _14414 * mem[_17064] / Mask(112, 0, _14450)
                                    else:
                                        if 0 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17096 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17208 = mem[_17096]
                                        if mem[_17096] and -t > -1 / mem[_17096]:
                                            revert with 0, 17
                                        if 0 > !t:
                                            revert with 0, 17
                                        if not t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17640 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17640] > !(-1 * _17208 * t / t):
                                            revert with 0, 17
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) and mem[_17640] + (-1 * _17208 * t / t) > -1 / _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14414 and mem[_17640] + (-1 * _17208 * t / t) > -1 / _14414:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if (mem[_17640] * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) + (-1 * _17208 * t / t * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) / Mask(112, 0, _14442) < (mem[_17640] * _14414) + (-1 * _17208 * t / t * _14414) / Mask(112, 0, _14450):
                                            mem[mem[64]] = (mem[_17640] * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) + (-1 * _17208 * t / t * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = (mem[_17640] * _14414) + (-1 * _17208 * t / t * _14414) / Mask(112, 0, _14450)
                            else:
                                if mem[_14642] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_14642]:
                                        _15234 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15234] > -1:
                                            revert with 0, 17
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) and mem[_15234] > -1 / _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14414 and mem[_15234] > -1 / _14414:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_15234] / Mask(112, 0, _14442) < _14414 * mem[_15234] / Mask(112, 0, _14450):
                                            mem[mem[64]] = _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_15234] / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = _14414 * mem[_15234] / Mask(112, 0, _14450)
                                    else:
                                        _15233 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _15278 = mem[_15233]
                                        if mem[_15233] and 1 > -1 / mem[_15233]:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _16071 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_16071] > !(_15278 / 5):
                                            revert with 0, 17
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) and mem[_16071] + (_15278 / 5) > -1 / _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14414 and mem[_16071] + (_15278 / 5) > -1 / _14414:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if (mem[_16071] * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) + (_15278 / 5 * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) / Mask(112, 0, _14442) < (mem[_16071] * _14414) + (_15278 / 5 * _14414) / Mask(112, 0, _14450):
                                            mem[mem[64]] = (mem[_16071] * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) + (_15278 / 5 * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = (mem[_16071] * _14414) + (_15278 / 5 * _14414) / Mask(112, 0, _14450)
                                else:
                                    if 1 > !(mem[_14642] / 2):
                                        revert with 0, 17
                                    s = (mem[_14642] / 2) + 1
                                    t = mem[_14642]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14642] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14642] / s) + s / 2
                                        t = s
                                        continue 
                                    if 1 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17065 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17065] > -1:
                                            revert with 0, 17
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) and mem[_17065] > -1 / _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14414 and mem[_17065] > -1 / _14414:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_17065] / Mask(112, 0, _14442) < _14414 * mem[_17065] / Mask(112, 0, _14450):
                                            mem[mem[64]] = _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_17065] / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = _14414 * mem[_17065] / Mask(112, 0, _14450)
                                    else:
                                        if 1 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17097 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17209 = mem[_17097]
                                        if mem[_17097] and -t + 1 > -1 / mem[_17097]:
                                            revert with 0, 17
                                        if 5 > !t:
                                            revert with 0, 17
                                        if not t + 5:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17641 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17641] > !(_17209 - (t * _17209) / t + 5):
                                            revert with 0, 17
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) and mem[_17641] + (_17209 - (t * _17209) / t + 5) > -1 / _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14414 and mem[_17641] + (_17209 - (t * _17209) / t + 5) > -1 / _14414:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if (mem[_17641] * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) + (_17209 - (t * _17209) / t + 5 * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) / Mask(112, 0, _14442) < (mem[_17641] * _14414) + (_17209 - (t * _17209) / t + 5 * _14414) / Mask(112, 0, _14450):
                                            mem[mem[64]] = (mem[_17641] * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) + (_17209 - (t * _17209) / t + 5 * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = (mem[_17641] * _14414) + (_17209 - (t * _17209) / t + 5 * _14414) / Mask(112, 0, _14450)
                        else:
                            if 1 > !(Mask(112, 0, _14442) * Mask(112, 0, _14450) / 2):
                                revert with 0, 17
                            s = (Mask(112, 0, _14442) * Mask(112, 0, _14450) / 2) + 1
                            t = Mask(112, 0, _14442) * Mask(112, 0, _14450)
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if Mask(112, 0, _14442) * Mask(112, 0, _14450) / s > !s:
                                    revert with 0, 17
                                s = (Mask(112, 0, _14442) * Mask(112, 0, _14450) / s) + s / 2
                                t = s
                                continue 
                            if mem[_14642] <= 3:
                                if not mem[_14642]:
                                    if t <= 0:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17292 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17292] > -1:
                                            revert with 0, 17
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) and mem[_17292] > -1 / _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14414 and mem[_17292] > -1 / _14414:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_17292] / Mask(112, 0, _14442) < _14414 * mem[_17292] / Mask(112, 0, _14450):
                                            mem[mem[64]] = _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_17292] / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = _14414 * mem[_17292] / Mask(112, 0, _14450)
                                    else:
                                        if t < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17336 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17400 = mem[_17336]
                                        if mem[_17336] and t > -1 / mem[_17336]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -1:
                                            revert with 0, 17
                                        if not 5 * t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17892 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17892] > !(_17400 * t / 5 * t):
                                            revert with 0, 17
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) and mem[_17892] + (_17400 * t / 5 * t) > -1 / _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14414 and mem[_17892] + (_17400 * t / 5 * t) > -1 / _14414:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if (mem[_17892] * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) + (_17400 * t / 5 * t * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) / Mask(112, 0, _14442) < (mem[_17892] * _14414) + (_17400 * t / 5 * t * _14414) / Mask(112, 0, _14450):
                                            mem[mem[64]] = (mem[_17892] * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) + (_17400 * t / 5 * t * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = (mem[_17892] * _14414) + (_17400 * t / 5 * t * _14414) / Mask(112, 0, _14450)
                                else:
                                    if t <= 1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17337 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17337] > -1:
                                            revert with 0, 17
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) and mem[_17337] > -1 / _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14414 and mem[_17337] > -1 / _14414:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_17337] / Mask(112, 0, _14442) < _14414 * mem[_17337] / Mask(112, 0, _14450):
                                            mem[mem[64]] = _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_17337] / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = _14414 * mem[_17337] / Mask(112, 0, _14450)
                                    else:
                                        if t < 1:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17369 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17428 = mem[_17369]
                                        if mem[_17369] and t - 1 > -1 / mem[_17369]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -2:
                                            revert with 0, 17
                                        if not (5 * t) + 1:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17913 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17913] > !(-_17428 + (t * _17428) / (5 * t) + 1):
                                            revert with 0, 17
                                        if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) and mem[_17913] + (-_17428 + (t * _17428) / (5 * t) + 1) > -1 / _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14442):
                                            revert with 0, 18
                                        if _14414 and mem[_17913] + (-_17428 + (t * _17428) / (5 * t) + 1) > -1 / _14414:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14450):
                                            revert with 0, 18
                                        if (mem[_17913] * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) + (-_17428 + (t * _17428) / (5 * t) + 1 * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) / Mask(112, 0, _14442) < (mem[_17913] * _14414) + (-_17428 + (t * _17428) / (5 * t) + 1 * _14414) / Mask(112, 0, _14450):
                                            mem[mem[64]] = (mem[_17913] * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) + (-_17428 + (t * _17428) / (5 * t) + 1 * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) / Mask(112, 0, _14442)
                                        else:
                                            mem[mem[64]] = (mem[_17913] * _14414) + (-_17428 + (t * _17428) / (5 * t) + 1 * _14414) / Mask(112, 0, _14450)
                            else:
                                if 1 > !(mem[_14642] / 2):
                                    revert with 0, 17
                                s = (mem[_14642] / 2) + 1
                                u = mem[_14642]
                                while s < u:
                                    if not s:
                                        revert with 0, 18
                                    if mem[_14642] / s > !s:
                                        revert with 0, 17
                                    s = (mem[_14642] / s) + s / 2
                                    u = s
                                    continue 
                                if t <= u:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18596 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18596] > -1:
                                        revert with 0, 17
                                    if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) and mem[_18596] > -1 / _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14442):
                                        revert with 0, 18
                                    if _14414 and mem[_18596] > -1 / _14414:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14450):
                                        revert with 0, 18
                                    if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_18596] / Mask(112, 0, _14442) < _14414 * mem[_18596] / Mask(112, 0, _14450):
                                        mem[mem[64]] = _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) * mem[_18596] / Mask(112, 0, _14442)
                                    else:
                                        mem[mem[64]] = _14414 * mem[_18596] / Mask(112, 0, _14450)
                                else:
                                    if t < u:
                                        revert with 0, 17
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18612 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _18644 = mem[_18612]
                                    if mem[_18612] and t - u > -1 / mem[_18612]:
                                        revert with 0, 17
                                    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                        revert with 0, 17
                                    if 5 * t > !u:
                                        revert with 0, 17
                                    if not (5 * t) + u:
                                        revert with 0, 18
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18692 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18692] > !((t * _18644) - (u * _18644) / (5 * t) + u):
                                        revert with 0, 17
                                    if _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450) and mem[_18692] + ((t * _18644) - (u * _18644) / (5 * t) + u) > -1 / _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14442):
                                        revert with 0, 18
                                    if _14414 and mem[_18692] + ((t * _18644) - (u * _18644) / (5 * t) + u) > -1 / _14414:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14450):
                                        revert with 0, 18
                                    if (mem[_18692] * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) + ((t * _18644) - (u * _18644) / (5 * t) + u * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) / Mask(112, 0, _14442) < (mem[_18692] * _14414) + ((t * _18644) - (u * _18644) / (5 * t) + u * _14414) / Mask(112, 0, _14450):
                                        mem[mem[64]] = (mem[_18692] * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) + ((t * _18644) - (u * _18644) / (5 * t) + u * _14414 * Mask(112, 0, _14442) / Mask(112, 0, _14450)) / Mask(112, 0, _14442)
                                    else:
                                        mem[mem[64]] = (mem[_18692] * _14414) + ((t * _18644) - (u * _18644) / (5 * t) + u * _14414) / Mask(112, 0, _14450)
            else:
                _9076 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                mem[0] = address(_3742)
                if 0 >= mem[_9076]:
                    revert with 0, 50
                mem[_9076 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                mem[0] = address(_3742)
                mem[32] = 4
                if 1 >= mem[_9076]:
                    revert with 0, 50
                mem[_9076 + 64] = routePair[address(_3742)]
                if 2 >= mem[_9076]:
                    revert with 0, 50
                mem[_9076 + 96] = address(_3742)
                mem[_9076 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_9076 + 132] = _9057 - (_9045 / 2)
                mem[_9076 + 164] = 64
                mem[_9076 + 196] = mem[_9076]
                idx = 0
                s = _9076 + 32
                t = _9076 + 228
                while idx < mem[_9076]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _9076 + (32 * mem[_9076]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11763 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11771 = mem[_11763]
                require mem[_11763] <= test266151307()
                require _11763 + mem[_11763] + 31 < _11763 + return_data.size
                _11779 = mem[_11763 + mem[_11763]]
                if mem[_11763 + mem[_11763]] > test266151307():
                    revert with 0, 65
                if _11763 + ceil32(return_data.size) + ceil32(32 * mem[_11763 + mem[_11763]]) + 1 > test266151307() or ceil32(32 * mem[_11763 + mem[_11763]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _11763 + ceil32(return_data.size) + ceil32(32 * mem[_11763 + mem[_11763]]) + 1
                mem[_11763 + ceil32(return_data.size)] = _11779
                require (32 * _11779) + _11771 + 32 <= return_data.size
                mem[_11763 + ceil32(return_data.size) + 32 len ceil32(32 * _11779)] = mem[_11763 + _11771 + 32 len ceil32(32 * _11779)]
                if mem[_6305 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_6305 + ceil32(return_data.size)] - 1 >= mem[_6305 + ceil32(return_data.size)]:
                    revert with 0, 50
                _14390 = mem[(32 * mem[_6305 + ceil32(return_data.size)] - 1) + _6305 + ceil32(return_data.size) + 32]
                if _11779 < 1:
                    revert with 0, 17
                if _11779 - 1 >= _11779:
                    revert with 0, 50
                _14417 = mem[(32 * _11779 - 1) + _11763 + ceil32(return_data.size) + 32]
                require ext_code.size(stor1)
                staticcall stor1.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14435 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _14443 = mem[_14435]
                require mem[_14435] == mem[_14435 + 18 len 14]
                _14451 = mem[_14435 + 32]
                require mem[_14435 + 32] == mem[_14435 + 50 len 14]
                require mem[_14435 + 64] == mem[_14435 + 92 len 4]
                if _14390 <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                if mem[_14435 + 18 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if mem[_14435 + 50 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if _14390 and mem[_14435 + 50 len 14] > -1 / _14390:
                    revert with 0, 17
                if not mem[_14435 + 18 len 14]:
                    revert with 0, 18
                if _14390 * mem[_14435 + 50 len 14] / mem[_14435 + 18 len 14] <= _14417:
                    require ext_code.size(stor1)
                    staticcall stor1.kLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14551 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_14551]:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14611 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_14611] > -1:
                            revert with 0, 17
                        if _14390 and mem[_14611] > -1 / _14390:
                            revert with 0, 17
                        if not Mask(112, 0, _14443):
                            revert with 0, 18
                        if _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) and mem[_14611] > -1 / _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443):
                            revert with 0, 17
                        if not Mask(112, 0, _14451):
                            revert with 0, 18
                        if _14390 * mem[_14611] / Mask(112, 0, _14443) < _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_14611] / Mask(112, 0, _14451):
                            mem[mem[64]] = _14390 * mem[_14611] / Mask(112, 0, _14443)
                        else:
                            mem[mem[64]] = _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_14611] / Mask(112, 0, _14451)
                    else:
                        if Mask(112, 0, _14443) and Mask(112, 0, _14451) > -1 / Mask(112, 0, _14443):
                            revert with 0, 17
                        if Mask(112, 0, _14443) * Mask(112, 0, _14451) <= 3:
                            if not Mask(112, 0, _14443) * Mask(112, 0, _14451):
                                if mem[_14551] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not mem[_14551]:
                                        _14723 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14723] > -1:
                                            revert with 0, 17
                                        if _14390 and mem[_14723] > -1 / _14390:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) and mem[_14723] > -1 / _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if _14390 * mem[_14723] / Mask(112, 0, _14443) < _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_14723] / Mask(112, 0, _14451):
                                            mem[mem[64]] = _14390 * mem[_14723] / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_14723] / Mask(112, 0, _14451)
                                    else:
                                        _14755 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14755] > -1:
                                            revert with 0, 17
                                        if _14390 and mem[_14755] > -1 / _14390:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) and mem[_14755] > -1 / _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if _14390 * mem[_14755] / Mask(112, 0, _14443) < _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_14755] / Mask(112, 0, _14451):
                                            mem[mem[64]] = _14390 * mem[_14755] / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_14755] / Mask(112, 0, _14451)
                                else:
                                    if 1 > !(mem[_14551] / 2):
                                        revert with 0, 17
                                    s = (mem[_14551] / 2) + 1
                                    t = mem[_14551]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14551] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14551] / s) + s / 2
                                        t = s
                                        continue 
                                    if 0 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17070 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17070] > -1:
                                            revert with 0, 17
                                        if _14390 and mem[_17070] > -1 / _14390:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) and mem[_17070] > -1 / _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if _14390 * mem[_17070] / Mask(112, 0, _14443) < _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_17070] / Mask(112, 0, _14451):
                                            mem[mem[64]] = _14390 * mem[_17070] / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_17070] / Mask(112, 0, _14451)
                                    else:
                                        if 0 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17102 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17226 = mem[_17102]
                                        if mem[_17102] and -t > -1 / mem[_17102]:
                                            revert with 0, 17
                                        if 0 > !t:
                                            revert with 0, 17
                                        if not t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17646 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17646] > !(-1 * _17226 * t / t):
                                            revert with 0, 17
                                        if _14390 and mem[_17646] + (-1 * _17226 * t / t) > -1 / _14390:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) and mem[_17646] + (-1 * _17226 * t / t) > -1 / _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if (mem[_17646] * _14390) + (-1 * _17226 * t / t * _14390) / Mask(112, 0, _14443) < (mem[_17646] * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) + (-1 * _17226 * t / t * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) / Mask(112, 0, _14451):
                                            mem[mem[64]] = (mem[_17646] * _14390) + (-1 * _17226 * t / t * _14390) / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = (mem[_17646] * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) + (-1 * _17226 * t / t * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) / Mask(112, 0, _14451)
                            else:
                                if mem[_14551] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_14551]:
                                        _14775 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14775] > -1:
                                            revert with 0, 17
                                        if _14390 and mem[_14775] > -1 / _14390:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) and mem[_14775] > -1 / _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if _14390 * mem[_14775] / Mask(112, 0, _14443) < _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_14775] / Mask(112, 0, _14451):
                                            mem[mem[64]] = _14390 * mem[_14775] / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_14775] / Mask(112, 0, _14451)
                                    else:
                                        _14774 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _14806 = mem[_14774]
                                        if mem[_14774] and 1 > -1 / mem[_14774]:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _15515 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15515] > !(_14806 / 5):
                                            revert with 0, 17
                                        if _14390 and mem[_15515] + (_14806 / 5) > -1 / _14390:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) and mem[_15515] + (_14806 / 5) > -1 / _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if (mem[_15515] * _14390) + (_14806 / 5 * _14390) / Mask(112, 0, _14443) < (mem[_15515] * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) + (_14806 / 5 * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) / Mask(112, 0, _14451):
                                            mem[mem[64]] = (mem[_15515] * _14390) + (_14806 / 5 * _14390) / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = (mem[_15515] * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) + (_14806 / 5 * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) / Mask(112, 0, _14451)
                                else:
                                    if 1 > !(mem[_14551] / 2):
                                        revert with 0, 17
                                    s = (mem[_14551] / 2) + 1
                                    t = mem[_14551]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14551] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14551] / s) + s / 2
                                        t = s
                                        continue 
                                    if 1 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17071 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17071] > -1:
                                            revert with 0, 17
                                        if _14390 and mem[_17071] > -1 / _14390:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) and mem[_17071] > -1 / _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if _14390 * mem[_17071] / Mask(112, 0, _14443) < _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_17071] / Mask(112, 0, _14451):
                                            mem[mem[64]] = _14390 * mem[_17071] / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_17071] / Mask(112, 0, _14451)
                                    else:
                                        if 1 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17103 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17227 = mem[_17103]
                                        if mem[_17103] and -t + 1 > -1 / mem[_17103]:
                                            revert with 0, 17
                                        if 5 > !t:
                                            revert with 0, 17
                                        if not t + 5:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17647 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17647] > !(_17227 - (t * _17227) / t + 5):
                                            revert with 0, 17
                                        if _14390 and mem[_17647] + (_17227 - (t * _17227) / t + 5) > -1 / _14390:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) and mem[_17647] + (_17227 - (t * _17227) / t + 5) > -1 / _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if (mem[_17647] * _14390) + (_17227 - (t * _17227) / t + 5 * _14390) / Mask(112, 0, _14443) < (mem[_17647] * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) + (_17227 - (t * _17227) / t + 5 * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) / Mask(112, 0, _14451):
                                            mem[mem[64]] = (mem[_17647] * _14390) + (_17227 - (t * _17227) / t + 5 * _14390) / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = (mem[_17647] * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) + (_17227 - (t * _17227) / t + 5 * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) / Mask(112, 0, _14451)
                        else:
                            if 1 > !(Mask(112, 0, _14443) * Mask(112, 0, _14451) / 2):
                                revert with 0, 17
                            s = (Mask(112, 0, _14443) * Mask(112, 0, _14451) / 2) + 1
                            t = Mask(112, 0, _14443) * Mask(112, 0, _14451)
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if Mask(112, 0, _14443) * Mask(112, 0, _14451) / s > !s:
                                    revert with 0, 17
                                s = (Mask(112, 0, _14443) * Mask(112, 0, _14451) / s) + s / 2
                                t = s
                                continue 
                            if mem[_14551] <= 3:
                                if not mem[_14551]:
                                    if t <= 0:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17301 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17301] > -1:
                                            revert with 0, 17
                                        if _14390 and mem[_17301] > -1 / _14390:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) and mem[_17301] > -1 / _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if _14390 * mem[_17301] / Mask(112, 0, _14443) < _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_17301] / Mask(112, 0, _14451):
                                            mem[mem[64]] = _14390 * mem[_17301] / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_17301] / Mask(112, 0, _14451)
                                    else:
                                        if t < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17342 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17406 = mem[_17342]
                                        if mem[_17342] and t > -1 / mem[_17342]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -1:
                                            revert with 0, 17
                                        if not 5 * t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17895 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17895] > !(_17406 * t / 5 * t):
                                            revert with 0, 17
                                        if _14390 and mem[_17895] + (_17406 * t / 5 * t) > -1 / _14390:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) and mem[_17895] + (_17406 * t / 5 * t) > -1 / _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if (mem[_17895] * _14390) + (_17406 * t / 5 * t * _14390) / Mask(112, 0, _14443) < (mem[_17895] * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) + (_17406 * t / 5 * t * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) / Mask(112, 0, _14451):
                                            mem[mem[64]] = (mem[_17895] * _14390) + (_17406 * t / 5 * t * _14390) / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = (mem[_17895] * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) + (_17406 * t / 5 * t * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) / Mask(112, 0, _14451)
                                else:
                                    if t <= 1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17343 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17343] > -1:
                                            revert with 0, 17
                                        if _14390 and mem[_17343] > -1 / _14390:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) and mem[_17343] > -1 / _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if _14390 * mem[_17343] / Mask(112, 0, _14443) < _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_17343] / Mask(112, 0, _14451):
                                            mem[mem[64]] = _14390 * mem[_17343] / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_17343] / Mask(112, 0, _14451)
                                    else:
                                        if t < 1:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17375 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17431 = mem[_17375]
                                        if mem[_17375] and t - 1 > -1 / mem[_17375]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -2:
                                            revert with 0, 17
                                        if not (5 * t) + 1:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17919 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17919] > !(-_17431 + (t * _17431) / (5 * t) + 1):
                                            revert with 0, 17
                                        if _14390 and mem[_17919] + (-_17431 + (t * _17431) / (5 * t) + 1) > -1 / _14390:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) and mem[_17919] + (-_17431 + (t * _17431) / (5 * t) + 1) > -1 / _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if (mem[_17919] * _14390) + (-_17431 + (t * _17431) / (5 * t) + 1 * _14390) / Mask(112, 0, _14443) < (mem[_17919] * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) + (-_17431 + (t * _17431) / (5 * t) + 1 * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) / Mask(112, 0, _14451):
                                            mem[mem[64]] = (mem[_17919] * _14390) + (-_17431 + (t * _17431) / (5 * t) + 1 * _14390) / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = (mem[_17919] * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) + (-_17431 + (t * _17431) / (5 * t) + 1 * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) / Mask(112, 0, _14451)
                            else:
                                if 1 > !(mem[_14551] / 2):
                                    revert with 0, 17
                                s = (mem[_14551] / 2) + 1
                                u = mem[_14551]
                                while s < u:
                                    if not s:
                                        revert with 0, 18
                                    if mem[_14551] / s > !s:
                                        revert with 0, 17
                                    s = (mem[_14551] / s) + s / 2
                                    u = s
                                    continue 
                                if t <= u:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18599 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18599] > -1:
                                        revert with 0, 17
                                    if _14390 and mem[_18599] > -1 / _14390:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14443):
                                        revert with 0, 18
                                    if _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) and mem[_18599] > -1 / _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14451):
                                        revert with 0, 18
                                    if _14390 * mem[_18599] / Mask(112, 0, _14443) < _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_18599] / Mask(112, 0, _14451):
                                        mem[mem[64]] = _14390 * mem[_18599] / Mask(112, 0, _14443)
                                    else:
                                        mem[mem[64]] = _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) * mem[_18599] / Mask(112, 0, _14451)
                                else:
                                    if t < u:
                                        revert with 0, 17
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18615 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _18647 = mem[_18615]
                                    if mem[_18615] and t - u > -1 / mem[_18615]:
                                        revert with 0, 17
                                    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                        revert with 0, 17
                                    if 5 * t > !u:
                                        revert with 0, 17
                                    if not (5 * t) + u:
                                        revert with 0, 18
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18695 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18695] > !((t * _18647) - (u * _18647) / (5 * t) + u):
                                        revert with 0, 17
                                    if _14390 and mem[_18695] + ((t * _18647) - (u * _18647) / (5 * t) + u) > -1 / _14390:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14443):
                                        revert with 0, 18
                                    if _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443) and mem[_18695] + ((t * _18647) - (u * _18647) / (5 * t) + u) > -1 / _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14451):
                                        revert with 0, 18
                                    if (mem[_18695] * _14390) + ((t * _18647) - (u * _18647) / (5 * t) + u * _14390) / Mask(112, 0, _14443) < (mem[_18695] * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) + ((t * _18647) - (u * _18647) / (5 * t) + u * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) / Mask(112, 0, _14451):
                                        mem[mem[64]] = (mem[_18695] * _14390) + ((t * _18647) - (u * _18647) / (5 * t) + u * _14390) / Mask(112, 0, _14443)
                                    else:
                                        mem[mem[64]] = (mem[_18695] * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) + ((t * _18647) - (u * _18647) / (5 * t) + u * _14390 * Mask(112, 0, _14451) / Mask(112, 0, _14443)) / Mask(112, 0, _14451)
                else:
                    if _14417 <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                    if mem[_14435 + 50 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if mem[_14435 + 18 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if _14417 and mem[_14435 + 18 len 14] > -1 / _14417:
                        revert with 0, 17
                    if not mem[_14435 + 50 len 14]:
                        revert with 0, 18
                    if _14417 * mem[_14435 + 18 len 14] / mem[_14435 + 50 len 14] > _14390:
                        revert with 0, 1
                    require ext_code.size(stor1)
                    staticcall stor1.kLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14643 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_14643]:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14722 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_14722] > -1:
                            revert with 0, 17
                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) and mem[_14722] > -1 / _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451):
                            revert with 0, 17
                        if not Mask(112, 0, _14443):
                            revert with 0, 18
                        if _14417 and mem[_14722] > -1 / _14417:
                            revert with 0, 17
                        if not Mask(112, 0, _14451):
                            revert with 0, 18
                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_14722] / Mask(112, 0, _14443) < _14417 * mem[_14722] / Mask(112, 0, _14451):
                            mem[mem[64]] = _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_14722] / Mask(112, 0, _14443)
                        else:
                            mem[mem[64]] = _14417 * mem[_14722] / Mask(112, 0, _14451)
                    else:
                        if Mask(112, 0, _14443) and Mask(112, 0, _14451) > -1 / Mask(112, 0, _14443):
                            revert with 0, 17
                        if Mask(112, 0, _14443) * Mask(112, 0, _14451) <= 3:
                            if not Mask(112, 0, _14443) * Mask(112, 0, _14451):
                                if mem[_14643] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not mem[_14643]:
                                        _15173 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15173] > -1:
                                            revert with 0, 17
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) and mem[_15173] > -1 / _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14417 and mem[_15173] > -1 / _14417:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_15173] / Mask(112, 0, _14443) < _14417 * mem[_15173] / Mask(112, 0, _14451):
                                            mem[mem[64]] = _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_15173] / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = _14417 * mem[_15173] / Mask(112, 0, _14451)
                                    else:
                                        _15214 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15214] > -1:
                                            revert with 0, 17
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) and mem[_15214] > -1 / _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14417 and mem[_15214] > -1 / _14417:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_15214] / Mask(112, 0, _14443) < _14417 * mem[_15214] / Mask(112, 0, _14451):
                                            mem[mem[64]] = _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_15214] / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = _14417 * mem[_15214] / Mask(112, 0, _14451)
                                else:
                                    if 1 > !(mem[_14643] / 2):
                                        revert with 0, 17
                                    s = (mem[_14643] / 2) + 1
                                    t = mem[_14643]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14643] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14643] / s) + s / 2
                                        t = s
                                        continue 
                                    if 0 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17068 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17068] > -1:
                                            revert with 0, 17
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) and mem[_17068] > -1 / _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14417 and mem[_17068] > -1 / _14417:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_17068] / Mask(112, 0, _14443) < _14417 * mem[_17068] / Mask(112, 0, _14451):
                                            mem[mem[64]] = _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_17068] / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = _14417 * mem[_17068] / Mask(112, 0, _14451)
                                    else:
                                        if 0 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17100 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17220 = mem[_17100]
                                        if mem[_17100] and -t > -1 / mem[_17100]:
                                            revert with 0, 17
                                        if 0 > !t:
                                            revert with 0, 17
                                        if not t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17644 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17644] > !(-1 * _17220 * t / t):
                                            revert with 0, 17
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) and mem[_17644] + (-1 * _17220 * t / t) > -1 / _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14417 and mem[_17644] + (-1 * _17220 * t / t) > -1 / _14417:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if (mem[_17644] * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) + (-1 * _17220 * t / t * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) / Mask(112, 0, _14443) < (mem[_17644] * _14417) + (-1 * _17220 * t / t * _14417) / Mask(112, 0, _14451):
                                            mem[mem[64]] = (mem[_17644] * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) + (-1 * _17220 * t / t * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = (mem[_17644] * _14417) + (-1 * _17220 * t / t * _14417) / Mask(112, 0, _14451)
                            else:
                                if mem[_14643] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_14643]:
                                        _15238 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15238] > -1:
                                            revert with 0, 17
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) and mem[_15238] > -1 / _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14417 and mem[_15238] > -1 / _14417:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_15238] / Mask(112, 0, _14443) < _14417 * mem[_15238] / Mask(112, 0, _14451):
                                            mem[mem[64]] = _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_15238] / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = _14417 * mem[_15238] / Mask(112, 0, _14451)
                                    else:
                                        _15237 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _15281 = mem[_15237]
                                        if mem[_15237] and 1 > -1 / mem[_15237]:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _16074 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_16074] > !(_15281 / 5):
                                            revert with 0, 17
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) and mem[_16074] + (_15281 / 5) > -1 / _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14417 and mem[_16074] + (_15281 / 5) > -1 / _14417:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if (mem[_16074] * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) + (_15281 / 5 * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) / Mask(112, 0, _14443) < (mem[_16074] * _14417) + (_15281 / 5 * _14417) / Mask(112, 0, _14451):
                                            mem[mem[64]] = (mem[_16074] * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) + (_15281 / 5 * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = (mem[_16074] * _14417) + (_15281 / 5 * _14417) / Mask(112, 0, _14451)
                                else:
                                    if 1 > !(mem[_14643] / 2):
                                        revert with 0, 17
                                    s = (mem[_14643] / 2) + 1
                                    t = mem[_14643]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14643] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14643] / s) + s / 2
                                        t = s
                                        continue 
                                    if 1 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17069 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17069] > -1:
                                            revert with 0, 17
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) and mem[_17069] > -1 / _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14417 and mem[_17069] > -1 / _14417:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_17069] / Mask(112, 0, _14443) < _14417 * mem[_17069] / Mask(112, 0, _14451):
                                            mem[mem[64]] = _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_17069] / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = _14417 * mem[_17069] / Mask(112, 0, _14451)
                                    else:
                                        if 1 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17101 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17221 = mem[_17101]
                                        if mem[_17101] and -t + 1 > -1 / mem[_17101]:
                                            revert with 0, 17
                                        if 5 > !t:
                                            revert with 0, 17
                                        if not t + 5:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17645 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17645] > !(_17221 - (t * _17221) / t + 5):
                                            revert with 0, 17
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) and mem[_17645] + (_17221 - (t * _17221) / t + 5) > -1 / _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14417 and mem[_17645] + (_17221 - (t * _17221) / t + 5) > -1 / _14417:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if (mem[_17645] * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) + (_17221 - (t * _17221) / t + 5 * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) / Mask(112, 0, _14443) < (mem[_17645] * _14417) + (_17221 - (t * _17221) / t + 5 * _14417) / Mask(112, 0, _14451):
                                            mem[mem[64]] = (mem[_17645] * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) + (_17221 - (t * _17221) / t + 5 * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = (mem[_17645] * _14417) + (_17221 - (t * _17221) / t + 5 * _14417) / Mask(112, 0, _14451)
                        else:
                            if 1 > !(Mask(112, 0, _14443) * Mask(112, 0, _14451) / 2):
                                revert with 0, 17
                            s = (Mask(112, 0, _14443) * Mask(112, 0, _14451) / 2) + 1
                            t = Mask(112, 0, _14443) * Mask(112, 0, _14451)
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if Mask(112, 0, _14443) * Mask(112, 0, _14451) / s > !s:
                                    revert with 0, 17
                                s = (Mask(112, 0, _14443) * Mask(112, 0, _14451) / s) + s / 2
                                t = s
                                continue 
                            if mem[_14643] <= 3:
                                if not mem[_14643]:
                                    if t <= 0:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17298 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17298] > -1:
                                            revert with 0, 17
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) and mem[_17298] > -1 / _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14417 and mem[_17298] > -1 / _14417:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_17298] / Mask(112, 0, _14443) < _14417 * mem[_17298] / Mask(112, 0, _14451):
                                            mem[mem[64]] = _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_17298] / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = _14417 * mem[_17298] / Mask(112, 0, _14451)
                                    else:
                                        if t < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17340 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17404 = mem[_17340]
                                        if mem[_17340] and t > -1 / mem[_17340]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -1:
                                            revert with 0, 17
                                        if not 5 * t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17894 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17894] > !(_17404 * t / 5 * t):
                                            revert with 0, 17
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) and mem[_17894] + (_17404 * t / 5 * t) > -1 / _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14417 and mem[_17894] + (_17404 * t / 5 * t) > -1 / _14417:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if (mem[_17894] * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) + (_17404 * t / 5 * t * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) / Mask(112, 0, _14443) < (mem[_17894] * _14417) + (_17404 * t / 5 * t * _14417) / Mask(112, 0, _14451):
                                            mem[mem[64]] = (mem[_17894] * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) + (_17404 * t / 5 * t * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = (mem[_17894] * _14417) + (_17404 * t / 5 * t * _14417) / Mask(112, 0, _14451)
                                else:
                                    if t <= 1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17341 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17341] > -1:
                                            revert with 0, 17
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) and mem[_17341] > -1 / _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14417 and mem[_17341] > -1 / _14417:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_17341] / Mask(112, 0, _14443) < _14417 * mem[_17341] / Mask(112, 0, _14451):
                                            mem[mem[64]] = _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_17341] / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = _14417 * mem[_17341] / Mask(112, 0, _14451)
                                    else:
                                        if t < 1:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17373 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17430 = mem[_17373]
                                        if mem[_17373] and t - 1 > -1 / mem[_17373]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -2:
                                            revert with 0, 17
                                        if not (5 * t) + 1:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17917 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17917] > !(-_17430 + (t * _17430) / (5 * t) + 1):
                                            revert with 0, 17
                                        if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) and mem[_17917] + (-_17430 + (t * _17430) / (5 * t) + 1) > -1 / _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14443):
                                            revert with 0, 18
                                        if _14417 and mem[_17917] + (-_17430 + (t * _17430) / (5 * t) + 1) > -1 / _14417:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14451):
                                            revert with 0, 18
                                        if (mem[_17917] * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) + (-_17430 + (t * _17430) / (5 * t) + 1 * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) / Mask(112, 0, _14443) < (mem[_17917] * _14417) + (-_17430 + (t * _17430) / (5 * t) + 1 * _14417) / Mask(112, 0, _14451):
                                            mem[mem[64]] = (mem[_17917] * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) + (-_17430 + (t * _17430) / (5 * t) + 1 * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) / Mask(112, 0, _14443)
                                        else:
                                            mem[mem[64]] = (mem[_17917] * _14417) + (-_17430 + (t * _17430) / (5 * t) + 1 * _14417) / Mask(112, 0, _14451)
                            else:
                                if 1 > !(mem[_14643] / 2):
                                    revert with 0, 17
                                s = (mem[_14643] / 2) + 1
                                u = mem[_14643]
                                while s < u:
                                    if not s:
                                        revert with 0, 18
                                    if mem[_14643] / s > !s:
                                        revert with 0, 17
                                    s = (mem[_14643] / s) + s / 2
                                    u = s
                                    continue 
                                if t <= u:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18598 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18598] > -1:
                                        revert with 0, 17
                                    if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) and mem[_18598] > -1 / _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14443):
                                        revert with 0, 18
                                    if _14417 and mem[_18598] > -1 / _14417:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14451):
                                        revert with 0, 18
                                    if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_18598] / Mask(112, 0, _14443) < _14417 * mem[_18598] / Mask(112, 0, _14451):
                                        mem[mem[64]] = _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) * mem[_18598] / Mask(112, 0, _14443)
                                    else:
                                        mem[mem[64]] = _14417 * mem[_18598] / Mask(112, 0, _14451)
                                else:
                                    if t < u:
                                        revert with 0, 17
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18614 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _18646 = mem[_18614]
                                    if mem[_18614] and t - u > -1 / mem[_18614]:
                                        revert with 0, 17
                                    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                        revert with 0, 17
                                    if 5 * t > !u:
                                        revert with 0, 17
                                    if not (5 * t) + u:
                                        revert with 0, 18
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18694 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18694] > !((t * _18646) - (u * _18646) / (5 * t) + u):
                                        revert with 0, 17
                                    if _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451) and mem[_18694] + ((t * _18646) - (u * _18646) / (5 * t) + u) > -1 / _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14443):
                                        revert with 0, 18
                                    if _14417 and mem[_18694] + ((t * _18646) - (u * _18646) / (5 * t) + u) > -1 / _14417:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14451):
                                        revert with 0, 18
                                    if (mem[_18694] * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) + ((t * _18646) - (u * _18646) / (5 * t) + u * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) / Mask(112, 0, _14443) < (mem[_18694] * _14417) + ((t * _18646) - (u * _18646) / (5 * t) + u * _14417) / Mask(112, 0, _14451):
                                        mem[mem[64]] = (mem[_18694] * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) + ((t * _18646) - (u * _18646) / (5 * t) + u * _14417 * Mask(112, 0, _14443) / Mask(112, 0, _14451)) / Mask(112, 0, _14443)
                                    else:
                                        mem[mem[64]] = (mem[_18694] * _14417) + ((t * _18646) - (u * _18646) / (5 * t) + u * _14417) / Mask(112, 0, _14451)
    else:
        mem[96] = 3
        mem[128] = address(arg1)
        mem[32] = 4
        mem[160] = routePair[address(arg1)]
        mem[0] = address(arg1)
        mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = arg2
        mem[260] = 64
        mem[292] = 3
        idx = 0
        s = 128
        t = 324
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor3)
        staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _1547 = mem[224 len 4], Mask(224, 32, arg2) >> 32
        require mem[224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg2) >> 32 + 255 < return_data.size + 224
        _1549 = mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]
        require (32 * _1549) + _1547 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 256 len ceil32(32 * _1549)] = mem[_1547 + 256 len ceil32(32 * _1549)]
        require ext_code.size(0xd66b92fd29a6e1f9a1ccb8075a88d955fa4a409d)
        staticcall 0xd66b92fd29a6e1f9a1ccb8075a88d955fa4a409d.token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3733 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3735 = mem[_3733]
        require mem[_3733] == mem[_3733 + 12 len 20]
        require ext_code.size(0xd66b92fd29a6e1f9a1ccb8075a88d955fa4a409d)
        staticcall 0xd66b92fd29a6e1f9a1ccb8075a88d955fa4a409d.token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3741 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3743 = mem[_3741]
        require mem[_3741] == mem[_3741 + 12 len 20]
        if _1549 < 1:
            revert with 0, 17
        if _1549 - 1 >= _1549:
            revert with 0, 50
        _3749 = mem[(32 * _1549 - 1) + ceil32(return_data.size) + 256]
        mem[32] = 4
        if not routePair[address(_3735)]:
            _3760 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[0] = address(_3735)
            if 0 >= mem[_3760]:
                revert with 0, 50
            mem[_3760 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
            if 1 >= mem[_3760]:
                revert with 0, 50
            mem[_3760 + 64] = address(_3735)
            mem[_3760 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_3760 + 100] = _3749 / 2
            mem[_3760 + 132] = 64
            mem[_3760 + 164] = mem[_3760]
            idx = 0
            s = _3760 + 32
            t = _3760 + 196
            while idx < mem[_3760]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor3)
            staticcall stor3.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _3760 + (32 * mem[_3760]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6306 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6310 = mem[_6306]
            require mem[_6306] <= test266151307()
            require _6306 + mem[_6306] + 31 < _6306 + return_data.size
            _6314 = mem[_6306 + mem[_6306]]
            if mem[_6306 + mem[_6306]] > test266151307():
                revert with 0, 65
            if _6306 + ceil32(return_data.size) + ceil32(32 * mem[_6306 + mem[_6306]]) + 1 > test266151307() or ceil32(32 * mem[_6306 + mem[_6306]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _6306 + ceil32(return_data.size) + ceil32(32 * mem[_6306 + mem[_6306]]) + 1
            mem[_6306 + ceil32(return_data.size)] = _6314
            require (32 * _6314) + _6310 + 32 <= return_data.size
            mem[_6306 + ceil32(return_data.size) + 32 len ceil32(32 * _6314)] = mem[_6306 + _6310 + 32 len ceil32(32 * _6314)]
            if mem[ceil32(return_data.size) + 224] < 1:
                revert with 0, 17
            if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                revert with 0, 50
            _9046 = mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]
            if mem[ceil32(return_data.size) + 224] < 1:
                revert with 0, 17
            if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                revert with 0, 50
            _9058 = mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]
            if mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256] < mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256] / 2:
                revert with 0, 17
            mem[32] = 4
            if not routePair[address(_3743)]:
                _9080 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[0] = address(_3743)
                if 0 >= mem[_9080]:
                    revert with 0, 50
                mem[_9080 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                if 1 >= mem[_9080]:
                    revert with 0, 50
                mem[_9080 + 64] = address(_3743)
                mem[_9080 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_9080 + 100] = _9058 - (_9046 / 2)
                mem[_9080 + 132] = 64
                mem[_9080 + 164] = mem[_9080]
                idx = 0
                s = _9080 + 32
                t = _9080 + 196
                while idx < mem[_9080]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _9080 + (32 * mem[_9080]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11764 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11772 = mem[_11764]
                require mem[_11764] <= test266151307()
                require _11764 + mem[_11764] + 31 < _11764 + return_data.size
                _11780 = mem[_11764 + mem[_11764]]
                if mem[_11764 + mem[_11764]] > test266151307():
                    revert with 0, 65
                if _11764 + ceil32(return_data.size) + ceil32(32 * mem[_11764 + mem[_11764]]) + 1 > test266151307() or ceil32(32 * mem[_11764 + mem[_11764]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _11764 + ceil32(return_data.size) + ceil32(32 * mem[_11764 + mem[_11764]]) + 1
                mem[_11764 + ceil32(return_data.size)] = _11780
                require (32 * _11780) + _11772 + 32 <= return_data.size
                mem[_11764 + ceil32(return_data.size) + 32 len ceil32(32 * _11780)] = mem[_11764 + _11772 + 32 len ceil32(32 * _11780)]
                if mem[_6306 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_6306 + ceil32(return_data.size)] - 1 >= mem[_6306 + ceil32(return_data.size)]:
                    revert with 0, 50
                _14392 = mem[(32 * mem[_6306 + ceil32(return_data.size)] - 1) + _6306 + ceil32(return_data.size) + 32]
                if _11780 < 1:
                    revert with 0, 17
                if _11780 - 1 >= _11780:
                    revert with 0, 50
                _14420 = mem[(32 * _11780 - 1) + _11764 + ceil32(return_data.size) + 32]
                require ext_code.size(stor1)
                staticcall stor1.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14436 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _14444 = mem[_14436]
                require mem[_14436] == mem[_14436 + 18 len 14]
                _14452 = mem[_14436 + 32]
                require mem[_14436 + 32] == mem[_14436 + 50 len 14]
                require mem[_14436 + 64] == mem[_14436 + 92 len 4]
                if _14392 <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                if mem[_14436 + 18 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if mem[_14436 + 50 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if _14392 and mem[_14436 + 50 len 14] > -1 / _14392:
                    revert with 0, 17
                if not mem[_14436 + 18 len 14]:
                    revert with 0, 18
                if _14392 * mem[_14436 + 50 len 14] / mem[_14436 + 18 len 14] <= _14420:
                    require ext_code.size(stor1)
                    staticcall stor1.kLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14553 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_14553]:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14612 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_14612] > -1:
                            revert with 0, 17
                        if _14392 and mem[_14612] > -1 / _14392:
                            revert with 0, 17
                        if not Mask(112, 0, _14444):
                            revert with 0, 18
                        if _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) and mem[_14612] > -1 / _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444):
                            revert with 0, 17
                        if not Mask(112, 0, _14452):
                            revert with 0, 18
                        if _14392 * mem[_14612] / Mask(112, 0, _14444) < _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_14612] / Mask(112, 0, _14452):
                            mem[mem[64]] = _14392 * mem[_14612] / Mask(112, 0, _14444)
                        else:
                            mem[mem[64]] = _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_14612] / Mask(112, 0, _14452)
                    else:
                        if Mask(112, 0, _14444) and Mask(112, 0, _14452) > -1 / Mask(112, 0, _14444):
                            revert with 0, 17
                        if Mask(112, 0, _14444) * Mask(112, 0, _14452) <= 3:
                            if not Mask(112, 0, _14444) * Mask(112, 0, _14452):
                                if mem[_14553] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not mem[_14553]:
                                        _14729 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14729] > -1:
                                            revert with 0, 17
                                        if _14392 and mem[_14729] > -1 / _14392:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) and mem[_14729] > -1 / _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if _14392 * mem[_14729] / Mask(112, 0, _14444) < _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_14729] / Mask(112, 0, _14452):
                                            mem[mem[64]] = _14392 * mem[_14729] / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_14729] / Mask(112, 0, _14452)
                                    else:
                                        _14756 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14756] > -1:
                                            revert with 0, 17
                                        if _14392 and mem[_14756] > -1 / _14392:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) and mem[_14756] > -1 / _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if _14392 * mem[_14756] / Mask(112, 0, _14444) < _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_14756] / Mask(112, 0, _14452):
                                            mem[mem[64]] = _14392 * mem[_14756] / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_14756] / Mask(112, 0, _14452)
                                else:
                                    if 1 > !(mem[_14553] / 2):
                                        revert with 0, 17
                                    s = (mem[_14553] / 2) + 1
                                    t = mem[_14553]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14553] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14553] / s) + s / 2
                                        t = s
                                        continue 
                                    if 0 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17074 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17074] > -1:
                                            revert with 0, 17
                                        if _14392 and mem[_17074] > -1 / _14392:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) and mem[_17074] > -1 / _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if _14392 * mem[_17074] / Mask(112, 0, _14444) < _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_17074] / Mask(112, 0, _14452):
                                            mem[mem[64]] = _14392 * mem[_17074] / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_17074] / Mask(112, 0, _14452)
                                    else:
                                        if 0 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17106 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17238 = mem[_17106]
                                        if mem[_17106] and -t > -1 / mem[_17106]:
                                            revert with 0, 17
                                        if 0 > !t:
                                            revert with 0, 17
                                        if not t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17650 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17650] > !(-1 * _17238 * t / t):
                                            revert with 0, 17
                                        if _14392 and mem[_17650] + (-1 * _17238 * t / t) > -1 / _14392:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) and mem[_17650] + (-1 * _17238 * t / t) > -1 / _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if (mem[_17650] * _14392) + (-1 * _17238 * t / t * _14392) / Mask(112, 0, _14444) < (mem[_17650] * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) + (-1 * _17238 * t / t * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) / Mask(112, 0, _14452):
                                            mem[mem[64]] = (mem[_17650] * _14392) + (-1 * _17238 * t / t * _14392) / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = (mem[_17650] * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) + (-1 * _17238 * t / t * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) / Mask(112, 0, _14452)
                            else:
                                if mem[_14553] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_14553]:
                                        _14779 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14779] > -1:
                                            revert with 0, 17
                                        if _14392 and mem[_14779] > -1 / _14392:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) and mem[_14779] > -1 / _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if _14392 * mem[_14779] / Mask(112, 0, _14444) < _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_14779] / Mask(112, 0, _14452):
                                            mem[mem[64]] = _14392 * mem[_14779] / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_14779] / Mask(112, 0, _14452)
                                    else:
                                        _14778 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _14808 = mem[_14778]
                                        if mem[_14778] and 1 > -1 / mem[_14778]:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _15522 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15522] > !(_14808 / 5):
                                            revert with 0, 17
                                        if _14392 and mem[_15522] + (_14808 / 5) > -1 / _14392:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) and mem[_15522] + (_14808 / 5) > -1 / _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if (mem[_15522] * _14392) + (_14808 / 5 * _14392) / Mask(112, 0, _14444) < (mem[_15522] * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) + (_14808 / 5 * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) / Mask(112, 0, _14452):
                                            mem[mem[64]] = (mem[_15522] * _14392) + (_14808 / 5 * _14392) / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = (mem[_15522] * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) + (_14808 / 5 * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) / Mask(112, 0, _14452)
                                else:
                                    if 1 > !(mem[_14553] / 2):
                                        revert with 0, 17
                                    s = (mem[_14553] / 2) + 1
                                    t = mem[_14553]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14553] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14553] / s) + s / 2
                                        t = s
                                        continue 
                                    if 1 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17075 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17075] > -1:
                                            revert with 0, 17
                                        if _14392 and mem[_17075] > -1 / _14392:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) and mem[_17075] > -1 / _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if _14392 * mem[_17075] / Mask(112, 0, _14444) < _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_17075] / Mask(112, 0, _14452):
                                            mem[mem[64]] = _14392 * mem[_17075] / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_17075] / Mask(112, 0, _14452)
                                    else:
                                        if 1 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17107 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17239 = mem[_17107]
                                        if mem[_17107] and -t + 1 > -1 / mem[_17107]:
                                            revert with 0, 17
                                        if 5 > !t:
                                            revert with 0, 17
                                        if not t + 5:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17651 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17651] > !(_17239 - (t * _17239) / t + 5):
                                            revert with 0, 17
                                        if _14392 and mem[_17651] + (_17239 - (t * _17239) / t + 5) > -1 / _14392:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) and mem[_17651] + (_17239 - (t * _17239) / t + 5) > -1 / _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if (mem[_17651] * _14392) + (_17239 - (t * _17239) / t + 5 * _14392) / Mask(112, 0, _14444) < (mem[_17651] * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) + (_17239 - (t * _17239) / t + 5 * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) / Mask(112, 0, _14452):
                                            mem[mem[64]] = (mem[_17651] * _14392) + (_17239 - (t * _17239) / t + 5 * _14392) / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = (mem[_17651] * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) + (_17239 - (t * _17239) / t + 5 * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) / Mask(112, 0, _14452)
                        else:
                            if 1 > !(Mask(112, 0, _14444) * Mask(112, 0, _14452) / 2):
                                revert with 0, 17
                            s = (Mask(112, 0, _14444) * Mask(112, 0, _14452) / 2) + 1
                            t = Mask(112, 0, _14444) * Mask(112, 0, _14452)
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if Mask(112, 0, _14444) * Mask(112, 0, _14452) / s > !s:
                                    revert with 0, 17
                                s = (Mask(112, 0, _14444) * Mask(112, 0, _14452) / s) + s / 2
                                t = s
                                continue 
                            if mem[_14553] <= 3:
                                if not mem[_14553]:
                                    if t <= 0:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17307 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17307] > -1:
                                            revert with 0, 17
                                        if _14392 and mem[_17307] > -1 / _14392:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) and mem[_17307] > -1 / _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if _14392 * mem[_17307] / Mask(112, 0, _14444) < _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_17307] / Mask(112, 0, _14452):
                                            mem[mem[64]] = _14392 * mem[_17307] / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_17307] / Mask(112, 0, _14452)
                                    else:
                                        if t < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17346 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17410 = mem[_17346]
                                        if mem[_17346] and t > -1 / mem[_17346]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -1:
                                            revert with 0, 17
                                        if not 5 * t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17897 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17897] > !(_17410 * t / 5 * t):
                                            revert with 0, 17
                                        if _14392 and mem[_17897] + (_17410 * t / 5 * t) > -1 / _14392:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) and mem[_17897] + (_17410 * t / 5 * t) > -1 / _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if (mem[_17897] * _14392) + (_17410 * t / 5 * t * _14392) / Mask(112, 0, _14444) < (mem[_17897] * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) + (_17410 * t / 5 * t * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) / Mask(112, 0, _14452):
                                            mem[mem[64]] = (mem[_17897] * _14392) + (_17410 * t / 5 * t * _14392) / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = (mem[_17897] * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) + (_17410 * t / 5 * t * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) / Mask(112, 0, _14452)
                                else:
                                    if t <= 1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17347 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17347] > -1:
                                            revert with 0, 17
                                        if _14392 and mem[_17347] > -1 / _14392:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) and mem[_17347] > -1 / _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if _14392 * mem[_17347] / Mask(112, 0, _14444) < _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_17347] / Mask(112, 0, _14452):
                                            mem[mem[64]] = _14392 * mem[_17347] / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_17347] / Mask(112, 0, _14452)
                                    else:
                                        if t < 1:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17379 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17433 = mem[_17379]
                                        if mem[_17379] and t - 1 > -1 / mem[_17379]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -2:
                                            revert with 0, 17
                                        if not (5 * t) + 1:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17923 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17923] > !(-_17433 + (t * _17433) / (5 * t) + 1):
                                            revert with 0, 17
                                        if _14392 and mem[_17923] + (-_17433 + (t * _17433) / (5 * t) + 1) > -1 / _14392:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) and mem[_17923] + (-_17433 + (t * _17433) / (5 * t) + 1) > -1 / _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if (mem[_17923] * _14392) + (-_17433 + (t * _17433) / (5 * t) + 1 * _14392) / Mask(112, 0, _14444) < (mem[_17923] * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) + (-_17433 + (t * _17433) / (5 * t) + 1 * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) / Mask(112, 0, _14452):
                                            mem[mem[64]] = (mem[_17923] * _14392) + (-_17433 + (t * _17433) / (5 * t) + 1 * _14392) / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = (mem[_17923] * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) + (-_17433 + (t * _17433) / (5 * t) + 1 * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) / Mask(112, 0, _14452)
                            else:
                                if 1 > !(mem[_14553] / 2):
                                    revert with 0, 17
                                s = (mem[_14553] / 2) + 1
                                u = mem[_14553]
                                while s < u:
                                    if not s:
                                        revert with 0, 18
                                    if mem[_14553] / s > !s:
                                        revert with 0, 17
                                    s = (mem[_14553] / s) + s / 2
                                    u = s
                                    continue 
                                if t <= u:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18601 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18601] > -1:
                                        revert with 0, 17
                                    if _14392 and mem[_18601] > -1 / _14392:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14444):
                                        revert with 0, 18
                                    if _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) and mem[_18601] > -1 / _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14452):
                                        revert with 0, 18
                                    if _14392 * mem[_18601] / Mask(112, 0, _14444) < _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_18601] / Mask(112, 0, _14452):
                                        mem[mem[64]] = _14392 * mem[_18601] / Mask(112, 0, _14444)
                                    else:
                                        mem[mem[64]] = _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) * mem[_18601] / Mask(112, 0, _14452)
                                else:
                                    if t < u:
                                        revert with 0, 17
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18617 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _18649 = mem[_18617]
                                    if mem[_18617] and t - u > -1 / mem[_18617]:
                                        revert with 0, 17
                                    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                        revert with 0, 17
                                    if 5 * t > !u:
                                        revert with 0, 17
                                    if not (5 * t) + u:
                                        revert with 0, 18
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18697 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18697] > !((t * _18649) - (u * _18649) / (5 * t) + u):
                                        revert with 0, 17
                                    if _14392 and mem[_18697] + ((t * _18649) - (u * _18649) / (5 * t) + u) > -1 / _14392:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14444):
                                        revert with 0, 18
                                    if _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444) and mem[_18697] + ((t * _18649) - (u * _18649) / (5 * t) + u) > -1 / _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14452):
                                        revert with 0, 18
                                    if (mem[_18697] * _14392) + ((t * _18649) - (u * _18649) / (5 * t) + u * _14392) / Mask(112, 0, _14444) < (mem[_18697] * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) + ((t * _18649) - (u * _18649) / (5 * t) + u * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) / Mask(112, 0, _14452):
                                        mem[mem[64]] = (mem[_18697] * _14392) + ((t * _18649) - (u * _18649) / (5 * t) + u * _14392) / Mask(112, 0, _14444)
                                    else:
                                        mem[mem[64]] = (mem[_18697] * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) + ((t * _18649) - (u * _18649) / (5 * t) + u * _14392 * Mask(112, 0, _14452) / Mask(112, 0, _14444)) / Mask(112, 0, _14452)
                else:
                    if _14420 <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                    if mem[_14436 + 50 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if mem[_14436 + 18 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if _14420 and mem[_14436 + 18 len 14] > -1 / _14420:
                        revert with 0, 17
                    if not mem[_14436 + 50 len 14]:
                        revert with 0, 18
                    if _14420 * mem[_14436 + 18 len 14] / mem[_14436 + 50 len 14] > _14392:
                        revert with 0, 1
                    require ext_code.size(stor1)
                    staticcall stor1.kLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_14644]:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14728 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_14728] > -1:
                            revert with 0, 17
                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) and mem[_14728] > -1 / _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452):
                            revert with 0, 17
                        if not Mask(112, 0, _14444):
                            revert with 0, 18
                        if _14420 and mem[_14728] > -1 / _14420:
                            revert with 0, 17
                        if not Mask(112, 0, _14452):
                            revert with 0, 18
                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_14728] / Mask(112, 0, _14444) < _14420 * mem[_14728] / Mask(112, 0, _14452):
                            mem[mem[64]] = _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_14728] / Mask(112, 0, _14444)
                        else:
                            mem[mem[64]] = _14420 * mem[_14728] / Mask(112, 0, _14452)
                    else:
                        if Mask(112, 0, _14444) and Mask(112, 0, _14452) > -1 / Mask(112, 0, _14444):
                            revert with 0, 17
                        if Mask(112, 0, _14444) * Mask(112, 0, _14452) <= 3:
                            if not Mask(112, 0, _14444) * Mask(112, 0, _14452):
                                if mem[_14644] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not mem[_14644]:
                                        _15180 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15180] > -1:
                                            revert with 0, 17
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) and mem[_15180] > -1 / _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14420 and mem[_15180] > -1 / _14420:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_15180] / Mask(112, 0, _14444) < _14420 * mem[_15180] / Mask(112, 0, _14452):
                                            mem[mem[64]] = _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_15180] / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = _14420 * mem[_15180] / Mask(112, 0, _14452)
                                    else:
                                        _15216 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15216] > -1:
                                            revert with 0, 17
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) and mem[_15216] > -1 / _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14420 and mem[_15216] > -1 / _14420:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_15216] / Mask(112, 0, _14444) < _14420 * mem[_15216] / Mask(112, 0, _14452):
                                            mem[mem[64]] = _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_15216] / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = _14420 * mem[_15216] / Mask(112, 0, _14452)
                                else:
                                    if 1 > !(mem[_14644] / 2):
                                        revert with 0, 17
                                    s = (mem[_14644] / 2) + 1
                                    t = mem[_14644]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14644] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14644] / s) + s / 2
                                        t = s
                                        continue 
                                    if 0 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17072 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17072] > -1:
                                            revert with 0, 17
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) and mem[_17072] > -1 / _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14420 and mem[_17072] > -1 / _14420:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_17072] / Mask(112, 0, _14444) < _14420 * mem[_17072] / Mask(112, 0, _14452):
                                            mem[mem[64]] = _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_17072] / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = _14420 * mem[_17072] / Mask(112, 0, _14452)
                                    else:
                                        if 0 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17104 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17232 = mem[_17104]
                                        if mem[_17104] and -t > -1 / mem[_17104]:
                                            revert with 0, 17
                                        if 0 > !t:
                                            revert with 0, 17
                                        if not t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17648 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17648] > !(-1 * _17232 * t / t):
                                            revert with 0, 17
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) and mem[_17648] + (-1 * _17232 * t / t) > -1 / _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14420 and mem[_17648] + (-1 * _17232 * t / t) > -1 / _14420:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if (mem[_17648] * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) + (-1 * _17232 * t / t * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) / Mask(112, 0, _14444) < (mem[_17648] * _14420) + (-1 * _17232 * t / t * _14420) / Mask(112, 0, _14452):
                                            mem[mem[64]] = (mem[_17648] * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) + (-1 * _17232 * t / t * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = (mem[_17648] * _14420) + (-1 * _17232 * t / t * _14420) / Mask(112, 0, _14452)
                            else:
                                if mem[_14644] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_14644]:
                                        _15242 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15242] > -1:
                                            revert with 0, 17
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) and mem[_15242] > -1 / _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14420 and mem[_15242] > -1 / _14420:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_15242] / Mask(112, 0, _14444) < _14420 * mem[_15242] / Mask(112, 0, _14452):
                                            mem[mem[64]] = _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_15242] / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = _14420 * mem[_15242] / Mask(112, 0, _14452)
                                    else:
                                        _15241 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _15284 = mem[_15241]
                                        if mem[_15241] and 1 > -1 / mem[_15241]:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _16077 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_16077] > !(_15284 / 5):
                                            revert with 0, 17
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) and mem[_16077] + (_15284 / 5) > -1 / _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14420 and mem[_16077] + (_15284 / 5) > -1 / _14420:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if (mem[_16077] * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) + (_15284 / 5 * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) / Mask(112, 0, _14444) < (mem[_16077] * _14420) + (_15284 / 5 * _14420) / Mask(112, 0, _14452):
                                            mem[mem[64]] = (mem[_16077] * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) + (_15284 / 5 * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = (mem[_16077] * _14420) + (_15284 / 5 * _14420) / Mask(112, 0, _14452)
                                else:
                                    if 1 > !(mem[_14644] / 2):
                                        revert with 0, 17
                                    s = (mem[_14644] / 2) + 1
                                    t = mem[_14644]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14644] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14644] / s) + s / 2
                                        t = s
                                        continue 
                                    if 1 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17073 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17073] > -1:
                                            revert with 0, 17
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) and mem[_17073] > -1 / _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14420 and mem[_17073] > -1 / _14420:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_17073] / Mask(112, 0, _14444) < _14420 * mem[_17073] / Mask(112, 0, _14452):
                                            mem[mem[64]] = _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_17073] / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = _14420 * mem[_17073] / Mask(112, 0, _14452)
                                    else:
                                        if 1 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17105 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17233 = mem[_17105]
                                        if mem[_17105] and -t + 1 > -1 / mem[_17105]:
                                            revert with 0, 17
                                        if 5 > !t:
                                            revert with 0, 17
                                        if not t + 5:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17649 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17649] > !(_17233 - (t * _17233) / t + 5):
                                            revert with 0, 17
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) and mem[_17649] + (_17233 - (t * _17233) / t + 5) > -1 / _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14420 and mem[_17649] + (_17233 - (t * _17233) / t + 5) > -1 / _14420:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if (mem[_17649] * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) + (_17233 - (t * _17233) / t + 5 * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) / Mask(112, 0, _14444) < (mem[_17649] * _14420) + (_17233 - (t * _17233) / t + 5 * _14420) / Mask(112, 0, _14452):
                                            mem[mem[64]] = (mem[_17649] * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) + (_17233 - (t * _17233) / t + 5 * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = (mem[_17649] * _14420) + (_17233 - (t * _17233) / t + 5 * _14420) / Mask(112, 0, _14452)
                        else:
                            if 1 > !(Mask(112, 0, _14444) * Mask(112, 0, _14452) / 2):
                                revert with 0, 17
                            s = (Mask(112, 0, _14444) * Mask(112, 0, _14452) / 2) + 1
                            t = Mask(112, 0, _14444) * Mask(112, 0, _14452)
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if Mask(112, 0, _14444) * Mask(112, 0, _14452) / s > !s:
                                    revert with 0, 17
                                s = (Mask(112, 0, _14444) * Mask(112, 0, _14452) / s) + s / 2
                                t = s
                                continue 
                            if mem[_14644] <= 3:
                                if not mem[_14644]:
                                    if t <= 0:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17304 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17304] > -1:
                                            revert with 0, 17
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) and mem[_17304] > -1 / _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14420 and mem[_17304] > -1 / _14420:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_17304] / Mask(112, 0, _14444) < _14420 * mem[_17304] / Mask(112, 0, _14452):
                                            mem[mem[64]] = _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_17304] / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = _14420 * mem[_17304] / Mask(112, 0, _14452)
                                    else:
                                        if t < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17344 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17408 = mem[_17344]
                                        if mem[_17344] and t > -1 / mem[_17344]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -1:
                                            revert with 0, 17
                                        if not 5 * t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17896 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17896] > !(_17408 * t / 5 * t):
                                            revert with 0, 17
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) and mem[_17896] + (_17408 * t / 5 * t) > -1 / _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14420 and mem[_17896] + (_17408 * t / 5 * t) > -1 / _14420:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if (mem[_17896] * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) + (_17408 * t / 5 * t * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) / Mask(112, 0, _14444) < (mem[_17896] * _14420) + (_17408 * t / 5 * t * _14420) / Mask(112, 0, _14452):
                                            mem[mem[64]] = (mem[_17896] * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) + (_17408 * t / 5 * t * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = (mem[_17896] * _14420) + (_17408 * t / 5 * t * _14420) / Mask(112, 0, _14452)
                                else:
                                    if t <= 1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17345 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17345] > -1:
                                            revert with 0, 17
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) and mem[_17345] > -1 / _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14420 and mem[_17345] > -1 / _14420:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_17345] / Mask(112, 0, _14444) < _14420 * mem[_17345] / Mask(112, 0, _14452):
                                            mem[mem[64]] = _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_17345] / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = _14420 * mem[_17345] / Mask(112, 0, _14452)
                                    else:
                                        if t < 1:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17377 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17432 = mem[_17377]
                                        if mem[_17377] and t - 1 > -1 / mem[_17377]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -2:
                                            revert with 0, 17
                                        if not (5 * t) + 1:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17921 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17921] > !(-_17432 + (t * _17432) / (5 * t) + 1):
                                            revert with 0, 17
                                        if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) and mem[_17921] + (-_17432 + (t * _17432) / (5 * t) + 1) > -1 / _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14444):
                                            revert with 0, 18
                                        if _14420 and mem[_17921] + (-_17432 + (t * _17432) / (5 * t) + 1) > -1 / _14420:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14452):
                                            revert with 0, 18
                                        if (mem[_17921] * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) + (-_17432 + (t * _17432) / (5 * t) + 1 * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) / Mask(112, 0, _14444) < (mem[_17921] * _14420) + (-_17432 + (t * _17432) / (5 * t) + 1 * _14420) / Mask(112, 0, _14452):
                                            mem[mem[64]] = (mem[_17921] * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) + (-_17432 + (t * _17432) / (5 * t) + 1 * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) / Mask(112, 0, _14444)
                                        else:
                                            mem[mem[64]] = (mem[_17921] * _14420) + (-_17432 + (t * _17432) / (5 * t) + 1 * _14420) / Mask(112, 0, _14452)
                            else:
                                if 1 > !(mem[_14644] / 2):
                                    revert with 0, 17
                                s = (mem[_14644] / 2) + 1
                                u = mem[_14644]
                                while s < u:
                                    if not s:
                                        revert with 0, 18
                                    if mem[_14644] / s > !s:
                                        revert with 0, 17
                                    s = (mem[_14644] / s) + s / 2
                                    u = s
                                    continue 
                                if t <= u:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18600 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18600] > -1:
                                        revert with 0, 17
                                    if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) and mem[_18600] > -1 / _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14444):
                                        revert with 0, 18
                                    if _14420 and mem[_18600] > -1 / _14420:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14452):
                                        revert with 0, 18
                                    if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_18600] / Mask(112, 0, _14444) < _14420 * mem[_18600] / Mask(112, 0, _14452):
                                        mem[mem[64]] = _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) * mem[_18600] / Mask(112, 0, _14444)
                                    else:
                                        mem[mem[64]] = _14420 * mem[_18600] / Mask(112, 0, _14452)
                                else:
                                    if t < u:
                                        revert with 0, 17
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18616 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _18648 = mem[_18616]
                                    if mem[_18616] and t - u > -1 / mem[_18616]:
                                        revert with 0, 17
                                    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                        revert with 0, 17
                                    if 5 * t > !u:
                                        revert with 0, 17
                                    if not (5 * t) + u:
                                        revert with 0, 18
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18696 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18696] > !((t * _18648) - (u * _18648) / (5 * t) + u):
                                        revert with 0, 17
                                    if _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452) and mem[_18696] + ((t * _18648) - (u * _18648) / (5 * t) + u) > -1 / _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14444):
                                        revert with 0, 18
                                    if _14420 and mem[_18696] + ((t * _18648) - (u * _18648) / (5 * t) + u) > -1 / _14420:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14452):
                                        revert with 0, 18
                                    if (mem[_18696] * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) + ((t * _18648) - (u * _18648) / (5 * t) + u * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) / Mask(112, 0, _14444) < (mem[_18696] * _14420) + ((t * _18648) - (u * _18648) / (5 * t) + u * _14420) / Mask(112, 0, _14452):
                                        mem[mem[64]] = (mem[_18696] * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) + ((t * _18648) - (u * _18648) / (5 * t) + u * _14420 * Mask(112, 0, _14444) / Mask(112, 0, _14452)) / Mask(112, 0, _14444)
                                    else:
                                        mem[mem[64]] = (mem[_18696] * _14420) + ((t * _18648) - (u * _18648) / (5 * t) + u * _14420) / Mask(112, 0, _14452)
            else:
                _9084 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                mem[0] = address(_3743)
                if 0 >= mem[_9084]:
                    revert with 0, 50
                mem[_9084 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                mem[0] = address(_3743)
                mem[32] = 4
                if 1 >= mem[_9084]:
                    revert with 0, 50
                mem[_9084 + 64] = routePair[address(_3743)]
                if 2 >= mem[_9084]:
                    revert with 0, 50
                mem[_9084 + 96] = address(_3743)
                mem[_9084 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_9084 + 132] = _9058 - (_9046 / 2)
                mem[_9084 + 164] = 64
                mem[_9084 + 196] = mem[_9084]
                idx = 0
                s = _9084 + 32
                t = _9084 + 228
                while idx < mem[_9084]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _9084 + (32 * mem[_9084]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11765 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11773 = mem[_11765]
                require mem[_11765] <= test266151307()
                require _11765 + mem[_11765] + 31 < _11765 + return_data.size
                _11781 = mem[_11765 + mem[_11765]]
                if mem[_11765 + mem[_11765]] > test266151307():
                    revert with 0, 65
                if _11765 + ceil32(return_data.size) + ceil32(32 * mem[_11765 + mem[_11765]]) + 1 > test266151307() or ceil32(32 * mem[_11765 + mem[_11765]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _11765 + ceil32(return_data.size) + ceil32(32 * mem[_11765 + mem[_11765]]) + 1
                mem[_11765 + ceil32(return_data.size)] = _11781
                require (32 * _11781) + _11773 + 32 <= return_data.size
                mem[_11765 + ceil32(return_data.size) + 32 len ceil32(32 * _11781)] = mem[_11765 + _11773 + 32 len ceil32(32 * _11781)]
                if mem[_6306 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_6306 + ceil32(return_data.size)] - 1 >= mem[_6306 + ceil32(return_data.size)]:
                    revert with 0, 50
                _14394 = mem[(32 * mem[_6306 + ceil32(return_data.size)] - 1) + _6306 + ceil32(return_data.size) + 32]
                if _11781 < 1:
                    revert with 0, 17
                if _11781 - 1 >= _11781:
                    revert with 0, 50
                _14423 = mem[(32 * _11781 - 1) + _11765 + ceil32(return_data.size) + 32]
                require ext_code.size(stor1)
                staticcall stor1.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14437 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _14445 = mem[_14437]
                require mem[_14437] == mem[_14437 + 18 len 14]
                _14453 = mem[_14437 + 32]
                require mem[_14437 + 32] == mem[_14437 + 50 len 14]
                require mem[_14437 + 64] == mem[_14437 + 92 len 4]
                if _14394 <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                if mem[_14437 + 18 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if mem[_14437 + 50 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if _14394 and mem[_14437 + 50 len 14] > -1 / _14394:
                    revert with 0, 17
                if not mem[_14437 + 18 len 14]:
                    revert with 0, 18
                if _14394 * mem[_14437 + 50 len 14] / mem[_14437 + 18 len 14] <= _14423:
                    require ext_code.size(stor1)
                    staticcall stor1.kLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14555 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_14555]:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14613 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_14613] > -1:
                            revert with 0, 17
                        if _14394 and mem[_14613] > -1 / _14394:
                            revert with 0, 17
                        if not Mask(112, 0, _14445):
                            revert with 0, 18
                        if _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) and mem[_14613] > -1 / _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445):
                            revert with 0, 17
                        if not Mask(112, 0, _14453):
                            revert with 0, 18
                        if _14394 * mem[_14613] / Mask(112, 0, _14445) < _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_14613] / Mask(112, 0, _14453):
                            mem[mem[64]] = _14394 * mem[_14613] / Mask(112, 0, _14445)
                        else:
                            mem[mem[64]] = _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_14613] / Mask(112, 0, _14453)
                    else:
                        if Mask(112, 0, _14445) and Mask(112, 0, _14453) > -1 / Mask(112, 0, _14445):
                            revert with 0, 17
                        if Mask(112, 0, _14445) * Mask(112, 0, _14453) <= 3:
                            if not Mask(112, 0, _14445) * Mask(112, 0, _14453):
                                if mem[_14555] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not mem[_14555]:
                                        _14735 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14735] > -1:
                                            revert with 0, 17
                                        if _14394 and mem[_14735] > -1 / _14394:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) and mem[_14735] > -1 / _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if _14394 * mem[_14735] / Mask(112, 0, _14445) < _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_14735] / Mask(112, 0, _14453):
                                            mem[mem[64]] = _14394 * mem[_14735] / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_14735] / Mask(112, 0, _14453)
                                    else:
                                        _14757 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14757] > -1:
                                            revert with 0, 17
                                        if _14394 and mem[_14757] > -1 / _14394:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) and mem[_14757] > -1 / _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if _14394 * mem[_14757] / Mask(112, 0, _14445) < _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_14757] / Mask(112, 0, _14453):
                                            mem[mem[64]] = _14394 * mem[_14757] / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_14757] / Mask(112, 0, _14453)
                                else:
                                    if 1 > !(mem[_14555] / 2):
                                        revert with 0, 17
                                    s = (mem[_14555] / 2) + 1
                                    t = mem[_14555]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14555] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14555] / s) + s / 2
                                        t = s
                                        continue 
                                    if 0 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17078 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17078] > -1:
                                            revert with 0, 17
                                        if _14394 and mem[_17078] > -1 / _14394:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) and mem[_17078] > -1 / _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if _14394 * mem[_17078] / Mask(112, 0, _14445) < _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_17078] / Mask(112, 0, _14453):
                                            mem[mem[64]] = _14394 * mem[_17078] / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_17078] / Mask(112, 0, _14453)
                                    else:
                                        if 0 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17110 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17250 = mem[_17110]
                                        if mem[_17110] and -t > -1 / mem[_17110]:
                                            revert with 0, 17
                                        if 0 > !t:
                                            revert with 0, 17
                                        if not t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17654 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17654] > !(-1 * _17250 * t / t):
                                            revert with 0, 17
                                        if _14394 and mem[_17654] + (-1 * _17250 * t / t) > -1 / _14394:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) and mem[_17654] + (-1 * _17250 * t / t) > -1 / _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if (mem[_17654] * _14394) + (-1 * _17250 * t / t * _14394) / Mask(112, 0, _14445) < (mem[_17654] * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) + (-1 * _17250 * t / t * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) / Mask(112, 0, _14453):
                                            mem[mem[64]] = (mem[_17654] * _14394) + (-1 * _17250 * t / t * _14394) / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = (mem[_17654] * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) + (-1 * _17250 * t / t * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) / Mask(112, 0, _14453)
                            else:
                                if mem[_14555] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_14555]:
                                        _14783 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14783] > -1:
                                            revert with 0, 17
                                        if _14394 and mem[_14783] > -1 / _14394:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) and mem[_14783] > -1 / _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if _14394 * mem[_14783] / Mask(112, 0, _14445) < _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_14783] / Mask(112, 0, _14453):
                                            mem[mem[64]] = _14394 * mem[_14783] / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_14783] / Mask(112, 0, _14453)
                                    else:
                                        _14782 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _14810 = mem[_14782]
                                        if mem[_14782] and 1 > -1 / mem[_14782]:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _15529 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15529] > !(_14810 / 5):
                                            revert with 0, 17
                                        if _14394 and mem[_15529] + (_14810 / 5) > -1 / _14394:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) and mem[_15529] + (_14810 / 5) > -1 / _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if (mem[_15529] * _14394) + (_14810 / 5 * _14394) / Mask(112, 0, _14445) < (mem[_15529] * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) + (_14810 / 5 * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) / Mask(112, 0, _14453):
                                            mem[mem[64]] = (mem[_15529] * _14394) + (_14810 / 5 * _14394) / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = (mem[_15529] * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) + (_14810 / 5 * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) / Mask(112, 0, _14453)
                                else:
                                    if 1 > !(mem[_14555] / 2):
                                        revert with 0, 17
                                    s = (mem[_14555] / 2) + 1
                                    t = mem[_14555]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14555] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14555] / s) + s / 2
                                        t = s
                                        continue 
                                    if 1 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17079 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17079] > -1:
                                            revert with 0, 17
                                        if _14394 and mem[_17079] > -1 / _14394:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) and mem[_17079] > -1 / _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if _14394 * mem[_17079] / Mask(112, 0, _14445) < _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_17079] / Mask(112, 0, _14453):
                                            mem[mem[64]] = _14394 * mem[_17079] / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_17079] / Mask(112, 0, _14453)
                                    else:
                                        if 1 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17111 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17251 = mem[_17111]
                                        if mem[_17111] and -t + 1 > -1 / mem[_17111]:
                                            revert with 0, 17
                                        if 5 > !t:
                                            revert with 0, 17
                                        if not t + 5:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17655 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17655] > !(_17251 - (t * _17251) / t + 5):
                                            revert with 0, 17
                                        if _14394 and mem[_17655] + (_17251 - (t * _17251) / t + 5) > -1 / _14394:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) and mem[_17655] + (_17251 - (t * _17251) / t + 5) > -1 / _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if (mem[_17655] * _14394) + (_17251 - (t * _17251) / t + 5 * _14394) / Mask(112, 0, _14445) < (mem[_17655] * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) + (_17251 - (t * _17251) / t + 5 * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) / Mask(112, 0, _14453):
                                            mem[mem[64]] = (mem[_17655] * _14394) + (_17251 - (t * _17251) / t + 5 * _14394) / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = (mem[_17655] * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) + (_17251 - (t * _17251) / t + 5 * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) / Mask(112, 0, _14453)
                        else:
                            if 1 > !(Mask(112, 0, _14445) * Mask(112, 0, _14453) / 2):
                                revert with 0, 17
                            s = (Mask(112, 0, _14445) * Mask(112, 0, _14453) / 2) + 1
                            t = Mask(112, 0, _14445) * Mask(112, 0, _14453)
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if Mask(112, 0, _14445) * Mask(112, 0, _14453) / s > !s:
                                    revert with 0, 17
                                s = (Mask(112, 0, _14445) * Mask(112, 0, _14453) / s) + s / 2
                                t = s
                                continue 
                            if mem[_14555] <= 3:
                                if not mem[_14555]:
                                    if t <= 0:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17313 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17313] > -1:
                                            revert with 0, 17
                                        if _14394 and mem[_17313] > -1 / _14394:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) and mem[_17313] > -1 / _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if _14394 * mem[_17313] / Mask(112, 0, _14445) < _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_17313] / Mask(112, 0, _14453):
                                            mem[mem[64]] = _14394 * mem[_17313] / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_17313] / Mask(112, 0, _14453)
                                    else:
                                        if t < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17350 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17414 = mem[_17350]
                                        if mem[_17350] and t > -1 / mem[_17350]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -1:
                                            revert with 0, 17
                                        if not 5 * t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17899 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17899] > !(_17414 * t / 5 * t):
                                            revert with 0, 17
                                        if _14394 and mem[_17899] + (_17414 * t / 5 * t) > -1 / _14394:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) and mem[_17899] + (_17414 * t / 5 * t) > -1 / _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if (mem[_17899] * _14394) + (_17414 * t / 5 * t * _14394) / Mask(112, 0, _14445) < (mem[_17899] * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) + (_17414 * t / 5 * t * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) / Mask(112, 0, _14453):
                                            mem[mem[64]] = (mem[_17899] * _14394) + (_17414 * t / 5 * t * _14394) / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = (mem[_17899] * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) + (_17414 * t / 5 * t * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) / Mask(112, 0, _14453)
                                else:
                                    if t <= 1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17351 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17351] > -1:
                                            revert with 0, 17
                                        if _14394 and mem[_17351] > -1 / _14394:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) and mem[_17351] > -1 / _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if _14394 * mem[_17351] / Mask(112, 0, _14445) < _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_17351] / Mask(112, 0, _14453):
                                            mem[mem[64]] = _14394 * mem[_17351] / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_17351] / Mask(112, 0, _14453)
                                    else:
                                        if t < 1:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17383 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17435 = mem[_17383]
                                        if mem[_17383] and t - 1 > -1 / mem[_17383]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -2:
                                            revert with 0, 17
                                        if not (5 * t) + 1:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17927 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17927] > !(-_17435 + (t * _17435) / (5 * t) + 1):
                                            revert with 0, 17
                                        if _14394 and mem[_17927] + (-_17435 + (t * _17435) / (5 * t) + 1) > -1 / _14394:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) and mem[_17927] + (-_17435 + (t * _17435) / (5 * t) + 1) > -1 / _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if (mem[_17927] * _14394) + (-_17435 + (t * _17435) / (5 * t) + 1 * _14394) / Mask(112, 0, _14445) < (mem[_17927] * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) + (-_17435 + (t * _17435) / (5 * t) + 1 * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) / Mask(112, 0, _14453):
                                            mem[mem[64]] = (mem[_17927] * _14394) + (-_17435 + (t * _17435) / (5 * t) + 1 * _14394) / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = (mem[_17927] * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) + (-_17435 + (t * _17435) / (5 * t) + 1 * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) / Mask(112, 0, _14453)
                            else:
                                if 1 > !(mem[_14555] / 2):
                                    revert with 0, 17
                                s = (mem[_14555] / 2) + 1
                                u = mem[_14555]
                                while s < u:
                                    if not s:
                                        revert with 0, 18
                                    if mem[_14555] / s > !s:
                                        revert with 0, 17
                                    s = (mem[_14555] / s) + s / 2
                                    u = s
                                    continue 
                                if t <= u:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18603 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18603] > -1:
                                        revert with 0, 17
                                    if _14394 and mem[_18603] > -1 / _14394:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14445):
                                        revert with 0, 18
                                    if _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) and mem[_18603] > -1 / _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14453):
                                        revert with 0, 18
                                    if _14394 * mem[_18603] / Mask(112, 0, _14445) < _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_18603] / Mask(112, 0, _14453):
                                        mem[mem[64]] = _14394 * mem[_18603] / Mask(112, 0, _14445)
                                    else:
                                        mem[mem[64]] = _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) * mem[_18603] / Mask(112, 0, _14453)
                                else:
                                    if t < u:
                                        revert with 0, 17
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18619 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _18651 = mem[_18619]
                                    if mem[_18619] and t - u > -1 / mem[_18619]:
                                        revert with 0, 17
                                    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                        revert with 0, 17
                                    if 5 * t > !u:
                                        revert with 0, 17
                                    if not (5 * t) + u:
                                        revert with 0, 18
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18699 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18699] > !((t * _18651) - (u * _18651) / (5 * t) + u):
                                        revert with 0, 17
                                    if _14394 and mem[_18699] + ((t * _18651) - (u * _18651) / (5 * t) + u) > -1 / _14394:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14445):
                                        revert with 0, 18
                                    if _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445) and mem[_18699] + ((t * _18651) - (u * _18651) / (5 * t) + u) > -1 / _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14453):
                                        revert with 0, 18
                                    if (mem[_18699] * _14394) + ((t * _18651) - (u * _18651) / (5 * t) + u * _14394) / Mask(112, 0, _14445) < (mem[_18699] * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) + ((t * _18651) - (u * _18651) / (5 * t) + u * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) / Mask(112, 0, _14453):
                                        mem[mem[64]] = (mem[_18699] * _14394) + ((t * _18651) - (u * _18651) / (5 * t) + u * _14394) / Mask(112, 0, _14445)
                                    else:
                                        mem[mem[64]] = (mem[_18699] * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) + ((t * _18651) - (u * _18651) / (5 * t) + u * _14394 * Mask(112, 0, _14453) / Mask(112, 0, _14445)) / Mask(112, 0, _14453)
                else:
                    if _14423 <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                    if mem[_14437 + 50 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if mem[_14437 + 18 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if _14423 and mem[_14437 + 18 len 14] > -1 / _14423:
                        revert with 0, 17
                    if not mem[_14437 + 50 len 14]:
                        revert with 0, 18
                    if _14423 * mem[_14437 + 18 len 14] / mem[_14437 + 50 len 14] > _14394:
                        revert with 0, 1
                    require ext_code.size(stor1)
                    staticcall stor1.kLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_14645]:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14734 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_14734] > -1:
                            revert with 0, 17
                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) and mem[_14734] > -1 / _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453):
                            revert with 0, 17
                        if not Mask(112, 0, _14445):
                            revert with 0, 18
                        if _14423 and mem[_14734] > -1 / _14423:
                            revert with 0, 17
                        if not Mask(112, 0, _14453):
                            revert with 0, 18
                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_14734] / Mask(112, 0, _14445) < _14423 * mem[_14734] / Mask(112, 0, _14453):
                            mem[mem[64]] = _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_14734] / Mask(112, 0, _14445)
                        else:
                            mem[mem[64]] = _14423 * mem[_14734] / Mask(112, 0, _14453)
                    else:
                        if Mask(112, 0, _14445) and Mask(112, 0, _14453) > -1 / Mask(112, 0, _14445):
                            revert with 0, 17
                        if Mask(112, 0, _14445) * Mask(112, 0, _14453) <= 3:
                            if not Mask(112, 0, _14445) * Mask(112, 0, _14453):
                                if mem[_14645] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not mem[_14645]:
                                        _15187 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15187] > -1:
                                            revert with 0, 17
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) and mem[_15187] > -1 / _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14423 and mem[_15187] > -1 / _14423:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_15187] / Mask(112, 0, _14445) < _14423 * mem[_15187] / Mask(112, 0, _14453):
                                            mem[mem[64]] = _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_15187] / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = _14423 * mem[_15187] / Mask(112, 0, _14453)
                                    else:
                                        _15218 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15218] > -1:
                                            revert with 0, 17
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) and mem[_15218] > -1 / _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14423 and mem[_15218] > -1 / _14423:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_15218] / Mask(112, 0, _14445) < _14423 * mem[_15218] / Mask(112, 0, _14453):
                                            mem[mem[64]] = _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_15218] / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = _14423 * mem[_15218] / Mask(112, 0, _14453)
                                else:
                                    if 1 > !(mem[_14645] / 2):
                                        revert with 0, 17
                                    s = (mem[_14645] / 2) + 1
                                    t = mem[_14645]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14645] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14645] / s) + s / 2
                                        t = s
                                        continue 
                                    if 0 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17076 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17076] > -1:
                                            revert with 0, 17
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) and mem[_17076] > -1 / _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14423 and mem[_17076] > -1 / _14423:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_17076] / Mask(112, 0, _14445) < _14423 * mem[_17076] / Mask(112, 0, _14453):
                                            mem[mem[64]] = _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_17076] / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = _14423 * mem[_17076] / Mask(112, 0, _14453)
                                    else:
                                        if 0 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17108 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17244 = mem[_17108]
                                        if mem[_17108] and -t > -1 / mem[_17108]:
                                            revert with 0, 17
                                        if 0 > !t:
                                            revert with 0, 17
                                        if not t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17652 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17652] > !(-1 * _17244 * t / t):
                                            revert with 0, 17
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) and mem[_17652] + (-1 * _17244 * t / t) > -1 / _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14423 and mem[_17652] + (-1 * _17244 * t / t) > -1 / _14423:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if (mem[_17652] * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) + (-1 * _17244 * t / t * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) / Mask(112, 0, _14445) < (mem[_17652] * _14423) + (-1 * _17244 * t / t * _14423) / Mask(112, 0, _14453):
                                            mem[mem[64]] = (mem[_17652] * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) + (-1 * _17244 * t / t * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = (mem[_17652] * _14423) + (-1 * _17244 * t / t * _14423) / Mask(112, 0, _14453)
                            else:
                                if mem[_14645] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_14645]:
                                        _15246 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15246] > -1:
                                            revert with 0, 17
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) and mem[_15246] > -1 / _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14423 and mem[_15246] > -1 / _14423:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_15246] / Mask(112, 0, _14445) < _14423 * mem[_15246] / Mask(112, 0, _14453):
                                            mem[mem[64]] = _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_15246] / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = _14423 * mem[_15246] / Mask(112, 0, _14453)
                                    else:
                                        _15245 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _15287 = mem[_15245]
                                        if mem[_15245] and 1 > -1 / mem[_15245]:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _16080 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_16080] > !(_15287 / 5):
                                            revert with 0, 17
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) and mem[_16080] + (_15287 / 5) > -1 / _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14423 and mem[_16080] + (_15287 / 5) > -1 / _14423:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if (mem[_16080] * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) + (_15287 / 5 * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) / Mask(112, 0, _14445) < (mem[_16080] * _14423) + (_15287 / 5 * _14423) / Mask(112, 0, _14453):
                                            mem[mem[64]] = (mem[_16080] * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) + (_15287 / 5 * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = (mem[_16080] * _14423) + (_15287 / 5 * _14423) / Mask(112, 0, _14453)
                                else:
                                    if 1 > !(mem[_14645] / 2):
                                        revert with 0, 17
                                    s = (mem[_14645] / 2) + 1
                                    t = mem[_14645]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14645] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14645] / s) + s / 2
                                        t = s
                                        continue 
                                    if 1 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17077 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17077] > -1:
                                            revert with 0, 17
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) and mem[_17077] > -1 / _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14423 and mem[_17077] > -1 / _14423:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_17077] / Mask(112, 0, _14445) < _14423 * mem[_17077] / Mask(112, 0, _14453):
                                            mem[mem[64]] = _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_17077] / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = _14423 * mem[_17077] / Mask(112, 0, _14453)
                                    else:
                                        if 1 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17109 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17245 = mem[_17109]
                                        if mem[_17109] and -t + 1 > -1 / mem[_17109]:
                                            revert with 0, 17
                                        if 5 > !t:
                                            revert with 0, 17
                                        if not t + 5:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17653 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17653] > !(_17245 - (t * _17245) / t + 5):
                                            revert with 0, 17
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) and mem[_17653] + (_17245 - (t * _17245) / t + 5) > -1 / _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14423 and mem[_17653] + (_17245 - (t * _17245) / t + 5) > -1 / _14423:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if (mem[_17653] * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) + (_17245 - (t * _17245) / t + 5 * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) / Mask(112, 0, _14445) < (mem[_17653] * _14423) + (_17245 - (t * _17245) / t + 5 * _14423) / Mask(112, 0, _14453):
                                            mem[mem[64]] = (mem[_17653] * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) + (_17245 - (t * _17245) / t + 5 * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = (mem[_17653] * _14423) + (_17245 - (t * _17245) / t + 5 * _14423) / Mask(112, 0, _14453)
                        else:
                            if 1 > !(Mask(112, 0, _14445) * Mask(112, 0, _14453) / 2):
                                revert with 0, 17
                            s = (Mask(112, 0, _14445) * Mask(112, 0, _14453) / 2) + 1
                            t = Mask(112, 0, _14445) * Mask(112, 0, _14453)
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if Mask(112, 0, _14445) * Mask(112, 0, _14453) / s > !s:
                                    revert with 0, 17
                                s = (Mask(112, 0, _14445) * Mask(112, 0, _14453) / s) + s / 2
                                t = s
                                continue 
                            if mem[_14645] <= 3:
                                if not mem[_14645]:
                                    if t <= 0:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17310 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17310] > -1:
                                            revert with 0, 17
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) and mem[_17310] > -1 / _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14423 and mem[_17310] > -1 / _14423:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_17310] / Mask(112, 0, _14445) < _14423 * mem[_17310] / Mask(112, 0, _14453):
                                            mem[mem[64]] = _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_17310] / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = _14423 * mem[_17310] / Mask(112, 0, _14453)
                                    else:
                                        if t < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17348 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17412 = mem[_17348]
                                        if mem[_17348] and t > -1 / mem[_17348]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -1:
                                            revert with 0, 17
                                        if not 5 * t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17898 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17898] > !(_17412 * t / 5 * t):
                                            revert with 0, 17
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) and mem[_17898] + (_17412 * t / 5 * t) > -1 / _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14423 and mem[_17898] + (_17412 * t / 5 * t) > -1 / _14423:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if (mem[_17898] * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) + (_17412 * t / 5 * t * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) / Mask(112, 0, _14445) < (mem[_17898] * _14423) + (_17412 * t / 5 * t * _14423) / Mask(112, 0, _14453):
                                            mem[mem[64]] = (mem[_17898] * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) + (_17412 * t / 5 * t * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = (mem[_17898] * _14423) + (_17412 * t / 5 * t * _14423) / Mask(112, 0, _14453)
                                else:
                                    if t <= 1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17349 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17349] > -1:
                                            revert with 0, 17
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) and mem[_17349] > -1 / _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14423 and mem[_17349] > -1 / _14423:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_17349] / Mask(112, 0, _14445) < _14423 * mem[_17349] / Mask(112, 0, _14453):
                                            mem[mem[64]] = _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_17349] / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = _14423 * mem[_17349] / Mask(112, 0, _14453)
                                    else:
                                        if t < 1:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17381 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17434 = mem[_17381]
                                        if mem[_17381] and t - 1 > -1 / mem[_17381]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -2:
                                            revert with 0, 17
                                        if not (5 * t) + 1:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17925 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17925] > !(-_17434 + (t * _17434) / (5 * t) + 1):
                                            revert with 0, 17
                                        if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) and mem[_17925] + (-_17434 + (t * _17434) / (5 * t) + 1) > -1 / _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14445):
                                            revert with 0, 18
                                        if _14423 and mem[_17925] + (-_17434 + (t * _17434) / (5 * t) + 1) > -1 / _14423:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14453):
                                            revert with 0, 18
                                        if (mem[_17925] * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) + (-_17434 + (t * _17434) / (5 * t) + 1 * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) / Mask(112, 0, _14445) < (mem[_17925] * _14423) + (-_17434 + (t * _17434) / (5 * t) + 1 * _14423) / Mask(112, 0, _14453):
                                            mem[mem[64]] = (mem[_17925] * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) + (-_17434 + (t * _17434) / (5 * t) + 1 * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) / Mask(112, 0, _14445)
                                        else:
                                            mem[mem[64]] = (mem[_17925] * _14423) + (-_17434 + (t * _17434) / (5 * t) + 1 * _14423) / Mask(112, 0, _14453)
                            else:
                                if 1 > !(mem[_14645] / 2):
                                    revert with 0, 17
                                s = (mem[_14645] / 2) + 1
                                u = mem[_14645]
                                while s < u:
                                    if not s:
                                        revert with 0, 18
                                    if mem[_14645] / s > !s:
                                        revert with 0, 17
                                    s = (mem[_14645] / s) + s / 2
                                    u = s
                                    continue 
                                if t <= u:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18602 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18602] > -1:
                                        revert with 0, 17
                                    if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) and mem[_18602] > -1 / _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14445):
                                        revert with 0, 18
                                    if _14423 and mem[_18602] > -1 / _14423:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14453):
                                        revert with 0, 18
                                    if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_18602] / Mask(112, 0, _14445) < _14423 * mem[_18602] / Mask(112, 0, _14453):
                                        mem[mem[64]] = _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) * mem[_18602] / Mask(112, 0, _14445)
                                    else:
                                        mem[mem[64]] = _14423 * mem[_18602] / Mask(112, 0, _14453)
                                else:
                                    if t < u:
                                        revert with 0, 17
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18618 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _18650 = mem[_18618]
                                    if mem[_18618] and t - u > -1 / mem[_18618]:
                                        revert with 0, 17
                                    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                        revert with 0, 17
                                    if 5 * t > !u:
                                        revert with 0, 17
                                    if not (5 * t) + u:
                                        revert with 0, 18
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18698 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18698] > !((t * _18650) - (u * _18650) / (5 * t) + u):
                                        revert with 0, 17
                                    if _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453) and mem[_18698] + ((t * _18650) - (u * _18650) / (5 * t) + u) > -1 / _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14445):
                                        revert with 0, 18
                                    if _14423 and mem[_18698] + ((t * _18650) - (u * _18650) / (5 * t) + u) > -1 / _14423:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14453):
                                        revert with 0, 18
                                    if (mem[_18698] * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) + ((t * _18650) - (u * _18650) / (5 * t) + u * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) / Mask(112, 0, _14445) < (mem[_18698] * _14423) + ((t * _18650) - (u * _18650) / (5 * t) + u * _14423) / Mask(112, 0, _14453):
                                        mem[mem[64]] = (mem[_18698] * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) + ((t * _18650) - (u * _18650) / (5 * t) + u * _14423 * Mask(112, 0, _14445) / Mask(112, 0, _14453)) / Mask(112, 0, _14445)
                                    else:
                                        mem[mem[64]] = (mem[_18698] * _14423) + ((t * _18650) - (u * _18650) / (5 * t) + u * _14423) / Mask(112, 0, _14453)
        else:
            _3764 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            mem[0] = address(_3735)
            if 0 >= mem[_3764]:
                revert with 0, 50
            mem[_3764 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
            mem[0] = address(_3735)
            mem[32] = 4
            if 1 >= mem[_3764]:
                revert with 0, 50
            mem[_3764 + 64] = routePair[address(_3735)]
            if 2 >= mem[_3764]:
                revert with 0, 50
            mem[_3764 + 96] = address(_3735)
            mem[_3764 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_3764 + 132] = _3749 / 2
            mem[_3764 + 164] = 64
            mem[_3764 + 196] = mem[_3764]
            idx = 0
            s = _3764 + 32
            t = _3764 + 228
            while idx < mem[_3764]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor3)
            staticcall stor3.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _3764 + (32 * mem[_3764]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6307 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6311 = mem[_6307]
            require mem[_6307] <= test266151307()
            require _6307 + mem[_6307] + 31 < _6307 + return_data.size
            _6315 = mem[_6307 + mem[_6307]]
            if mem[_6307 + mem[_6307]] > test266151307():
                revert with 0, 65
            if _6307 + ceil32(return_data.size) + ceil32(32 * mem[_6307 + mem[_6307]]) + 1 > test266151307() or ceil32(32 * mem[_6307 + mem[_6307]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _6307 + ceil32(return_data.size) + ceil32(32 * mem[_6307 + mem[_6307]]) + 1
            mem[_6307 + ceil32(return_data.size)] = _6315
            require (32 * _6315) + _6311 + 32 <= return_data.size
            mem[_6307 + ceil32(return_data.size) + 32 len ceil32(32 * _6315)] = mem[_6307 + _6311 + 32 len ceil32(32 * _6315)]
            if mem[ceil32(return_data.size) + 224] < 1:
                revert with 0, 17
            if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                revert with 0, 50
            _9047 = mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]
            if mem[ceil32(return_data.size) + 224] < 1:
                revert with 0, 17
            if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                revert with 0, 50
            _9059 = mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]
            if mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256] < mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256] / 2:
                revert with 0, 17
            mem[32] = 4
            if not routePair[address(_3743)]:
                _9088 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[0] = address(_3743)
                if 0 >= mem[_9088]:
                    revert with 0, 50
                mem[_9088 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                if 1 >= mem[_9088]:
                    revert with 0, 50
                mem[_9088 + 64] = address(_3743)
                mem[_9088 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_9088 + 100] = _9059 - (_9047 / 2)
                mem[_9088 + 132] = 64
                mem[_9088 + 164] = mem[_9088]
                idx = 0
                s = _9088 + 32
                t = _9088 + 196
                while idx < mem[_9088]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _9088 + (32 * mem[_9088]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11766 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11774 = mem[_11766]
                require mem[_11766] <= test266151307()
                require _11766 + mem[_11766] + 31 < _11766 + return_data.size
                _11782 = mem[_11766 + mem[_11766]]
                if mem[_11766 + mem[_11766]] > test266151307():
                    revert with 0, 65
                if _11766 + ceil32(return_data.size) + ceil32(32 * mem[_11766 + mem[_11766]]) + 1 > test266151307() or ceil32(32 * mem[_11766 + mem[_11766]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _11766 + ceil32(return_data.size) + ceil32(32 * mem[_11766 + mem[_11766]]) + 1
                mem[_11766 + ceil32(return_data.size)] = _11782
                require (32 * _11782) + _11774 + 32 <= return_data.size
                mem[_11766 + ceil32(return_data.size) + 32 len ceil32(32 * _11782)] = mem[_11766 + _11774 + 32 len ceil32(32 * _11782)]
                if mem[_6307 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_6307 + ceil32(return_data.size)] - 1 >= mem[_6307 + ceil32(return_data.size)]:
                    revert with 0, 50
                _14396 = mem[(32 * mem[_6307 + ceil32(return_data.size)] - 1) + _6307 + ceil32(return_data.size) + 32]
                if _11782 < 1:
                    revert with 0, 17
                if _11782 - 1 >= _11782:
                    revert with 0, 50
                _14426 = mem[(32 * _11782 - 1) + _11766 + ceil32(return_data.size) + 32]
                require ext_code.size(stor1)
                staticcall stor1.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14438 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _14446 = mem[_14438]
                require mem[_14438] == mem[_14438 + 18 len 14]
                _14454 = mem[_14438 + 32]
                require mem[_14438 + 32] == mem[_14438 + 50 len 14]
                require mem[_14438 + 64] == mem[_14438 + 92 len 4]
                if _14396 <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                if mem[_14438 + 18 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if mem[_14438 + 50 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if _14396 and mem[_14438 + 50 len 14] > -1 / _14396:
                    revert with 0, 17
                if not mem[_14438 + 18 len 14]:
                    revert with 0, 18
                if _14396 * mem[_14438 + 50 len 14] / mem[_14438 + 18 len 14] <= _14426:
                    require ext_code.size(stor1)
                    staticcall stor1.kLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14557 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_14557]:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14614 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_14614] > -1:
                            revert with 0, 17
                        if _14396 and mem[_14614] > -1 / _14396:
                            revert with 0, 17
                        if not Mask(112, 0, _14446):
                            revert with 0, 18
                        if _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) and mem[_14614] > -1 / _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446):
                            revert with 0, 17
                        if not Mask(112, 0, _14454):
                            revert with 0, 18
                        if _14396 * mem[_14614] / Mask(112, 0, _14446) < _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_14614] / Mask(112, 0, _14454):
                            mem[mem[64]] = _14396 * mem[_14614] / Mask(112, 0, _14446)
                        else:
                            mem[mem[64]] = _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_14614] / Mask(112, 0, _14454)
                    else:
                        if Mask(112, 0, _14446) and Mask(112, 0, _14454) > -1 / Mask(112, 0, _14446):
                            revert with 0, 17
                        if Mask(112, 0, _14446) * Mask(112, 0, _14454) <= 3:
                            if not Mask(112, 0, _14446) * Mask(112, 0, _14454):
                                if mem[_14557] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not mem[_14557]:
                                        _14741 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14741] > -1:
                                            revert with 0, 17
                                        if _14396 and mem[_14741] > -1 / _14396:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) and mem[_14741] > -1 / _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if _14396 * mem[_14741] / Mask(112, 0, _14446) < _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_14741] / Mask(112, 0, _14454):
                                            mem[mem[64]] = _14396 * mem[_14741] / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_14741] / Mask(112, 0, _14454)
                                    else:
                                        _14758 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14758] > -1:
                                            revert with 0, 17
                                        if _14396 and mem[_14758] > -1 / _14396:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) and mem[_14758] > -1 / _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if _14396 * mem[_14758] / Mask(112, 0, _14446) < _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_14758] / Mask(112, 0, _14454):
                                            mem[mem[64]] = _14396 * mem[_14758] / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_14758] / Mask(112, 0, _14454)
                                else:
                                    if 1 > !(mem[_14557] / 2):
                                        revert with 0, 17
                                    s = (mem[_14557] / 2) + 1
                                    t = mem[_14557]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14557] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14557] / s) + s / 2
                                        t = s
                                        continue 
                                    if 0 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17082 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17082] > -1:
                                            revert with 0, 17
                                        if _14396 and mem[_17082] > -1 / _14396:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) and mem[_17082] > -1 / _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if _14396 * mem[_17082] / Mask(112, 0, _14446) < _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_17082] / Mask(112, 0, _14454):
                                            mem[mem[64]] = _14396 * mem[_17082] / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_17082] / Mask(112, 0, _14454)
                                    else:
                                        if 0 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17114 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17262 = mem[_17114]
                                        if mem[_17114] and -t > -1 / mem[_17114]:
                                            revert with 0, 17
                                        if 0 > !t:
                                            revert with 0, 17
                                        if not t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17658 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17658] > !(-1 * _17262 * t / t):
                                            revert with 0, 17
                                        if _14396 and mem[_17658] + (-1 * _17262 * t / t) > -1 / _14396:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) and mem[_17658] + (-1 * _17262 * t / t) > -1 / _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if (mem[_17658] * _14396) + (-1 * _17262 * t / t * _14396) / Mask(112, 0, _14446) < (mem[_17658] * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) + (-1 * _17262 * t / t * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) / Mask(112, 0, _14454):
                                            mem[mem[64]] = (mem[_17658] * _14396) + (-1 * _17262 * t / t * _14396) / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = (mem[_17658] * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) + (-1 * _17262 * t / t * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) / Mask(112, 0, _14454)
                            else:
                                if mem[_14557] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_14557]:
                                        _14787 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14787] > -1:
                                            revert with 0, 17
                                        if _14396 and mem[_14787] > -1 / _14396:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) and mem[_14787] > -1 / _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if _14396 * mem[_14787] / Mask(112, 0, _14446) < _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_14787] / Mask(112, 0, _14454):
                                            mem[mem[64]] = _14396 * mem[_14787] / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_14787] / Mask(112, 0, _14454)
                                    else:
                                        _14786 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _14812 = mem[_14786]
                                        if mem[_14786] and 1 > -1 / mem[_14786]:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _15536 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15536] > !(_14812 / 5):
                                            revert with 0, 17
                                        if _14396 and mem[_15536] + (_14812 / 5) > -1 / _14396:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) and mem[_15536] + (_14812 / 5) > -1 / _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if (mem[_15536] * _14396) + (_14812 / 5 * _14396) / Mask(112, 0, _14446) < (mem[_15536] * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) + (_14812 / 5 * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) / Mask(112, 0, _14454):
                                            mem[mem[64]] = (mem[_15536] * _14396) + (_14812 / 5 * _14396) / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = (mem[_15536] * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) + (_14812 / 5 * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) / Mask(112, 0, _14454)
                                else:
                                    if 1 > !(mem[_14557] / 2):
                                        revert with 0, 17
                                    s = (mem[_14557] / 2) + 1
                                    t = mem[_14557]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14557] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14557] / s) + s / 2
                                        t = s
                                        continue 
                                    if 1 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17083 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17083] > -1:
                                            revert with 0, 17
                                        if _14396 and mem[_17083] > -1 / _14396:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) and mem[_17083] > -1 / _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if _14396 * mem[_17083] / Mask(112, 0, _14446) < _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_17083] / Mask(112, 0, _14454):
                                            mem[mem[64]] = _14396 * mem[_17083] / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_17083] / Mask(112, 0, _14454)
                                    else:
                                        if 1 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17115 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17263 = mem[_17115]
                                        if mem[_17115] and -t + 1 > -1 / mem[_17115]:
                                            revert with 0, 17
                                        if 5 > !t:
                                            revert with 0, 17
                                        if not t + 5:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17659 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17659] > !(_17263 - (t * _17263) / t + 5):
                                            revert with 0, 17
                                        if _14396 and mem[_17659] + (_17263 - (t * _17263) / t + 5) > -1 / _14396:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) and mem[_17659] + (_17263 - (t * _17263) / t + 5) > -1 / _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if (mem[_17659] * _14396) + (_17263 - (t * _17263) / t + 5 * _14396) / Mask(112, 0, _14446) < (mem[_17659] * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) + (_17263 - (t * _17263) / t + 5 * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) / Mask(112, 0, _14454):
                                            mem[mem[64]] = (mem[_17659] * _14396) + (_17263 - (t * _17263) / t + 5 * _14396) / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = (mem[_17659] * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) + (_17263 - (t * _17263) / t + 5 * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) / Mask(112, 0, _14454)
                        else:
                            if 1 > !(Mask(112, 0, _14446) * Mask(112, 0, _14454) / 2):
                                revert with 0, 17
                            s = (Mask(112, 0, _14446) * Mask(112, 0, _14454) / 2) + 1
                            t = Mask(112, 0, _14446) * Mask(112, 0, _14454)
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if Mask(112, 0, _14446) * Mask(112, 0, _14454) / s > !s:
                                    revert with 0, 17
                                s = (Mask(112, 0, _14446) * Mask(112, 0, _14454) / s) + s / 2
                                t = s
                                continue 
                            if mem[_14557] <= 3:
                                if not mem[_14557]:
                                    if t <= 0:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17319 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17319] > -1:
                                            revert with 0, 17
                                        if _14396 and mem[_17319] > -1 / _14396:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) and mem[_17319] > -1 / _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if _14396 * mem[_17319] / Mask(112, 0, _14446) < _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_17319] / Mask(112, 0, _14454):
                                            mem[mem[64]] = _14396 * mem[_17319] / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_17319] / Mask(112, 0, _14454)
                                    else:
                                        if t < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17354 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17418 = mem[_17354]
                                        if mem[_17354] and t > -1 / mem[_17354]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -1:
                                            revert with 0, 17
                                        if not 5 * t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17901 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17901] > !(_17418 * t / 5 * t):
                                            revert with 0, 17
                                        if _14396 and mem[_17901] + (_17418 * t / 5 * t) > -1 / _14396:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) and mem[_17901] + (_17418 * t / 5 * t) > -1 / _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if (mem[_17901] * _14396) + (_17418 * t / 5 * t * _14396) / Mask(112, 0, _14446) < (mem[_17901] * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) + (_17418 * t / 5 * t * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) / Mask(112, 0, _14454):
                                            mem[mem[64]] = (mem[_17901] * _14396) + (_17418 * t / 5 * t * _14396) / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = (mem[_17901] * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) + (_17418 * t / 5 * t * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) / Mask(112, 0, _14454)
                                else:
                                    if t <= 1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17355 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17355] > -1:
                                            revert with 0, 17
                                        if _14396 and mem[_17355] > -1 / _14396:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) and mem[_17355] > -1 / _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if _14396 * mem[_17355] / Mask(112, 0, _14446) < _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_17355] / Mask(112, 0, _14454):
                                            mem[mem[64]] = _14396 * mem[_17355] / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_17355] / Mask(112, 0, _14454)
                                    else:
                                        if t < 1:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17387 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17437 = mem[_17387]
                                        if mem[_17387] and t - 1 > -1 / mem[_17387]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -2:
                                            revert with 0, 17
                                        if not (5 * t) + 1:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17931 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17931] > !(-_17437 + (t * _17437) / (5 * t) + 1):
                                            revert with 0, 17
                                        if _14396 and mem[_17931] + (-_17437 + (t * _17437) / (5 * t) + 1) > -1 / _14396:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) and mem[_17931] + (-_17437 + (t * _17437) / (5 * t) + 1) > -1 / _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if (mem[_17931] * _14396) + (-_17437 + (t * _17437) / (5 * t) + 1 * _14396) / Mask(112, 0, _14446) < (mem[_17931] * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) + (-_17437 + (t * _17437) / (5 * t) + 1 * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) / Mask(112, 0, _14454):
                                            mem[mem[64]] = (mem[_17931] * _14396) + (-_17437 + (t * _17437) / (5 * t) + 1 * _14396) / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = (mem[_17931] * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) + (-_17437 + (t * _17437) / (5 * t) + 1 * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) / Mask(112, 0, _14454)
                            else:
                                if 1 > !(mem[_14557] / 2):
                                    revert with 0, 17
                                s = (mem[_14557] / 2) + 1
                                u = mem[_14557]
                                while s < u:
                                    if not s:
                                        revert with 0, 18
                                    if mem[_14557] / s > !s:
                                        revert with 0, 17
                                    s = (mem[_14557] / s) + s / 2
                                    u = s
                                    continue 
                                if t <= u:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18605 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18605] > -1:
                                        revert with 0, 17
                                    if _14396 and mem[_18605] > -1 / _14396:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14446):
                                        revert with 0, 18
                                    if _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) and mem[_18605] > -1 / _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14454):
                                        revert with 0, 18
                                    if _14396 * mem[_18605] / Mask(112, 0, _14446) < _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_18605] / Mask(112, 0, _14454):
                                        mem[mem[64]] = _14396 * mem[_18605] / Mask(112, 0, _14446)
                                    else:
                                        mem[mem[64]] = _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) * mem[_18605] / Mask(112, 0, _14454)
                                else:
                                    if t < u:
                                        revert with 0, 17
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18621 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _18653 = mem[_18621]
                                    if mem[_18621] and t - u > -1 / mem[_18621]:
                                        revert with 0, 17
                                    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                        revert with 0, 17
                                    if 5 * t > !u:
                                        revert with 0, 17
                                    if not (5 * t) + u:
                                        revert with 0, 18
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18701 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18701] > !((t * _18653) - (u * _18653) / (5 * t) + u):
                                        revert with 0, 17
                                    if _14396 and mem[_18701] + ((t * _18653) - (u * _18653) / (5 * t) + u) > -1 / _14396:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14446):
                                        revert with 0, 18
                                    if _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446) and mem[_18701] + ((t * _18653) - (u * _18653) / (5 * t) + u) > -1 / _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14454):
                                        revert with 0, 18
                                    if (mem[_18701] * _14396) + ((t * _18653) - (u * _18653) / (5 * t) + u * _14396) / Mask(112, 0, _14446) < (mem[_18701] * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) + ((t * _18653) - (u * _18653) / (5 * t) + u * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) / Mask(112, 0, _14454):
                                        mem[mem[64]] = (mem[_18701] * _14396) + ((t * _18653) - (u * _18653) / (5 * t) + u * _14396) / Mask(112, 0, _14446)
                                    else:
                                        mem[mem[64]] = (mem[_18701] * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) + ((t * _18653) - (u * _18653) / (5 * t) + u * _14396 * Mask(112, 0, _14454) / Mask(112, 0, _14446)) / Mask(112, 0, _14454)
                else:
                    if _14426 <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                    if mem[_14438 + 50 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if mem[_14438 + 18 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if _14426 and mem[_14438 + 18 len 14] > -1 / _14426:
                        revert with 0, 17
                    if not mem[_14438 + 50 len 14]:
                        revert with 0, 18
                    if _14426 * mem[_14438 + 18 len 14] / mem[_14438 + 50 len 14] > _14396:
                        revert with 0, 1
                    require ext_code.size(stor1)
                    staticcall stor1.kLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14646 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_14646]:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14740 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_14740] > -1:
                            revert with 0, 17
                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) and mem[_14740] > -1 / _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454):
                            revert with 0, 17
                        if not Mask(112, 0, _14446):
                            revert with 0, 18
                        if _14426 and mem[_14740] > -1 / _14426:
                            revert with 0, 17
                        if not Mask(112, 0, _14454):
                            revert with 0, 18
                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_14740] / Mask(112, 0, _14446) < _14426 * mem[_14740] / Mask(112, 0, _14454):
                            mem[mem[64]] = _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_14740] / Mask(112, 0, _14446)
                        else:
                            mem[mem[64]] = _14426 * mem[_14740] / Mask(112, 0, _14454)
                    else:
                        if Mask(112, 0, _14446) and Mask(112, 0, _14454) > -1 / Mask(112, 0, _14446):
                            revert with 0, 17
                        if Mask(112, 0, _14446) * Mask(112, 0, _14454) <= 3:
                            if not Mask(112, 0, _14446) * Mask(112, 0, _14454):
                                if mem[_14646] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not mem[_14646]:
                                        _15194 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15194] > -1:
                                            revert with 0, 17
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) and mem[_15194] > -1 / _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14426 and mem[_15194] > -1 / _14426:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_15194] / Mask(112, 0, _14446) < _14426 * mem[_15194] / Mask(112, 0, _14454):
                                            mem[mem[64]] = _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_15194] / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = _14426 * mem[_15194] / Mask(112, 0, _14454)
                                    else:
                                        _15220 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15220] > -1:
                                            revert with 0, 17
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) and mem[_15220] > -1 / _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14426 and mem[_15220] > -1 / _14426:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_15220] / Mask(112, 0, _14446) < _14426 * mem[_15220] / Mask(112, 0, _14454):
                                            mem[mem[64]] = _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_15220] / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = _14426 * mem[_15220] / Mask(112, 0, _14454)
                                else:
                                    if 1 > !(mem[_14646] / 2):
                                        revert with 0, 17
                                    s = (mem[_14646] / 2) + 1
                                    t = mem[_14646]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14646] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14646] / s) + s / 2
                                        t = s
                                        continue 
                                    if 0 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17080 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17080] > -1:
                                            revert with 0, 17
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) and mem[_17080] > -1 / _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14426 and mem[_17080] > -1 / _14426:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_17080] / Mask(112, 0, _14446) < _14426 * mem[_17080] / Mask(112, 0, _14454):
                                            mem[mem[64]] = _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_17080] / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = _14426 * mem[_17080] / Mask(112, 0, _14454)
                                    else:
                                        if 0 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17112 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17256 = mem[_17112]
                                        if mem[_17112] and -t > -1 / mem[_17112]:
                                            revert with 0, 17
                                        if 0 > !t:
                                            revert with 0, 17
                                        if not t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17656 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17656] > !(-1 * _17256 * t / t):
                                            revert with 0, 17
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) and mem[_17656] + (-1 * _17256 * t / t) > -1 / _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14426 and mem[_17656] + (-1 * _17256 * t / t) > -1 / _14426:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if (mem[_17656] * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) + (-1 * _17256 * t / t * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) / Mask(112, 0, _14446) < (mem[_17656] * _14426) + (-1 * _17256 * t / t * _14426) / Mask(112, 0, _14454):
                                            mem[mem[64]] = (mem[_17656] * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) + (-1 * _17256 * t / t * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = (mem[_17656] * _14426) + (-1 * _17256 * t / t * _14426) / Mask(112, 0, _14454)
                            else:
                                if mem[_14646] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_14646]:
                                        _15250 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15250] > -1:
                                            revert with 0, 17
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) and mem[_15250] > -1 / _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14426 and mem[_15250] > -1 / _14426:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_15250] / Mask(112, 0, _14446) < _14426 * mem[_15250] / Mask(112, 0, _14454):
                                            mem[mem[64]] = _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_15250] / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = _14426 * mem[_15250] / Mask(112, 0, _14454)
                                    else:
                                        _15249 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _15290 = mem[_15249]
                                        if mem[_15249] and 1 > -1 / mem[_15249]:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _16083 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_16083] > !(_15290 / 5):
                                            revert with 0, 17
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) and mem[_16083] + (_15290 / 5) > -1 / _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14426 and mem[_16083] + (_15290 / 5) > -1 / _14426:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if (mem[_16083] * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) + (_15290 / 5 * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) / Mask(112, 0, _14446) < (mem[_16083] * _14426) + (_15290 / 5 * _14426) / Mask(112, 0, _14454):
                                            mem[mem[64]] = (mem[_16083] * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) + (_15290 / 5 * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = (mem[_16083] * _14426) + (_15290 / 5 * _14426) / Mask(112, 0, _14454)
                                else:
                                    if 1 > !(mem[_14646] / 2):
                                        revert with 0, 17
                                    s = (mem[_14646] / 2) + 1
                                    t = mem[_14646]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14646] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14646] / s) + s / 2
                                        t = s
                                        continue 
                                    if 1 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17081 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17081] > -1:
                                            revert with 0, 17
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) and mem[_17081] > -1 / _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14426 and mem[_17081] > -1 / _14426:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_17081] / Mask(112, 0, _14446) < _14426 * mem[_17081] / Mask(112, 0, _14454):
                                            mem[mem[64]] = _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_17081] / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = _14426 * mem[_17081] / Mask(112, 0, _14454)
                                    else:
                                        if 1 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17113 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17257 = mem[_17113]
                                        if mem[_17113] and -t + 1 > -1 / mem[_17113]:
                                            revert with 0, 17
                                        if 5 > !t:
                                            revert with 0, 17
                                        if not t + 5:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17657 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17657] > !(_17257 - (t * _17257) / t + 5):
                                            revert with 0, 17
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) and mem[_17657] + (_17257 - (t * _17257) / t + 5) > -1 / _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14426 and mem[_17657] + (_17257 - (t * _17257) / t + 5) > -1 / _14426:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if (mem[_17657] * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) + (_17257 - (t * _17257) / t + 5 * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) / Mask(112, 0, _14446) < (mem[_17657] * _14426) + (_17257 - (t * _17257) / t + 5 * _14426) / Mask(112, 0, _14454):
                                            mem[mem[64]] = (mem[_17657] * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) + (_17257 - (t * _17257) / t + 5 * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = (mem[_17657] * _14426) + (_17257 - (t * _17257) / t + 5 * _14426) / Mask(112, 0, _14454)
                        else:
                            if 1 > !(Mask(112, 0, _14446) * Mask(112, 0, _14454) / 2):
                                revert with 0, 17
                            s = (Mask(112, 0, _14446) * Mask(112, 0, _14454) / 2) + 1
                            t = Mask(112, 0, _14446) * Mask(112, 0, _14454)
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if Mask(112, 0, _14446) * Mask(112, 0, _14454) / s > !s:
                                    revert with 0, 17
                                s = (Mask(112, 0, _14446) * Mask(112, 0, _14454) / s) + s / 2
                                t = s
                                continue 
                            if mem[_14646] <= 3:
                                if not mem[_14646]:
                                    if t <= 0:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17316 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17316] > -1:
                                            revert with 0, 17
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) and mem[_17316] > -1 / _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14426 and mem[_17316] > -1 / _14426:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_17316] / Mask(112, 0, _14446) < _14426 * mem[_17316] / Mask(112, 0, _14454):
                                            mem[mem[64]] = _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_17316] / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = _14426 * mem[_17316] / Mask(112, 0, _14454)
                                    else:
                                        if t < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17352 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17416 = mem[_17352]
                                        if mem[_17352] and t > -1 / mem[_17352]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -1:
                                            revert with 0, 17
                                        if not 5 * t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17900 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17900] > !(_17416 * t / 5 * t):
                                            revert with 0, 17
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) and mem[_17900] + (_17416 * t / 5 * t) > -1 / _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14426 and mem[_17900] + (_17416 * t / 5 * t) > -1 / _14426:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if (mem[_17900] * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) + (_17416 * t / 5 * t * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) / Mask(112, 0, _14446) < (mem[_17900] * _14426) + (_17416 * t / 5 * t * _14426) / Mask(112, 0, _14454):
                                            mem[mem[64]] = (mem[_17900] * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) + (_17416 * t / 5 * t * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = (mem[_17900] * _14426) + (_17416 * t / 5 * t * _14426) / Mask(112, 0, _14454)
                                else:
                                    if t <= 1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17353 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17353] > -1:
                                            revert with 0, 17
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) and mem[_17353] > -1 / _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14426 and mem[_17353] > -1 / _14426:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_17353] / Mask(112, 0, _14446) < _14426 * mem[_17353] / Mask(112, 0, _14454):
                                            mem[mem[64]] = _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_17353] / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = _14426 * mem[_17353] / Mask(112, 0, _14454)
                                    else:
                                        if t < 1:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17385 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17436 = mem[_17385]
                                        if mem[_17385] and t - 1 > -1 / mem[_17385]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -2:
                                            revert with 0, 17
                                        if not (5 * t) + 1:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17929 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17929] > !(-_17436 + (t * _17436) / (5 * t) + 1):
                                            revert with 0, 17
                                        if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) and mem[_17929] + (-_17436 + (t * _17436) / (5 * t) + 1) > -1 / _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14446):
                                            revert with 0, 18
                                        if _14426 and mem[_17929] + (-_17436 + (t * _17436) / (5 * t) + 1) > -1 / _14426:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14454):
                                            revert with 0, 18
                                        if (mem[_17929] * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) + (-_17436 + (t * _17436) / (5 * t) + 1 * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) / Mask(112, 0, _14446) < (mem[_17929] * _14426) + (-_17436 + (t * _17436) / (5 * t) + 1 * _14426) / Mask(112, 0, _14454):
                                            mem[mem[64]] = (mem[_17929] * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) + (-_17436 + (t * _17436) / (5 * t) + 1 * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) / Mask(112, 0, _14446)
                                        else:
                                            mem[mem[64]] = (mem[_17929] * _14426) + (-_17436 + (t * _17436) / (5 * t) + 1 * _14426) / Mask(112, 0, _14454)
                            else:
                                if 1 > !(mem[_14646] / 2):
                                    revert with 0, 17
                                s = (mem[_14646] / 2) + 1
                                u = mem[_14646]
                                while s < u:
                                    if not s:
                                        revert with 0, 18
                                    if mem[_14646] / s > !s:
                                        revert with 0, 17
                                    s = (mem[_14646] / s) + s / 2
                                    u = s
                                    continue 
                                if t <= u:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18604 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18604] > -1:
                                        revert with 0, 17
                                    if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) and mem[_18604] > -1 / _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14446):
                                        revert with 0, 18
                                    if _14426 and mem[_18604] > -1 / _14426:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14454):
                                        revert with 0, 18
                                    if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_18604] / Mask(112, 0, _14446) < _14426 * mem[_18604] / Mask(112, 0, _14454):
                                        mem[mem[64]] = _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) * mem[_18604] / Mask(112, 0, _14446)
                                    else:
                                        mem[mem[64]] = _14426 * mem[_18604] / Mask(112, 0, _14454)
                                else:
                                    if t < u:
                                        revert with 0, 17
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18620 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _18652 = mem[_18620]
                                    if mem[_18620] and t - u > -1 / mem[_18620]:
                                        revert with 0, 17
                                    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                        revert with 0, 17
                                    if 5 * t > !u:
                                        revert with 0, 17
                                    if not (5 * t) + u:
                                        revert with 0, 18
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18700 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18700] > !((t * _18652) - (u * _18652) / (5 * t) + u):
                                        revert with 0, 17
                                    if _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454) and mem[_18700] + ((t * _18652) - (u * _18652) / (5 * t) + u) > -1 / _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14446):
                                        revert with 0, 18
                                    if _14426 and mem[_18700] + ((t * _18652) - (u * _18652) / (5 * t) + u) > -1 / _14426:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14454):
                                        revert with 0, 18
                                    if (mem[_18700] * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) + ((t * _18652) - (u * _18652) / (5 * t) + u * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) / Mask(112, 0, _14446) < (mem[_18700] * _14426) + ((t * _18652) - (u * _18652) / (5 * t) + u * _14426) / Mask(112, 0, _14454):
                                        mem[mem[64]] = (mem[_18700] * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) + ((t * _18652) - (u * _18652) / (5 * t) + u * _14426 * Mask(112, 0, _14446) / Mask(112, 0, _14454)) / Mask(112, 0, _14446)
                                    else:
                                        mem[mem[64]] = (mem[_18700] * _14426) + ((t * _18652) - (u * _18652) / (5 * t) + u * _14426) / Mask(112, 0, _14454)
            else:
                _9092 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                mem[0] = address(_3743)
                if 0 >= mem[_9092]:
                    revert with 0, 50
                mem[_9092 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                mem[0] = address(_3743)
                mem[32] = 4
                if 1 >= mem[_9092]:
                    revert with 0, 50
                mem[_9092 + 64] = routePair[address(_3743)]
                if 2 >= mem[_9092]:
                    revert with 0, 50
                mem[_9092 + 96] = address(_3743)
                mem[_9092 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_9092 + 132] = _9059 - (_9047 / 2)
                mem[_9092 + 164] = 64
                mem[_9092 + 196] = mem[_9092]
                idx = 0
                s = _9092 + 32
                t = _9092 + 228
                while idx < mem[_9092]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _9092 + (32 * mem[_9092]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11767 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11775 = mem[_11767]
                require mem[_11767] <= test266151307()
                require _11767 + mem[_11767] + 31 < _11767 + return_data.size
                _11783 = mem[_11767 + mem[_11767]]
                if mem[_11767 + mem[_11767]] > test266151307():
                    revert with 0, 65
                if _11767 + ceil32(return_data.size) + ceil32(32 * mem[_11767 + mem[_11767]]) + 1 > test266151307() or ceil32(32 * mem[_11767 + mem[_11767]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _11767 + ceil32(return_data.size) + ceil32(32 * mem[_11767 + mem[_11767]]) + 1
                mem[_11767 + ceil32(return_data.size)] = _11783
                require (32 * _11783) + _11775 + 32 <= return_data.size
                mem[_11767 + ceil32(return_data.size) + 32 len ceil32(32 * _11783)] = mem[_11767 + _11775 + 32 len ceil32(32 * _11783)]
                if mem[_6307 + ceil32(return_data.size)] < 1:
                    revert with 0, 17
                if mem[_6307 + ceil32(return_data.size)] - 1 >= mem[_6307 + ceil32(return_data.size)]:
                    revert with 0, 50
                _14398 = mem[(32 * mem[_6307 + ceil32(return_data.size)] - 1) + _6307 + ceil32(return_data.size) + 32]
                if _11783 < 1:
                    revert with 0, 17
                if _11783 - 1 >= _11783:
                    revert with 0, 50
                _14429 = mem[(32 * _11783 - 1) + _11767 + ceil32(return_data.size) + 32]
                require ext_code.size(stor1)
                staticcall stor1.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14439 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _14447 = mem[_14439]
                require mem[_14439] == mem[_14439 + 18 len 14]
                _14455 = mem[_14439 + 32]
                require mem[_14439 + 32] == mem[_14439 + 50 len 14]
                require mem[_14439 + 64] == mem[_14439 + 92 len 4]
                if _14398 <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                if mem[_14439 + 18 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if mem[_14439 + 50 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if _14398 and mem[_14439 + 50 len 14] > -1 / _14398:
                    revert with 0, 17
                if not mem[_14439 + 18 len 14]:
                    revert with 0, 18
                if _14398 * mem[_14439 + 50 len 14] / mem[_14439 + 18 len 14] <= _14429:
                    require ext_code.size(stor1)
                    staticcall stor1.kLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14559 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_14559]:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14615 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_14615] > -1:
                            revert with 0, 17
                        if _14398 and mem[_14615] > -1 / _14398:
                            revert with 0, 17
                        if not Mask(112, 0, _14447):
                            revert with 0, 18
                        if _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) and mem[_14615] > -1 / _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447):
                            revert with 0, 17
                        if not Mask(112, 0, _14455):
                            revert with 0, 18
                        if _14398 * mem[_14615] / Mask(112, 0, _14447) < _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_14615] / Mask(112, 0, _14455):
                            mem[mem[64]] = _14398 * mem[_14615] / Mask(112, 0, _14447)
                        else:
                            mem[mem[64]] = _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_14615] / Mask(112, 0, _14455)
                    else:
                        if Mask(112, 0, _14447) and Mask(112, 0, _14455) > -1 / Mask(112, 0, _14447):
                            revert with 0, 17
                        if Mask(112, 0, _14447) * Mask(112, 0, _14455) <= 3:
                            if not Mask(112, 0, _14447) * Mask(112, 0, _14455):
                                if mem[_14559] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not mem[_14559]:
                                        _14747 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14747] > -1:
                                            revert with 0, 17
                                        if _14398 and mem[_14747] > -1 / _14398:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) and mem[_14747] > -1 / _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if _14398 * mem[_14747] / Mask(112, 0, _14447) < _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_14747] / Mask(112, 0, _14455):
                                            mem[mem[64]] = _14398 * mem[_14747] / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_14747] / Mask(112, 0, _14455)
                                    else:
                                        _14759 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14759] > -1:
                                            revert with 0, 17
                                        if _14398 and mem[_14759] > -1 / _14398:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) and mem[_14759] > -1 / _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if _14398 * mem[_14759] / Mask(112, 0, _14447) < _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_14759] / Mask(112, 0, _14455):
                                            mem[mem[64]] = _14398 * mem[_14759] / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_14759] / Mask(112, 0, _14455)
                                else:
                                    if 1 > !(mem[_14559] / 2):
                                        revert with 0, 17
                                    s = (mem[_14559] / 2) + 1
                                    t = mem[_14559]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14559] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14559] / s) + s / 2
                                        t = s
                                        continue 
                                    if 0 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17086 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17086] > -1:
                                            revert with 0, 17
                                        if _14398 and mem[_17086] > -1 / _14398:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) and mem[_17086] > -1 / _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if _14398 * mem[_17086] / Mask(112, 0, _14447) < _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_17086] / Mask(112, 0, _14455):
                                            mem[mem[64]] = _14398 * mem[_17086] / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_17086] / Mask(112, 0, _14455)
                                    else:
                                        if 0 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17118 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17274 = mem[_17118]
                                        if mem[_17118] and -t > -1 / mem[_17118]:
                                            revert with 0, 17
                                        if 0 > !t:
                                            revert with 0, 17
                                        if not t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17662 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17662] > !(-1 * _17274 * t / t):
                                            revert with 0, 17
                                        if _14398 and mem[_17662] + (-1 * _17274 * t / t) > -1 / _14398:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) and mem[_17662] + (-1 * _17274 * t / t) > -1 / _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if (mem[_17662] * _14398) + (-1 * _17274 * t / t * _14398) / Mask(112, 0, _14447) < (mem[_17662] * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) + (-1 * _17274 * t / t * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) / Mask(112, 0, _14455):
                                            mem[mem[64]] = (mem[_17662] * _14398) + (-1 * _17274 * t / t * _14398) / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = (mem[_17662] * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) + (-1 * _17274 * t / t * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) / Mask(112, 0, _14455)
                            else:
                                if mem[_14559] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_14559]:
                                        _14791 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_14791] > -1:
                                            revert with 0, 17
                                        if _14398 and mem[_14791] > -1 / _14398:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) and mem[_14791] > -1 / _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if _14398 * mem[_14791] / Mask(112, 0, _14447) < _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_14791] / Mask(112, 0, _14455):
                                            mem[mem[64]] = _14398 * mem[_14791] / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_14791] / Mask(112, 0, _14455)
                                    else:
                                        _14790 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _14814 = mem[_14790]
                                        if mem[_14790] and 1 > -1 / mem[_14790]:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _15543 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15543] > !(_14814 / 5):
                                            revert with 0, 17
                                        if _14398 and mem[_15543] + (_14814 / 5) > -1 / _14398:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) and mem[_15543] + (_14814 / 5) > -1 / _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if (mem[_15543] * _14398) + (_14814 / 5 * _14398) / Mask(112, 0, _14447) < (mem[_15543] * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) + (_14814 / 5 * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) / Mask(112, 0, _14455):
                                            mem[mem[64]] = (mem[_15543] * _14398) + (_14814 / 5 * _14398) / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = (mem[_15543] * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) + (_14814 / 5 * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) / Mask(112, 0, _14455)
                                else:
                                    if 1 > !(mem[_14559] / 2):
                                        revert with 0, 17
                                    s = (mem[_14559] / 2) + 1
                                    t = mem[_14559]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14559] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14559] / s) + s / 2
                                        t = s
                                        continue 
                                    if 1 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17087 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17087] > -1:
                                            revert with 0, 17
                                        if _14398 and mem[_17087] > -1 / _14398:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) and mem[_17087] > -1 / _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if _14398 * mem[_17087] / Mask(112, 0, _14447) < _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_17087] / Mask(112, 0, _14455):
                                            mem[mem[64]] = _14398 * mem[_17087] / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_17087] / Mask(112, 0, _14455)
                                    else:
                                        if 1 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17119 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17275 = mem[_17119]
                                        if mem[_17119] and -t + 1 > -1 / mem[_17119]:
                                            revert with 0, 17
                                        if 5 > !t:
                                            revert with 0, 17
                                        if not t + 5:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17663 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17663] > !(_17275 - (t * _17275) / t + 5):
                                            revert with 0, 17
                                        if _14398 and mem[_17663] + (_17275 - (t * _17275) / t + 5) > -1 / _14398:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) and mem[_17663] + (_17275 - (t * _17275) / t + 5) > -1 / _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if (mem[_17663] * _14398) + (_17275 - (t * _17275) / t + 5 * _14398) / Mask(112, 0, _14447) < (mem[_17663] * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) + (_17275 - (t * _17275) / t + 5 * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) / Mask(112, 0, _14455):
                                            mem[mem[64]] = (mem[_17663] * _14398) + (_17275 - (t * _17275) / t + 5 * _14398) / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = (mem[_17663] * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) + (_17275 - (t * _17275) / t + 5 * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) / Mask(112, 0, _14455)
                        else:
                            if 1 > !(Mask(112, 0, _14447) * Mask(112, 0, _14455) / 2):
                                revert with 0, 17
                            s = (Mask(112, 0, _14447) * Mask(112, 0, _14455) / 2) + 1
                            t = Mask(112, 0, _14447) * Mask(112, 0, _14455)
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if Mask(112, 0, _14447) * Mask(112, 0, _14455) / s > !s:
                                    revert with 0, 17
                                s = (Mask(112, 0, _14447) * Mask(112, 0, _14455) / s) + s / 2
                                t = s
                                continue 
                            if mem[_14559] <= 3:
                                if not mem[_14559]:
                                    if t <= 0:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17325 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17325] > -1:
                                            revert with 0, 17
                                        if _14398 and mem[_17325] > -1 / _14398:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) and mem[_17325] > -1 / _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if _14398 * mem[_17325] / Mask(112, 0, _14447) < _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_17325] / Mask(112, 0, _14455):
                                            mem[mem[64]] = _14398 * mem[_17325] / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_17325] / Mask(112, 0, _14455)
                                    else:
                                        if t < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17358 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17422 = mem[_17358]
                                        if mem[_17358] and t > -1 / mem[_17358]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -1:
                                            revert with 0, 17
                                        if not 5 * t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17903 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17903] > !(_17422 * t / 5 * t):
                                            revert with 0, 17
                                        if _14398 and mem[_17903] + (_17422 * t / 5 * t) > -1 / _14398:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) and mem[_17903] + (_17422 * t / 5 * t) > -1 / _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if (mem[_17903] * _14398) + (_17422 * t / 5 * t * _14398) / Mask(112, 0, _14447) < (mem[_17903] * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) + (_17422 * t / 5 * t * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) / Mask(112, 0, _14455):
                                            mem[mem[64]] = (mem[_17903] * _14398) + (_17422 * t / 5 * t * _14398) / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = (mem[_17903] * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) + (_17422 * t / 5 * t * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) / Mask(112, 0, _14455)
                                else:
                                    if t <= 1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17359 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17359] > -1:
                                            revert with 0, 17
                                        if _14398 and mem[_17359] > -1 / _14398:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) and mem[_17359] > -1 / _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if _14398 * mem[_17359] / Mask(112, 0, _14447) < _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_17359] / Mask(112, 0, _14455):
                                            mem[mem[64]] = _14398 * mem[_17359] / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_17359] / Mask(112, 0, _14455)
                                    else:
                                        if t < 1:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17391 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17439 = mem[_17391]
                                        if mem[_17391] and t - 1 > -1 / mem[_17391]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -2:
                                            revert with 0, 17
                                        if not (5 * t) + 1:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17935 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17935] > !(-_17439 + (t * _17439) / (5 * t) + 1):
                                            revert with 0, 17
                                        if _14398 and mem[_17935] + (-_17439 + (t * _17439) / (5 * t) + 1) > -1 / _14398:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) and mem[_17935] + (-_17439 + (t * _17439) / (5 * t) + 1) > -1 / _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if (mem[_17935] * _14398) + (-_17439 + (t * _17439) / (5 * t) + 1 * _14398) / Mask(112, 0, _14447) < (mem[_17935] * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) + (-_17439 + (t * _17439) / (5 * t) + 1 * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) / Mask(112, 0, _14455):
                                            mem[mem[64]] = (mem[_17935] * _14398) + (-_17439 + (t * _17439) / (5 * t) + 1 * _14398) / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = (mem[_17935] * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) + (-_17439 + (t * _17439) / (5 * t) + 1 * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) / Mask(112, 0, _14455)
                            else:
                                if 1 > !(mem[_14559] / 2):
                                    revert with 0, 17
                                s = (mem[_14559] / 2) + 1
                                u = mem[_14559]
                                while s < u:
                                    if not s:
                                        revert with 0, 18
                                    if mem[_14559] / s > !s:
                                        revert with 0, 17
                                    s = (mem[_14559] / s) + s / 2
                                    u = s
                                    continue 
                                if t <= u:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18607 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18607] > -1:
                                        revert with 0, 17
                                    if _14398 and mem[_18607] > -1 / _14398:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14447):
                                        revert with 0, 18
                                    if _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) and mem[_18607] > -1 / _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14455):
                                        revert with 0, 18
                                    if _14398 * mem[_18607] / Mask(112, 0, _14447) < _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_18607] / Mask(112, 0, _14455):
                                        mem[mem[64]] = _14398 * mem[_18607] / Mask(112, 0, _14447)
                                    else:
                                        mem[mem[64]] = _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) * mem[_18607] / Mask(112, 0, _14455)
                                else:
                                    if t < u:
                                        revert with 0, 17
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18623 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _18655 = mem[_18623]
                                    if mem[_18623] and t - u > -1 / mem[_18623]:
                                        revert with 0, 17
                                    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                        revert with 0, 17
                                    if 5 * t > !u:
                                        revert with 0, 17
                                    if not (5 * t) + u:
                                        revert with 0, 18
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18703 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18703] > !((t * _18655) - (u * _18655) / (5 * t) + u):
                                        revert with 0, 17
                                    if _14398 and mem[_18703] + ((t * _18655) - (u * _18655) / (5 * t) + u) > -1 / _14398:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14447):
                                        revert with 0, 18
                                    if _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447) and mem[_18703] + ((t * _18655) - (u * _18655) / (5 * t) + u) > -1 / _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14455):
                                        revert with 0, 18
                                    if (mem[_18703] * _14398) + ((t * _18655) - (u * _18655) / (5 * t) + u * _14398) / Mask(112, 0, _14447) < (mem[_18703] * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) + ((t * _18655) - (u * _18655) / (5 * t) + u * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) / Mask(112, 0, _14455):
                                        mem[mem[64]] = (mem[_18703] * _14398) + ((t * _18655) - (u * _18655) / (5 * t) + u * _14398) / Mask(112, 0, _14447)
                                    else:
                                        mem[mem[64]] = (mem[_18703] * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) + ((t * _18655) - (u * _18655) / (5 * t) + u * _14398 * Mask(112, 0, _14455) / Mask(112, 0, _14447)) / Mask(112, 0, _14455)
                else:
                    if _14429 <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_AMOUNT'
                    if mem[_14439 + 50 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if mem[_14439 + 18 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if _14429 and mem[_14439 + 18 len 14] > -1 / _14429:
                        revert with 0, 17
                    if not mem[_14439 + 50 len 14]:
                        revert with 0, 18
                    if _14429 * mem[_14439 + 18 len 14] / mem[_14439 + 50 len 14] > _14398:
                        revert with 0, 1
                    require ext_code.size(stor1)
                    staticcall stor1.kLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14647 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_14647]:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14746 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_14746] > -1:
                            revert with 0, 17
                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) and mem[_14746] > -1 / _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455):
                            revert with 0, 17
                        if not Mask(112, 0, _14447):
                            revert with 0, 18
                        if _14429 and mem[_14746] > -1 / _14429:
                            revert with 0, 17
                        if not Mask(112, 0, _14455):
                            revert with 0, 18
                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_14746] / Mask(112, 0, _14447) < _14429 * mem[_14746] / Mask(112, 0, _14455):
                            mem[mem[64]] = _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_14746] / Mask(112, 0, _14447)
                        else:
                            mem[mem[64]] = _14429 * mem[_14746] / Mask(112, 0, _14455)
                    else:
                        if Mask(112, 0, _14447) and Mask(112, 0, _14455) > -1 / Mask(112, 0, _14447):
                            revert with 0, 17
                        if Mask(112, 0, _14447) * Mask(112, 0, _14455) <= 3:
                            if not Mask(112, 0, _14447) * Mask(112, 0, _14455):
                                if mem[_14647] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not mem[_14647]:
                                        _15201 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15201] > -1:
                                            revert with 0, 17
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) and mem[_15201] > -1 / _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14429 and mem[_15201] > -1 / _14429:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_15201] / Mask(112, 0, _14447) < _14429 * mem[_15201] / Mask(112, 0, _14455):
                                            mem[mem[64]] = _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_15201] / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = _14429 * mem[_15201] / Mask(112, 0, _14455)
                                    else:
                                        _15222 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15222] > -1:
                                            revert with 0, 17
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) and mem[_15222] > -1 / _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14429 and mem[_15222] > -1 / _14429:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_15222] / Mask(112, 0, _14447) < _14429 * mem[_15222] / Mask(112, 0, _14455):
                                            mem[mem[64]] = _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_15222] / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = _14429 * mem[_15222] / Mask(112, 0, _14455)
                                else:
                                    if 1 > !(mem[_14647] / 2):
                                        revert with 0, 17
                                    s = (mem[_14647] / 2) + 1
                                    t = mem[_14647]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14647] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14647] / s) + s / 2
                                        t = s
                                        continue 
                                    if 0 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17084 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17084] > -1:
                                            revert with 0, 17
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) and mem[_17084] > -1 / _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14429 and mem[_17084] > -1 / _14429:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_17084] / Mask(112, 0, _14447) < _14429 * mem[_17084] / Mask(112, 0, _14455):
                                            mem[mem[64]] = _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_17084] / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = _14429 * mem[_17084] / Mask(112, 0, _14455)
                                    else:
                                        if 0 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17116 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17268 = mem[_17116]
                                        if mem[_17116] and -t > -1 / mem[_17116]:
                                            revert with 0, 17
                                        if 0 > !t:
                                            revert with 0, 17
                                        if not t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17660 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17660] > !(-1 * _17268 * t / t):
                                            revert with 0, 17
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) and mem[_17660] + (-1 * _17268 * t / t) > -1 / _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14429 and mem[_17660] + (-1 * _17268 * t / t) > -1 / _14429:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if (mem[_17660] * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) + (-1 * _17268 * t / t * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) / Mask(112, 0, _14447) < (mem[_17660] * _14429) + (-1 * _17268 * t / t * _14429) / Mask(112, 0, _14455):
                                            mem[mem[64]] = (mem[_17660] * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) + (-1 * _17268 * t / t * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = (mem[_17660] * _14429) + (-1 * _17268 * t / t * _14429) / Mask(112, 0, _14455)
                            else:
                                if mem[_14647] <= 3:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_14647]:
                                        _15254 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_15254] > -1:
                                            revert with 0, 17
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) and mem[_15254] > -1 / _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14429 and mem[_15254] > -1 / _14429:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_15254] / Mask(112, 0, _14447) < _14429 * mem[_15254] / Mask(112, 0, _14455):
                                            mem[mem[64]] = _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_15254] / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = _14429 * mem[_15254] / Mask(112, 0, _14455)
                                    else:
                                        _15253 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _15293 = mem[_15253]
                                        if mem[_15253] and 1 > -1 / mem[_15253]:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _16086 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_16086] > !(_15293 / 5):
                                            revert with 0, 17
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) and mem[_16086] + (_15293 / 5) > -1 / _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14429 and mem[_16086] + (_15293 / 5) > -1 / _14429:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if (mem[_16086] * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) + (_15293 / 5 * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) / Mask(112, 0, _14447) < (mem[_16086] * _14429) + (_15293 / 5 * _14429) / Mask(112, 0, _14455):
                                            mem[mem[64]] = (mem[_16086] * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) + (_15293 / 5 * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = (mem[_16086] * _14429) + (_15293 / 5 * _14429) / Mask(112, 0, _14455)
                                else:
                                    if 1 > !(mem[_14647] / 2):
                                        revert with 0, 17
                                    s = (mem[_14647] / 2) + 1
                                    t = mem[_14647]
                                    while s < t:
                                        if not s:
                                            revert with 0, 18
                                        if mem[_14647] / s > !s:
                                            revert with 0, 17
                                        s = (mem[_14647] / s) + s / 2
                                        t = s
                                        continue 
                                    if 1 <= t:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17085 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17085] > -1:
                                            revert with 0, 17
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) and mem[_17085] > -1 / _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14429 and mem[_17085] > -1 / _14429:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_17085] / Mask(112, 0, _14447) < _14429 * mem[_17085] / Mask(112, 0, _14455):
                                            mem[mem[64]] = _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_17085] / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = _14429 * mem[_17085] / Mask(112, 0, _14455)
                                    else:
                                        if 1 < t:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17117 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17269 = mem[_17117]
                                        if mem[_17117] and -t + 1 > -1 / mem[_17117]:
                                            revert with 0, 17
                                        if 5 > !t:
                                            revert with 0, 17
                                        if not t + 5:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17661 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17661] > !(_17269 - (t * _17269) / t + 5):
                                            revert with 0, 17
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) and mem[_17661] + (_17269 - (t * _17269) / t + 5) > -1 / _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14429 and mem[_17661] + (_17269 - (t * _17269) / t + 5) > -1 / _14429:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if (mem[_17661] * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) + (_17269 - (t * _17269) / t + 5 * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) / Mask(112, 0, _14447) < (mem[_17661] * _14429) + (_17269 - (t * _17269) / t + 5 * _14429) / Mask(112, 0, _14455):
                                            mem[mem[64]] = (mem[_17661] * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) + (_17269 - (t * _17269) / t + 5 * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = (mem[_17661] * _14429) + (_17269 - (t * _17269) / t + 5 * _14429) / Mask(112, 0, _14455)
                        else:
                            if 1 > !(Mask(112, 0, _14447) * Mask(112, 0, _14455) / 2):
                                revert with 0, 17
                            s = (Mask(112, 0, _14447) * Mask(112, 0, _14455) / 2) + 1
                            t = Mask(112, 0, _14447) * Mask(112, 0, _14455)
                            while s < t:
                                if not s:
                                    revert with 0, 18
                                if Mask(112, 0, _14447) * Mask(112, 0, _14455) / s > !s:
                                    revert with 0, 17
                                s = (Mask(112, 0, _14447) * Mask(112, 0, _14455) / s) + s / 2
                                t = s
                                continue 
                            if mem[_14647] <= 3:
                                if not mem[_14647]:
                                    if t <= 0:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17322 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17322] > -1:
                                            revert with 0, 17
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) and mem[_17322] > -1 / _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14429 and mem[_17322] > -1 / _14429:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_17322] / Mask(112, 0, _14447) < _14429 * mem[_17322] / Mask(112, 0, _14455):
                                            mem[mem[64]] = _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_17322] / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = _14429 * mem[_17322] / Mask(112, 0, _14455)
                                    else:
                                        if t < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17356 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17420 = mem[_17356]
                                        if mem[_17356] and t > -1 / mem[_17356]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -1:
                                            revert with 0, 17
                                        if not 5 * t:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17902 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17902] > !(_17420 * t / 5 * t):
                                            revert with 0, 17
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) and mem[_17902] + (_17420 * t / 5 * t) > -1 / _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14429 and mem[_17902] + (_17420 * t / 5 * t) > -1 / _14429:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if (mem[_17902] * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) + (_17420 * t / 5 * t * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) / Mask(112, 0, _14447) < (mem[_17902] * _14429) + (_17420 * t / 5 * t * _14429) / Mask(112, 0, _14455):
                                            mem[mem[64]] = (mem[_17902] * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) + (_17420 * t / 5 * t * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = (mem[_17902] * _14429) + (_17420 * t / 5 * t * _14429) / Mask(112, 0, _14455)
                                else:
                                    if t <= 1:
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17357 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17357] > -1:
                                            revert with 0, 17
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) and mem[_17357] > -1 / _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14429 and mem[_17357] > -1 / _14429:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_17357] / Mask(112, 0, _14447) < _14429 * mem[_17357] / Mask(112, 0, _14455):
                                            mem[mem[64]] = _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_17357] / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = _14429 * mem[_17357] / Mask(112, 0, _14455)
                                    else:
                                        if t < 1:
                                            revert with 0, 17
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17389 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _17438 = mem[_17389]
                                        if mem[_17389] and t - 1 > -1 / mem[_17389]:
                                            revert with 0, 17
                                        if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                            revert with 0, 17
                                        if 5 * t > -2:
                                            revert with 0, 17
                                        if not (5 * t) + 1:
                                            revert with 0, 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17933 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17933] > !(-_17438 + (t * _17438) / (5 * t) + 1):
                                            revert with 0, 17
                                        if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) and mem[_17933] + (-_17438 + (t * _17438) / (5 * t) + 1) > -1 / _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455):
                                            revert with 0, 17
                                        if not Mask(112, 0, _14447):
                                            revert with 0, 18
                                        if _14429 and mem[_17933] + (-_17438 + (t * _17438) / (5 * t) + 1) > -1 / _14429:
                                            revert with 0, 17
                                        if not Mask(112, 0, _14455):
                                            revert with 0, 18
                                        if (mem[_17933] * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) + (-_17438 + (t * _17438) / (5 * t) + 1 * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) / Mask(112, 0, _14447) < (mem[_17933] * _14429) + (-_17438 + (t * _17438) / (5 * t) + 1 * _14429) / Mask(112, 0, _14455):
                                            mem[mem[64]] = (mem[_17933] * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) + (-_17438 + (t * _17438) / (5 * t) + 1 * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) / Mask(112, 0, _14447)
                                        else:
                                            mem[mem[64]] = (mem[_17933] * _14429) + (-_17438 + (t * _17438) / (5 * t) + 1 * _14429) / Mask(112, 0, _14455)
                            else:
                                if 1 > !(mem[_14647] / 2):
                                    revert with 0, 17
                                s = (mem[_14647] / 2) + 1
                                u = mem[_14647]
                                while s < u:
                                    if not s:
                                        revert with 0, 18
                                    if mem[_14647] / s > !s:
                                        revert with 0, 17
                                    s = (mem[_14647] / s) + s / 2
                                    u = s
                                    continue 
                                if t <= u:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18606 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18606] > -1:
                                        revert with 0, 17
                                    if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) and mem[_18606] > -1 / _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14447):
                                        revert with 0, 18
                                    if _14429 and mem[_18606] > -1 / _14429:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14455):
                                        revert with 0, 18
                                    if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_18606] / Mask(112, 0, _14447) < _14429 * mem[_18606] / Mask(112, 0, _14455):
                                        mem[mem[64]] = _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) * mem[_18606] / Mask(112, 0, _14447)
                                    else:
                                        mem[mem[64]] = _14429 * mem[_18606] / Mask(112, 0, _14455)
                                else:
                                    if t < u:
                                        revert with 0, 17
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18622 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _18654 = mem[_18622]
                                    if mem[_18622] and t - u > -1 / mem[_18622]:
                                        revert with 0, 17
                                    if t > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                        revert with 0, 17
                                    if 5 * t > !u:
                                        revert with 0, 17
                                    if not (5 * t) + u:
                                        revert with 0, 18
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18702 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_18702] > !((t * _18654) - (u * _18654) / (5 * t) + u):
                                        revert with 0, 17
                                    if _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455) and mem[_18702] + ((t * _18654) - (u * _18654) / (5 * t) + u) > -1 / _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455):
                                        revert with 0, 17
                                    if not Mask(112, 0, _14447):
                                        revert with 0, 18
                                    if _14429 and mem[_18702] + ((t * _18654) - (u * _18654) / (5 * t) + u) > -1 / _14429:
                                        revert with 0, 17
                                    if not Mask(112, 0, _14455):
                                        revert with 0, 18
                                    if (mem[_18702] * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) + ((t * _18654) - (u * _18654) / (5 * t) + u * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) / Mask(112, 0, _14447) < (mem[_18702] * _14429) + ((t * _18654) - (u * _18654) / (5 * t) + u * _14429) / Mask(112, 0, _14455):
                                        mem[mem[64]] = (mem[_18702] * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) + ((t * _18654) - (u * _18654) / (5 * t) + u * _14429 * Mask(112, 0, _14447) / Mask(112, 0, _14455)) / Mask(112, 0, _14447)
                                    else:
                                        mem[mem[64]] = (mem[_18702] * _14429) + ((t * _18654) - (u * _18654) / (5 * t) + u * _14429) / Mask(112, 0, _14455)
    return memory
      from mem[64]
       len 32
}



}
