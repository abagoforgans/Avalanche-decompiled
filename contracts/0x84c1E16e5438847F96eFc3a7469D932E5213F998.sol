contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint256 stor2;

function owner() {
    return owner
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

function withdrawAll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= eth.balance(this.address)
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2[address(msg.sender)] <= 0:
        revert with 0, 'no'
    if eth.balance(this.address) < stor2[address(msg.sender)]:
        revert with 0, 'noo'
    call msg.sender with:
       value stor2[address(msg.sender)] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'failed to send back avax'
    stor2[address(msg.sender)] = 0
}

function hello(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    staticcall stor1.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if arg2 != ext_call.return_data[30 len 2]:
        revert with 0, 'reverted 0'
    if msg.value <= 0:
        revert with 0, 'avax pls'
    if arg2 == -1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if block.timestamp % arg1 < 2:
        if block.number < 1:
            revert with 'NH{q', 17
        if uint16(sha3(msg.sender, block.hash(block.number - 1), block.timestamp, arg2 + 1) xor 3) % 10:
            if stor2[address(msg.sender)] > -msg.value - 1:
                revert with 'NH{q', 17
            stor2[address(msg.sender)] += msg.value
        else:
            call msg.sender with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'failed to send back avax'
    else:
        if not arg1:
            revert with 'NH{q', 18
        if block.number < 1:
            revert with 'NH{q', 17
        if uint16(sha3(msg.sender, block.hash(block.number - 1), block.timestamp, arg2 + 1) xor block.timestamp % arg1) % 10:
            if stor2[address(msg.sender)] > -msg.value - 1:
                revert with 'NH{q', 17
            stor2[address(msg.sender)] += msg.value
        else:
            call msg.sender with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'failed to send back avax'
}



}
