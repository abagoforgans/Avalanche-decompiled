contract main {




// =====================  Runtime code  =====================


address nodeRewardManagementAddress;
address sub_ce27cdb2Address;

function nodeRewardManagement() payable {
    return nodeRewardManagementAddress
}

function sub_ce27cdb2(?) payable {
    return sub_ce27cdb2Address
}

function _fallback() payable {
    revert
}

function sub_1319e7e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    sub_ce27cdb2Address = address(arg1)
    nodeRewardManagementAddress = address(arg1)
}

function sub_fd0ef36f(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = 128
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] <= test266151307()
        require cd[68] + cd[idx] + 67 < calldata.size
        if cd[(cd[68] + cd[idx] + 36)] > test266151307():
            revert with 'NH{q', 65
        _13 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[68] + cd[idx] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[68] + cd[idx] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[68] + cd[idx] + 36)])) + 1
        mem[_13] = cd[(cd[68] + cd[idx] + 36)]
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_13 + 32 len cd[(cd[68] + cd[idx] + 36)]] = call.data[cd[68] + cd[idx] + 68 len cd[(cd[68] + cd[idx] + 36)]]
        mem[_13 + cd[(cd[68] + cd[idx] + 36)] + 32] = 0
        mem[s] = _13
        idx = idx + 32
        s = s + 32
        continue 
    idx = 0
    while idx < cd[36]:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _19 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = 64
        _21 = mem[_19]
        mem[mem[64] + 68] = mem[_19]
        s = 0
        while s < _21:
            mem[mem[64] + s + 100] = mem[_19 + s + 32]
            s = s + 32
            continue 
        if ceil32(_21) > _21:
            mem[mem[64] + _21 + 100] = 0
        require ext_code.size(nodeRewardManagementAddress)
        call nodeRewardManagementAddress.createNode(address arg1, string arg2) with:
             gas gas_remaining wei
            args address(cd[4]), 64, mem[mem[64] + 68 len ceil32(_21) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
