contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address sub_c6b9d754Address; offset 8
address owner;
array of address sub_f36aa36e;

function isInitialized() payable {
    return bool(stor0)
}

function owner() payable {
    return owner
}

function sub_c6b9d754(?) payable {
    return sub_c6b9d754Address
}

function sub_f36aa36e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_f36aa36e.length
    return address(sub_f36aa36e[arg1])
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
    sub_c6b9d754Address = arg1
    stor0 = 1
    return 1
}

function sub_93c8c71e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Sender is not owner'
    sub_f36aa36e.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_f36aa36e.length > idx:
            uint256(sub_f36aa36e[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            address(sub_f36aa36e[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_f36aa36e.length > idx:
            uint256(sub_f36aa36e[idx]) = 0
            idx = idx + 1
            continue 
    return 1
}

function sub_789f0b59(?) payable {
    idx = 0
    s = 0
    while idx < sub_f36aa36e.length:
        mem[0] = 2
        mem[100] = address(sub_f36aa36e[idx])
        require ext_code.size(sub_c6b9d754Address)
        staticcall sub_c6b9d754Address.0x70a08231 with:
                gas gas_remaining wei
               args address(sub_f36aa36e[idx])
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
    return (s * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length)
}

function sub_2844ce2c(?) payable {
    require ext_code.size(sub_c6b9d754Address)
    staticcall sub_c6b9d754Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < sub_f36aa36e.length:
        mem[0] = 2
        mem[100] = address(sub_f36aa36e[idx])
        require ext_code.size(sub_c6b9d754Address)
        staticcall sub_c6b9d754Address.0x70a08231 with:
                gas gas_remaining wei
               args address(sub_f36aa36e[idx])
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
    if s * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - (s * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length * sub_f36aa36e.length))
}



}
