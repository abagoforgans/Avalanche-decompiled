contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address plateauTokenAddress;

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function plateauToken() payable {
    return plateauTokenAddress
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addOrRemoveOperators(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
}

function getPlateauBalance() payable {
    require ext_code.size(plateauTokenAddress)
    staticcall plateauTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawPlateau(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'not allowed'
    require ext_code.size(plateauTokenAddress)
    staticcall plateauTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(plateauTokenAddress)
    if ext_call.return_data[0] >= arg2:
        call plateauTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
    else:
        call plateauTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
