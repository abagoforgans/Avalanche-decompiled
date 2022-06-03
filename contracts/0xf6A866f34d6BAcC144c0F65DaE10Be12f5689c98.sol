contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;

function owner() {
    return owner
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
    stor3 = arg1
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
    if stor3 != msg.sender:
        if owner != msg.sender:
            revert with 'NH{q', 1
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
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
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getMinted() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    staticcall stor2.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    return ext_call.return_data[30 len 2]
}

function getSeed() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    staticcall stor2.randomSource() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).seed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function success() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    staticcall stor2.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if ext_call.return_data[30 len 2] == 65535:
        revert with 'NH{q', 17
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    staticcall stor2.randomSource() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).seed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.number < 1:
        revert with 'NH{q', 17
    if not sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor ext_call.return_data[0] % 2048 >> 245 % 10:
        return not not sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor ext_call.return_data[0] % 2048 >> 245 % 10
    return not uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor ext_call.return_data[0]) % 10
}

function sub_2eb1d0ab(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    staticcall stor2.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if ext_call.return_data[30 len 2] == 65535:
        revert with 'NH{q', 17
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    staticcall stor2.randomSource() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).seed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.number < 1:
        revert with 'NH{q', 17
    if sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor ext_call.return_data[0] % 2048 >> 245 % 10:
        if not uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor ext_call.return_data[0]) % 10:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
