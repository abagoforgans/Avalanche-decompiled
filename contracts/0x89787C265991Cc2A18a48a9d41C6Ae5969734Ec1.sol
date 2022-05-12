contract main {




// =====================  Runtime code  =====================


address managerAddress;
address stor1;
address sub_68874344Address;
address _tokenAddress;

function manager() payable {
    return managerAddress
}

function sub_68874344(?) payable {
    return sub_68874344Address
}

function _token() payable {
    return _tokenAddress
}

function _fallback() payable {
    revert
}

function renounceManagement() payable {
    if managerAddress != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    emit OwnershipPushed(managerAddress, 0);
    managerAddress = 0
}

function setAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if managerAddress != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    sub_68874344Address = arg1
    _tokenAddress = arg2
}

function submit() payable {
    if managerAddress != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require ext_code.size(sub_68874344Address)
    call sub_68874344Address.0x5a96ac0a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pullManagement() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(managerAddress, stor1);
    managerAddress = stor1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require ext_code.size(sub_68874344Address)
    call sub_68874344Address.0x46f68ee9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f03cc2b9(?) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require ext_code.size(_tokenAddress)
    call _tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if managerAddress != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require ext_code.size(sub_68874344Address)
    call sub_68874344Address.mintRewards(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(managerAddress, arg1);
    stor1 = arg1
}

function sub_3472df22(?) payable {
    require calldata.size - 4 >= 64
    if managerAddress != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require ext_code.size(_tokenAddress)
    call _tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_68874344Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_68874344Address)
    call sub_68874344Address.withdraw(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
