contract main {




// =====================  Runtime code  =====================


address owner;
address authorityAddress;
mapping of uint8 stor2;
mapping of address sub_c53a3985;
mapping of uint256 userRoles;
mapping of uint256 sub_4970840c;
mapping of uint8 stor6;

function getUserRoles(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userRoles[arg1]
}

function sub_0bade8a4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor6[arg1])
}

function sub_4970840c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return sub_4970840c[arg1]
}

function owner() payable {
    return owner
}

function isTrusted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function authority() payable {
    return authorityAddress
}

function sub_c53a3985(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c53a3985[arg1]
}

function _fallback() payable {
    revert
}

function doesUserHaveRole(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(2^arg2 and userRoles[address(arg1)])
}

function doesRoleHaveCapability(uint8 arg1, bytes4 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == Mask(32, 224, arg2)
    return bool(2^arg1 and sub_4970840c[Mask(32, 224, arg2)])
}

function setIsTrusted(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor2[msg.sender]:
        revert with 0, 'UNTRUSTED'
    stor2[address(arg1)] = uint8(arg2)
    emit UserTrustUpdated(arg2, arg1);
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
               args msg.sender, address(this.address), call.func_hash
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
               args msg.sender, address(this.address), call.func_hash
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

function sub_728b952b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not authorityAddress:
        if owner != msg.sender:
            revert with 0, 'UNAUTHORIZED'
    else:
        staticcall authorityAddress.0xb7009613 with:
                gas gas_remaining wei
               args msg.sender, address(this.address), call.func_hash
        if not ext_call.success:
            if owner != msg.sender:
                revert with 0, 'UNAUTHORIZED'
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if owner != msg.sender:
                    revert with 0, 'UNAUTHORIZED'
    sub_c53a3985[address(arg1)] = address(arg2)
    emit 0xa4908e11: address(arg1), address(arg2)
}

function setPublicCapability(bytes4 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == Mask(32, 224, arg1)
    require arg2 == arg2
    if not authorityAddress:
        if owner != msg.sender:
            revert with 0, 'UNAUTHORIZED'
    else:
        staticcall authorityAddress.0xb7009613 with:
                gas gas_remaining wei
               args msg.sender, address(this.address), call.func_hash
        if not ext_call.success:
            if owner != msg.sender:
                revert with 0, 'UNAUTHORIZED'
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if owner != msg.sender:
                    revert with 0, 'UNAUTHORIZED'
    stor6[Mask(32, 224, arg1)] = uint8(arg2)
    emit PublicCapabilityUpdated(arg2, Mask(32, 224, arg1));
}

function canCall(address arg1, address arg2, bytes4 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == Mask(32, 224, arg3)
    if not sub_c53a3985[address(arg2)]:
        if userRoles[address(arg1)] and sub_4970840c[Mask(32, 224, arg3)]:
            return bool(userRoles[address(arg1)] and sub_4970840c[Mask(32, 224, arg3)])
        if stor6[Mask(32, 224, arg3)]:
            return bool(stor6[Mask(32, 224, arg3)])
        return bool(stor2[address(arg1)])
    staticcall sub_c53a3985[address(arg2)].0xb7009613 with:
            gas gas_remaining wei
           args address(arg1), address(arg2), Mask(32, 224, arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function setUserRole(address arg1, uint8 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not authorityAddress:
        if owner != msg.sender:
            revert with 0, 'UNAUTHORIZED'
    else:
        staticcall authorityAddress.0xb7009613 with:
                gas gas_remaining wei
               args msg.sender, address(this.address), call.func_hash
        if not ext_call.success:
            if owner != msg.sender:
                revert with 0, 'UNAUTHORIZED'
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if owner != msg.sender:
                    revert with 0, 'UNAUTHORIZED'
    if arg3:
        userRoles[address(arg1)] = userRoles[address(arg1)] or 2^arg2
    else:
        userRoles[address(arg1)] = userRoles[address(arg1)] and !2^arg2
    emit UserRoleUpdated(arg3, arg1, arg2);
}

function setRoleCapability(uint8 arg1, bytes4 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == Mask(32, 224, arg2)
    require arg3 == arg3
    if not authorityAddress:
        if owner != msg.sender:
            revert with 0, 'UNAUTHORIZED'
    else:
        staticcall authorityAddress.0xb7009613 with:
                gas gas_remaining wei
               args msg.sender, address(this.address), call.func_hash
        if not ext_call.success:
            if owner != msg.sender:
                revert with 0, 'UNAUTHORIZED'
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if owner != msg.sender:
                    revert with 0, 'UNAUTHORIZED'
    if arg3:
        sub_4970840c[Mask(32, 224, arg2)] = sub_4970840c[Mask(32, 224, arg2)] or 2^arg1
    else:
        sub_4970840c[Mask(32, 224, arg2)] = sub_4970840c[Mask(32, 224, arg2)] and !2^arg1
    emit RoleCapabilityUpdated(arg3, arg1, Mask(32, 224, arg2));
}



}
