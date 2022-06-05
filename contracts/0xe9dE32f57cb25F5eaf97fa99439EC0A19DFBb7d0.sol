contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address sub_99418d7fAddress;

function owner() {
    return owner
}

function sub_99418d7f(?) {
    return sub_99418d7fAddress
}

function kill() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setSecondOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_99418d7fAddress = arg1
}

function setGameAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
    stor2 = stor1
}

function sub_b4fad1b5(?) {
    if sub_99418d7fAddress != msg.sender:
        if owner != msg.sender:
            revert with 'NH{q', 1
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3d2bd035(?) {
    require ext_code.size(stor2)
    staticcall stor2.purchased() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    return ext_call.return_data[30 len 2]
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

function success() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    staticcall stor2.purchased() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if block.number > -5:
        revert with 'NH{q', 17
    if block.number > -4:
        revert with 'NH{q', 17
    return (sha3(block.hash(block.number + 4), tx.origin, block.hash(block.number + 2), block.hash(block.number + 3), block.hash(block.number + 1), ext_call.return_data[0] << 240, block.timestamp) < 9)
}

function sub_2eb1d0ab(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    staticcall stor2.purchased() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if block.number > -5:
        revert with 'NH{q', 17
    if block.number > -4:
        revert with 'NH{q', 17
    if sha3(block.hash(block.number + 4), tx.origin, block.hash(block.number + 2), block.hash(block.number + 3), block.hash(block.number + 1), ext_call.return_data[0] << 240, block.timestamp) < 9:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
