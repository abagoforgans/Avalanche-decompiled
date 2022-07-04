contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of struct stor2;
mapping of uint256 stor3;

function owner() payable {
    return owner
}

function isAllowedToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
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

function addFeeToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Cannot use zero address'
    if stor1[address(arg1)]:
        revert with 0, 'Token already allowed'
    if arg1:
        if not stor1[address(arg1)]:
            stor1[address(arg1)] = 1
            stor2.length++
            stor2[stor2.length].field_0 = arg1
            stor3[address(arg1)] = stor2.length
}

function feeTokens() payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        idx = 0
        s = 128
        t = (32 * stor2.length) + 192
        while idx < stor2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function removeFeeToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Cannot use zero address'
    if not stor1[address(arg1)]:
        revert with 0, 'Token already deny'
    if arg1:
        if stor1[address(arg1)]:
            stor1[address(arg1)] = 0
            if stor3[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor2.length < 1:
                revert with 'NH{q', 17
            if stor2.length - 1 >= stor2.length:
                revert with 'NH{q', 50
            if stor3[address(arg1)] - 1 >= stor2.length:
                revert with 'NH{q', 50
            stor2[stor3[address(arg1)]].field_0 = stor2[stor2.length].field_0
            if stor3[address(arg1)] - 1 > -2:
                revert with 'NH{q', 17
            stor3[stor2[stor2.length].field_0] = stor3[address(arg1)]
            if not stor2.length:
                revert with 'NH{q', 49
            stor2[stor2.length].field_0 = 0
            stor2.length--
            stor3[address(arg1)] = 0
}



}
