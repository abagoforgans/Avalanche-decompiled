contract main {




// =====================  Runtime code  =====================


address owner;
address sub_b6fc6772Address;
address sub_b1d9725aAddress;
address tokenAddress;
uint256 sub_412831c4;

function sub_412831c4(?) payable {
    return sub_412831c4
}

function owner() payable {
    return owner
}

function sub_b1d9725a(?) payable {
    return sub_b1d9725aAddress
}

function sub_b6fc6772(?) payable {
    return sub_b6fc6772Address
}

function token() payable {
    return tokenAddress
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

function sub_5b648a22(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b6fc6772Address = address(arg1)
}

function sub_c6d1596f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b1d9725aAddress = address(arg1)
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
    if not sub_412831c4:
        require ext_code.size(sub_b6fc6772Address)
        staticcall sub_b6fc6772Address.consult(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args tokenAddress, 10^6
    else:
        if bool(bool(sub_412831c4 < 78)) or bool(bool(sub_412831c4 < 32)):
            if 10^sub_412831c4 > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                revert with 0, 17
            require ext_code.size(sub_b6fc6772Address)
            staticcall sub_b6fc6772Address.consult(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args tokenAddress, 10^6 * 10^sub_412831c4
        else:
            s = 10
            t = 1
            idx = sub_412831c4
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if s * t > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                revert with 0, 17
            require ext_code.size(sub_b6fc6772Address)
            staticcall sub_b6fc6772Address.consult(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args tokenAddress, 10^6 * s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_b1d9725aAddress)
    staticcall sub_b1d9725aAddress.0x7eeda703 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (10^6 * ext_call.return_data[0] / ext_call.return_data[0])
}



}
