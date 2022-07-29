contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address stor1;
uint256 sub_1d3b9850;
uint8 stor3;
uint256 amount;
uint256 sub_9129d61a;
mapping of uint8 stor6;

function sub_1d3b9850(?) {
    return sub_1d3b9850
}

function canClaim() {
    return bool(stor3)
}

function owner() {
    return owner
}

function sub_9129d61a(?) {
    return sub_9129d61a
}

function amount() {
    return amount
}

function claimed(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function _fallback() payable {
    revert
}

function sub_9e5f882c(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = 1
}

function sub_c27ace70(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_10debb8a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1d3b9850 = arg1
}

function sub_3fc231f2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9129d61a = arg1
}

function sub_e26c0c28(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if amount > !msg.value:
        revert with 0, 17
    amount += msg.value
}

function withdrawAllFundsToOwner() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfe4a37b2: eth.balance(this.address)
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

function sub_d8182b2c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfe4a37b2: eth.balance(this.address)
}

function withdrawFundsToOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > eth.balance(this.address):
        revert with 0, 'Not Enough in the account'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfe4a37b2: arg1
}

function withdrawFundsTo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > eth.balance(this.address):
        revert with 0, 'Not Enough in the account'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfe4a37b2: arg2
}

function claimableAmount() {
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    staticcall stor1.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require (32 * _5) + _4 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _5)] = mem[_4 + 128 len ceil32(32 * _5)]
    if _5 <= 0:
        revert with 0, 'You need to own a Polar Bear to claim profits'
    if not stor3:
        revert with 0, 'Claiming Not Yet Active'
    idx = 0
    s = 0
    while idx < _5:
        if idx >= _5:
            revert with 0, 50
        if mem[(32 * idx) + ceil32(return_data.size) + 128] <= sub_1d3b9850:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= _5:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[32] = 6
        if stor6[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > !sub_9129d61a:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_9129d61a
        continue 
    return s
}

function claimProfits() {
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    staticcall stor1.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require (32 * _5) + _4 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _5)] = mem[_4 + 128 len ceil32(32 * _5)]
    if _5 <= 0:
        revert with 0, 'You need to own a Polar Bear to claim profits'
    if not stor3:
        revert with 0, 'Claiming Not Yet Active'
    idx = 0
    s = 0
    while idx < _5:
        if idx >= _5:
            revert with 0, 50
        if mem[(32 * idx) + ceil32(return_data.size) + 128] <= sub_1d3b9850:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= _5:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[32] = 6
        if stor6[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > !sub_9129d61a:
            revert with 0, 17
        if idx >= _5:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[32] = 6
        stor6[mem[(32 * idx) + ceil32(return_data.size) + 128]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_9129d61a
        continue 
    if s <= 0:
        revert with 0, 'You have nothing to claim'
    if s > eth.balance(this.address):
        revert with 0, 'Not Enough in the account To claim profits please contact devs on discord'
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
