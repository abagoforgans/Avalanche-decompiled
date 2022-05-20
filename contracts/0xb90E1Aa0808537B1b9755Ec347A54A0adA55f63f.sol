contract main {




// =====================  Runtime code  =====================


address owner;
address authorityAddress;
address sub_68f1e99aAddress;

function sub_68f1e99a(?) payable {
    return sub_68f1e99aAddress
}

function owner() payable {
    return owner
}

function authority() payable {
    return authorityAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not authorityAddress:
        if owner != msg.sender:
            revert with 0, 'UNAUTHORIZED'
    else:
        staticcall authorityAddress.0xb7009613 with:
                gas gas_remaining wei
               args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            if owner != msg.sender:
                revert with 0, 'UNAUTHORIZED'
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if owner != msg.sender:
                    revert with 0, 'UNAUTHORIZED'
    owner = arg1
    emit OwnerUpdated(arg1);
}

function setAuthority(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not authorityAddress:
        if owner != msg.sender:
            revert with 0, 'UNAUTHORIZED'
    else:
        staticcall authorityAddress.0xb7009613 with:
                gas gas_remaining wei
               args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            if owner != msg.sender:
                revert with 0, 'UNAUTHORIZED'
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if owner != msg.sender:
                    revert with 0, 'UNAUTHORIZED'
    authorityAddress = arg1
    emit AuthorityUpdated(arg1);
}

function sub_ad9ab820(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not authorityAddress:
        if owner != msg.sender:
            revert with 0, 'UNAUTHORIZED'
    else:
        staticcall authorityAddress.0xb7009613 with:
                gas gas_remaining wei
               args msg.sender, this.address, call.func_hash
        if not ext_call.success:
            if owner != msg.sender:
                revert with 0, 'UNAUTHORIZED'
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if owner != msg.sender:
                    revert with 0, 'UNAUTHORIZED'
    sub_68f1e99aAddress = address(arg1)
    emit 0xcc0bfba2: address(arg1)
}

function initializeVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_68f1e99aAddress)
    call sub_68f1e99aAddress.0xb7c392c8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_68f1e99aAddress)
    call sub_68f1e99aAddress.0x5607702f with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_68f1e99aAddress)
    call sub_68f1e99aAddress.0xe7d9934b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_68f1e99aAddress)
    call sub_68f1e99aAddress.0xac345d03 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.initialize() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
