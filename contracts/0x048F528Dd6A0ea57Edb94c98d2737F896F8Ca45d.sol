contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_c1814d87;

function owner() {
    return owner
}

function sub_c1814d87(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_c1814d87[arg1].field_0), sub_c1814d87[arg1].field_8
}

function sub_d109be9c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c1814d87[address(arg1)].field_8
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_e418405a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c1814d87[address(arg1)].field_0 = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_cd6785df(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c1814d87[address(arg1)].field_0 = uint8(bool(arg2))
    sub_c1814d87[address(arg1)].field_8 = address(arg3)
    sub_c1814d87[address(arg1)].field_168 = Mask(88, 168, bool(arg2)) >> 168
}

function getAmountOut(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.getDepositTokensForShares(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c76b03ce(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if not sub_c1814d87[address(arg1)].field_8:
        return 0
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_c1814d87[address(arg1)].field_8)
    if not sub_c1814d87[address(arg1)].field_0:
        call sub_c1814d87[address(arg1)].field_8.deposit() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall sub_c1814d87[address(arg1)].field_8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c1814d87[address(arg1)].field_8)
    call sub_c1814d87[address(arg1)].field_8.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg4), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return sub_c1814d87[address(arg1)].field_8
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0xc76b03ce(?????) > uint32(call.func_hash) >> 224:
        if uint32(call.func_hash) >> 224 != unknown_0x4aa06652(?????):
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                emit OwnershipTransferred(owner, 0);
                owner = 0
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            require unknown_0xc1814d87(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            return bool(sub_c1814d87[arg1].field_0), sub_c1814d87[arg1].field_8
        require not msg.value
        require calldata.size - 4 >= 96
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        require ext_code.size(address(arg1))
        staticcall address(arg1).getDepositTokensForShares(uint256 arg1) with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    if unknown_0xd109be9c(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xd109be9c(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            return sub_c1814d87[address(arg1)].field_8
        if unknown_0xe418405a(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            sub_c1814d87[address(arg1)].field_0 = 0
        else:
            require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not address(arg1):
                revert with 0, 'Ownable: new owner is the zero address'
            emit OwnershipTransferred(owner, address(arg1));
            owner = address(arg1)
    if uint32(call.func_hash) >> 224 != unknown_0xc76b03ce(?????):
        require unknown_0xcd6785df(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 96
        require arg1 == address(arg1)
        require arg2 == bool(arg2)
        require arg3 == address(arg3)
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        sub_c1814d87[address(arg1)].field_0 = uint8(bool(arg2))
        sub_c1814d87[address(arg1)].field_8 = address(arg3)
        sub_c1814d87[address(arg1)].field_168 = Mask(88, 168, bool(arg2)) >> 168
    require not msg.value
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if not sub_c1814d87[address(arg1)].field_8:
        return 0
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_c1814d87[address(arg1)].field_8)
    if not sub_c1814d87[address(arg1)].field_0:
        call sub_c1814d87[address(arg1)].field_8.deposit() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall sub_c1814d87[address(arg1)].field_8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c1814d87[address(arg1)].field_8)
    call sub_c1814d87[address(arg1)].field_8.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg4), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return sub_c1814d87[address(arg1)].field_8
}



}
