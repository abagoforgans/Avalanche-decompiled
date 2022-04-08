contract main {




// =====================  Runtime code  =====================


#
#  - buyCountry(string arg1, string arg2)
#  - giveCountry(string arg1, address arg2, string arg3)
#
address owner;
array of struct stor1;
array of address stor2;
array of struct stor3;
uint256 highestPrice;
uint256 balance;

function getBalance() {
    return balance
}

function owner() {
    return owner
}

function getHighestPrice() {
    return highestPrice
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdrawBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value balance wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balance = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getValueOfCountry(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    mem[ceil32(arg1.length) + 128] = stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function getCountryOwner(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    mem[ceil32(arg1.length) + 128] = address(stor2[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function compareStrings(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 160 < 128 or ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307():
        revert with 0, 65
    mem[ceil32(arg1.length) + 128] = arg2.length
    require calldata.size >= arg2.length + arg2 + 36
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg2.length
    return (sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256) == sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]]))
}

function getTopCountriesPrices() {
    mem[64] = 320
    mem[256] = 0
    mem[288] = 96
    mem[var8001] = 256
    s = var8001
    idx = var8002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[256] = 0
        mem[288] = 96
        mem[s + 32] = 256
        s = s + 32
        idx = idx - 1
        continue 
    _13 = mem[64]
    mem[64] = mem[64] + 160
    s = _13
    idx = 0
    while idx < 5:
        _21 = mem[64]
        mem[64] = mem[64] + 64
        mem[_21] = uint256(stor2[idx])
        if bool(stor3[idx].field_0):
            if bool(stor3[idx].field_0) == uint255(stor3[idx].field_1) < 32:
                revert with 0, 34
            _26 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor3[idx].field_1)) + 32
            mem[_26] = uint255(stor3[idx].field_1)
            if bool(stor3[idx].field_0):
                if bool(stor3[idx].field_0) == uint255(stor3[idx].field_1) < 32:
                    revert with 0, 34
                if uint255(stor3[idx].field_1):
                    if 31 >= uint255(stor3[idx].field_1):
                        mem[_26 + 32] = 256 * Mask(248, 0, stor3[idx].field_8)
                    else:
                        mem[0] = (2 * idx) + 3
                        mem[_26 + 32] = stor[sha3((2 * idx) + 3)]
                        t = _26 + 32
                        u = sha3(mem[0])
                        while _26 + uint255(stor3[idx].field_1) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_21 + 32] = _26
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor3[idx].field_0) == stor3[idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor3[idx].field_1 % 128:
                mem[_21 + 32] = _26
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[idx].field_1 % 128:
                mem[_26 + 32] = 256 * Mask(248, 0, stor3[idx].field_8)
                mem[_21 + 32] = _26
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (2 * idx) + 3
            mem[_26 + 32] = stor[sha3((2 * idx) + 3)]
            t = _26 + 32
            u = sha3(mem[0])
            while _26 + stor3[u].field_1 % 128 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_21 + 32] = _26
            mem[t] = _21
            t = t + 32
            u = u + 1
            continue 
        if bool(stor3[idx].field_0) == stor3[idx].field_1 % 128 < 32:
            revert with 0, 34
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[idx].field_1 % 128) + 32
        mem[_28] = stor3[idx].field_1 % 128
        if bool(stor3[idx].field_0):
            if bool(stor3[idx].field_0) == uint255(stor3[idx].field_1) < 32:
                revert with 0, 34
            if not uint255(stor3[idx].field_1):
                mem[_21 + 32] = _28
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor3[idx].field_1):
                mem[_28 + 32] = 256 * Mask(248, 0, stor3[idx].field_8)
                mem[_21 + 32] = _28
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (2 * idx) + 3
            mem[_28 + 32] = stor[sha3((2 * idx) + 3)]
            t = _28 + 32
            u = sha3(mem[0])
            while _28 + uint255(stor3[u].field_1) > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_21 + 32] = _28
            mem[t] = _21
            t = t + 32
            u = u + 1
            continue 
        if bool(stor3[idx].field_0) == stor3[idx].field_1 % 128 < 32:
            revert with 0, 34
        if stor3[idx].field_1 % 128:
            if 31 >= stor3[idx].field_1 % 128:
                mem[_28 + 32] = 256 * Mask(248, 0, stor3[idx].field_8)
            else:
                mem[0] = (2 * idx) + 3
                mem[_28 + 32] = stor[sha3((2 * idx) + 3)]
                t = _28 + 32
                u = sha3(mem[0])
                while _28 + stor3[idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_21 + 32] = _28
        mem[s] = _21
        s = s + 32
        idx = idx + 1
        continue 
    _22 = mem[64]
    mem[mem[64]] = 32
    idx = 0
    s = _13
    t = mem[64] + 32
    u = mem[64] + 192
    while idx < 5:
        mem[t] = u + -_22 - 32
        _34 = mem[s]
        mem[u] = mem[mem[s]]
        _36 = mem[_34 + 32]
        mem[u + 32] = 64
        _38 = mem[_36]
        mem[u + 64] = mem[_36]
        v = 0
        while v < _38:
            mem[v + u + 96] = mem[v + _36 + 32]
            v = v + 32
            continue 
        if ceil32(_38) > _38:
            mem[_38 + u + 96] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_38) + u + 96
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function getMessage(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    if ceil32(arg1.length) <= arg1.length:
        _145 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
        if bool(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0):
            if bool(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) == uint255(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_1) < 32:
                revert with 0, 34
            mem[64] = ceil32(arg1.length) + ceil32(uint255(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_1)) + 160
            mem[ceil32(arg1.length) + 128] = uint255(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_1)
            if bool(stor1[_145].field_0):
                if bool(stor1[_145].field_0) == uint255(stor1[_145].field_1) < 32:
                    revert with 0, 34
                if not uint255(stor1[_145].field_1):
                    _155 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(stor1[_145].field_1)
                    mem[mem[64] + 64 len ceil32(uint255(stor1[_145].field_1))] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor1[_145].field_1))]
                    if ceil32(uint255(stor1[_145].field_1)) <= uint255(stor1[_145].field_1):
                        return Array(len=2 * Mask(256, -1, uint255(stor1[_145].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor1[_145].field_1))]), 
                    mem[uint255(stor1[_145].field_1) + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(uint255(stor1[_145].field_1)) + _155 + -mem[64] + 64
                if 31 >= uint255(stor1[_145].field_1):
                    mem[ceil32(arg1.length) + 160] = 256 * Mask(248, 0, stor1[_145].field_8)
                    _168 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(stor1[_145].field_1)
                    mem[mem[64] + 64 len ceil32(uint255(stor1[_145].field_1))] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor1[_145].field_1))]
                    if ceil32(uint255(stor1[_145].field_1)) <= uint255(stor1[_145].field_1):
                        return Array(len=2 * Mask(256, -1, uint255(stor1[_145].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor1[_145].field_1))]), 
                    mem[uint255(stor1[_145].field_1) + mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(uint255(stor1[_145].field_1)) + _168 + -mem[64] + 64
                mem[ceil32(arg1.length) + 160] = stor[sha3(_145 + 1)]
                idx = ceil32(arg1.length) + 160
                s = 0
                while ceil32(arg1.length) + uint255(stor1[_145].field_1) + 128 > idx:
                    mem[idx + 32] = stor[s + sha3(_145 + 1) + 1]
                    idx = idx + 32
                    s = s + 1
                    continue 
                _294 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(stor1[_145].field_1)
                mem[mem[64] + 64 len ceil32(uint255(stor1[_145].field_1))] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor1[_145].field_1))]
                if ceil32(uint255(stor1[_145].field_1)) <= uint255(stor1[_145].field_1):
                    return Array(len=2 * Mask(256, -1, uint255(stor1[_145].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor1[_145].field_1))]), 
                mem[uint255(stor1[_145].field_1) + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(uint255(stor1[_145].field_1)) + _294 + -mem[64] + 64
            if bool(stor1[_145].field_0) == stor1[_145].field_1 % 128 < 32:
                revert with 0, 34
            if not stor1[_145].field_1 % 128:
                _161 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(stor1[_145].field_1)
                mem[mem[64] + 64 len ceil32(uint255(stor1[_145].field_1))] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor1[_145].field_1))]
                if ceil32(uint255(stor1[_145].field_1)) <= uint255(stor1[_145].field_1):
                    return Array(len=2 * Mask(256, -1, uint255(stor1[_145].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor1[_145].field_1))]), 
                mem[uint255(stor1[_145].field_1) + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(uint255(stor1[_145].field_1)) + _161 + -mem[64] + 64
            if 31 >= stor1[_145].field_1 % 128:
                mem[ceil32(arg1.length) + 160] = 256 * Mask(248, 0, stor1[_145].field_8)
                _175 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(stor1[_145].field_1)
                mem[mem[64] + 64 len ceil32(uint255(stor1[_145].field_1))] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor1[_145].field_1))]
                if ceil32(uint255(stor1[_145].field_1)) <= uint255(stor1[_145].field_1):
                    return Array(len=2 * Mask(256, -1, uint255(stor1[_145].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor1[_145].field_1))]), 
                mem[uint255(stor1[_145].field_1) + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(uint255(stor1[_145].field_1)) + _175 + -mem[64] + 64
            mem[ceil32(arg1.length) + 160] = stor[sha3(_145 + 1)]
            idx = ceil32(arg1.length) + 160
            s = 0
            while ceil32(arg1.length) + stor1[_145].field_1 % 128 + 128 > idx:
                mem[idx + 32] = stor[s + sha3(_145 + 1) + 1]
                idx = idx + 32
                s = s + 1
                continue 
            _295 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(stor1[_145].field_1)
            mem[mem[64] + 64 len ceil32(uint255(stor1[_145].field_1))] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor1[_145].field_1))]
            if ceil32(uint255(stor1[_145].field_1)) <= uint255(stor1[_145].field_1):
                return Array(len=2 * Mask(256, -1, uint255(stor1[_145].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor1[_145].field_1))]), 
            mem[uint255(stor1[_145].field_1) + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(uint255(stor1[_145].field_1)) + _295 + -mem[64] + 64
        if bool(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) == stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_1 % 128 < 32:
            revert with 0, 34
        mem[64] = ceil32(arg1.length) + ceil32(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_1 % 128) + 160
        mem[ceil32(arg1.length) + 128] = stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_1 % 128
        if bool(stor1[_145].field_0):
            if bool(stor1[_145].field_0) == uint255(stor1[_145].field_1) < 32:
                revert with 0, 34
            if not uint255(stor1[_145].field_1):
                _162 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor1[_145].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor1[_145].field_1 % 128)] = mem[ceil32(arg1.length) + 160 len ceil32(stor1[_145].field_1 % 128)]
                if ceil32(stor1[_145].field_1 % 128) <= stor1[_145].field_1 % 128:
                    return Array(len=stor1[_145].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor1[_145].field_1 % 128)])
                mem[stor1[_145].field_1 % 128 + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(stor1[_145].field_1 % 128) + _162 + -mem[64] + 64
            if 31 >= uint255(stor1[_145].field_1):
                mem[ceil32(arg1.length) + 160] = 256 * Mask(248, 0, stor1[_145].field_8)
                _177 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor1[_145].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor1[_145].field_1 % 128)] = mem[ceil32(arg1.length) + 160 len ceil32(stor1[_145].field_1 % 128)]
                if ceil32(stor1[_145].field_1 % 128) <= stor1[_145].field_1 % 128:
                    return Array(len=stor1[_145].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor1[_145].field_1 % 128)])
                mem[stor1[_145].field_1 % 128 + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(stor1[_145].field_1 % 128) + _177 + -mem[64] + 64
            mem[ceil32(arg1.length) + 160] = stor[sha3(_145 + 1)]
            idx = ceil32(arg1.length) + 160
            s = 0
            while ceil32(arg1.length) + uint255(stor1[_145].field_1) + 128 > idx:
                mem[idx + 32] = stor[s + sha3(_145 + 1) + 1]
                idx = idx + 32
                s = s + 1
                continue 
            _296 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = stor1[_145].field_1 % 128
            mem[mem[64] + 64 len ceil32(stor1[_145].field_1 % 128)] = mem[ceil32(arg1.length) + 160 len ceil32(stor1[_145].field_1 % 128)]
            if ceil32(stor1[_145].field_1 % 128) <= stor1[_145].field_1 % 128:
                return Array(len=stor1[_145].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor1[_145].field_1 % 128)])
            mem[stor1[_145].field_1 % 128 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(stor1[_145].field_1 % 128) + _296 + -mem[64] + 64
        if bool(stor1[_145].field_0) == stor1[_145].field_1 % 128 < 32:
            revert with 0, 34
        if not stor1[_145].field_1 % 128:
            _169 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = stor1[_145].field_1 % 128
            mem[mem[64] + 64 len ceil32(stor1[_145].field_1 % 128)] = mem[ceil32(arg1.length) + 160 len ceil32(stor1[_145].field_1 % 128)]
            if ceil32(stor1[_145].field_1 % 128) <= stor1[_145].field_1 % 128:
                return Array(len=stor1[_145].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor1[_145].field_1 % 128)])
            mem[stor1[_145].field_1 % 128 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(stor1[_145].field_1 % 128) + _169 + -mem[64] + 64
        if 31 >= stor1[_145].field_1 % 128:
            mem[ceil32(arg1.length) + 160] = 256 * Mask(248, 0, stor1[_145].field_8)
            _185 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = stor1[_145].field_1 % 128
            mem[mem[64] + 64 len ceil32(stor1[_145].field_1 % 128)] = mem[ceil32(arg1.length) + 160 len ceil32(stor1[_145].field_1 % 128)]
            if ceil32(stor1[_145].field_1 % 128) <= stor1[_145].field_1 % 128:
                return Array(len=stor1[_145].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor1[_145].field_1 % 128)])
            mem[stor1[_145].field_1 % 128 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(stor1[_145].field_1 % 128) + _185 + -mem[64] + 64
        mem[ceil32(arg1.length) + 160] = stor[sha3(_145 + 1)]
        idx = ceil32(arg1.length) + 160
        s = 0
        while ceil32(arg1.length) + stor1[_145].field_1 % 128 + 128 > idx:
            mem[idx + 32] = stor[s + sha3(_145 + 1) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        _297 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor1[_145].field_1 % 128
        mem[mem[64] + 64 len ceil32(stor1[_145].field_1 % 128)] = mem[ceil32(arg1.length) + 160 len ceil32(stor1[_145].field_1 % 128)]
        if ceil32(stor1[_145].field_1 % 128) <= stor1[_145].field_1 % 128:
            return Array(len=stor1[_145].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor1[_145].field_1 % 128)])
        mem[stor1[_145].field_1 % 128 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(stor1[_145].field_1 % 128) + _297 + -mem[64] + 64
    _143 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length)])
    if bool(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0):
        if bool(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) == uint255(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_1) < 32:
            revert with 0, 34
        mem[64] = ceil32(arg1.length) + ceil32(uint255(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_1)) + 160
        mem[ceil32(arg1.length) + 128] = uint255(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_1)
        if bool(stor1[_143].field_0):
            if bool(stor1[_143].field_0) == uint255(stor1[_143].field_1) < 32:
                revert with 0, 34
            if not uint255(stor1[_143].field_1):
                _152 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(stor1[_143].field_1)
                mem[mem[64] + 64 len ceil32(uint255(stor1[_143].field_1))] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor1[_143].field_1))]
                if ceil32(uint255(stor1[_143].field_1)) <= uint255(stor1[_143].field_1):
                    return Array(len=2 * Mask(256, -1, uint255(stor1[_143].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor1[_143].field_1))]), 
                mem[uint255(stor1[_143].field_1) + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(uint255(stor1[_143].field_1)) + _152 + -mem[64] + 64
            if 31 >= uint255(stor1[_143].field_1):
                mem[ceil32(arg1.length) + 160] = 256 * Mask(248, 0, stor1[_143].field_8)
                _165 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(stor1[_143].field_1)
                mem[mem[64] + 64 len ceil32(uint255(stor1[_143].field_1))] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor1[_143].field_1))]
                if ceil32(uint255(stor1[_143].field_1)) <= uint255(stor1[_143].field_1):
                    return Array(len=2 * Mask(256, -1, uint255(stor1[_143].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor1[_143].field_1))]), 
                mem[uint255(stor1[_143].field_1) + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(uint255(stor1[_143].field_1)) + _165 + -mem[64] + 64
            mem[ceil32(arg1.length) + 160] = stor[sha3(_143 + 1)]
            idx = ceil32(arg1.length) + 160
            s = 0
            while ceil32(arg1.length) + uint255(stor1[_143].field_1) + 128 > idx:
                mem[idx + 32] = stor[s + sha3(_143 + 1) + 1]
                idx = idx + 32
                s = s + 1
                continue 
            _298 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(stor1[_143].field_1)
            mem[mem[64] + 64 len ceil32(uint255(stor1[_143].field_1))] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor1[_143].field_1))]
            if ceil32(uint255(stor1[_143].field_1)) <= uint255(stor1[_143].field_1):
                return Array(len=2 * Mask(256, -1, uint255(stor1[_143].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor1[_143].field_1))]), 
            mem[uint255(stor1[_143].field_1) + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(uint255(stor1[_143].field_1)) + _298 + -mem[64] + 64
        if bool(stor1[_143].field_0) == stor1[_143].field_1 % 128 < 32:
            revert with 0, 34
        if not stor1[_143].field_1 % 128:
            _158 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(stor1[_143].field_1)
            mem[mem[64] + 64 len ceil32(uint255(stor1[_143].field_1))] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor1[_143].field_1))]
            if ceil32(uint255(stor1[_143].field_1)) <= uint255(stor1[_143].field_1):
                return Array(len=2 * Mask(256, -1, uint255(stor1[_143].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor1[_143].field_1))]), 
            mem[uint255(stor1[_143].field_1) + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(uint255(stor1[_143].field_1)) + _158 + -mem[64] + 64
        if 31 >= stor1[_143].field_1 % 128:
            mem[ceil32(arg1.length) + 160] = 256 * Mask(248, 0, stor1[_143].field_8)
            _171 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint255(stor1[_143].field_1)
            mem[mem[64] + 64 len ceil32(uint255(stor1[_143].field_1))] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor1[_143].field_1))]
            if ceil32(uint255(stor1[_143].field_1)) <= uint255(stor1[_143].field_1):
                return Array(len=2 * Mask(256, -1, uint255(stor1[_143].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor1[_143].field_1))]), 
            mem[uint255(stor1[_143].field_1) + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(uint255(stor1[_143].field_1)) + _171 + -mem[64] + 64
        mem[ceil32(arg1.length) + 160] = stor[sha3(_143 + 1)]
        idx = ceil32(arg1.length) + 160
        s = 0
        while ceil32(arg1.length) + stor1[_143].field_1 % 128 + 128 > idx:
            mem[idx + 32] = stor[s + sha3(_143 + 1) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        _299 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint255(stor1[_143].field_1)
        mem[mem[64] + 64 len ceil32(uint255(stor1[_143].field_1))] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor1[_143].field_1))]
        if ceil32(uint255(stor1[_143].field_1)) <= uint255(stor1[_143].field_1):
            return Array(len=2 * Mask(256, -1, uint255(stor1[_143].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor1[_143].field_1))]), 
        mem[uint255(stor1[_143].field_1) + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(uint255(stor1[_143].field_1)) + _299 + -mem[64] + 64
    if bool(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) == stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_1 % 128 < 32:
        revert with 0, 34
    mem[64] = ceil32(arg1.length) + ceil32(stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_1 % 128) + 160
    mem[ceil32(arg1.length) + 128] = stor1[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_1 % 128
    if bool(stor1[_143].field_0):
        if bool(stor1[_143].field_0) == uint255(stor1[_143].field_1) < 32:
            revert with 0, 34
        if not uint255(stor1[_143].field_1):
            _159 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = stor1[_143].field_1 % 128
            mem[mem[64] + 64 len ceil32(stor1[_143].field_1 % 128)] = mem[ceil32(arg1.length) + 160 len ceil32(stor1[_143].field_1 % 128)]
            if ceil32(stor1[_143].field_1 % 128) <= stor1[_143].field_1 % 128:
                return Array(len=stor1[_143].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor1[_143].field_1 % 128)])
            mem[stor1[_143].field_1 % 128 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(stor1[_143].field_1 % 128) + _159 + -mem[64] + 64
        if 31 >= uint255(stor1[_143].field_1):
            mem[ceil32(arg1.length) + 160] = 256 * Mask(248, 0, stor1[_143].field_8)
            _173 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = stor1[_143].field_1 % 128
            mem[mem[64] + 64 len ceil32(stor1[_143].field_1 % 128)] = mem[ceil32(arg1.length) + 160 len ceil32(stor1[_143].field_1 % 128)]
            if ceil32(stor1[_143].field_1 % 128) <= stor1[_143].field_1 % 128:
                return Array(len=stor1[_143].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor1[_143].field_1 % 128)])
            mem[stor1[_143].field_1 % 128 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(stor1[_143].field_1 % 128) + _173 + -mem[64] + 64
        mem[ceil32(arg1.length) + 160] = stor[sha3(_143 + 1)]
        idx = ceil32(arg1.length) + 160
        s = 0
        while ceil32(arg1.length) + uint255(stor1[_143].field_1) + 128 > idx:
            mem[idx + 32] = stor[s + sha3(_143 + 1) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        _300 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor1[_143].field_1 % 128
        mem[mem[64] + 64 len ceil32(stor1[_143].field_1 % 128)] = mem[ceil32(arg1.length) + 160 len ceil32(stor1[_143].field_1 % 128)]
        if ceil32(stor1[_143].field_1 % 128) <= stor1[_143].field_1 % 128:
            return Array(len=stor1[_143].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor1[_143].field_1 % 128)])
        mem[stor1[_143].field_1 % 128 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(stor1[_143].field_1 % 128) + _300 + -mem[64] + 64
    if bool(stor1[_143].field_0) == stor1[_143].field_1 % 128 < 32:
        revert with 0, 34
    if not stor1[_143].field_1 % 128:
        _166 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor1[_143].field_1 % 128
        mem[mem[64] + 64 len ceil32(stor1[_143].field_1 % 128)] = mem[ceil32(arg1.length) + 160 len ceil32(stor1[_143].field_1 % 128)]
        if ceil32(stor1[_143].field_1 % 128) <= stor1[_143].field_1 % 128:
            return Array(len=stor1[_143].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor1[_143].field_1 % 128)])
        mem[stor1[_143].field_1 % 128 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(stor1[_143].field_1 % 128) + _166 + -mem[64] + 64
    if 31 >= stor1[_143].field_1 % 128:
        mem[ceil32(arg1.length) + 160] = 256 * Mask(248, 0, stor1[_143].field_8)
        _181 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = stor1[_143].field_1 % 128
        mem[mem[64] + 64 len ceil32(stor1[_143].field_1 % 128)] = mem[ceil32(arg1.length) + 160 len ceil32(stor1[_143].field_1 % 128)]
        if ceil32(stor1[_143].field_1 % 128) <= stor1[_143].field_1 % 128:
            return Array(len=stor1[_143].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor1[_143].field_1 % 128)])
        mem[stor1[_143].field_1 % 128 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(stor1[_143].field_1 % 128) + _181 + -mem[64] + 64
    mem[ceil32(arg1.length) + 160] = stor[sha3(_143 + 1)]
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor1[_143].field_1 % 128 + 128 > idx:
        mem[idx + 32] = stor[s + sha3(_143 + 1) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    _301 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = stor1[_143].field_1 % 128
    mem[mem[64] + 64 len ceil32(stor1[_143].field_1 % 128)] = mem[ceil32(arg1.length) + 160 len ceil32(stor1[_143].field_1 % 128)]
    if ceil32(stor1[_143].field_1 % 128) <= stor1[_143].field_1 % 128:
        return Array(len=stor1[_143].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor1[_143].field_1 % 128)])
    mem[stor1[_143].field_1 % 128 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(stor1[_143].field_1 % 128) + _301 + -mem[64] + 64
}



}
