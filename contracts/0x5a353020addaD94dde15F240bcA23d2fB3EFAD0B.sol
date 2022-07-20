contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function random() {
    return sha3(block.timestamp, block.difficulty, stor1)
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

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    call stor1.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function main() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sha3(block.timestamp, block.difficulty, stor1) % 96 > -6:
        revert with 'NH{q', 17
    if sha3(block.timestamp, block.difficulty, stor1) % 4 > -6:
        revert with 'NH{q', 17
    if (sha3(block.timestamp, block.difficulty, stor1) % 4) + 5 and 10 > -1 / (sha3(block.timestamp, block.difficulty, stor1) % 4) + 5:
        revert with 'NH{q', 17
    if (10 * sha3(block.timestamp, block.difficulty, stor1) % 4) + 50 != 80:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        if (sha3(block.timestamp, block.difficulty, stor1) % 96) + 5 <= 50:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(stor1)
            call stor1.invest(address arg1) with:
               value msg.value wei
                 gas gas_remaining wei
                args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
