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

function sweep() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < tokens.length:
        mem[0] = 3
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
                mem[0] = 3
                if 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == tokens[idx]:
                    mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _55
                    require ext_code.size(tokens[idx])
                    call tokens[idx].withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args _55
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[0] = tokens[idx]
                    mem[32] = 2
                    if not routePair[stor3[idx]]:
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
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
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
                        mem[32] = 2
                        if 1 >= mem[_63]:
                            revert with 0, 50
                        mem[_63 + 64] = routePair[stor3[idx]]
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
                        require ext_code.size(stor1)
                        call stor1.mem[mem[64] len 4] with:
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



}
