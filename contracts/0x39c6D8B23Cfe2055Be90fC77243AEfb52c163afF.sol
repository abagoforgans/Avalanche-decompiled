contract main {




// =====================  Runtime code  =====================


address owner;
address sub_ab703d2bAddress;
uint256 sub_ed4460ef;
uint256 stor3;
uint256 stor4;
address stor5;

function owner() payable {
    return owner
}

function sub_ab703d2b(?) payable {
    return sub_ab703d2bAddress
}

function sub_ed4460ef(?) payable {
    return sub_ed4460ef
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_eef27957(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 <= 0:
        revert with 0, 'bad input'
    sub_ab703d2bAddress = address(arg1)
    sub_ed4460ef = arg2
    stor4 = arg3
    stor5 = address(arg4)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recoverERC20(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function roll(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor5
    if block.number < 99:
        revert with 0, 17
    stor3 = sha3(address(arg1), block.timestamp, gas_remaining, stor3, block.hash(block.number - 99))
    if not stor4:
        revert with 0, 18
    if not sha3(address(arg1), block.timestamp, gas_remaining, stor3, block.hash(block.number - 99)) % stor4:
        require ext_code.size(sub_ab703d2bAddress)
        staticcall sub_ab703d2bAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= sub_ed4460ef:
            require ext_code.size(sub_ab703d2bAddress)
            call sub_ab703d2bAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), sub_ed4460ef
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if ext_call.return_data[0]:
                require ext_code.size(sub_ab703d2bAddress)
                call sub_ab703d2bAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Winner(block.timestamp, arg1);
}



}
