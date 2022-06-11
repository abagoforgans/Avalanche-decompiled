contract main {




// =====================  Runtime code  =====================


address owner;
array of struct sub_644ab0ac;
array of struct sub_31efcc39;

function sub_31efcc39(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_31efcc39.length
    return sub_31efcc39[arg1].field_0
}

function sub_644ab0ac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_644ab0ac.length
    return sub_644ab0ac[arg1].field_0
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_284f20f0(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.isLiquidityBond() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bd3791af(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.totalDebt() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_e50580d4(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require arg1
    if not arg2:
        idx = 0
        while idx < sub_31efcc39.length:
            mem[0] = 2
            if sub_31efcc39[idx].field_0 != arg1:
                idx = idx + 1
                continue 
        sub_31efcc39.length++
        sub_31efcc39[sub_31efcc39.length].field_0 = arg1
    else:
        idx = 0
        while idx < sub_644ab0ac.length:
            mem[0] = 1
            if sub_644ab0ac[idx].field_0 != arg1:
                idx = idx + 1
                continue 
        sub_644ab0ac.length++
        sub_644ab0ac[sub_644ab0ac.length].field_0 = arg1
}

function sub_20e4c14e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require arg1
    idx = 0
    while idx < sub_644ab0ac.length:
        mem[0] = 1
        if sub_644ab0ac[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        s = idx
        while s < sub_644ab0ac.length - 1:
            require s + 1 < sub_644ab0ac.length
            require s < sub_644ab0ac.length
            mem[0] = 1
            sub_644ab0ac[s].field_0 = sub_644ab0ac[s].field_256
            s = s + 1
            continue 
        require sub_644ab0ac.length
        sub_644ab0ac[sub_644ab0ac.length].field_0 = 0
        sub_644ab0ac.length--
        return 1
    idx = 0
    while idx < sub_31efcc39.length:
        mem[0] = 2
        if sub_31efcc39[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        s = idx
        while s < sub_31efcc39.length - 1:
            require s + 1 < sub_31efcc39.length
            require s < sub_31efcc39.length
            mem[0] = 2
            sub_31efcc39[s].field_0 = sub_31efcc39[s].field_256
            s = s + 1
            continue 
        require sub_31efcc39.length
        sub_31efcc39[sub_31efcc39.length].field_0 = 0
        sub_31efcc39.length--
        return 1
    return 0
}



}
