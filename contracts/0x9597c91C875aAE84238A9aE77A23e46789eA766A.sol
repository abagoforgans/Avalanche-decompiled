contract main {




// =====================  Runtime code  =====================


#
#  - revokeAllowance(address arg1, address arg2)
#  - recoverERC20(address arg1, uint256 arg2)
#
address owner;
array of address stor1;
array of uint256 name;
uint32 stor3;
address vaultAddress;
uint256 stor3;
mapping of uint128 stor4;
mapping of struct stor5;

function name() {
    return name[0 len name.length]
}

function swapGasEstimate() {
    return stor1.length
}

function owner() {
    return owner
}

function vault() {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function setAllowances() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSwapGasEstimate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    stor1.length = arg1
    emit 0xf43f23b7: arg1, this.address
}

function recoverAVAX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'YakAdapter: Nothing to recover'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recovered(address arg1, uint256 arg2):
                   arg1,
    emit 0x0: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a204e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getPools(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[64] = (32 * uint256(stor5[address(arg1)][address(arg2)].field_0)) + 128
    mem[96] = uint256(stor5[address(arg1)][address(arg2)].field_0)
    if not uint256(stor5[address(arg1)][address(arg2)].field_0):
        mem[(32 * uint256(stor5[address(arg1)][address(arg2)].field_0)) + 128] = 32
        mem[(32 * uint256(stor5[address(arg1)][address(arg2)].field_0)) + 160] = uint256(stor5[address(arg1)][address(arg2)].field_0)
        idx = 0
        s = (32 * uint256(stor5[address(arg1)][address(arg2)].field_0)) + 192
        t = 128
        while idx < uint256(stor5[address(arg1)][address(arg2)].field_0):
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * uint256(stor5[address(arg1)][address(arg2)].field_0)) + 128
           len (96 * uint256(stor5[address(arg1)][address(arg2)].field_0)) + 64
    mem[128] = address(stor5[address(arg1)][address(arg2)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(stor5[address(arg1)][address(arg2)].field_0)) + 96 > idx:
        mem[idx + 32] = address(stor5[address(arg1)][address(arg2)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(stor5[address(arg1)][address(arg2)].field_0)) + 128] = 32
    mem[(32 * uint256(stor5[address(arg1)][address(arg2)].field_0)) + 160] = uint256(stor5[address(arg1)][address(arg2)].field_0)
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < uint256(stor5[address(arg1)][address(arg2)].field_0):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * uint256(stor5[address(arg1)][address(arg2)].field_0)) + -mem[64] + 192
}

function addPools(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    idx = 0
    while uint128(idx) < arg1.length:
        require uint128(idx) < mem[96]
        _58 = mem[(32 * uint128(idx)) + 128]
        require ext_code.size(mem[(32 * uint128(idx)) + 140 len 20])
        staticcall mem[(32 * uint128(idx)) + 140 len 20].getPoolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _62 = mem[_61]
        mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _62
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                gas gas_remaining wei
               args _62
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _66 = mem[_65]
        require mem[_65] <= test266151307()
        require _65 + mem[_65] + 31 < _65 + return_data.size
        _67 = mem[_65 + mem[_65]]
        require mem[_65 + mem[_65]] <= test266151307()
        require (32 * mem[_65 + mem[_65]]) + 32 >= 0 and _65 + ceil32(return_data.size) + (32 * mem[_65 + mem[_65]]) + 32 <= test266151307()
        mem[64] = _65 + ceil32(return_data.size) + (32 * mem[_65 + mem[_65]]) + 32
        mem[_65 + ceil32(return_data.size)] = _67
        require return_data.size >= _66 + (32 * _67) + 32
        t = _65 + _66 + 32
        u = _65 + ceil32(return_data.size) + 32
        s = 0
        while s < _67:
            require mem[t] == mem[t + 12 len 20]
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        _81 = mem[_65 + 32]
        require mem[_65 + 32] <= test266151307()
        require _65 + mem[_65 + 32] + 31 < _65 + return_data.size
        _83 = mem[_65 + mem[_65 + 32]]
        require mem[_65 + mem[_65 + 32]] <= test266151307()
        _84 = mem[64]
        require mem[64] + (32 * mem[_65 + mem[_65 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_65 + mem[_65 + 32]]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_65 + mem[_65 + 32]]) + 32
        mem[_84] = _83
        require return_data.size >= _81 + (32 * _83) + 32
        s = 0
        t = _65 + _81 + 32
        u = _84 + 32
        while s < _83:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        _101 = mem[_65 + ceil32(return_data.size)]
        s = 0
        while uint128(s) < _101:
            require uint128(s) < mem[_65 + ceil32(return_data.size)]
            _103 = mem[(32 * uint128(s)) + _65 + ceil32(return_data.size) + 32]
            mem[0] = mem[(32 * uint128(s)) + _65 + ceil32(return_data.size) + 44 len 20]
            mem[32] = sha3(address(_58), 4)
            stor4[address(_58)][address(_103)] = uint128(s)
            _112 = mem[_65 + ceil32(return_data.size)]
            idx = 0
            while uint128(idx) < _112:
                if uint128(s) != uint128(idx):
                    mem[0] = address(_103)
                    mem[32] = 5
                    require uint128(idx) < mem[_65 + ceil32(return_data.size)]
                    mem[0] = mem[(32 * uint128(idx)) + _65 + ceil32(return_data.size) + 44 len 20]
                    mem[32] = sha3(address(_103), 5)
                    _116 = sha3(mem[0], sha3(address(_103), 5))
                    uint256(stor5[address(_103)][mem[0]].field_0)++
                    mem[0] = sha3(mem[0], sha3(address(_103), 5))
                    address(stor[sha3(mem[0]) + uint256(stor[_116])]) = address(_58)
                _101 = mem[_65 + ceil32(return_data.size)]
                _112 = mem[_65 + ceil32(return_data.size)]
                idx = idx + 1
                continue 
            _101 = mem[_65 + ceil32(return_data.size)]
            s = s + 1
            continue 
        idx = idx + 1
        continue 
}

function sub_4b164140(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _54 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getPoolId() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _57 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _58 = mem[_57]
        mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _58
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                gas gas_remaining wei
               args _58
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _62 = mem[_61]
        require mem[_61] <= test266151307()
        require _61 + mem[_61] + 31 < _61 + return_data.size
        _63 = mem[_61 + mem[_61]]
        require mem[_61 + mem[_61]] <= test266151307()
        require (32 * mem[_61 + mem[_61]]) + 32 >= 0 and _61 + ceil32(return_data.size) + (32 * mem[_61 + mem[_61]]) + 32 <= test266151307()
        mem[64] = _61 + ceil32(return_data.size) + (32 * mem[_61 + mem[_61]]) + 32
        mem[_61 + ceil32(return_data.size)] = _63
        require return_data.size >= _62 + (32 * _63) + 32
        t = _61 + _62 + 32
        u = _61 + ceil32(return_data.size) + 32
        s = 0
        while s < _63:
            require mem[t] == mem[t + 12 len 20]
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        _75 = mem[_61 + 32]
        require mem[_61 + 32] <= test266151307()
        require _61 + mem[_61 + 32] + 31 < _61 + return_data.size
        _77 = mem[_61 + mem[_61 + 32]]
        require mem[_61 + mem[_61 + 32]] <= test266151307()
        _78 = mem[64]
        require mem[64] + (32 * mem[_61 + mem[_61 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_61 + mem[_61 + 32]]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_61 + mem[_61 + 32]]) + 32
        mem[_78] = _77
        require return_data.size >= _75 + (32 * _77) + 32
        s = 0
        t = _61 + _75 + 32
        u = _78 + 32
        while s < _77:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        _91 = mem[_61 + ceil32(return_data.size)]
        s = 0
        while uint128(s) < _91:
            require uint128(s) < mem[_61 + ceil32(return_data.size)]
            _93 = mem[(32 * uint128(s)) + _61 + ceil32(return_data.size) + 32]
            _112 = mem[_61 + ceil32(return_data.size)]
            idx = 0
            while uint128(idx) < _112:
                if uint128(s) != uint128(idx):
                    mem[0] = address(_93)
                    mem[32] = 5
                    require uint128(idx) < mem[_61 + ceil32(return_data.size)]
                    mem[0] = mem[(32 * uint128(idx)) + _61 + ceil32(return_data.size) + 44 len 20]
                    mem[32] = sha3(address(_93), 5)
                    _116 = sha3(mem[0], sha3(address(_93), 5))
                    _117 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor5[address(_93)][mem[0]].field_0)) + 32
                    mem[_117] = uint256(stor5[address(_93)][mem[0]].field_0)
                    if not uint256(stor[_116]):
                        s = 0
                        while uint128(s) < mem[_117]:
                            require uint128(s) < mem[_117]
                            if mem[(32 * uint128(s)) + _117 + 44 len 20] == address(_54):
                                require uint128(s) < mem[_117]
                                mem[(32 * uint128(s)) + _117 + 32] = 0
                            _91 = mem[_61 + ceil32(return_data.size)]
                            _112 = mem[_61 + ceil32(return_data.size)]
                            s = s + 1
                            continue 
                        mem[0] = address(_93)
                        mem[32] = 5
                        require uint128(idx) < mem[_61 + ceil32(return_data.size)]
                        mem[0] = mem[(32 * uint128(idx)) + _61 + ceil32(return_data.size) + 44 len 20]
                        mem[32] = sha3(address(_93), 5)
                        _135 = sha3(mem[0], sha3(address(_93), 5))
                        _136 = mem[_117]
                        uint256(stor5[address(_93)][mem[0]].field_0) = mem[_117]
                        mem[0] = sha3(mem[0], sha3(address(_93), 5))
                        if not _136:
                            s = sha3(mem[0])
                            while sha3(mem[0]) + uint256(stor[_135]) > s:
                                uint256(stor[s]) = 0
                                _91 = mem[_61 + ceil32(return_data.size)]
                                _112 = mem[_61 + ceil32(return_data.size)]
                                s = s + 1
                                continue 
                            _91 = mem[_61 + ceil32(return_data.size)]
                            _112 = mem[_61 + ceil32(return_data.size)]
                            idx = idx + 1
                            continue 
                        t = sha3(mem[0])
                        s = _117 + 32
                        while _117 + (32 * _136) + 32 > s:
                            address(stor[t]) = mem[s + 12 len 20]
                            _91 = mem[_61 + ceil32(return_data.size)]
                            _112 = mem[_61 + ceil32(return_data.size)]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(mem[0]) + (Mask(251, 0, (32 * _136) + 31) >> 5)
                        while sha3(mem[0]) + uint256(stor[_135]) > s:
                            uint256(stor[s]) = 0
                            _91 = mem[_61 + ceil32(return_data.size)]
                            _112 = mem[_61 + ceil32(return_data.size)]
                            s = s + 1
                            continue 
                        _91 = mem[_61 + ceil32(return_data.size)]
                        _112 = mem[_61 + ceil32(return_data.size)]
                        s = sha3(mem[0]) + uint256(stor[_135]) + 1
                        continue 
                    mem[0] = _116
                    mem[_117 + 32] = address(stor[sha3(_116)])
                    s = _117 + 32
                    t = sha3(_116)
                    while _117 + (32 * uint256(stor[_116])) > s:
                        _91 = mem[_61 + ceil32(return_data.size)]
                        _112 = mem[_61 + ceil32(return_data.size)]
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    s = 0
                    while uint128(s) < mem[_117]:
                        require uint128(s) < mem[_117]
                        if mem[(32 * uint128(s)) + _117 + 44 len 20] == address(_54):
                            require uint128(s) < mem[_117]
                            mem[(32 * uint128(s)) + _117 + 32] = 0
                        _91 = mem[_61 + ceil32(return_data.size)]
                        _112 = mem[_61 + ceil32(return_data.size)]
                        s = s + 1
                        continue 
                    mem[0] = address(_93)
                    mem[32] = 5
                    require uint128(idx) < mem[_61 + ceil32(return_data.size)]
                    mem[0] = mem[(32 * uint128(idx)) + _61 + ceil32(return_data.size) + 44 len 20]
                    mem[32] = sha3(address(_93), 5)
                    _158 = sha3(mem[0], sha3(address(_93), 5))
                    _159 = mem[_117]
                    uint256(stor5[address(_93)][mem[0]].field_0) = mem[_117]
                    mem[0] = sha3(mem[0], sha3(address(_93), 5))
                    if not _159:
                        s = sha3(mem[0])
                        while sha3(mem[0]) + uint256(stor[_158]) > s:
                            uint256(stor[s]) = 0
                            _91 = mem[_61 + ceil32(return_data.size)]
                            _112 = mem[_61 + ceil32(return_data.size)]
                            s = s + 1
                            continue 
                    else:
                        t = sha3(mem[0])
                        s = _117 + 32
                        while _117 + (32 * _159) + 32 > s:
                            address(stor[t]) = mem[s + 12 len 20]
                            _91 = mem[_61 + ceil32(return_data.size)]
                            _112 = mem[_61 + ceil32(return_data.size)]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(mem[0]) + (Mask(251, 0, (32 * _159) + 31) >> 5)
                        while sha3(mem[0]) + uint256(stor[_158]) > s:
                            uint256(stor[s]) = 0
                            _91 = mem[_61 + ceil32(return_data.size)]
                            _112 = mem[_61 + ceil32(return_data.size)]
                            s = s + 1
                            continue 
                _91 = mem[_61 + ceil32(return_data.size)]
                _112 = mem[_61 + ceil32(return_data.size)]
                idx = idx + 1
                continue 
            _91 = mem[_61 + ceil32(return_data.size)]
            s = s + 1
            continue 
        idx = idx + 1
        continue 
}

function query(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if arg1:
        if arg2 != arg3:
            mem[0] = arg3
            mem[32] = sha3(address(arg2), 5)
            mem[64] = (32 * uint256(stor5[address(arg2)][address(arg3)].field_0)) + 128
            mem[96] = uint256(stor5[address(arg2)][address(arg3)].field_0)
            if not uint256(stor5[address(arg2)][address(arg3)].field_0):
                if uint256(stor5[address(arg2)][address(arg3)].field_0) != 0:
                    idx = 0
                    while uint128(idx) < uint256(stor5[address(arg2)][address(arg3)].field_0):
                        require uint128(idx) < mem[96]
                        _66 = mem[(32 * uint128(idx)) + 128]
                        if mem[(32 * uint128(idx)) + 140 len 20]:
                            _67 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_67] = 0
                            mem[_67 + 32] = 0
                            mem[_67 + 64] = 0
                            mem[_67 + 96] = 0
                            mem[_67 + 128] = 0
                            mem[_67 + 160] = 0
                            mem[_67 + 192] = 0
                            mem[_67 + 224] = 0
                            mem[_67 + 256] = 96
                            require ext_code.size(address(_66))
                            staticcall address(_66).getPoolId() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _72 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_67 + 128] = mem[_72]
                            mem[_67] = 0
                            mem[_67 + 32] = arg2
                            mem[_67 + 64] = arg3
                            mem[_67 + 96] = arg1
                            _74 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_74] = 2
                            mem[_74 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                            mem[_67 + 256] = _74
                            _75 = mem[_67 + 128]
                            mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _75
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                    gas gas_remaining wei
                                   args _75
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _78 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _79 = mem[_78]
                            require mem[_78] <= test266151307()
                            require _78 + mem[_78] + 31 < _78 + return_data.size
                            _80 = mem[_78 + mem[_78]]
                            require mem[_78 + mem[_78]] <= test266151307()
                            require (32 * mem[_78 + mem[_78]]) + 32 >= 0 and _78 + ceil32(return_data.size) + (32 * mem[_78 + mem[_78]]) + 32 <= test266151307()
                            mem[64] = _78 + ceil32(return_data.size) + (32 * mem[_78 + mem[_78]]) + 32
                            mem[_78 + ceil32(return_data.size)] = _80
                            require return_data.size >= _79 + (32 * _80) + 32
                            t = _78 + _79 + 32
                            u = _78 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _80:
                                require mem[t] == mem[t + 12 len 20]
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            _116 = mem[_78 + 32]
                            require mem[_78 + 32] <= test266151307()
                            require _78 + mem[_78 + 32] + 31 < _78 + return_data.size
                            _119 = mem[_78 + mem[_78 + 32]]
                            require mem[_78 + mem[_78 + 32]] <= test266151307()
                            _124 = mem[64]
                            require mem[64] + (32 * mem[_78 + mem[_78 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_78 + mem[_78 + 32]]) + 32 <= test266151307()
                            mem[64] = mem[64] + (32 * mem[_78 + mem[_78 + 32]]) + 32
                            mem[_124] = _119
                            require return_data.size >= _116 + (32 * _119) + 32
                            s = 0
                            t = _78 + _116 + 32
                            u = _124 + 32
                            while s < _119:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[32] = 4
                            mem[0] = mem[_67 + 44 len 20]
                            mem[32] = sha3(address(_66), 4)
                            require stor4[address(_66)][mem[0]] < _119
                            _214 = mem[(32 * stor4[address(_66)][mem[0]]) + _124 + 32]
                            mem[0] = mem[_67 + 76 len 20]
                            mem[32] = sha3(address(_66), 4)
                            require stor4[address(_66)][mem[0]] < _119
                            _220 = mem[(32 * stor4[address(_66)][mem[0]]) + _124 + 32]
                            mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 96
                            require mem[_67] < 2
                            mem[mem[64] + 100] = mem[_67]
                            mem[mem[64] + 132] = mem[_67 + 44 len 20]
                            mem[mem[64] + 164] = mem[_67 + 76 len 20]
                            mem[mem[64] + 196] = mem[_67 + 96]
                            mem[mem[64] + 228] = mem[_67 + 128]
                            mem[mem[64] + 260] = mem[_67 + 160]
                            mem[mem[64] + 292] = mem[_67 + 204 len 20]
                            mem[mem[64] + 324] = mem[_67 + 236 len 20]
                            _241 = mem[_67 + 256]
                            mem[mem[64] + 356] = 288
                            _243 = mem[_241]
                            mem[mem[64] + 388] = mem[_241]
                            s = 0
                            while s < _243:
                                mem[s + mem[64] + 420] = mem[s + _241 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_243) <= _243:
                                mem[mem[64] + 36] = _214
                                mem[mem[64] + 68] = _220
                                require ext_code.size(address(_66))
                                staticcall address(_66).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                        gas gas_remaining wei
                                       args 96, _214, _220, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_243) + 32]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _293 = mem[64]
                            else:
                                mem[_243 + mem[64] + 420] = 0
                                mem[mem[64] + 36] = _214
                                mem[mem[64] + 68] = _220
                                require ext_code.size(address(_66))
                                staticcall address(_66).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                        gas gas_remaining wei
                                       args 96, _214, _220, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_243) + 32]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _294 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                        idx = idx + 1
                        continue 
            else:
                mem[0] = sha3(address(arg3), sha3(address(arg2), 5))
                mem[128] = address(stor5[address(arg2)][address(arg3)].field_0)
                idx = 128
                s = 0
                while (32 * uint256(stor5[address(arg2)][address(arg3)].field_0)) + 96 > idx:
                    mem[idx + 32] = address(stor5[address(arg2)][address(arg3)][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                if uint256(stor5[address(arg2)][address(arg3)].field_0) != 0:
                    idx = 0
                    while uint128(idx) < uint256(stor5[address(arg2)][address(arg3)].field_0):
                        require uint128(idx) < mem[96]
                        _209 = mem[(32 * uint128(idx)) + 128]
                        if mem[(32 * uint128(idx)) + 140 len 20]:
                            _219 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_219] = 0
                            mem[_219 + 32] = 0
                            mem[_219 + 64] = 0
                            mem[_219 + 96] = 0
                            mem[_219 + 128] = 0
                            mem[_219 + 160] = 0
                            mem[_219 + 192] = 0
                            mem[_219 + 224] = 0
                            mem[_219 + 256] = 96
                            require ext_code.size(address(_209))
                            staticcall address(_209).getPoolId() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _227 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_219 + 128] = mem[_227]
                            mem[_219] = 0
                            mem[_219 + 32] = arg2
                            mem[_219 + 64] = arg3
                            mem[_219 + 96] = arg1
                            _230 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_230] = 2
                            mem[_230 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                            mem[_219 + 256] = _230
                            _232 = mem[_219 + 128]
                            mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _232
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                    gas gas_remaining wei
                                   args _232
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _240 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _242 = mem[_240]
                            require mem[_240] <= test266151307()
                            require _240 + mem[_240] + 31 < _240 + return_data.size
                            _244 = mem[_240 + mem[_240]]
                            require mem[_240 + mem[_240]] <= test266151307()
                            require (32 * mem[_240 + mem[_240]]) + 32 >= 0 and _240 + ceil32(return_data.size) + (32 * mem[_240 + mem[_240]]) + 32 <= test266151307()
                            mem[64] = _240 + ceil32(return_data.size) + (32 * mem[_240 + mem[_240]]) + 32
                            mem[_240 + ceil32(return_data.size)] = _244
                            require return_data.size >= _242 + (32 * _244) + 32
                            t = _240 + _242 + 32
                            u = _240 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _244:
                                require mem[t] == mem[t + 12 len 20]
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            _288 = mem[_240 + 32]
                            require mem[_240 + 32] <= test266151307()
                            require _240 + mem[_240 + 32] + 31 < _240 + return_data.size
                            _290 = mem[_240 + mem[_240 + 32]]
                            require mem[_240 + mem[_240 + 32]] <= test266151307()
                            _295 = mem[64]
                            require mem[64] + (32 * mem[_240 + mem[_240 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_240 + mem[_240 + 32]]) + 32 <= test266151307()
                            mem[64] = mem[64] + (32 * mem[_240 + mem[_240 + 32]]) + 32
                            mem[_295] = _290
                            require return_data.size >= _288 + (32 * _290) + 32
                            s = 0
                            t = _240 + _288 + 32
                            u = _295 + 32
                            while s < _290:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[32] = 4
                            mem[0] = mem[_219 + 44 len 20]
                            mem[32] = sha3(address(_209), 4)
                            require stor4[address(_209)][mem[0]] < _290
                            _334 = mem[(32 * stor4[address(_209)][mem[0]]) + _295 + 32]
                            mem[0] = mem[_219 + 76 len 20]
                            mem[32] = sha3(address(_209), 4)
                            require stor4[address(_209)][mem[0]] < _290
                            _339 = mem[(32 * stor4[address(_209)][mem[0]]) + _295 + 32]
                            mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 96
                            require mem[_219] < 2
                            mem[mem[64] + 100] = mem[_219]
                            mem[mem[64] + 132] = mem[_219 + 44 len 20]
                            mem[mem[64] + 164] = mem[_219 + 76 len 20]
                            mem[mem[64] + 196] = mem[_219 + 96]
                            mem[mem[64] + 228] = mem[_219 + 128]
                            mem[mem[64] + 260] = mem[_219 + 160]
                            mem[mem[64] + 292] = mem[_219 + 204 len 20]
                            mem[mem[64] + 324] = mem[_219 + 236 len 20]
                            _349 = mem[_219 + 256]
                            mem[mem[64] + 356] = 288
                            _350 = mem[_349]
                            mem[mem[64] + 388] = mem[_349]
                            s = 0
                            while s < _350:
                                mem[s + mem[64] + 420] = mem[s + _349 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_350) <= _350:
                                mem[mem[64] + 36] = _334
                                mem[mem[64] + 68] = _339
                                require ext_code.size(address(_209))
                                staticcall address(_209).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                        gas gas_remaining wei
                                       args 96, _334, _339, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_350) + 32]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _361 = mem[64]
                            else:
                                mem[_350 + mem[64] + 420] = 0
                                mem[mem[64] + 36] = _334
                                mem[mem[64] + 68] = _339
                                require ext_code.size(address(_209))
                                staticcall address(_209).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                        gas gas_remaining wei
                                       args 96, _334, _339, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_350) + 32]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _362 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                        idx = idx + 1
                        continue 
            return 0
        else:
            return 0
    else:
        return 0
}

function swap(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    mem[100] = this.address
    mem[132] = address(vaultAddress)
    require ext_code.size(arg3)
    staticcall arg3.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(vaultAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        mem[0] = arg4
        mem[32] = sha3(address(arg3), 5)
        mem[64] = ceil32(return_data.size) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 128
        mem[ceil32(return_data.size) + 96] = uint256(stor5[address(arg3)][address(arg4)].field_0)
        if not uint256(stor5[address(arg3)][address(arg4)].field_0):
            if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                revert with 0, 'No pools for swapping'
            idx = 0
            while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                require uint128(idx) < mem[ceil32(return_data.size) + 96]
                _1094 = mem[(32 * uint128(idx)) + ceil32(return_data.size) + 128]
                if mem[(32 * uint128(idx)) + ceil32(return_data.size) + 140 len 20]:
                    _1096 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1096] = 0
                    mem[_1096 + 32] = 0
                    mem[_1096 + 64] = 0
                    mem[_1096 + 96] = 0
                    mem[_1096 + 128] = 0
                    mem[_1096 + 160] = 0
                    mem[_1096 + 192] = 0
                    mem[_1096 + 224] = 0
                    mem[_1096 + 256] = 96
                    require ext_code.size(address(_1094))
                    staticcall address(_1094).getPoolId() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1108 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1096 + 128] = mem[_1108]
                    mem[_1096] = 0
                    mem[_1096 + 32] = arg3
                    mem[_1096 + 64] = arg4
                    mem[_1096 + 96] = arg1
                    _1142 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1142] = 2
                    mem[_1142 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                    mem[_1096 + 256] = _1142
                    _1151 = mem[_1096 + 128]
                    mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1151
                    require ext_code.size(address(vaultAddress))
                    staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                            gas gas_remaining wei
                           args _1151
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1194 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1219 = mem[_1194]
                    require mem[_1194] <= test266151307()
                    require _1194 + mem[_1194] + 31 < _1194 + return_data.size
                    _1260 = mem[_1194 + mem[_1194]]
                    require mem[_1194 + mem[_1194]] <= test266151307()
                    require (32 * mem[_1194 + mem[_1194]]) + 32 >= 0 and _1194 + ceil32(return_data.size) + (32 * mem[_1194 + mem[_1194]]) + 32 <= test266151307()
                    mem[64] = _1194 + ceil32(return_data.size) + (32 * mem[_1194 + mem[_1194]]) + 32
                    mem[_1194 + ceil32(return_data.size)] = _1260
                    require return_data.size >= _1219 + (32 * _1260) + 32
                    t = _1194 + _1219 + 32
                    u = _1194 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1260:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    _2168 = mem[_1194 + 32]
                    require mem[_1194 + 32] <= test266151307()
                    require _1194 + mem[_1194 + 32] + 31 < _1194 + return_data.size
                    _2220 = mem[_1194 + mem[_1194 + 32]]
                    require mem[_1194 + mem[_1194 + 32]] <= test266151307()
                    _2306 = mem[64]
                    require mem[64] + (32 * mem[_1194 + mem[_1194 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_1194 + mem[_1194 + 32]]) + 32 <= test266151307()
                    mem[64] = mem[64] + (32 * mem[_1194 + mem[_1194 + 32]]) + 32
                    mem[_2306] = _2220
                    require return_data.size >= _2168 + (32 * _2220) + 32
                    s = 0
                    t = _1194 + _2168 + 32
                    u = _2306 + 32
                    while s < _2220:
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[32] = 4
                    mem[0] = mem[_1096 + 44 len 20]
                    mem[32] = sha3(address(_1094), 4)
                    require stor4[address(_1094)][mem[0]] < _2220
                    _3147 = mem[(32 * stor4[address(_1094)][mem[0]]) + _2306 + 32]
                    mem[0] = mem[_1096 + 76 len 20]
                    mem[32] = sha3(address(_1094), 4)
                    require stor4[address(_1094)][mem[0]] < _2220
                    _3201 = mem[(32 * stor4[address(_1094)][mem[0]]) + _2306 + 32]
                    _3202 = mem[64]
                    mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    require mem[_1096] < 2
                    mem[mem[64] + 100] = mem[_1096]
                    mem[mem[64] + 132] = mem[_1096 + 44 len 20]
                    mem[mem[64] + 164] = mem[_1096 + 76 len 20]
                    mem[mem[64] + 196] = mem[_1096 + 96]
                    mem[mem[64] + 228] = mem[_1096 + 128]
                    mem[mem[64] + 260] = mem[_1096 + 160]
                    mem[mem[64] + 292] = mem[_1096 + 204 len 20]
                    mem[mem[64] + 324] = mem[_1096 + 236 len 20]
                    _3605 = mem[_1096 + 256]
                    mem[mem[64] + 356] = 288
                    _3655 = mem[_3605]
                    mem[mem[64] + 388] = mem[_3605]
                    s = 0
                    while s < _3655:
                        mem[s + mem[64] + 420] = mem[s + _3605 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3655) <= _3655:
                        mem[_3202 + 36] = _3147
                        mem[_3202 + 68] = _3201
                        require ext_code.size(address(_1094))
                        staticcall address(_1094).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len ceil32(_3655) + _3202 + -mem[64] + 416]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4937 = mem[64]
                    else:
                        mem[_3655 + _3202 + 420] = 0
                        mem[_3202 + 36] = _3147
                        mem[_3202 + 68] = _3201
                        require ext_code.size(address(_1094))
                        staticcall address(_1094).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len ceil32(_3655) + _3202 + -mem[64] + 416]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4938 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                idx = idx + 1
                continue 
        else:
            mem[0] = sha3(address(arg4), sha3(address(arg3), 5))
            mem[ceil32(return_data.size) + 128] = address(stor5[address(arg3)][address(arg4)].field_0)
            idx = ceil32(return_data.size) + 128
            s = 0
            while ceil32(return_data.size) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 96 > idx:
                mem[idx + 32] = address(stor5[address(arg3)][address(arg4)][s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                revert with 0, 'No pools for swapping'
            idx = 0
            while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                require uint128(idx) < mem[ceil32(return_data.size) + 96]
                _3125 = mem[(32 * uint128(idx)) + ceil32(return_data.size) + 128]
                if mem[(32 * uint128(idx)) + ceil32(return_data.size) + 140 len 20]:
                    _3152 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_3152] = 0
                    mem[_3152 + 32] = 0
                    mem[_3152 + 64] = 0
                    mem[_3152 + 96] = 0
                    mem[_3152 + 128] = 0
                    mem[_3152 + 160] = 0
                    mem[_3152 + 192] = 0
                    mem[_3152 + 224] = 0
                    mem[_3152 + 256] = 96
                    require ext_code.size(address(_3125))
                    staticcall address(_3125).getPoolId() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3239 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_3152 + 128] = mem[_3239]
                    mem[_3152] = 0
                    mem[_3152 + 32] = arg3
                    mem[_3152 + 64] = arg4
                    mem[_3152 + 96] = arg1
                    _3338 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3338] = 2
                    mem[_3338 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                    mem[_3152 + 256] = _3338
                    _3340 = mem[_3152 + 128]
                    mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3340
                    require ext_code.size(address(vaultAddress))
                    staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                            gas gas_remaining wei
                           args _3340
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3428 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3606 = mem[_3428]
                    require mem[_3428] <= test266151307()
                    require _3428 + mem[_3428] + 31 < _3428 + return_data.size
                    _3672 = mem[_3428 + mem[_3428]]
                    require mem[_3428 + mem[_3428]] <= test266151307()
                    require (32 * mem[_3428 + mem[_3428]]) + 32 >= 0 and _3428 + ceil32(return_data.size) + (32 * mem[_3428 + mem[_3428]]) + 32 <= test266151307()
                    mem[64] = _3428 + ceil32(return_data.size) + (32 * mem[_3428 + mem[_3428]]) + 32
                    mem[_3428 + ceil32(return_data.size)] = _3672
                    require return_data.size >= _3606 + (32 * _3672) + 32
                    t = _3428 + _3606 + 32
                    u = _3428 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _3672:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    _4596 = mem[_3428 + 32]
                    require mem[_3428 + 32] <= test266151307()
                    require _3428 + mem[_3428 + 32] + 31 < _3428 + return_data.size
                    _4742 = mem[_3428 + mem[_3428 + 32]]
                    require mem[_3428 + mem[_3428 + 32]] <= test266151307()
                    _4955 = mem[64]
                    require mem[64] + (32 * mem[_3428 + mem[_3428 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_3428 + mem[_3428 + 32]]) + 32 <= test266151307()
                    mem[64] = mem[64] + (32 * mem[_3428 + mem[_3428 + 32]]) + 32
                    mem[_4955] = _4742
                    require return_data.size >= _4596 + (32 * _4742) + 32
                    s = 0
                    t = _3428 + _4596 + 32
                    u = _4955 + 32
                    while s < _4742:
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[32] = 4
                    mem[0] = mem[_3152 + 44 len 20]
                    mem[32] = sha3(address(_3125), 4)
                    require stor4[address(_3125)][mem[0]] < _4742
                    _5986 = mem[(32 * stor4[address(_3125)][mem[0]]) + _4955 + 32]
                    mem[0] = mem[_3152 + 76 len 20]
                    mem[32] = sha3(address(_3125), 4)
                    require stor4[address(_3125)][mem[0]] < _4742
                    _6007 = mem[(32 * stor4[address(_3125)][mem[0]]) + _4955 + 32]
                    mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 96
                    require mem[_3152] < 2
                    mem[mem[64] + 100] = mem[_3152]
                    mem[mem[64] + 132] = mem[_3152 + 44 len 20]
                    mem[mem[64] + 164] = mem[_3152 + 76 len 20]
                    mem[mem[64] + 196] = mem[_3152 + 96]
                    mem[mem[64] + 228] = mem[_3152 + 128]
                    mem[mem[64] + 260] = mem[_3152 + 160]
                    mem[mem[64] + 292] = mem[_3152 + 204 len 20]
                    mem[mem[64] + 324] = mem[_3152 + 236 len 20]
                    _6305 = mem[_3152 + 256]
                    mem[mem[64] + 356] = 288
                    _6338 = mem[_6305]
                    mem[mem[64] + 388] = mem[_6305]
                    s = 0
                    while s < _6338:
                        mem[s + mem[64] + 420] = mem[s + _6305 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_6338) <= _6338:
                        mem[mem[64] + 36] = _5986
                        mem[mem[64] + 68] = _6007
                        require ext_code.size(address(_3125))
                        staticcall address(_3125).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                gas gas_remaining wei
                               args 96, _5986, _6007, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_6338) + 32]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6845 = mem[64]
                    else:
                        mem[_6338 + mem[64] + 420] = 0
                        mem[mem[64] + 36] = _5986
                        mem[mem[64] + 68] = _6007
                        require ext_code.size(address(_3125))
                        staticcall address(_3125).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                gas gas_remaining wei
                               args 96, _5986, _6007, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_6338) + 32]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6846 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                idx = idx + 1
                continue 
    else:
        if not arg1:
            mem[ceil32(return_data.size) + 132] = address(vaultAddress)
            mem[ceil32(return_data.size) + 164] = arg1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor3)
            mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 196 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), arg1, mem[ceil32(return_data.size) + 196 len 28]
            mem[ceil32(return_data.size) + 264] = 0
            call arg3.mem[ceil32(return_data.size) + 196 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 200 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not ext_call.return_data[0]:
                    mem[0] = arg4
                    mem[32] = sha3(address(arg3), 5)
                    mem[64] = ceil32(return_data.size) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 228
                    mem[ceil32(return_data.size) + 196] = uint256(stor5[address(arg3)][address(arg4)].field_0)
                    if not uint256(stor5[address(arg3)][address(arg4)].field_0):
                        if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                            revert with 0, 'No pools for swapping'
                        idx = 0
                        while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                            require uint128(idx) < mem[ceil32(return_data.size) + 196]
                            _2192 = mem[(32 * uint128(idx)) + ceil32(return_data.size) + 228]
                            if mem[(32 * uint128(idx)) + ceil32(return_data.size) + 240 len 20]:
                                _2227 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_2227] = 0
                                mem[_2227 + 32] = 0
                                mem[_2227 + 64] = 0
                                mem[_2227 + 96] = 0
                                mem[_2227 + 128] = 0
                                mem[_2227 + 160] = 0
                                mem[_2227 + 192] = 0
                                mem[_2227 + 224] = 0
                                mem[_2227 + 256] = 96
                                require ext_code.size(address(_2192))
                                staticcall address(_2192).getPoolId() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2294 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_2227 + 128] = mem[_2294]
                                mem[_2227] = 0
                                mem[_2227 + 32] = arg3
                                mem[_2227 + 64] = arg4
                                mem[_2227 + 96] = arg1
                                _2331 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2331] = 2
                                mem[_2331 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                                mem[_2227 + 256] = _2331
                                _2352 = mem[_2227 + 128]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2352
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args _2352
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2406 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _2430 = mem[_2406]
                                require mem[_2406] <= test266151307()
                                require _2406 + mem[_2406] + 31 < _2406 + return_data.size
                                _2448 = mem[_2406 + mem[_2406]]
                                require mem[_2406 + mem[_2406]] <= test266151307()
                                require (32 * mem[_2406 + mem[_2406]]) + 32 >= 0 and _2406 + ceil32(return_data.size) + (32 * mem[_2406 + mem[_2406]]) + 32 <= test266151307()
                                mem[64] = _2406 + ceil32(return_data.size) + (32 * mem[_2406 + mem[_2406]]) + 32
                                mem[_2406 + ceil32(return_data.size)] = _2448
                                require return_data.size >= _2430 + (32 * _2448) + 32
                                t = _2406 + _2430 + 32
                                u = _2406 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2448:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                _3088 = mem[_2406 + 32]
                                require mem[_2406 + 32] <= test266151307()
                                require _2406 + mem[_2406 + 32] + 31 < _2406 + return_data.size
                                _3165 = mem[_2406 + mem[_2406 + 32]]
                                require mem[_2406 + mem[_2406 + 32]] <= test266151307()
                                _3264 = mem[64]
                                require mem[64] + (32 * mem[_2406 + mem[_2406 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_2406 + mem[_2406 + 32]]) + 32 <= test266151307()
                                mem[64] = mem[64] + (32 * mem[_2406 + mem[_2406 + 32]]) + 32
                                mem[_3264] = _3165
                                require return_data.size >= _3088 + (32 * _3165) + 32
                                s = 0
                                t = _2406 + _3088 + 32
                                u = _3264 + 32
                                while s < _3165:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[32] = 4
                                mem[0] = mem[_2227 + 44 len 20]
                                mem[32] = sha3(address(_2192), 4)
                                require stor4[address(_2192)][mem[0]] < _3165
                                _4767 = mem[(32 * stor4[address(_2192)][mem[0]]) + _3264 + 32]
                                mem[0] = mem[_2227 + 76 len 20]
                                mem[32] = sha3(address(_2192), 4)
                                require stor4[address(_2192)][mem[0]] < _3165
                                _4861 = mem[(32 * stor4[address(_2192)][mem[0]]) + _3264 + 32]
                                _4862 = mem[64]
                                mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 96
                                require mem[_2227] < 2
                                mem[mem[64] + 100] = mem[_2227]
                                mem[mem[64] + 132] = mem[_2227 + 44 len 20]
                                mem[mem[64] + 164] = mem[_2227 + 76 len 20]
                                mem[mem[64] + 196] = mem[_2227 + 96]
                                mem[mem[64] + 228] = mem[_2227 + 128]
                                mem[mem[64] + 260] = mem[_2227 + 160]
                                mem[mem[64] + 292] = mem[_2227 + 204 len 20]
                                mem[mem[64] + 324] = mem[_2227 + 236 len 20]
                                _5187 = mem[_2227 + 256]
                                mem[mem[64] + 356] = 288
                                _5216 = mem[_5187]
                                mem[mem[64] + 388] = mem[_5187]
                                s = 0
                                while s < _5216:
                                    mem[s + mem[64] + 420] = mem[s + _5187 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_5216) <= _5216:
                                    mem[_4862 + 36] = _4767
                                    mem[_4862 + 68] = _4861
                                    require ext_code.size(address(_2192))
                                    staticcall address(_2192).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(_5216) + _4862 + -mem[64] + 416]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6050 = mem[64]
                                else:
                                    mem[_5216 + _4862 + 420] = 0
                                    mem[_4862 + 36] = _4767
                                    mem[_4862 + 68] = _4861
                                    require ext_code.size(address(_2192))
                                    staticcall address(_2192).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(_5216) + _4862 + -mem[64] + 416]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6051 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(address(arg4), sha3(address(arg3), 5))
                        mem[ceil32(return_data.size) + 228] = address(stor5[address(arg3)][address(arg4)].field_0)
                        idx = ceil32(return_data.size) + 228
                        s = 0
                        while ceil32(return_data.size) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 196 > idx:
                            mem[idx + 32] = address(stor5[address(arg3)][address(arg4)][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                            revert with 0, 'No pools for swapping'
                        idx = 0
                        while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                            require uint128(idx) < mem[ceil32(return_data.size) + 196]
                            _4639 = mem[(32 * uint128(idx)) + ceil32(return_data.size) + 228]
                            if mem[(32 * uint128(idx)) + ceil32(return_data.size) + 240 len 20]:
                                _4772 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_4772] = 0
                                mem[_4772 + 32] = 0
                                mem[_4772 + 64] = 0
                                mem[_4772 + 96] = 0
                                mem[_4772 + 128] = 0
                                mem[_4772 + 160] = 0
                                mem[_4772 + 192] = 0
                                mem[_4772 + 224] = 0
                                mem[_4772 + 256] = 96
                                require ext_code.size(address(_4639))
                                staticcall address(_4639).getPoolId() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4943 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_4772 + 128] = mem[_4943]
                                mem[_4772] = 0
                                mem[_4772 + 32] = arg3
                                mem[_4772 + 64] = arg4
                                mem[_4772 + 96] = arg1
                                _4994 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4994] = 2
                                mem[_4994 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                                mem[_4772 + 256] = _4994
                                _5019 = mem[_4772 + 128]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _5019
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args _5019
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5149 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _5188 = mem[_5149]
                                require mem[_5149] <= test266151307()
                                require _5149 + mem[_5149] + 31 < _5149 + return_data.size
                                _5232 = mem[_5149 + mem[_5149]]
                                require mem[_5149 + mem[_5149]] <= test266151307()
                                require (32 * mem[_5149 + mem[_5149]]) + 32 >= 0 and _5149 + ceil32(return_data.size) + (32 * mem[_5149 + mem[_5149]]) + 32 <= test266151307()
                                mem[64] = _5149 + ceil32(return_data.size) + (32 * mem[_5149 + mem[_5149]]) + 32
                                mem[_5149 + ceil32(return_data.size)] = _5232
                                require return_data.size >= _5188 + (32 * _5232) + 32
                                t = _5149 + _5188 + 32
                                u = _5149 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _5232:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                _5946 = mem[_5149 + 32]
                                require mem[_5149 + 32] <= test266151307()
                                require _5149 + mem[_5149 + 32] + 31 < _5149 + return_data.size
                                _5995 = mem[_5149 + mem[_5149 + 32]]
                                require mem[_5149 + mem[_5149 + 32]] <= test266151307()
                                _6078 = mem[64]
                                require mem[64] + (32 * mem[_5149 + mem[_5149 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_5149 + mem[_5149 + 32]]) + 32 <= test266151307()
                                mem[64] = mem[64] + (32 * mem[_5149 + mem[_5149 + 32]]) + 32
                                mem[_6078] = _5995
                                require return_data.size >= _5946 + (32 * _5995) + 32
                                s = 0
                                t = _5149 + _5946 + 32
                                u = _6078 + 32
                                while s < _5995:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[32] = 4
                                mem[0] = mem[_4772 + 44 len 20]
                                mem[32] = sha3(address(_4639), 4)
                                require stor4[address(_4639)][mem[0]] < _5995
                                _6735 = mem[(32 * stor4[address(_4639)][mem[0]]) + _6078 + 32]
                                mem[0] = mem[_4772 + 76 len 20]
                                mem[32] = sha3(address(_4639), 4)
                                require stor4[address(_4639)][mem[0]] < _5995
                                _6805 = mem[(32 * stor4[address(_4639)][mem[0]]) + _6078 + 32]
                                _6806 = mem[64]
                                mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 96
                                require mem[_4772] < 2
                                mem[mem[64] + 100] = mem[_4772]
                                mem[mem[64] + 132] = mem[_4772 + 44 len 20]
                                mem[mem[64] + 164] = mem[_4772 + 76 len 20]
                                mem[mem[64] + 196] = mem[_4772 + 96]
                                mem[mem[64] + 228] = mem[_4772 + 128]
                                mem[mem[64] + 260] = mem[_4772 + 160]
                                mem[mem[64] + 292] = mem[_4772 + 204 len 20]
                                mem[mem[64] + 324] = mem[_4772 + 236 len 20]
                                _6965 = mem[_4772 + 256]
                                mem[mem[64] + 356] = 288
                                _6981 = mem[_6965]
                                mem[mem[64] + 388] = mem[_6965]
                                s = 0
                                while s < _6981:
                                    mem[s + mem[64] + 420] = mem[s + _6965 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_6981) <= _6981:
                                    mem[_6806 + 36] = _6735
                                    mem[_6806 + 68] = _6805
                                    require ext_code.size(address(_4639))
                                    staticcall address(_4639).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(_6981) + _6806 + -mem[64] + 416]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7161 = mem[64]
                                else:
                                    mem[_6981 + _6806 + 420] = 0
                                    mem[_6806 + 36] = _6735
                                    mem[_6806 + 68] = _6805
                                    require ext_code.size(address(_4639))
                                    staticcall address(_4639).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(_6981) + _6806 + -mem[64] + 416]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7162 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                            idx = idx + 1
                            continue 
                else:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 0, stor3) == bool(0, Mask(224, 0, stor3))
                    if not 0, Mask(224, 0, stor3):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[0] = arg4
                    mem[32] = sha3(address(arg3), 5)
                    mem[64] = ceil32(return_data.size) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 228
                    mem[ceil32(return_data.size) + 196] = uint256(stor5[address(arg3)][address(arg4)].field_0)
                    if not uint256(stor5[address(arg3)][address(arg4)].field_0):
                        if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                            revert with 0, 'No pools for swapping'
                        idx = 0
                        while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                            require uint128(idx) < mem[ceil32(return_data.size) + 196]
                            _2193 = mem[(32 * uint128(idx)) + ceil32(return_data.size) + 228]
                            if mem[(32 * uint128(idx)) + ceil32(return_data.size) + 240 len 20]:
                                _2228 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_2228] = 0
                                mem[_2228 + 32] = 0
                                mem[_2228 + 64] = 0
                                mem[_2228 + 96] = 0
                                mem[_2228 + 128] = 0
                                mem[_2228 + 160] = 0
                                mem[_2228 + 192] = 0
                                mem[_2228 + 224] = 0
                                mem[_2228 + 256] = 96
                                require ext_code.size(address(_2193))
                                staticcall address(_2193).getPoolId() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2295 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_2228 + 128] = mem[_2295]
                                mem[_2228] = 0
                                mem[_2228 + 32] = arg3
                                mem[_2228 + 64] = arg4
                                mem[_2228 + 96] = arg1
                                _2332 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2332] = 2
                                mem[_2332 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                                mem[_2228 + 256] = _2332
                                _2354 = mem[_2228 + 128]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2354
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args _2354
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2407 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _2431 = mem[_2407]
                                require mem[_2407] <= test266151307()
                                require _2407 + mem[_2407] + 31 < _2407 + return_data.size
                                _2449 = mem[_2407 + mem[_2407]]
                                require mem[_2407 + mem[_2407]] <= test266151307()
                                require (32 * mem[_2407 + mem[_2407]]) + 32 >= 0 and _2407 + ceil32(return_data.size) + (32 * mem[_2407 + mem[_2407]]) + 32 <= test266151307()
                                mem[64] = _2407 + ceil32(return_data.size) + (32 * mem[_2407 + mem[_2407]]) + 32
                                mem[_2407 + ceil32(return_data.size)] = _2449
                                require return_data.size >= _2431 + (32 * _2449) + 32
                                t = _2407 + _2431 + 32
                                u = _2407 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2449:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                _3091 = mem[_2407 + 32]
                                require mem[_2407 + 32] <= test266151307()
                                require _2407 + mem[_2407 + 32] + 31 < _2407 + return_data.size
                                _3168 = mem[_2407 + mem[_2407 + 32]]
                                require mem[_2407 + mem[_2407 + 32]] <= test266151307()
                                _3266 = mem[64]
                                require mem[64] + (32 * mem[_2407 + mem[_2407 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_2407 + mem[_2407 + 32]]) + 32 <= test266151307()
                                mem[64] = mem[64] + (32 * mem[_2407 + mem[_2407 + 32]]) + 32
                                mem[_3266] = _3168
                                require return_data.size >= _3091 + (32 * _3168) + 32
                                s = 0
                                t = _2407 + _3091 + 32
                                u = _3266 + 32
                                while s < _3168:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[32] = 4
                                mem[0] = mem[_2228 + 44 len 20]
                                mem[32] = sha3(address(_2193), 4)
                                require stor4[address(_2193)][mem[0]] < _3168
                                _4773 = mem[(32 * stor4[address(_2193)][mem[0]]) + _3266 + 32]
                                mem[0] = mem[_2228 + 76 len 20]
                                mem[32] = sha3(address(_2193), 4)
                                require stor4[address(_2193)][mem[0]] < _3168
                                _4866 = mem[(32 * stor4[address(_2193)][mem[0]]) + _3266 + 32]
                                _4867 = mem[64]
                                mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 96
                                require mem[_2228] < 2
                                mem[mem[64] + 100] = mem[_2228]
                                mem[mem[64] + 132] = mem[_2228 + 44 len 20]
                                mem[mem[64] + 164] = mem[_2228 + 76 len 20]
                                mem[mem[64] + 196] = mem[_2228 + 96]
                                mem[mem[64] + 228] = mem[_2228 + 128]
                                mem[mem[64] + 260] = mem[_2228 + 160]
                                mem[mem[64] + 292] = mem[_2228 + 204 len 20]
                                mem[mem[64] + 324] = mem[_2228 + 236 len 20]
                                _5189 = mem[_2228 + 256]
                                mem[mem[64] + 356] = 288
                                _5217 = mem[_5189]
                                mem[mem[64] + 388] = mem[_5189]
                                s = 0
                                while s < _5217:
                                    mem[s + mem[64] + 420] = mem[s + _5189 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_5217) <= _5217:
                                    mem[_4867 + 36] = _4773
                                    mem[_4867 + 68] = _4866
                                    require ext_code.size(address(_2193))
                                    staticcall address(_2193).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(_5217) + _4867 + -mem[64] + 416]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6052 = mem[64]
                                else:
                                    mem[_5217 + _4867 + 420] = 0
                                    mem[_4867 + 36] = _4773
                                    mem[_4867 + 68] = _4866
                                    require ext_code.size(address(_2193))
                                    staticcall address(_2193).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(_5217) + _4867 + -mem[64] + 416]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6053 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(address(arg4), sha3(address(arg3), 5))
                        mem[ceil32(return_data.size) + 228] = address(stor5[address(arg3)][address(arg4)].field_0)
                        idx = ceil32(return_data.size) + 228
                        s = 0
                        while ceil32(return_data.size) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 196 > idx:
                            mem[idx + 32] = address(stor5[address(arg3)][address(arg4)][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                            revert with 0, 'No pools for swapping'
                        idx = 0
                        while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                            require uint128(idx) < mem[ceil32(return_data.size) + 196]
                            _4641 = mem[(32 * uint128(idx)) + ceil32(return_data.size) + 228]
                            if mem[(32 * uint128(idx)) + ceil32(return_data.size) + 240 len 20]:
                                _4778 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_4778] = 0
                                mem[_4778 + 32] = 0
                                mem[_4778 + 64] = 0
                                mem[_4778 + 96] = 0
                                mem[_4778 + 128] = 0
                                mem[_4778 + 160] = 0
                                mem[_4778 + 192] = 0
                                mem[_4778 + 224] = 0
                                mem[_4778 + 256] = 96
                                require ext_code.size(address(_4641))
                                staticcall address(_4641).getPoolId() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4944 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_4778 + 128] = mem[_4944]
                                mem[_4778] = 0
                                mem[_4778 + 32] = arg3
                                mem[_4778 + 64] = arg4
                                mem[_4778 + 96] = arg1
                                _4995 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4995] = 2
                                mem[_4995 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                                mem[_4778 + 256] = _4995
                                _5022 = mem[_4778 + 128]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _5022
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args _5022
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5151 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _5190 = mem[_5151]
                                require mem[_5151] <= test266151307()
                                require _5151 + mem[_5151] + 31 < _5151 + return_data.size
                                _5233 = mem[_5151 + mem[_5151]]
                                require mem[_5151 + mem[_5151]] <= test266151307()
                                require (32 * mem[_5151 + mem[_5151]]) + 32 >= 0 and _5151 + ceil32(return_data.size) + (32 * mem[_5151 + mem[_5151]]) + 32 <= test266151307()
                                mem[64] = _5151 + ceil32(return_data.size) + (32 * mem[_5151 + mem[_5151]]) + 32
                                mem[_5151 + ceil32(return_data.size)] = _5233
                                require return_data.size >= _5190 + (32 * _5233) + 32
                                t = _5151 + _5190 + 32
                                u = _5151 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _5233:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                _5949 = mem[_5151 + 32]
                                require mem[_5151 + 32] <= test266151307()
                                require _5151 + mem[_5151 + 32] + 31 < _5151 + return_data.size
                                _5996 = mem[_5151 + mem[_5151 + 32]]
                                require mem[_5151 + mem[_5151 + 32]] <= test266151307()
                                _6079 = mem[64]
                                require mem[64] + (32 * mem[_5151 + mem[_5151 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_5151 + mem[_5151 + 32]]) + 32 <= test266151307()
                                mem[64] = mem[64] + (32 * mem[_5151 + mem[_5151 + 32]]) + 32
                                mem[_6079] = _5996
                                require return_data.size >= _5949 + (32 * _5996) + 32
                                s = 0
                                t = _5151 + _5949 + 32
                                u = _6079 + 32
                                while s < _5996:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[32] = 4
                                mem[0] = mem[_4778 + 44 len 20]
                                mem[32] = sha3(address(_4641), 4)
                                require stor4[address(_4641)][mem[0]] < _5996
                                _6740 = mem[(32 * stor4[address(_4641)][mem[0]]) + _6079 + 32]
                                mem[0] = mem[_4778 + 76 len 20]
                                mem[32] = sha3(address(_4641), 4)
                                require stor4[address(_4641)][mem[0]] < _5996
                                _6807 = mem[(32 * stor4[address(_4641)][mem[0]]) + _6079 + 32]
                                _6808 = mem[64]
                                mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 96
                                require mem[_4778] < 2
                                mem[mem[64] + 100] = mem[_4778]
                                mem[mem[64] + 132] = mem[_4778 + 44 len 20]
                                mem[mem[64] + 164] = mem[_4778 + 76 len 20]
                                mem[mem[64] + 196] = mem[_4778 + 96]
                                mem[mem[64] + 228] = mem[_4778 + 128]
                                mem[mem[64] + 260] = mem[_4778 + 160]
                                mem[mem[64] + 292] = mem[_4778 + 204 len 20]
                                mem[mem[64] + 324] = mem[_4778 + 236 len 20]
                                _6966 = mem[_4778 + 256]
                                mem[mem[64] + 356] = 288
                                _6982 = mem[_6966]
                                mem[mem[64] + 388] = mem[_6966]
                                s = 0
                                while s < _6982:
                                    mem[s + mem[64] + 420] = mem[s + _6966 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_6982) <= _6982:
                                    mem[_6808 + 36] = _6740
                                    mem[_6808 + 68] = _6807
                                    require ext_code.size(address(_4641))
                                    staticcall address(_4641).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(_6982) + _6808 + -mem[64] + 416]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7163 = mem[64]
                                else:
                                    mem[_6982 + _6808 + 420] = 0
                                    mem[_6808 + 36] = _6740
                                    mem[_6808 + 68] = _6807
                                    require ext_code.size(address(_4641))
                                    staticcall address(_4641).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(_6982) + _6808 + -mem[64] + 416]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7164 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                            idx = idx + 1
                            continue 
            else:
                mem[ceil32(return_data.size) + 196] = return_data.size
                mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    mem[0] = arg4
                    mem[32] = sha3(address(arg3), 5)
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 229
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 197] = uint256(stor5[address(arg3)][address(arg4)].field_0)
                    if not uint256(stor5[address(arg3)][address(arg4)].field_0):
                        if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                            revert with 0, 'No pools for swapping'
                        idx = 0
                        while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                            require uint128(idx) < mem[ceil32(return_data.size) + ceil32(return_data.size) + 197]
                            _2194 = mem[(32 * uint128(idx)) + ceil32(return_data.size) + ceil32(return_data.size) + 229]
                            if mem[(32 * uint128(idx)) + ceil32(return_data.size) + ceil32(return_data.size) + 241 len 20]:
                                _2229 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_2229] = 0
                                mem[_2229 + 32] = 0
                                mem[_2229 + 64] = 0
                                mem[_2229 + 96] = 0
                                mem[_2229 + 128] = 0
                                mem[_2229 + 160] = 0
                                mem[_2229 + 192] = 0
                                mem[_2229 + 224] = 0
                                mem[_2229 + 256] = 96
                                require ext_code.size(address(_2194))
                                staticcall address(_2194).getPoolId() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2296 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_2229 + 128] = mem[_2296]
                                mem[_2229] = 0
                                mem[_2229 + 32] = arg3
                                mem[_2229 + 64] = arg4
                                mem[_2229 + 96] = arg1
                                _2333 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2333] = 2
                                mem[_2333 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                                mem[_2229 + 256] = _2333
                                _2356 = mem[_2229 + 128]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2356
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args _2356
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2408 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _2432 = mem[_2408]
                                require mem[_2408] <= test266151307()
                                require _2408 + mem[_2408] + 31 < _2408 + return_data.size
                                _2450 = mem[_2408 + mem[_2408]]
                                require mem[_2408 + mem[_2408]] <= test266151307()
                                require (32 * mem[_2408 + mem[_2408]]) + 32 >= 0 and _2408 + ceil32(return_data.size) + (32 * mem[_2408 + mem[_2408]]) + 32 <= test266151307()
                                mem[64] = _2408 + ceil32(return_data.size) + (32 * mem[_2408 + mem[_2408]]) + 32
                                mem[_2408 + ceil32(return_data.size)] = _2450
                                require return_data.size >= _2432 + (32 * _2450) + 32
                                t = _2408 + _2432 + 32
                                u = _2408 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2450:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                _3094 = mem[_2408 + 32]
                                require mem[_2408 + 32] <= test266151307()
                                require _2408 + mem[_2408 + 32] + 31 < _2408 + return_data.size
                                _3171 = mem[_2408 + mem[_2408 + 32]]
                                require mem[_2408 + mem[_2408 + 32]] <= test266151307()
                                _3268 = mem[64]
                                require mem[64] + (32 * mem[_2408 + mem[_2408 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_2408 + mem[_2408 + 32]]) + 32 <= test266151307()
                                mem[64] = mem[64] + (32 * mem[_2408 + mem[_2408 + 32]]) + 32
                                mem[_3268] = _3171
                                require return_data.size >= _3094 + (32 * _3171) + 32
                                s = 0
                                t = _2408 + _3094 + 32
                                u = _3268 + 32
                                while s < _3171:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[32] = 4
                                mem[0] = mem[_2229 + 44 len 20]
                                mem[32] = sha3(address(_2194), 4)
                                require stor4[address(_2194)][mem[0]] < _3171
                                _4779 = mem[(32 * stor4[address(_2194)][mem[0]]) + _3268 + 32]
                                mem[0] = mem[_2229 + 76 len 20]
                                mem[32] = sha3(address(_2194), 4)
                                require stor4[address(_2194)][mem[0]] < _3171
                                _4871 = mem[(32 * stor4[address(_2194)][mem[0]]) + _3268 + 32]
                                mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 96
                                require mem[_2229] < 2
                                mem[mem[64] + 100] = mem[_2229]
                                mem[mem[64] + 132] = mem[_2229 + 44 len 20]
                                mem[mem[64] + 164] = mem[_2229 + 76 len 20]
                                mem[mem[64] + 196] = mem[_2229 + 96]
                                mem[mem[64] + 228] = mem[_2229 + 128]
                                mem[mem[64] + 260] = mem[_2229 + 160]
                                mem[mem[64] + 292] = mem[_2229 + 204 len 20]
                                mem[mem[64] + 324] = mem[_2229 + 236 len 20]
                                _5191 = mem[_2229 + 256]
                                mem[mem[64] + 356] = 288
                                _5218 = mem[_5191]
                                mem[mem[64] + 388] = mem[_5191]
                                s = 0
                                while s < _5218:
                                    mem[s + mem[64] + 420] = mem[s + _5191 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_5218) <= _5218:
                                    mem[mem[64] + 36] = _4779
                                    mem[mem[64] + 68] = _4871
                                    require ext_code.size(address(_2194))
                                    staticcall address(_2194).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                            gas gas_remaining wei
                                           args 96, _4779, _4871, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_5218) + 32]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6054 = mem[64]
                                else:
                                    mem[_5218 + mem[64] + 420] = 0
                                    mem[mem[64] + 36] = _4779
                                    mem[mem[64] + 68] = _4871
                                    require ext_code.size(address(_2194))
                                    staticcall address(_2194).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                            gas gas_remaining wei
                                           args 96, _4779, _4871, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_5218) + 32]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6055 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(address(arg4), sha3(address(arg3), 5))
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] = address(stor5[address(arg3)][address(arg4)].field_0)
                        idx = ceil32(return_data.size) + ceil32(return_data.size) + 229
                        s = 0
                        while ceil32(return_data.size) + ceil32(return_data.size) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 197 > idx:
                            mem[idx + 32] = address(stor5[address(arg3)][address(arg4)][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                            revert with 0, 'No pools for swapping'
                        idx = 0
                        while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                            require uint128(idx) < mem[ceil32(return_data.size) + ceil32(return_data.size) + 197]
                            _4643 = mem[(32 * uint128(idx)) + ceil32(return_data.size) + ceil32(return_data.size) + 229]
                            if mem[(32 * uint128(idx)) + ceil32(return_data.size) + ceil32(return_data.size) + 241 len 20]:
                                _4784 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_4784] = 0
                                mem[_4784 + 32] = 0
                                mem[_4784 + 64] = 0
                                mem[_4784 + 96] = 0
                                mem[_4784 + 128] = 0
                                mem[_4784 + 160] = 0
                                mem[_4784 + 192] = 0
                                mem[_4784 + 224] = 0
                                mem[_4784 + 256] = 96
                                require ext_code.size(address(_4643))
                                staticcall address(_4643).getPoolId() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4945 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_4784 + 128] = mem[_4945]
                                mem[_4784] = 0
                                mem[_4784 + 32] = arg3
                                mem[_4784 + 64] = arg4
                                mem[_4784 + 96] = arg1
                                _4996 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4996] = 2
                                mem[_4996 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                                mem[_4784 + 256] = _4996
                                _5025 = mem[_4784 + 128]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _5025
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args _5025
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5153 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _5192 = mem[_5153]
                                require mem[_5153] <= test266151307()
                                require _5153 + mem[_5153] + 31 < _5153 + return_data.size
                                _5234 = mem[_5153 + mem[_5153]]
                                require mem[_5153 + mem[_5153]] <= test266151307()
                                require (32 * mem[_5153 + mem[_5153]]) + 32 >= 0 and _5153 + ceil32(return_data.size) + (32 * mem[_5153 + mem[_5153]]) + 32 <= test266151307()
                                mem[64] = _5153 + ceil32(return_data.size) + (32 * mem[_5153 + mem[_5153]]) + 32
                                mem[_5153 + ceil32(return_data.size)] = _5234
                                require return_data.size >= _5192 + (32 * _5234) + 32
                                t = _5153 + _5192 + 32
                                u = _5153 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _5234:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                _5952 = mem[_5153 + 32]
                                require mem[_5153 + 32] <= test266151307()
                                require _5153 + mem[_5153 + 32] + 31 < _5153 + return_data.size
                                _5997 = mem[_5153 + mem[_5153 + 32]]
                                require mem[_5153 + mem[_5153 + 32]] <= test266151307()
                                _6080 = mem[64]
                                require mem[64] + (32 * mem[_5153 + mem[_5153 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_5153 + mem[_5153 + 32]]) + 32 <= test266151307()
                                mem[64] = mem[64] + (32 * mem[_5153 + mem[_5153 + 32]]) + 32
                                mem[_6080] = _5997
                                require return_data.size >= _5952 + (32 * _5997) + 32
                                s = 0
                                t = _5153 + _5952 + 32
                                u = _6080 + 32
                                while s < _5997:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[32] = 4
                                mem[0] = mem[_4784 + 44 len 20]
                                mem[32] = sha3(address(_4643), 4)
                                require stor4[address(_4643)][mem[0]] < _5997
                                _6745 = mem[(32 * stor4[address(_4643)][mem[0]]) + _6080 + 32]
                                mem[0] = mem[_4784 + 76 len 20]
                                mem[32] = sha3(address(_4643), 4)
                                require stor4[address(_4643)][mem[0]] < _5997
                                _6809 = mem[(32 * stor4[address(_4643)][mem[0]]) + _6080 + 32]
                                _6810 = mem[64]
                                mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 96
                                require mem[_4784] < 2
                                mem[mem[64] + 100] = mem[_4784]
                                mem[mem[64] + 132] = mem[_4784 + 44 len 20]
                                mem[mem[64] + 164] = mem[_4784 + 76 len 20]
                                mem[mem[64] + 196] = mem[_4784 + 96]
                                mem[mem[64] + 228] = mem[_4784 + 128]
                                mem[mem[64] + 260] = mem[_4784 + 160]
                                mem[mem[64] + 292] = mem[_4784 + 204 len 20]
                                mem[mem[64] + 324] = mem[_4784 + 236 len 20]
                                _6967 = mem[_4784 + 256]
                                mem[mem[64] + 356] = 288
                                _6983 = mem[_6967]
                                mem[mem[64] + 388] = mem[_6967]
                                s = 0
                                while s < _6983:
                                    mem[s + mem[64] + 420] = mem[s + _6967 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_6983) <= _6983:
                                    mem[_6810 + 36] = _6745
                                    mem[_6810 + 68] = _6809
                                    require ext_code.size(address(_4643))
                                    staticcall address(_4643).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(_6983) + _6810 + -mem[64] + 416]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7165 = mem[64]
                                else:
                                    mem[_6983 + _6810 + 420] = 0
                                    mem[_6810 + 36] = _6745
                                    mem[_6810 + 68] = _6809
                                    require ext_code.size(address(_4643))
                                    staticcall address(_4643).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(_6983) + _6810 + -mem[64] + 416]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7166 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                            idx = idx + 1
                            continue 
                else:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                    if not mem[ceil32(return_data.size) + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[0] = arg4
                    mem[32] = sha3(address(arg3), 5)
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 229
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 197] = uint256(stor5[address(arg3)][address(arg4)].field_0)
                    if not uint256(stor5[address(arg3)][address(arg4)].field_0):
                        if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                            revert with 0, 'No pools for swapping'
                        idx = 0
                        while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                            require uint128(idx) < mem[ceil32(return_data.size) + ceil32(return_data.size) + 197]
                            _2195 = mem[(32 * uint128(idx)) + ceil32(return_data.size) + ceil32(return_data.size) + 229]
                            if mem[(32 * uint128(idx)) + ceil32(return_data.size) + ceil32(return_data.size) + 241 len 20]:
                                _2230 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_2230] = 0
                                mem[_2230 + 32] = 0
                                mem[_2230 + 64] = 0
                                mem[_2230 + 96] = 0
                                mem[_2230 + 128] = 0
                                mem[_2230 + 160] = 0
                                mem[_2230 + 192] = 0
                                mem[_2230 + 224] = 0
                                mem[_2230 + 256] = 96
                                require ext_code.size(address(_2195))
                                staticcall address(_2195).getPoolId() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2297 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_2230 + 128] = mem[_2297]
                                mem[_2230] = 0
                                mem[_2230 + 32] = arg3
                                mem[_2230 + 64] = arg4
                                mem[_2230 + 96] = arg1
                                _2334 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2334] = 2
                                mem[_2334 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                                mem[_2230 + 256] = _2334
                                _2358 = mem[_2230 + 128]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2358
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args _2358
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2409 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _2433 = mem[_2409]
                                require mem[_2409] <= test266151307()
                                require _2409 + mem[_2409] + 31 < _2409 + return_data.size
                                _2451 = mem[_2409 + mem[_2409]]
                                require mem[_2409 + mem[_2409]] <= test266151307()
                                require (32 * mem[_2409 + mem[_2409]]) + 32 >= 0 and _2409 + ceil32(return_data.size) + (32 * mem[_2409 + mem[_2409]]) + 32 <= test266151307()
                                mem[64] = _2409 + ceil32(return_data.size) + (32 * mem[_2409 + mem[_2409]]) + 32
                                mem[_2409 + ceil32(return_data.size)] = _2451
                                require return_data.size >= _2433 + (32 * _2451) + 32
                                t = _2409 + _2433 + 32
                                u = _2409 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2451:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                _3097 = mem[_2409 + 32]
                                require mem[_2409 + 32] <= test266151307()
                                require _2409 + mem[_2409 + 32] + 31 < _2409 + return_data.size
                                _3174 = mem[_2409 + mem[_2409 + 32]]
                                require mem[_2409 + mem[_2409 + 32]] <= test266151307()
                                _3270 = mem[64]
                                require mem[64] + (32 * mem[_2409 + mem[_2409 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_2409 + mem[_2409 + 32]]) + 32 <= test266151307()
                                mem[64] = mem[64] + (32 * mem[_2409 + mem[_2409 + 32]]) + 32
                                mem[_3270] = _3174
                                require return_data.size >= _3097 + (32 * _3174) + 32
                                s = 0
                                t = _2409 + _3097 + 32
                                u = _3270 + 32
                                while s < _3174:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[32] = 4
                                mem[0] = mem[_2230 + 44 len 20]
                                mem[32] = sha3(address(_2195), 4)
                                require stor4[address(_2195)][mem[0]] < _3174
                                _4785 = mem[(32 * stor4[address(_2195)][mem[0]]) + _3270 + 32]
                                mem[0] = mem[_2230 + 76 len 20]
                                mem[32] = sha3(address(_2195), 4)
                                require stor4[address(_2195)][mem[0]] < _3174
                                _4876 = mem[(32 * stor4[address(_2195)][mem[0]]) + _3270 + 32]
                                mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 96
                                require mem[_2230] < 2
                                mem[mem[64] + 100] = mem[_2230]
                                mem[mem[64] + 132] = mem[_2230 + 44 len 20]
                                mem[mem[64] + 164] = mem[_2230 + 76 len 20]
                                mem[mem[64] + 196] = mem[_2230 + 96]
                                mem[mem[64] + 228] = mem[_2230 + 128]
                                mem[mem[64] + 260] = mem[_2230 + 160]
                                mem[mem[64] + 292] = mem[_2230 + 204 len 20]
                                mem[mem[64] + 324] = mem[_2230 + 236 len 20]
                                _5193 = mem[_2230 + 256]
                                mem[mem[64] + 356] = 288
                                _5219 = mem[_5193]
                                mem[mem[64] + 388] = mem[_5193]
                                s = 0
                                while s < _5219:
                                    mem[s + mem[64] + 420] = mem[s + _5193 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_5219) <= _5219:
                                    mem[mem[64] + 36] = _4785
                                    mem[mem[64] + 68] = _4876
                                    require ext_code.size(address(_2195))
                                    staticcall address(_2195).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                            gas gas_remaining wei
                                           args 96, _4785, _4876, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_5219) + 32]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6056 = mem[64]
                                else:
                                    mem[_5219 + mem[64] + 420] = 0
                                    mem[mem[64] + 36] = _4785
                                    mem[mem[64] + 68] = _4876
                                    require ext_code.size(address(_2195))
                                    staticcall address(_2195).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                            gas gas_remaining wei
                                           args 96, _4785, _4876, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_5219) + 32]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6057 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(address(arg4), sha3(address(arg3), 5))
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] = address(stor5[address(arg3)][address(arg4)].field_0)
                        idx = ceil32(return_data.size) + ceil32(return_data.size) + 229
                        s = 0
                        while ceil32(return_data.size) + ceil32(return_data.size) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 197 > idx:
                            mem[idx + 32] = address(stor5[address(arg3)][address(arg4)][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                            revert with 0, 'No pools for swapping'
                        idx = 0
                        while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                            require uint128(idx) < mem[ceil32(return_data.size) + ceil32(return_data.size) + 197]
                            _4645 = mem[(32 * uint128(idx)) + ceil32(return_data.size) + ceil32(return_data.size) + 229]
                            if mem[(32 * uint128(idx)) + ceil32(return_data.size) + ceil32(return_data.size) + 241 len 20]:
                                _4790 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_4790] = 0
                                mem[_4790 + 32] = 0
                                mem[_4790 + 64] = 0
                                mem[_4790 + 96] = 0
                                mem[_4790 + 128] = 0
                                mem[_4790 + 160] = 0
                                mem[_4790 + 192] = 0
                                mem[_4790 + 224] = 0
                                mem[_4790 + 256] = 96
                                require ext_code.size(address(_4645))
                                staticcall address(_4645).getPoolId() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4946 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_4790 + 128] = mem[_4946]
                                mem[_4790] = 0
                                mem[_4790 + 32] = arg3
                                mem[_4790 + 64] = arg4
                                mem[_4790 + 96] = arg1
                                _4997 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4997] = 2
                                mem[_4997 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                                mem[_4790 + 256] = _4997
                                _5028 = mem[_4790 + 128]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _5028
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args _5028
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5155 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _5194 = mem[_5155]
                                require mem[_5155] <= test266151307()
                                require _5155 + mem[_5155] + 31 < _5155 + return_data.size
                                _5235 = mem[_5155 + mem[_5155]]
                                require mem[_5155 + mem[_5155]] <= test266151307()
                                require (32 * mem[_5155 + mem[_5155]]) + 32 >= 0 and _5155 + ceil32(return_data.size) + (32 * mem[_5155 + mem[_5155]]) + 32 <= test266151307()
                                mem[64] = _5155 + ceil32(return_data.size) + (32 * mem[_5155 + mem[_5155]]) + 32
                                mem[_5155 + ceil32(return_data.size)] = _5235
                                require return_data.size >= _5194 + (32 * _5235) + 32
                                t = _5155 + _5194 + 32
                                u = _5155 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _5235:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                _5955 = mem[_5155 + 32]
                                require mem[_5155 + 32] <= test266151307()
                                require _5155 + mem[_5155 + 32] + 31 < _5155 + return_data.size
                                _5998 = mem[_5155 + mem[_5155 + 32]]
                                require mem[_5155 + mem[_5155 + 32]] <= test266151307()
                                _6081 = mem[64]
                                require mem[64] + (32 * mem[_5155 + mem[_5155 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_5155 + mem[_5155 + 32]]) + 32 <= test266151307()
                                mem[64] = mem[64] + (32 * mem[_5155 + mem[_5155 + 32]]) + 32
                                mem[_6081] = _5998
                                require return_data.size >= _5955 + (32 * _5998) + 32
                                s = 0
                                t = _5155 + _5955 + 32
                                u = _6081 + 32
                                while s < _5998:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[32] = 4
                                mem[0] = mem[_4790 + 44 len 20]
                                mem[32] = sha3(address(_4645), 4)
                                require stor4[address(_4645)][mem[0]] < _5998
                                _6750 = mem[(32 * stor4[address(_4645)][mem[0]]) + _6081 + 32]
                                mem[0] = mem[_4790 + 76 len 20]
                                mem[32] = sha3(address(_4645), 4)
                                require stor4[address(_4645)][mem[0]] < _5998
                                _6811 = mem[(32 * stor4[address(_4645)][mem[0]]) + _6081 + 32]
                                mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 96
                                require mem[_4790] < 2
                                mem[mem[64] + 100] = mem[_4790]
                                mem[mem[64] + 132] = mem[_4790 + 44 len 20]
                                mem[mem[64] + 164] = mem[_4790 + 76 len 20]
                                mem[mem[64] + 196] = mem[_4790 + 96]
                                mem[mem[64] + 228] = mem[_4790 + 128]
                                mem[mem[64] + 260] = mem[_4790 + 160]
                                mem[mem[64] + 292] = mem[_4790 + 204 len 20]
                                mem[mem[64] + 324] = mem[_4790 + 236 len 20]
                                _6968 = mem[_4790 + 256]
                                mem[mem[64] + 356] = 288
                                _6984 = mem[_6968]
                                mem[mem[64] + 388] = mem[_6968]
                                s = 0
                                while s < _6984:
                                    mem[s + mem[64] + 420] = mem[s + _6968 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_6984) <= _6984:
                                    mem[mem[64] + 36] = _6750
                                    mem[mem[64] + 68] = _6811
                                    require ext_code.size(address(_4645))
                                    staticcall address(_4645).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                            gas gas_remaining wei
                                           args 96, _6750, _6811, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_6984) + 32]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7167 = mem[64]
                                else:
                                    mem[_6984 + mem[64] + 420] = 0
                                    mem[mem[64] + 36] = _6750
                                    mem[mem[64] + 68] = _6811
                                    require ext_code.size(address(_4645))
                                    staticcall address(_4645).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                            gas gas_remaining wei
                                           args 96, _6750, _6811, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_6984) + 32]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7168 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                            idx = idx + 1
                            continue 
        else:
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = address(vaultAddress)
            require ext_code.size(arg3)
            staticcall arg3.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(vaultAddress)
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
            mem[(2 * ceil32(return_data.size)) + 164] = arg1
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor3)
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 196 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), arg1, mem[(2 * ceil32(return_data.size)) + 196 len 28]
            mem[(2 * ceil32(return_data.size)) + 264] = 0
            call arg3.mem[(2 * ceil32(return_data.size)) + 196 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 200 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not ext_call.return_data[0]:
                    mem[0] = arg4
                    mem[32] = sha3(address(arg3), 5)
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 228
                    mem[(2 * ceil32(return_data.size)) + 196] = uint256(stor5[address(arg3)][address(arg4)].field_0)
                    if not uint256(stor5[address(arg3)][address(arg4)].field_0):
                        if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                            revert with 0, 'No pools for swapping'
                        idx = 0
                        while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                            require uint128(idx) < mem[(2 * ceil32(return_data.size)) + 196]
                            _2200 = mem[(32 * uint128(idx)) + (2 * ceil32(return_data.size)) + 228]
                            if mem[(32 * uint128(idx)) + (2 * ceil32(return_data.size)) + 240 len 20]:
                                _2235 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_2235] = 0
                                mem[_2235 + 32] = 0
                                mem[_2235 + 64] = 0
                                mem[_2235 + 96] = 0
                                mem[_2235 + 128] = 0
                                mem[_2235 + 160] = 0
                                mem[_2235 + 192] = 0
                                mem[_2235 + 224] = 0
                                mem[_2235 + 256] = 96
                                require ext_code.size(address(_2200))
                                staticcall address(_2200).getPoolId() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2302 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_2235 + 128] = mem[_2302]
                                mem[_2235] = 0
                                mem[_2235 + 32] = arg3
                                mem[_2235 + 64] = arg4
                                mem[_2235 + 96] = arg1
                                _2339 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2339] = 2
                                mem[_2339 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                                mem[_2235 + 256] = _2339
                                _2368 = mem[_2235 + 128]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2368
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args _2368
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2414 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _2438 = mem[_2414]
                                require mem[_2414] <= test266151307()
                                require _2414 + mem[_2414] + 31 < _2414 + return_data.size
                                _2456 = mem[_2414 + mem[_2414]]
                                require mem[_2414 + mem[_2414]] <= test266151307()
                                require (32 * mem[_2414 + mem[_2414]]) + 32 >= 0 and _2414 + ceil32(return_data.size) + (32 * mem[_2414 + mem[_2414]]) + 32 <= test266151307()
                                mem[64] = _2414 + ceil32(return_data.size) + (32 * mem[_2414 + mem[_2414]]) + 32
                                mem[_2414 + ceil32(return_data.size)] = _2456
                                require return_data.size >= _2438 + (32 * _2456) + 32
                                t = _2414 + _2438 + 32
                                u = _2414 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2456:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                _3112 = mem[_2414 + 32]
                                require mem[_2414 + 32] <= test266151307()
                                require _2414 + mem[_2414 + 32] + 31 < _2414 + return_data.size
                                _3189 = mem[_2414 + mem[_2414 + 32]]
                                require mem[_2414 + mem[_2414 + 32]] <= test266151307()
                                _3280 = mem[64]
                                require mem[64] + (32 * mem[_2414 + mem[_2414 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_2414 + mem[_2414 + 32]]) + 32 <= test266151307()
                                mem[64] = mem[64] + (32 * mem[_2414 + mem[_2414 + 32]]) + 32
                                mem[_3280] = _3189
                                require return_data.size >= _3112 + (32 * _3189) + 32
                                s = 0
                                t = _2414 + _3112 + 32
                                u = _3280 + 32
                                while s < _3189:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[32] = 4
                                mem[0] = mem[_2235 + 44 len 20]
                                mem[32] = sha3(address(_2200), 4)
                                require stor4[address(_2200)][mem[0]] < _3189
                                _4815 = mem[(32 * stor4[address(_2200)][mem[0]]) + _3280 + 32]
                                mem[0] = mem[_2235 + 76 len 20]
                                mem[32] = sha3(address(_2200), 4)
                                require stor4[address(_2200)][mem[0]] < _3189
                                _4901 = mem[(32 * stor4[address(_2200)][mem[0]]) + _3280 + 32]
                                mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 96
                                require mem[_2235] < 2
                                mem[mem[64] + 100] = mem[_2235]
                                mem[mem[64] + 132] = mem[_2235 + 44 len 20]
                                mem[mem[64] + 164] = mem[_2235 + 76 len 20]
                                mem[mem[64] + 196] = mem[_2235 + 96]
                                mem[mem[64] + 228] = mem[_2235 + 128]
                                mem[mem[64] + 260] = mem[_2235 + 160]
                                mem[mem[64] + 292] = mem[_2235 + 204 len 20]
                                mem[mem[64] + 324] = mem[_2235 + 236 len 20]
                                _5203 = mem[_2235 + 256]
                                mem[mem[64] + 356] = 288
                                _5224 = mem[_5203]
                                mem[mem[64] + 388] = mem[_5203]
                                s = 0
                                while s < _5224:
                                    mem[s + mem[64] + 420] = mem[s + _5203 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_5224) <= _5224:
                                    mem[mem[64] + 36] = _4815
                                    mem[mem[64] + 68] = _4901
                                    require ext_code.size(address(_2200))
                                    staticcall address(_2200).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                            gas gas_remaining wei
                                           args 96, _4815, _4901, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_5224) + 32]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6066 = mem[64]
                                else:
                                    mem[_5224 + mem[64] + 420] = 0
                                    mem[mem[64] + 36] = _4815
                                    mem[mem[64] + 68] = _4901
                                    require ext_code.size(address(_2200))
                                    staticcall address(_2200).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                            gas gas_remaining wei
                                           args 96, _4815, _4901, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_5224) + 32]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6067 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(address(arg4), sha3(address(arg3), 5))
                        mem[(2 * ceil32(return_data.size)) + 228] = address(stor5[address(arg3)][address(arg4)].field_0)
                        idx = (2 * ceil32(return_data.size)) + 228
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 196 > idx:
                            mem[idx + 32] = address(stor5[address(arg3)][address(arg4)][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                            revert with 0, 'No pools for swapping'
                        idx = 0
                        while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                            require uint128(idx) < mem[(2 * ceil32(return_data.size)) + 196]
                            _4655 = mem[(32 * uint128(idx)) + (2 * ceil32(return_data.size)) + 228]
                            if mem[(32 * uint128(idx)) + (2 * ceil32(return_data.size)) + 240 len 20]:
                                _4820 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_4820] = 0
                                mem[_4820 + 32] = 0
                                mem[_4820 + 64] = 0
                                mem[_4820 + 96] = 0
                                mem[_4820 + 128] = 0
                                mem[_4820 + 160] = 0
                                mem[_4820 + 192] = 0
                                mem[_4820 + 224] = 0
                                mem[_4820 + 256] = 96
                                require ext_code.size(address(_4655))
                                staticcall address(_4655).getPoolId() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4951 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_4820 + 128] = mem[_4951]
                                mem[_4820] = 0
                                mem[_4820 + 32] = arg3
                                mem[_4820 + 64] = arg4
                                mem[_4820 + 96] = arg1
                                _5002 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5002] = 2
                                mem[_5002 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                                mem[_4820 + 256] = _5002
                                _5043 = mem[_4820 + 128]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _5043
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args _5043
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5165 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _5204 = mem[_5165]
                                require mem[_5165] <= test266151307()
                                require _5165 + mem[_5165] + 31 < _5165 + return_data.size
                                _5240 = mem[_5165 + mem[_5165]]
                                require mem[_5165 + mem[_5165]] <= test266151307()
                                require (32 * mem[_5165 + mem[_5165]]) + 32 >= 0 and _5165 + ceil32(return_data.size) + (32 * mem[_5165 + mem[_5165]]) + 32 <= test266151307()
                                mem[64] = _5165 + ceil32(return_data.size) + (32 * mem[_5165 + mem[_5165]]) + 32
                                mem[_5165 + ceil32(return_data.size)] = _5240
                                require return_data.size >= _5204 + (32 * _5240) + 32
                                t = _5165 + _5204 + 32
                                u = _5165 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _5240:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                _5970 = mem[_5165 + 32]
                                require mem[_5165 + 32] <= test266151307()
                                require _5165 + mem[_5165 + 32] + 31 < _5165 + return_data.size
                                _6003 = mem[_5165 + mem[_5165 + 32]]
                                require mem[_5165 + mem[_5165 + 32]] <= test266151307()
                                _6086 = mem[64]
                                require mem[64] + (32 * mem[_5165 + mem[_5165 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_5165 + mem[_5165 + 32]]) + 32 <= test266151307()
                                mem[64] = mem[64] + (32 * mem[_5165 + mem[_5165 + 32]]) + 32
                                mem[_6086] = _6003
                                require return_data.size >= _5970 + (32 * _6003) + 32
                                s = 0
                                t = _5165 + _5970 + 32
                                u = _6086 + 32
                                while s < _6003:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[32] = 4
                                mem[0] = mem[_4820 + 44 len 20]
                                mem[32] = sha3(address(_4655), 4)
                                require stor4[address(_4655)][mem[0]] < _6003
                                _6775 = mem[(32 * stor4[address(_4655)][mem[0]]) + _6086 + 32]
                                mem[0] = mem[_4820 + 76 len 20]
                                mem[32] = sha3(address(_4655), 4)
                                require stor4[address(_4655)][mem[0]] < _6003
                                _6821 = mem[(32 * stor4[address(_4655)][mem[0]]) + _6086 + 32]
                                mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 96
                                require mem[_4820] < 2
                                mem[mem[64] + 100] = mem[_4820]
                                mem[mem[64] + 132] = mem[_4820 + 44 len 20]
                                mem[mem[64] + 164] = mem[_4820 + 76 len 20]
                                mem[mem[64] + 196] = mem[_4820 + 96]
                                mem[mem[64] + 228] = mem[_4820 + 128]
                                mem[mem[64] + 260] = mem[_4820 + 160]
                                mem[mem[64] + 292] = mem[_4820 + 204 len 20]
                                mem[mem[64] + 324] = mem[_4820 + 236 len 20]
                                _6973 = mem[_4820 + 256]
                                mem[mem[64] + 356] = 288
                                _6989 = mem[_6973]
                                mem[mem[64] + 388] = mem[_6973]
                                s = 0
                                while s < _6989:
                                    mem[s + mem[64] + 420] = mem[s + _6973 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_6989) <= _6989:
                                    mem[mem[64] + 36] = _6775
                                    mem[mem[64] + 68] = _6821
                                    require ext_code.size(address(_4655))
                                    staticcall address(_4655).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                            gas gas_remaining wei
                                           args 96, _6775, _6821, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_6989) + 32]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7177 = mem[64]
                                else:
                                    mem[_6989 + mem[64] + 420] = 0
                                    mem[mem[64] + 36] = _6775
                                    mem[mem[64] + 68] = _6821
                                    require ext_code.size(address(_4655))
                                    staticcall address(_4655).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                            gas gas_remaining wei
                                           args 96, _6775, _6821, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_6989) + 32]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7178 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                            idx = idx + 1
                            continue 
                else:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 0, stor3) == bool(0, Mask(224, 0, stor3))
                    if not 0, Mask(224, 0, stor3):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[0] = arg4
                    mem[32] = sha3(address(arg3), 5)
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 228
                    mem[(2 * ceil32(return_data.size)) + 196] = uint256(stor5[address(arg3)][address(arg4)].field_0)
                    if not uint256(stor5[address(arg3)][address(arg4)].field_0):
                        if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                            revert with 0, 'No pools for swapping'
                        idx = 0
                        while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                            require uint128(idx) < mem[(2 * ceil32(return_data.size)) + 196]
                            _2201 = mem[(32 * uint128(idx)) + (2 * ceil32(return_data.size)) + 228]
                            if mem[(32 * uint128(idx)) + (2 * ceil32(return_data.size)) + 240 len 20]:
                                _2236 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_2236] = 0
                                mem[_2236 + 32] = 0
                                mem[_2236 + 64] = 0
                                mem[_2236 + 96] = 0
                                mem[_2236 + 128] = 0
                                mem[_2236 + 160] = 0
                                mem[_2236 + 192] = 0
                                mem[_2236 + 224] = 0
                                mem[_2236 + 256] = 96
                                require ext_code.size(address(_2201))
                                staticcall address(_2201).getPoolId() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2303 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_2236 + 128] = mem[_2303]
                                mem[_2236] = 0
                                mem[_2236 + 32] = arg3
                                mem[_2236 + 64] = arg4
                                mem[_2236 + 96] = arg1
                                _2340 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2340] = 2
                                mem[_2340 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                                mem[_2236 + 256] = _2340
                                _2370 = mem[_2236 + 128]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2370
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args _2370
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2415 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _2439 = mem[_2415]
                                require mem[_2415] <= test266151307()
                                require _2415 + mem[_2415] + 31 < _2415 + return_data.size
                                _2457 = mem[_2415 + mem[_2415]]
                                require mem[_2415 + mem[_2415]] <= test266151307()
                                require (32 * mem[_2415 + mem[_2415]]) + 32 >= 0 and _2415 + ceil32(return_data.size) + (32 * mem[_2415 + mem[_2415]]) + 32 <= test266151307()
                                mem[64] = _2415 + ceil32(return_data.size) + (32 * mem[_2415 + mem[_2415]]) + 32
                                mem[_2415 + ceil32(return_data.size)] = _2457
                                require return_data.size >= _2439 + (32 * _2457) + 32
                                t = _2415 + _2439 + 32
                                u = _2415 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2457:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                _3115 = mem[_2415 + 32]
                                require mem[_2415 + 32] <= test266151307()
                                require _2415 + mem[_2415 + 32] + 31 < _2415 + return_data.size
                                _3192 = mem[_2415 + mem[_2415 + 32]]
                                require mem[_2415 + mem[_2415 + 32]] <= test266151307()
                                _3282 = mem[64]
                                require mem[64] + (32 * mem[_2415 + mem[_2415 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_2415 + mem[_2415 + 32]]) + 32 <= test266151307()
                                mem[64] = mem[64] + (32 * mem[_2415 + mem[_2415 + 32]]) + 32
                                mem[_3282] = _3192
                                require return_data.size >= _3115 + (32 * _3192) + 32
                                s = 0
                                t = _2415 + _3115 + 32
                                u = _3282 + 32
                                while s < _3192:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[32] = 4
                                mem[0] = mem[_2236 + 44 len 20]
                                mem[32] = sha3(address(_2201), 4)
                                require stor4[address(_2201)][mem[0]] < _3192
                                _4821 = mem[(32 * stor4[address(_2201)][mem[0]]) + _3282 + 32]
                                mem[0] = mem[_2236 + 76 len 20]
                                mem[32] = sha3(address(_2201), 4)
                                require stor4[address(_2201)][mem[0]] < _3192
                                _4906 = mem[(32 * stor4[address(_2201)][mem[0]]) + _3282 + 32]
                                mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 96
                                require mem[_2236] < 2
                                mem[mem[64] + 100] = mem[_2236]
                                mem[mem[64] + 132] = mem[_2236 + 44 len 20]
                                mem[mem[64] + 164] = mem[_2236 + 76 len 20]
                                mem[mem[64] + 196] = mem[_2236 + 96]
                                mem[mem[64] + 228] = mem[_2236 + 128]
                                mem[mem[64] + 260] = mem[_2236 + 160]
                                mem[mem[64] + 292] = mem[_2236 + 204 len 20]
                                mem[mem[64] + 324] = mem[_2236 + 236 len 20]
                                _5205 = mem[_2236 + 256]
                                mem[mem[64] + 356] = 288
                                _5225 = mem[_5205]
                                mem[mem[64] + 388] = mem[_5205]
                                s = 0
                                while s < _5225:
                                    mem[s + mem[64] + 420] = mem[s + _5205 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_5225) <= _5225:
                                    mem[mem[64] + 36] = _4821
                                    mem[mem[64] + 68] = _4906
                                    require ext_code.size(address(_2201))
                                    staticcall address(_2201).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                            gas gas_remaining wei
                                           args 96, _4821, _4906, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_5225) + 32]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6068 = mem[64]
                                else:
                                    mem[_5225 + mem[64] + 420] = 0
                                    mem[mem[64] + 36] = _4821
                                    mem[mem[64] + 68] = _4906
                                    require ext_code.size(address(_2201))
                                    staticcall address(_2201).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                            gas gas_remaining wei
                                           args 96, _4821, _4906, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_5225) + 32]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6069 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(address(arg4), sha3(address(arg3), 5))
                        mem[(2 * ceil32(return_data.size)) + 228] = address(stor5[address(arg3)][address(arg4)].field_0)
                        idx = (2 * ceil32(return_data.size)) + 228
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 196 > idx:
                            mem[idx + 32] = address(stor5[address(arg3)][address(arg4)][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                            revert with 0, 'No pools for swapping'
                        idx = 0
                        while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                            require uint128(idx) < mem[(2 * ceil32(return_data.size)) + 196]
                            _4657 = mem[(32 * uint128(idx)) + (2 * ceil32(return_data.size)) + 228]
                            if mem[(32 * uint128(idx)) + (2 * ceil32(return_data.size)) + 240 len 20]:
                                _4826 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_4826] = 0
                                mem[_4826 + 32] = 0
                                mem[_4826 + 64] = 0
                                mem[_4826 + 96] = 0
                                mem[_4826 + 128] = 0
                                mem[_4826 + 160] = 0
                                mem[_4826 + 192] = 0
                                mem[_4826 + 224] = 0
                                mem[_4826 + 256] = 96
                                require ext_code.size(address(_4657))
                                staticcall address(_4657).getPoolId() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4952 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_4826 + 128] = mem[_4952]
                                mem[_4826] = 0
                                mem[_4826 + 32] = arg3
                                mem[_4826 + 64] = arg4
                                mem[_4826 + 96] = arg1
                                _5003 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5003] = 2
                                mem[_5003 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                                mem[_4826 + 256] = _5003
                                _5046 = mem[_4826 + 128]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _5046
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args _5046
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5167 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _5206 = mem[_5167]
                                require mem[_5167] <= test266151307()
                                require _5167 + mem[_5167] + 31 < _5167 + return_data.size
                                _5241 = mem[_5167 + mem[_5167]]
                                require mem[_5167 + mem[_5167]] <= test266151307()
                                require (32 * mem[_5167 + mem[_5167]]) + 32 >= 0 and _5167 + ceil32(return_data.size) + (32 * mem[_5167 + mem[_5167]]) + 32 <= test266151307()
                                mem[64] = _5167 + ceil32(return_data.size) + (32 * mem[_5167 + mem[_5167]]) + 32
                                mem[_5167 + ceil32(return_data.size)] = _5241
                                require return_data.size >= _5206 + (32 * _5241) + 32
                                t = _5167 + _5206 + 32
                                u = _5167 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _5241:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                _5973 = mem[_5167 + 32]
                                require mem[_5167 + 32] <= test266151307()
                                require _5167 + mem[_5167 + 32] + 31 < _5167 + return_data.size
                                _6004 = mem[_5167 + mem[_5167 + 32]]
                                require mem[_5167 + mem[_5167 + 32]] <= test266151307()
                                _6087 = mem[64]
                                require mem[64] + (32 * mem[_5167 + mem[_5167 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_5167 + mem[_5167 + 32]]) + 32 <= test266151307()
                                mem[64] = mem[64] + (32 * mem[_5167 + mem[_5167 + 32]]) + 32
                                mem[_6087] = _6004
                                require return_data.size >= _5973 + (32 * _6004) + 32
                                s = 0
                                t = _5167 + _5973 + 32
                                u = _6087 + 32
                                while s < _6004:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[32] = 4
                                mem[0] = mem[_4826 + 44 len 20]
                                mem[32] = sha3(address(_4657), 4)
                                require stor4[address(_4657)][mem[0]] < _6004
                                _6780 = mem[(32 * stor4[address(_4657)][mem[0]]) + _6087 + 32]
                                mem[0] = mem[_4826 + 76 len 20]
                                mem[32] = sha3(address(_4657), 4)
                                require stor4[address(_4657)][mem[0]] < _6004
                                _6823 = mem[(32 * stor4[address(_4657)][mem[0]]) + _6087 + 32]
                                mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 96
                                require mem[_4826] < 2
                                mem[mem[64] + 100] = mem[_4826]
                                mem[mem[64] + 132] = mem[_4826 + 44 len 20]
                                mem[mem[64] + 164] = mem[_4826 + 76 len 20]
                                mem[mem[64] + 196] = mem[_4826 + 96]
                                mem[mem[64] + 228] = mem[_4826 + 128]
                                mem[mem[64] + 260] = mem[_4826 + 160]
                                mem[mem[64] + 292] = mem[_4826 + 204 len 20]
                                mem[mem[64] + 324] = mem[_4826 + 236 len 20]
                                _6974 = mem[_4826 + 256]
                                mem[mem[64] + 356] = 288
                                _6990 = mem[_6974]
                                mem[mem[64] + 388] = mem[_6974]
                                s = 0
                                while s < _6990:
                                    mem[s + mem[64] + 420] = mem[s + _6974 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_6990) <= _6990:
                                    mem[mem[64] + 36] = _6780
                                    mem[mem[64] + 68] = _6823
                                    require ext_code.size(address(_4657))
                                    staticcall address(_4657).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                            gas gas_remaining wei
                                           args 96, _6780, _6823, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_6990) + 32]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7179 = mem[64]
                                else:
                                    mem[_6990 + mem[64] + 420] = 0
                                    mem[mem[64] + 36] = _6780
                                    mem[mem[64] + 68] = _6823
                                    require ext_code.size(address(_4657))
                                    staticcall address(_4657).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                            gas gas_remaining wei
                                           args 96, _6780, _6823, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_6990) + 32]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7180 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                            idx = idx + 1
                            continue 
            else:
                mem[(2 * ceil32(return_data.size)) + 196] = return_data.size
                mem[(2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    mem[0] = arg4
                    mem[32] = sha3(address(arg3), 5)
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 229
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = uint256(stor5[address(arg3)][address(arg4)].field_0)
                    if not uint256(stor5[address(arg3)][address(arg4)].field_0):
                        if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                            revert with 0, 'No pools for swapping'
                        idx = 0
                        while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                            require uint128(idx) < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]
                            _2202 = mem[(32 * uint128(idx)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229]
                            if mem[(32 * uint128(idx)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 241 len 20]:
                                _2237 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_2237] = 0
                                mem[_2237 + 32] = 0
                                mem[_2237 + 64] = 0
                                mem[_2237 + 96] = 0
                                mem[_2237 + 128] = 0
                                mem[_2237 + 160] = 0
                                mem[_2237 + 192] = 0
                                mem[_2237 + 224] = 0
                                mem[_2237 + 256] = 96
                                require ext_code.size(address(_2202))
                                staticcall address(_2202).getPoolId() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2304 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_2237 + 128] = mem[_2304]
                                mem[_2237] = 0
                                mem[_2237 + 32] = arg3
                                mem[_2237 + 64] = arg4
                                mem[_2237 + 96] = arg1
                                _2341 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2341] = 2
                                mem[_2341 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                                mem[_2237 + 256] = _2341
                                _2372 = mem[_2237 + 128]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2372
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args _2372
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2416 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _2440 = mem[_2416]
                                require mem[_2416] <= test266151307()
                                require _2416 + mem[_2416] + 31 < _2416 + return_data.size
                                _2458 = mem[_2416 + mem[_2416]]
                                require mem[_2416 + mem[_2416]] <= test266151307()
                                require (32 * mem[_2416 + mem[_2416]]) + 32 >= 0 and _2416 + ceil32(return_data.size) + (32 * mem[_2416 + mem[_2416]]) + 32 <= test266151307()
                                mem[64] = _2416 + ceil32(return_data.size) + (32 * mem[_2416 + mem[_2416]]) + 32
                                mem[_2416 + ceil32(return_data.size)] = _2458
                                require return_data.size >= _2440 + (32 * _2458) + 32
                                t = _2416 + _2440 + 32
                                u = _2416 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2458:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                _3118 = mem[_2416 + 32]
                                require mem[_2416 + 32] <= test266151307()
                                require _2416 + mem[_2416 + 32] + 31 < _2416 + return_data.size
                                _3195 = mem[_2416 + mem[_2416 + 32]]
                                require mem[_2416 + mem[_2416 + 32]] <= test266151307()
                                _3284 = mem[64]
                                require mem[64] + (32 * mem[_2416 + mem[_2416 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_2416 + mem[_2416 + 32]]) + 32 <= test266151307()
                                mem[64] = mem[64] + (32 * mem[_2416 + mem[_2416 + 32]]) + 32
                                mem[_3284] = _3195
                                require return_data.size >= _3118 + (32 * _3195) + 32
                                s = 0
                                t = _2416 + _3118 + 32
                                u = _3284 + 32
                                while s < _3195:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[32] = 4
                                mem[0] = mem[_2237 + 44 len 20]
                                mem[32] = sha3(address(_2202), 4)
                                require stor4[address(_2202)][mem[0]] < _3195
                                _4827 = mem[(32 * stor4[address(_2202)][mem[0]]) + _3284 + 32]
                                mem[0] = mem[_2237 + 76 len 20]
                                mem[32] = sha3(address(_2202), 4)
                                require stor4[address(_2202)][mem[0]] < _3195
                                _4911 = mem[(32 * stor4[address(_2202)][mem[0]]) + _3284 + 32]
                                _4912 = mem[64]
                                mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 96
                                require mem[_2237] < 2
                                mem[mem[64] + 100] = mem[_2237]
                                mem[mem[64] + 132] = mem[_2237 + 44 len 20]
                                mem[mem[64] + 164] = mem[_2237 + 76 len 20]
                                mem[mem[64] + 196] = mem[_2237 + 96]
                                mem[mem[64] + 228] = mem[_2237 + 128]
                                mem[mem[64] + 260] = mem[_2237 + 160]
                                mem[mem[64] + 292] = mem[_2237 + 204 len 20]
                                mem[mem[64] + 324] = mem[_2237 + 236 len 20]
                                _5207 = mem[_2237 + 256]
                                mem[mem[64] + 356] = 288
                                _5226 = mem[_5207]
                                mem[mem[64] + 388] = mem[_5207]
                                s = 0
                                while s < _5226:
                                    mem[s + mem[64] + 420] = mem[s + _5207 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_5226) <= _5226:
                                    mem[_4912 + 36] = _4827
                                    mem[_4912 + 68] = _4911
                                    require ext_code.size(address(_2202))
                                    staticcall address(_2202).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(_5226) + _4912 + -mem[64] + 416]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6070 = mem[64]
                                else:
                                    mem[_5226 + _4912 + 420] = 0
                                    mem[_4912 + 36] = _4827
                                    mem[_4912 + 68] = _4911
                                    require ext_code.size(address(_2202))
                                    staticcall address(_2202).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(_5226) + _4912 + -mem[64] + 416]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6071 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(address(arg4), sha3(address(arg3), 5))
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = address(stor5[address(arg3)][address(arg4)].field_0)
                        idx = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229
                        s = 0
                        while (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 197 > idx:
                            mem[idx + 32] = address(stor5[address(arg3)][address(arg4)][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                            revert with 0, 'No pools for swapping'
                        idx = 0
                        while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                            require uint128(idx) < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]
                            _4659 = mem[(32 * uint128(idx)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229]
                            if mem[(32 * uint128(idx)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 241 len 20]:
                                _4832 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_4832] = 0
                                mem[_4832 + 32] = 0
                                mem[_4832 + 64] = 0
                                mem[_4832 + 96] = 0
                                mem[_4832 + 128] = 0
                                mem[_4832 + 160] = 0
                                mem[_4832 + 192] = 0
                                mem[_4832 + 224] = 0
                                mem[_4832 + 256] = 96
                                require ext_code.size(address(_4659))
                                staticcall address(_4659).getPoolId() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4953 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_4832 + 128] = mem[_4953]
                                mem[_4832] = 0
                                mem[_4832 + 32] = arg3
                                mem[_4832 + 64] = arg4
                                mem[_4832 + 96] = arg1
                                _5004 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5004] = 2
                                mem[_5004 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                                mem[_4832 + 256] = _5004
                                _5049 = mem[_4832 + 128]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _5049
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args _5049
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5169 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _5208 = mem[_5169]
                                require mem[_5169] <= test266151307()
                                require _5169 + mem[_5169] + 31 < _5169 + return_data.size
                                _5242 = mem[_5169 + mem[_5169]]
                                require mem[_5169 + mem[_5169]] <= test266151307()
                                require (32 * mem[_5169 + mem[_5169]]) + 32 >= 0 and _5169 + ceil32(return_data.size) + (32 * mem[_5169 + mem[_5169]]) + 32 <= test266151307()
                                mem[64] = _5169 + ceil32(return_data.size) + (32 * mem[_5169 + mem[_5169]]) + 32
                                mem[_5169 + ceil32(return_data.size)] = _5242
                                require return_data.size >= _5208 + (32 * _5242) + 32
                                t = _5169 + _5208 + 32
                                u = _5169 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _5242:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                _5976 = mem[_5169 + 32]
                                require mem[_5169 + 32] <= test266151307()
                                require _5169 + mem[_5169 + 32] + 31 < _5169 + return_data.size
                                _6005 = mem[_5169 + mem[_5169 + 32]]
                                require mem[_5169 + mem[_5169 + 32]] <= test266151307()
                                _6088 = mem[64]
                                require mem[64] + (32 * mem[_5169 + mem[_5169 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_5169 + mem[_5169 + 32]]) + 32 <= test266151307()
                                mem[64] = mem[64] + (32 * mem[_5169 + mem[_5169 + 32]]) + 32
                                mem[_6088] = _6005
                                require return_data.size >= _5976 + (32 * _6005) + 32
                                s = 0
                                t = _5169 + _5976 + 32
                                u = _6088 + 32
                                while s < _6005:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[32] = 4
                                mem[0] = mem[_4832 + 44 len 20]
                                mem[32] = sha3(address(_4659), 4)
                                require stor4[address(_4659)][mem[0]] < _6005
                                _6785 = mem[(32 * stor4[address(_4659)][mem[0]]) + _6088 + 32]
                                mem[0] = mem[_4832 + 76 len 20]
                                mem[32] = sha3(address(_4659), 4)
                                require stor4[address(_4659)][mem[0]] < _6005
                                _6825 = mem[(32 * stor4[address(_4659)][mem[0]]) + _6088 + 32]
                                mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 96
                                require mem[_4832] < 2
                                mem[mem[64] + 100] = mem[_4832]
                                mem[mem[64] + 132] = mem[_4832 + 44 len 20]
                                mem[mem[64] + 164] = mem[_4832 + 76 len 20]
                                mem[mem[64] + 196] = mem[_4832 + 96]
                                mem[mem[64] + 228] = mem[_4832 + 128]
                                mem[mem[64] + 260] = mem[_4832 + 160]
                                mem[mem[64] + 292] = mem[_4832 + 204 len 20]
                                mem[mem[64] + 324] = mem[_4832 + 236 len 20]
                                _6975 = mem[_4832 + 256]
                                mem[mem[64] + 356] = 288
                                _6991 = mem[_6975]
                                mem[mem[64] + 388] = mem[_6975]
                                s = 0
                                while s < _6991:
                                    mem[s + mem[64] + 420] = mem[s + _6975 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_6991) <= _6991:
                                    mem[mem[64] + 36] = _6785
                                    mem[mem[64] + 68] = _6825
                                    require ext_code.size(address(_4659))
                                    staticcall address(_4659).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                            gas gas_remaining wei
                                           args 96, _6785, _6825, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_6991) + 32]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7181 = mem[64]
                                else:
                                    mem[_6991 + mem[64] + 420] = 0
                                    mem[mem[64] + 36] = _6785
                                    mem[mem[64] + 68] = _6825
                                    require ext_code.size(address(_4659))
                                    staticcall address(_4659).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
                                            gas gas_remaining wei
                                           args 96, _6785, _6825, mem[mem[64] + 100 len 256], 288, mem[mem[64] + 388 len ceil32(_6991) + 32]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7182 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                            idx = idx + 1
                            continue 
                else:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 228] == bool(mem[(2 * ceil32(return_data.size)) + 228])
                    if not mem[(2 * ceil32(return_data.size)) + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[0] = arg4
                    mem[32] = sha3(address(arg3), 5)
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 229
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = uint256(stor5[address(arg3)][address(arg4)].field_0)
                    if not uint256(stor5[address(arg3)][address(arg4)].field_0):
                        if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                            revert with 0, 'No pools for swapping'
                        idx = 0
                        while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                            require uint128(idx) < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]
                            _2203 = mem[(32 * uint128(idx)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229]
                            if mem[(32 * uint128(idx)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 241 len 20]:
                                _2238 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_2238] = 0
                                mem[_2238 + 32] = 0
                                mem[_2238 + 64] = 0
                                mem[_2238 + 96] = 0
                                mem[_2238 + 128] = 0
                                mem[_2238 + 160] = 0
                                mem[_2238 + 192] = 0
                                mem[_2238 + 224] = 0
                                mem[_2238 + 256] = 96
                                require ext_code.size(address(_2203))
                                staticcall address(_2203).getPoolId() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2305 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_2238 + 128] = mem[_2305]
                                mem[_2238] = 0
                                mem[_2238 + 32] = arg3
                                mem[_2238 + 64] = arg4
                                mem[_2238 + 96] = arg1
                                _2342 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2342] = 2
                                mem[_2342 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                                mem[_2238 + 256] = _2342
                                _2374 = mem[_2238 + 128]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2374
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args _2374
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2417 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _2441 = mem[_2417]
                                require mem[_2417] <= test266151307()
                                require _2417 + mem[_2417] + 31 < _2417 + return_data.size
                                _2459 = mem[_2417 + mem[_2417]]
                                require mem[_2417 + mem[_2417]] <= test266151307()
                                require (32 * mem[_2417 + mem[_2417]]) + 32 >= 0 and _2417 + ceil32(return_data.size) + (32 * mem[_2417 + mem[_2417]]) + 32 <= test266151307()
                                mem[64] = _2417 + ceil32(return_data.size) + (32 * mem[_2417 + mem[_2417]]) + 32
                                mem[_2417 + ceil32(return_data.size)] = _2459
                                require return_data.size >= _2441 + (32 * _2459) + 32
                                t = _2417 + _2441 + 32
                                u = _2417 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2459:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                _3121 = mem[_2417 + 32]
                                require mem[_2417 + 32] <= test266151307()
                                require _2417 + mem[_2417 + 32] + 31 < _2417 + return_data.size
                                _3198 = mem[_2417 + mem[_2417 + 32]]
                                require mem[_2417 + mem[_2417 + 32]] <= test266151307()
                                _3286 = mem[64]
                                require mem[64] + (32 * mem[_2417 + mem[_2417 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_2417 + mem[_2417 + 32]]) + 32 <= test266151307()
                                mem[64] = mem[64] + (32 * mem[_2417 + mem[_2417 + 32]]) + 32
                                mem[_3286] = _3198
                                require return_data.size >= _3121 + (32 * _3198) + 32
                                s = 0
                                t = _2417 + _3121 + 32
                                u = _3286 + 32
                                while s < _3198:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[32] = 4
                                mem[0] = mem[_2238 + 44 len 20]
                                mem[32] = sha3(address(_2203), 4)
                                require stor4[address(_2203)][mem[0]] < _3198
                                _4833 = mem[(32 * stor4[address(_2203)][mem[0]]) + _3286 + 32]
                                mem[0] = mem[_2238 + 76 len 20]
                                mem[32] = sha3(address(_2203), 4)
                                require stor4[address(_2203)][mem[0]] < _3198
                                _4916 = mem[(32 * stor4[address(_2203)][mem[0]]) + _3286 + 32]
                                _4917 = mem[64]
                                mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 96
                                require mem[_2238] < 2
                                mem[mem[64] + 100] = mem[_2238]
                                mem[mem[64] + 132] = mem[_2238 + 44 len 20]
                                mem[mem[64] + 164] = mem[_2238 + 76 len 20]
                                mem[mem[64] + 196] = mem[_2238 + 96]
                                mem[mem[64] + 228] = mem[_2238 + 128]
                                mem[mem[64] + 260] = mem[_2238 + 160]
                                mem[mem[64] + 292] = mem[_2238 + 204 len 20]
                                mem[mem[64] + 324] = mem[_2238 + 236 len 20]
                                _5209 = mem[_2238 + 256]
                                mem[mem[64] + 356] = 288
                                _5227 = mem[_5209]
                                mem[mem[64] + 388] = mem[_5209]
                                s = 0
                                while s < _5227:
                                    mem[s + mem[64] + 420] = mem[s + _5209 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_5227) <= _5227:
                                    mem[_4917 + 36] = _4833
                                    mem[_4917 + 68] = _4916
                                    require ext_code.size(address(_2203))
                                    staticcall address(_2203).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(_5227) + _4917 + -mem[64] + 416]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6072 = mem[64]
                                else:
                                    mem[_5227 + _4917 + 420] = 0
                                    mem[_4917 + 36] = _4833
                                    mem[_4917 + 68] = _4916
                                    require ext_code.size(address(_2203))
                                    staticcall address(_2203).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(_5227) + _4917 + -mem[64] + 416]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6073 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = sha3(address(arg4), sha3(address(arg3), 5))
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = address(stor5[address(arg3)][address(arg4)].field_0)
                        idx = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229
                        s = 0
                        while (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * uint256(stor5[address(arg3)][address(arg4)].field_0)) + 197 > idx:
                            mem[idx + 32] = address(stor5[address(arg3)][address(arg4)][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if uint256(stor5[address(arg3)][address(arg4)].field_0) <= 0:
                            revert with 0, 'No pools for swapping'
                        idx = 0
                        while uint128(idx) < uint256(stor5[address(arg3)][address(arg4)].field_0):
                            require uint128(idx) < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]
                            _4661 = mem[(32 * uint128(idx)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229]
                            if mem[(32 * uint128(idx)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 241 len 20]:
                                _4838 = mem[64]
                                mem[64] = mem[64] + 288
                                mem[_4838] = 0
                                mem[_4838 + 32] = 0
                                mem[_4838 + 64] = 0
                                mem[_4838 + 96] = 0
                                mem[_4838 + 128] = 0
                                mem[_4838 + 160] = 0
                                mem[_4838 + 192] = 0
                                mem[_4838 + 224] = 0
                                mem[_4838 + 256] = 96
                                require ext_code.size(address(_4661))
                                staticcall address(_4661).getPoolId() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4954 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[_4838 + 128] = mem[_4954]
                                mem[_4838] = 0
                                mem[_4838 + 32] = arg3
                                mem[_4838 + 64] = arg4
                                mem[_4838 + 96] = arg1
                                _5005 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5005] = 2
                                mem[_5005 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                                mem[_4838 + 256] = _5005
                                _5052 = mem[_4838 + 128]
                                mem[mem[64]] = 0xf94d466800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _5052
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).getPoolTokens(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args _5052
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5171 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _5210 = mem[_5171]
                                require mem[_5171] <= test266151307()
                                require _5171 + mem[_5171] + 31 < _5171 + return_data.size
                                _5243 = mem[_5171 + mem[_5171]]
                                require mem[_5171 + mem[_5171]] <= test266151307()
                                require (32 * mem[_5171 + mem[_5171]]) + 32 >= 0 and _5171 + ceil32(return_data.size) + (32 * mem[_5171 + mem[_5171]]) + 32 <= test266151307()
                                mem[64] = _5171 + ceil32(return_data.size) + (32 * mem[_5171 + mem[_5171]]) + 32
                                mem[_5171 + ceil32(return_data.size)] = _5243
                                require return_data.size >= _5210 + (32 * _5243) + 32
                                t = _5171 + _5210 + 32
                                u = _5171 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _5243:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                _5979 = mem[_5171 + 32]
                                require mem[_5171 + 32] <= test266151307()
                                require _5171 + mem[_5171 + 32] + 31 < _5171 + return_data.size
                                _6006 = mem[_5171 + mem[_5171 + 32]]
                                require mem[_5171 + mem[_5171 + 32]] <= test266151307()
                                _6089 = mem[64]
                                require mem[64] + (32 * mem[_5171 + mem[_5171 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_5171 + mem[_5171 + 32]]) + 32 <= test266151307()
                                mem[64] = mem[64] + (32 * mem[_5171 + mem[_5171 + 32]]) + 32
                                mem[_6089] = _6006
                                require return_data.size >= _5979 + (32 * _6006) + 32
                                s = 0
                                t = _5171 + _5979 + 32
                                u = _6089 + 32
                                while s < _6006:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[32] = 4
                                mem[0] = mem[_4838 + 44 len 20]
                                mem[32] = sha3(address(_4661), 4)
                                require stor4[address(_4661)][mem[0]] < _6006
                                _6790 = mem[(32 * stor4[address(_4661)][mem[0]]) + _6089 + 32]
                                mem[0] = mem[_4838 + 76 len 20]
                                mem[32] = sha3(address(_4661), 4)
                                require stor4[address(_4661)][mem[0]] < _6006
                                _6827 = mem[(32 * stor4[address(_4661)][mem[0]]) + _6089 + 32]
                                _6828 = mem[64]
                                mem[mem[64]] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 96
                                require mem[_4838] < 2
                                mem[mem[64] + 100] = mem[_4838]
                                mem[mem[64] + 132] = mem[_4838 + 44 len 20]
                                mem[mem[64] + 164] = mem[_4838 + 76 len 20]
                                mem[mem[64] + 196] = mem[_4838 + 96]
                                mem[mem[64] + 228] = mem[_4838 + 128]
                                mem[mem[64] + 260] = mem[_4838 + 160]
                                mem[mem[64] + 292] = mem[_4838 + 204 len 20]
                                mem[mem[64] + 324] = mem[_4838 + 236 len 20]
                                _6976 = mem[_4838 + 256]
                                mem[mem[64] + 356] = 288
                                _6992 = mem[_6976]
                                mem[mem[64] + 388] = mem[_6976]
                                s = 0
                                while s < _6992:
                                    mem[s + mem[64] + 420] = mem[s + _6976 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_6992) <= _6992:
                                    mem[_6828 + 36] = _6790
                                    mem[_6828 + 68] = _6827
                                    require ext_code.size(address(_4661))
                                    staticcall address(_4661).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(_6992) + _6828 + -mem[64] + 416]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7183 = mem[64]
                                else:
                                    mem[_6992 + _6828 + 420] = 0
                                    mem[_6828 + 36] = _6790
                                    mem[_6828 + 68] = _6827
                                    require ext_code.size(address(_4661))
                                    staticcall address(_4661).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len ceil32(_6992) + _6828 + -mem[64] + 416]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7184 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                            idx = idx + 1
                            continue 
    revert with 0, 'Undefined pool'
}



}
