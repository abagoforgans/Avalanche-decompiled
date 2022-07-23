contract main {




// =====================  Runtime code  =====================


address owner;
array of address sub_76e98dc2;
address curvePoolAddress;
array of uint256 name;

function name() payable {
    return name[0 len name.length]
}

function curvePool() payable {
    return curvePoolAddress
}

function sub_76e98dc2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_76e98dc2.length
    return sub_76e98dc2[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_b6ee439c(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + ('cd', 68).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'CallerNotOwner'
    name[] = Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
    sub_76e98dc2.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_76e98dc2.length > idx:
            sub_76e98dc2[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            sub_76e98dc2[s] = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_76e98dc2.length > idx:
            sub_76e98dc2[idx] = 0
            idx = idx + 1
            continue 
    curvePoolAddress = address(cd[36])
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function fetchPrice() payable {
    idx = 0
    s = -1
    while idx < sub_76e98dc2.length:
        mem[0] = 1
        require ext_code.size(sub_76e98dc2[idx])
        staticcall sub_76e98dc2[idx].0x9c3bc3e6 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= s:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
    if s == -1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4e6f20756e6465726c79696e67207072696365206665656420617661696c61626c,
                    mem[198 len 30]
    require ext_code.size(curvePoolAddress)
    staticcall curvePoolAddress.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if s * ext_call.return_data[0] / ext_call.return_data[0] != s:
        revert with 0, 'mul overflow'
    return (s * ext_call.return_data[0] / 10^18)
}

function fetchPrice_v() payable {
    idx = 0
    s = -1
    while idx < sub_76e98dc2.length:
        mem[0] = 1
        require ext_code.size(sub_76e98dc2[idx])
        staticcall sub_76e98dc2[idx].0x9c3bc3e6 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= s:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
    if s == -1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4e6f20756e6465726c79696e67207072696365206665656420617661696c61626c,
                    mem[198 len 30]
    require ext_code.size(curvePoolAddress)
    staticcall curvePoolAddress.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if s * ext_call.return_data[0] / ext_call.return_data[0] != s:
        revert with 0, 'mul overflow'
    return (s * ext_call.return_data[0] / 10^18)
}



}
