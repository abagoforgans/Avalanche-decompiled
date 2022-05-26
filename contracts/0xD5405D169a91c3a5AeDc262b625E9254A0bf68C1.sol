contract main {




// =====================  Runtime code  =====================


#
#  - sub_17ab0308(?)
#  - sub_41d36894(?)
#  - sub_43930f9b(?)
#  - sub_a943c93e(?)
#  - rescueTokens(address arg1, address arg2, uint256 arg3)
#
address owner;
address commissionAddress;
uint256 defaultFee;
uint256 sub_b4b5b65f;
uint8 stor4;
mapping of struct pairFee;
mapping of struct sub_47a04100;
mapping of struct sub_4dd8abdb;

function contractEnabled() {
    return bool(stor4)
}

function sub_47a04100(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if sub_47a04100[arg1[all]].field_1536 >= 3:
        revert with 'NH{q', 33
    return bool(sub_47a04100[arg1[all]].field_0), 
           sub_47a04100[arg1[all]].field_0,
           sub_47a04100[arg1[all]].field_256,
           sub_47a04100[arg1[all]].field_512,
           sub_47a04100[arg1[all]].field_1280,
           sub_47a04100[arg1[all]].field_1536,
           sub_47a04100[arg1[all]].field_1792,
           sub_47a04100[arg1[all]].field_2048
}

function sub_4dd8abdb(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(sub_4dd8abdb[arg1[all]].field_0), 
           sub_4dd8abdb[arg1[all]].field_0,
           sub_4dd8abdb[arg1[all]].field_256,
           sub_4dd8abdb[arg1[all]].field_512
}

function defaultFee() {
    return defaultFee
}

function owner() {
    return owner
}

function commissionAddress() {
    return commissionAddress
}

function sub_b4b5b65f(?) {
    return sub_b4b5b65f
}

function getPairFee(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[234 len 64] = arg1, '||', address(arg2), mem[246 len 10]
    return bool(pairFee[mem[234 len 42]].field_0), pairFee[mem[234 len 42]].field_256
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    revert with 0, 'cannot renounce ownership'
}

function setContractEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = uint8(arg1)
    emit 0x31b6f728: bool(stor4)
}

function sub_a48c99cc(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Max cannot be 0'
    sub_b4b5b65f = arg1
    emit 0x598a0bce: arg1
}

function setDefaultFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 5000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fee cannot be more than the maximum'
    defaultFee = arg1
    emit ChangedFee(defaultFee);
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

function setCommissionAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Commission cannot be zero address'
    commissionAddress = arg1
    emit 0xc089e288: commissionAddress
}

function rescueETH(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg2:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit 0x77f67778: address(arg1), arg2
}

function setPairFee(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 <= 0:
        revert with 0, 'Fee must be more than 0'
    if arg3 > 5000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fee cannot be more than the maximum'
    if arg1 == arg2:
        revert with 0, 'Tokens cannot be equal'
    pairFee[arg1, '||', arg2, 0 >> 80].field_0 = 1
    pairFee[arg1, '||', arg2, 0 >> 80].field_256 = arg3
    pairFee[arg1, Mask(176, 80, arg1, '||', arg2, 0) >> 80 >> 80].field_0 = 1
    pairFee[arg1, Mask(176, 80, arg1, '||', arg2, 0) >> 80 >> 80].field_256 = arg3
    emit 0x71aa5a5a: address(arg1), address(arg2), arg3
}



}
