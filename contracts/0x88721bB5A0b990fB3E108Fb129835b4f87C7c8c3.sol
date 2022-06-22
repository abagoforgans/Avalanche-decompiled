contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
mapping of uint256 stor3;

function owner() {
    return owner
}

function kill() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdrawAll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= eth.balance(this.address)
    call msg.sender with:
       value arg1 wei
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

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[msg.sender]:
        revert with 0, 'no'
    if eth.balance(this.address) < stor3[msg.sender]:
        revert with 0, 'noo'
    call msg.sender with:
       value stor3[msg.sender] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'failed to send back avax'
    stor3[msg.sender] = 0
}

function hello() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if msg.value <= 0:
        revert with 0, 'avax pls'
    require ext_code.size(stor1)
    staticcall stor1.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if 1 > !ext_call.return_data[30 len 2]:
        revert with 0, 17
    if not bool(ext_call.return_data[30 len 2] + 1):
        if ext_call.return_data[30 len 2] + 1 and 9 > -1 / ext_call.return_data[30 len 2] + 1:
            revert with 0, 17
        require ext_code.size(stor2)
        call stor2.getRandomSeed(uint256 arg1) with:
             gas gas_remaining wei
            args (uint16(ext_call.return_data[0]) + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !((9 * uint16(ext_call.return_data[0])) + 9):
            revert with 0, 17
        if block.number < 1:
            revert with 0, 17
        if uint16(sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1) xor ext_call.return_data[0] + (9 * uint16(ext_call.return_data[0])) + 9) % 10:
            if stor3[msg.sender] > !msg.value:
                revert with 0, 17
            stor3[msg.sender] += msg.value
        else:
            call msg.sender with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'failed to send back avax'
    else:
        if ext_call.return_data[30 len 2] + 1 and 1 > -1 / ext_call.return_data[30 len 2] + 1:
            revert with 0, 17
        require ext_code.size(stor2)
        call stor2.getRandomSeed(uint256 arg1) with:
             gas gas_remaining wei
            args (uint16(ext_call.return_data[0]) + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !(uint16(ext_call.return_data[0]) + 1):
            revert with 0, 17
        if block.number < 1:
            revert with 0, 17
        if uint16(sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1) xor ext_call.return_data[0] + uint16(ext_call.return_data[0]) + 1) % 10:
            if stor3[msg.sender] > !msg.value:
                revert with 0, 17
            stor3[msg.sender] += msg.value
        else:
            call msg.sender with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'failed to send back avax'
}



}
