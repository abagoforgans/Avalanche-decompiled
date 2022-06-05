contract main {




// =====================  Runtime code  =====================


address sub_8733c07cAddress;
address owner;
array of address sub_7f9c9553;

function sub_7f9c9553(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_7f9c9553.length
    return address(sub_7f9c9553[arg1])
}

function sub_8733c07c(?) payable {
    return sub_8733c07cAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender is not owner'
    owner = arg1
    return 1
}

function sub_bf4772d3(?) payable {
    idx = 0
    s = 0
    while idx < sub_7f9c9553.length:
        mem[0] = 2
        mem[100] = address(sub_7f9c9553[idx])
        require ext_code.size(sub_8733c07cAddress)
        staticcall sub_8733c07cAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(sub_7f9c9553[idx])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx + 1 < idx:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return (_16 * sub_7f9c9553.length)
}

function sub_a2fe6260(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Sender is not owner'
    sub_7f9c9553.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_7f9c9553.length > idx:
            uint256(sub_7f9c9553[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            address(sub_7f9c9553[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_7f9c9553.length > idx:
            uint256(sub_7f9c9553[idx]) = 0
            idx = idx + 1
            continue 
    return 1
}

function sub_8ef66b2d(?) payable {
    require ext_code.size(sub_8733c07cAddress)
    staticcall sub_8733c07cAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < sub_7f9c9553.length:
        mem[0] = 2
        mem[100] = address(sub_7f9c9553[idx])
        require ext_code.size(sub_8733c07cAddress)
        staticcall sub_8733c07cAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(sub_7f9c9553[idx])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx + 1 < idx:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    if _30 * sub_7f9c9553.length > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - (_30 * sub_7f9c9553.length))
}



}
