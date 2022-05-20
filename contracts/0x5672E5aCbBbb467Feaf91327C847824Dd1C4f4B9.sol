contract main {




// =====================  Runtime code  =====================


address owner;
address authorityAddress;
uint256 sub_e7926d5c;
uint64 sub_c9b639d2;
uint128 sub_b5ef8b1e; offset 64
uint256 sub_261d26b6;
mapping of uint256 sub_6eae9513;
mapping of uint64 sub_6f840932;
mapping of uint128 sub_2487bbff;
mapping of uint256 sub_5fad65b0;

function sub_2487bbff(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2487bbff[arg1]
}

function sub_261d26b6(?) payable {
    return sub_261d26b6
}

function sub_5fad65b0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5fad65b0[arg1]
}

function sub_6eae9513(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6eae9513[arg1]
}

function sub_6f840932(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6f840932[arg1]
}

function owner() payable {
    return owner
}

function sub_b5ef8b1e(?) payable {
    return sub_b5ef8b1e
}

function authority() payable {
    return authorityAddress
}

function sub_c9b639d2(?) payable {
    return sub_c9b639d2
}

function sub_e7926d5c(?) payable {
    return sub_e7926d5c
}

function _fallback() payable {
    revert
}

function sub_e7d9934b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    if not sub_2487bbff[address(arg1)]:
        call address(arg1).0x7b35d1d with:
             gas gas_remaining wei
            args sub_b5ef8b1e
    else:
        call address(arg1).0x7b35d1d with:
             gas gas_remaining wei
            args sub_2487bbff[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5607702f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    if not sub_6f840932[address(arg1)]:
        call address(arg1).0x7b72aeb9 with:
             gas gas_remaining wei
            args sub_c9b639d2
    else:
        call address(arg1).0x7b72aeb9 with:
             gas gas_remaining wei
            args sub_6f840932[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b7c392c8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    if not sub_6eae9513[address(arg1)]:
        call address(arg1).setFeePercent(uint256 arg1) with:
             gas gas_remaining wei
            args sub_e7926d5c
    else:
        call address(arg1).setFeePercent(uint256 arg1) with:
             gas gas_remaining wei
            args sub_6eae9513[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ac345d03(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    if not sub_5fad65b0[address(arg1)]:
        call address(arg1).setTargetFloatPercent(uint256 arg1) with:
             gas gas_remaining wei
            args sub_261d26b6
    else:
        call address(arg1).setTargetFloatPercent(uint256 arg1) with:
             gas gas_remaining wei
            args sub_5fad65b0[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2b4b2753(?) payable {
    require calldata.size - 4 >= 32
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
    sub_261d26b6 = arg1
    emit 0xf6ac39ac: arg1
}

function sub_dd55002d(?) payable {
    require calldata.size - 4 >= 32
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
    sub_e7926d5c = arg1
    emit 0x1ba0c719: arg1
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

function sub_4022d941(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
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
    sub_c9b639d2 = uint64(arg1)
    emit 0xd49755c3: uint64(arg1)
}

function sub_3295ce96(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
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
    sub_b5ef8b1e = uint128(arg1)
    emit 0x54707f3c: uint128(arg1)
}

function sub_05d7282c(?) payable {
    require calldata.size - 4 >= 64
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
    sub_5fad65b0[address(arg1)] = arg2
    emit 0xd710c464: arg2, address(arg1)
}

function sub_bc3e38fa(?) payable {
    require calldata.size - 4 >= 64
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
    sub_6eae9513[address(arg1)] = arg2
    emit 0x1d66532e: arg2, address(arg1)
}

function sub_af54da91(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint64(arg2)
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
    sub_6f840932[address(arg1)] = uint64(arg2)
    emit 0xd239ace1: uint64(arg2), address(arg1)
}

function sub_4ce908f4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint128(arg2)
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
    sub_2487bbff[address(arg1)] = uint128(arg2)
    emit 0x20f4b532: uint128(arg2), address(arg1)
}



}
