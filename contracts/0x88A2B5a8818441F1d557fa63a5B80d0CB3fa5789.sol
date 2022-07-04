contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
mapping of uint256 stor2;

function sub_1facfd9c(?) payable {
    return stor1.length
}

function isCurrencyWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function owner() payable {
    return owner
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

function addCurrency(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2[address(arg1)]:
        revert with 0, 'Currency: Already whitelisted'
    if not stor2[address(arg1)]:
        stor1.length++
        stor1[stor1.length].field_0 = arg1
        stor1[stor1.length].field_160 = 0
        stor2[address(arg1)] = stor1.length
    emit CurrencyWhitelisted(arg1);
}

function removeCurrency(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2[address(arg1)]:
        revert with 0, 'Currency: Not whitelisted'
    if stor2[address(arg1)]:
        if stor2[address(arg1)] < 1:
            revert with 0, 17
        if stor1.length < 1:
            revert with 0, 17
        if stor1.length - 1 != stor2[address(arg1)] - 1:
            if stor1.length - 1 >= stor1.length:
                revert with 0, 50
            if stor2[address(arg1)] - 1 >= stor1.length:
                revert with 0, 50
            stor1[stor2[address(arg1)]].field_0 = stor1[stor1.length].field_0
            stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
        if not stor1.length:
            revert with 0, 49
        stor1[stor1.length].field_0 = 0
        stor1.length--
        stor2[address(arg1)] = 0
    emit 0xa40d6911: arg1
}

function sub_85f39b0a(?) payable {
    require calldata.size - 4 >= 64
    if stor1.length < arg1:
        revert with 0, 17
    if arg2 <= stor1.length - arg1:
        if arg2 > test266151307():
            revert with 0, 65
        mem[96] = arg2
        mem[64] = (32 * arg2) + 128
        if arg2:
            mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        idx = 0
        while idx < arg2:
            if arg1 > !idx:
                revert with 0, 17
            if arg1 + idx >= stor1.length:
                revert with 0, 50
            mem[0] = 1
            if idx >= arg2:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('name', 'stor1', 1) + arg1 + idx].field_0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg1 > !arg2:
            revert with 0, 17
        mem[(32 * arg2) + 128] = 64
        mem[(32 * arg2) + 192] = arg2
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < arg2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg2) + 160] = arg1 + arg2
        return memory
          from mem[64]
           len (64 * arg2) + -mem[64] + 224
    if stor1.length < arg1:
        revert with 0, 17
    if stor1.length - arg1 > test266151307():
        revert with 0, 65
    mem[96] = stor1.length - arg1
    mem[64] = (32 * stor1.length - arg1) + 128
    if not stor1.length - arg1:
        idx = 0
        while idx < stor1.length - arg1:
            if arg1 > !idx:
                revert with 0, 17
            if arg1 + idx >= stor1.length:
                revert with 0, 50
            mem[0] = 1
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('name', 'stor1', 1) + arg1 + idx].field_0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg1 > !(stor1.length - arg1):
            revert with 0, 17
        mem[(32 * stor1.length - arg1) + 128] = 64
        _33 = mem[96]
        mem[(32 * stor1.length - arg1) + 192] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _33:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor1.length - arg1) + 160] = stor1.length
        return memory
          from mem[64]
           len (32 * stor1.length - arg1) + (32 * _33) + -mem[64] + 224
    mem[128 len 32 * stor1.length - arg1] = call.data[calldata.size len 32 * stor1.length - arg1]
    idx = 0
    while idx < stor1.length - arg1:
        if arg1 > !idx:
            revert with 0, 17
        if arg1 + idx >= stor1.length:
            revert with 0, 50
        mem[0] = 1
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor[('name', 'stor1', 1) + arg1 + idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg1 > !(stor1.length - arg1):
        revert with 0, 17
    mem[(32 * stor1.length - arg1) + 128] = 64
    _34 = mem[96]
    mem[(32 * stor1.length - arg1) + 192] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _34:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor1.length - arg1) + 160] = stor1.length
    return memory
      from mem[64]
       len (32 * stor1.length - arg1) + (32 * _34) + -mem[64] + 224
}



}
