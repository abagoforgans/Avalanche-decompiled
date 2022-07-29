contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
array of struct stor101;
mapping of uint256 stor102;

function owner() payable {
    return owner
}

function sub_985e3a2f(?) payable {
    return stor101.length
}

function isStrategyWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor102[address(arg1)])
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

function addStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor102[address(arg1)]:
        revert with 0, 'Strategy: Already whitelisted'
    if not stor102[address(arg1)]:
        stor101.length++
        stor101[stor101.length].field_0 = arg1
        stor101[stor101.length].field_160 = 0
        stor102[address(arg1)] = stor101.length
    emit 0x6b583e2e: arg1
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
}

function removeStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor102[address(arg1)]:
        revert with 0, 'Strategy: Not whitelisted'
    if stor102[address(arg1)]:
        if stor102[address(arg1)] < 1:
            revert with 0, 17
        if stor101.length < 1:
            revert with 0, 17
        if stor101.length - 1 != stor102[address(arg1)] - 1:
            if stor101.length - 1 >= stor101.length:
                revert with 0, 50
            if stor102[address(arg1)] - 1 >= stor101.length:
                revert with 0, 50
            stor101[stor102[address(arg1)]].field_0 = stor101[stor101.length].field_0
            stor102[stor101[stor101.length].field_0] = stor102[address(arg1)]
        if not stor101.length:
            revert with 0, 49
        stor101[stor101.length].field_0 = 0
        stor101.length--
        stor102[address(arg1)] = 0
    emit StrategyRemoved(arg1);
}

function sub_31fb5b1f(?) payable {
    require calldata.size - 4 >= 64
    if stor101.length < arg1:
        revert with 0, 17
    if arg2 <= stor101.length - arg1:
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
            if arg1 + idx >= stor101.length:
                revert with 0, 50
            mem[0] = 101
            if idx >= arg2:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('name', 'stor101', 101) + arg1 + idx].field_0
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
    if stor101.length < arg1:
        revert with 0, 17
    if stor101.length - arg1 > test266151307():
        revert with 0, 65
    mem[96] = stor101.length - arg1
    mem[64] = (32 * stor101.length - arg1) + 128
    if not stor101.length - arg1:
        idx = 0
        while idx < stor101.length - arg1:
            if arg1 > !idx:
                revert with 0, 17
            if arg1 + idx >= stor101.length:
                revert with 0, 50
            mem[0] = 101
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('name', 'stor101', 101) + arg1 + idx].field_0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg1 > !(stor101.length - arg1):
            revert with 0, 17
        mem[(32 * stor101.length - arg1) + 128] = 64
        _33 = mem[96]
        mem[(32 * stor101.length - arg1) + 192] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _33:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor101.length - arg1) + 160] = stor101.length
        return memory
          from mem[64]
           len (32 * stor101.length - arg1) + (32 * _33) + -mem[64] + 224
    mem[128 len 32 * stor101.length - arg1] = call.data[calldata.size len 32 * stor101.length - arg1]
    idx = 0
    while idx < stor101.length - arg1:
        if arg1 > !idx:
            revert with 0, 17
        if arg1 + idx >= stor101.length:
            revert with 0, 50
        mem[0] = 101
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor[('name', 'stor101', 101) + arg1 + idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg1 > !(stor101.length - arg1):
        revert with 0, 17
    mem[(32 * stor101.length - arg1) + 128] = 64
    _34 = mem[96]
    mem[(32 * stor101.length - arg1) + 192] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _34:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor101.length - arg1) + 160] = stor101.length
    return memory
      from mem[64]
       len (32 * stor101.length - arg1) + (32 * _34) + -mem[64] + 224
}



}
