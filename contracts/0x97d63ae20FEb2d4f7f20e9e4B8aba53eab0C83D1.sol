contract main {




// =====================  Runtime code  =====================


const name = '', 0

const decimals = 18

const symbol = '', 0


uint8 stor0; offset 160
address owner;
mapping of uint8 stor3;
uint256 multiplier;
address stor6; offset 8

function initialized() {
    return bool(stor0)
}

function multiplier() {
    return multiplier
}

function owner() {
    return owner
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function _fallback() payable {
    delegate stor6 with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
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

function upgrade(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'flexUSD: new implementation cannot be zero address.'
    if not ext_code.size(arg1):
        revert with 0, 'flexUSD: new implementation is not a contract.'
    if stor6 == arg1:
        revert with 0, 'flexUSD: new implementation cannot be the same address.'
    stor6 = arg1
    emit Upgraded(arg1);
    if not arg2.length:
    if not ext_code.size(stor6):
        revert with 0, 'Address: delegate call to non-contract'
    mem[ceil32(ceil32(arg2.length)) + 193 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 39) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 193] = 0
    delegate stor6.mem[ceil32(ceil32(arg2.length)) + 193 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 197 len arg2.length - 4]
    if delegate.return_code:
    if not return_data.size:
        if arg2.length:
            revert with arg2[all]
    else:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 
                32,
                39,
                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 168 len 25] >> 56,
                0
}



}
