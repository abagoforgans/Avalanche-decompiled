contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of uint256 stor3;
uint256 stor5;
uint8 stor6;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function start(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = uint8(arg1)
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function newOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    call stor1.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function mintForAidrop(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    call stor1.reserveYeti(uint256 rg1, address rg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function callMint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if 10^18 * arg1 != msg.value:
        revert with 0, 'Bad amount'
    require arg1 < 11
    require bool(stor6) == 1
    idx = 0
    while idx < arg1:
        if stor5 >= stor3.length:
            revert with 0, 'Try minting less'
        mem[0] = 3
        mem[96] = 0xb0319d6d00000000000000000000000000000000000000000000000000000000
        mem[100] = stor3[stor5]
        mem[132] = msg.sender
        require ext_code.size(stor1)
        call stor1.reserveYeti(uint256 rg1, address rg2) with:
             gas gas_remaining wei
            args stor3[stor5], msg.sender
        if stor5 == -1:
            revert with 'NH{q', 17
        stor5++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function Store(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        stor3.length++
        mem[0] = 3
        stor3[stor3.length] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
