contract main {




// =====================  Runtime code  =====================


address owner;
address sub_f3baa2faAddress;
address oracleTokenAddress;
address dollarAddress;

function dollar() payable {
    return dollarAddress
}

function oracleToken() payable {
    return oracleTokenAddress
}

function owner() payable {
    return owner
}

function sub_f3baa2fa(?) payable {
    return sub_f3baa2faAddress
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

function sub_6c7acae0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    oracleTokenAddress = address(arg1)
}

function sub_661e9586(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f3baa2faAddress = address(arg1)
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

function consult() payable {
    require ext_code.size(sub_f3baa2faAddress)
    staticcall sub_f3baa2faAddress.consult(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oracleTokenAddress)
    staticcall oracleTokenAddress.0x7eeda703 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^6)
}



}
