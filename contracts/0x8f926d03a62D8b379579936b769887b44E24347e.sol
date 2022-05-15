contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address sub_49eae966Address; offset 8
address owner;
array of address sub_68797de2;

function isInitialized() payable {
    return bool(stor0)
}

function sub_49eae966(?) payable {
    return sub_49eae966Address
}

function sub_68797de2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_68797de2.length
    return address(sub_68797de2[arg1])
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

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'caller is not owner'
    require not stor0
    sub_49eae966Address = arg1
    stor0 = 1
    return 1
}

function sub_ad7049f6(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Sender is not owner'
    sub_68797de2.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_68797de2.length > idx:
            uint256(sub_68797de2[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            address(sub_68797de2[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_68797de2.length > idx:
            uint256(sub_68797de2[idx]) = 0
            idx = idx + 1
            continue 
    return 1
}

function sub_42f8424b(?) payable {
    idx = 0
    s = 0
    while idx < sub_68797de2.length:
        mem[0] = 2
        mem[100] = address(sub_68797de2[idx])
        require ext_code.size(sub_49eae966Address)
        staticcall sub_49eae966Address.0x70a08231 with:
                gas gas_remaining wei
               args address(sub_68797de2[idx])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if s + ext_call.return_data[0] < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx + 1 < idx:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    return (s * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length)
}

function sub_3a5ef429(?) payable {
    require ext_code.size(sub_49eae966Address)
    staticcall sub_49eae966Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < sub_68797de2.length:
        mem[0] = 2
        mem[100] = address(sub_68797de2[idx])
        require ext_code.size(sub_49eae966Address)
        staticcall sub_49eae966Address.0x70a08231 with:
                gas gas_remaining wei
               args address(sub_68797de2[idx])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if s + ext_call.return_data[0] < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx + 1 < idx:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    if s * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - (s * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length * sub_68797de2.length))
}



}
