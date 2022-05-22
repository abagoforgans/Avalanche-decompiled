contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
mapping of uint8 stor5;

function sub_2478239a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_65d097a6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = uint8(bool(arg2))
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

function depositDAI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens'
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args stor2, arg1, msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositUSDT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens'
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args stor3, arg1, msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositUSDC(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens'
    call stor4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args stor4, arg1, msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0859dd5a(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if not stor5[address(arg2)]:
        revert with 0, 'Invalid charity'
    if arg3 >= 100:
        revert with 0, 'Invalid percentage'
    call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args stor2, arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg3 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / 100:
        revert with 0, 17
    if ext_call.return_data[0] * arg3 / 100:
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(arg2), ext_call.return_data[0] * arg3 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Could not transfer tokens'
    if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / 100):
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Could not transfer tokens'
}

function sub_a0159d67(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if not stor5[address(arg2)]:
        revert with 0, 'Invalid charity'
    if arg3 >= 100:
        revert with 0, 'Invalid percentage'
    call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args stor4, arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg3 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / 100:
        revert with 0, 17
    if ext_call.return_data[0] * arg3 / 100:
        call stor4.0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(arg2), ext_call.return_data[0] * arg3 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Could not transfer tokens'
    if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / 100):
        call stor4.0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Could not transfer tokens'
}

function sub_a4c02fc2(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if not stor5[address(arg2)]:
        revert with 0, 'Invalid charity'
    if arg3 >= 100:
        revert with 0, 'Invalid percentage'
    call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args stor3, arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg3 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / 100:
        revert with 0, 17
    if ext_call.return_data[0] * arg3 / 100:
        call stor3.0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(arg2), ext_call.return_data[0] * arg3 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Could not transfer tokens'
    if ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / 100):
        call stor3.0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * arg3 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Could not transfer tokens'
}



}
