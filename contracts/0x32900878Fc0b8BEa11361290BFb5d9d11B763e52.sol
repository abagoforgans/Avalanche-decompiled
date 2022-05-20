contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_840b8d49;
address liquidityAddress;
uint256 sub_81900318;

function liquidityAddress() {
    return liquidityAddress
}

function sub_81900318(?) {
    return sub_81900318
}

function sub_840b8d49(?) {
    return sub_840b8d49
}

function owner() {
    return owner
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

function sub_12098494(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_840b8d49 = arg1
}

function sub_035ceca2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityAddress = address(arg1)
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require eth.balance(this.address) > 0
    call liquidityAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
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

function sub_62b02cf9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.value == arg1
    if eth.balance(this.address) >= sub_840b8d49:
        revert with 0, 'Whitelist Filled'
    if eth.balance(this.address) > -arg1 - 1:
        revert with 'NH{q', 17
    if eth.balance(this.address) + arg1 >= sub_840b8d49:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Deposit Over Whitelist Max - Check Contract Balance if its below limit'
    if not sub_840b8d49:
        revert with 'NH{q', 18
    if eth.balance(this.address) / sub_840b8d49 and 100 > -1 / eth.balance(this.address) / sub_840b8d49:
        revert with 'NH{q', 17
    sub_81900318 = 100 * eth.balance(this.address) / sub_840b8d49
}

function claim(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
