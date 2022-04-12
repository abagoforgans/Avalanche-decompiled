contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of uint256 stor2;

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

function transferBack(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    call stor1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor1)
    staticcall stor1.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        if stor2[idx] < ext_call.return_data[0]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if ext_call.return_data[0] > -arg1 - 1:
            revert with 'NH{q', 17
        if idx >= stor2.length:
            revert with 'NH{q', 50
        mem[0] = 2
        if stor2[idx] >= ext_call.return_data[0] + arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if idx - ext_call.return_data[0] > -2:
            revert with 'NH{q', 17
        if idx + -ext_call.return_data[0] + 1 and 10^17 > -1 / idx + -ext_call.return_data[0] + 1:
            revert with 'NH{q', 17
        if (10^17 * idx) + (-1 * 10^17 * ext_call.return_data[0]) + 10^17 and 25 > -1 / (10^17 * idx) + (-1 * 10^17 * ext_call.return_data[0]) + 10^17:
            revert with 'NH{q', 17
        require ext_code.size(stor1)
        call stor1.mintHusky(uint256 rg1) with:
           value (25 * 10^17 * idx) + (-25 * 10^17 * ext_call.return_data[0]) + 25 * 10^17 wei
             gas gas_remaining wei
            args (idx + -ext_call.return_data[0] + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
