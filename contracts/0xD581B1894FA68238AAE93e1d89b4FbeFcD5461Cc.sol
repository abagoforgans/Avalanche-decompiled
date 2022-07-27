contract main {




// =====================  Runtime code  =====================


address owner;
address sub_aa8ee181Address;
address sub_c0aa80e7Address;
address deployerAddress;
uint256 sub_992f343c;
uint8 sub_7b37367d;

function sub_7b37367d(?) payable {
    return sub_7b37367d
}

function owner() payable {
    return owner
}

function sub_992f343c(?) payable {
    return sub_992f343c
}

function sub_aa8ee181(?) payable {
    return sub_aa8ee181Address
}

function sub_c0aa80e7(?) payable {
    return sub_c0aa80e7Address
}

function deployer() payable {
    return deployerAddress
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

function sub_5c5c91bc(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_992f343c = arg1
    sub_7b37367d = uint8(arg2)
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

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall sub_aa8ee181Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call sub_aa8ee181Address.0xa9059cbb with:
         gas gas_remaining wei
        args deployerAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function swap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    call sub_c0aa80e7Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 57005, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not sub_7b37367d:
        if arg1 and sub_992f343c > -1 / arg1:
            revert with 0, 17
        call sub_aa8ee181Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1 * sub_992f343c
    else:
        if bool(bool(sub_7b37367d < 78)) or bool(bool(sub_7b37367d < 32)):
            if arg1 and sub_992f343c > -1 / arg1:
                revert with 0, 17
            if not 10^sub_7b37367d:
                revert with 0, 18
            call sub_aa8ee181Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 * sub_992f343c / 10^sub_7b37367d
        else:
            s = 10
            t = 1
            idx = sub_7b37367d
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
            if arg1 and sub_992f343c > -1 / arg1:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            call sub_aa8ee181Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 * sub_992f343c / s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
