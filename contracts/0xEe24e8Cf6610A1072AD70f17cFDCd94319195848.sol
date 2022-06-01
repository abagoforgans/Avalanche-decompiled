contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint256 stor3;
address stor4;
address stor5;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setMintPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
}

function setGameAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
    stor5 = stor2
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
    stor4 = stor1
}

function sub_9c673b97(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    stor3 = 10^18 * arg1
}

function getMinted() payable {
    require ext_code.size(stor5)
    staticcall stor5.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    return ext_call.return_data[30 len 2]
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

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function success() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor5)
    staticcall stor5.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if block.number < 1:
        revert with 'NH{q', 17
    if uint16(uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]))) % 100) > 10:
        return uint16(uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]))) % 100) <= 10
    return not not sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0])) % 2048 >> 245 % 10
}

function run() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor5)
    staticcall stor5.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if block.number < 1:
        revert with 'NH{q', 17
    if uint16(uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]))) % 100) > 10:
        require ext_code.size(stor4)
        call stor4.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if not sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0])) % 2048 >> 245 % 10:
            require ext_code.size(stor4)
            call stor4.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
