contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint256 sub_05ebbadb;
uint256 totalAirDrop;
uint256 stor5;
mapping of uint8 stor6;

function sub_05ebbadb(?) payable {
    return sub_05ebbadb
}

function owner() payable {
    return owner
}

function sub_d981c119(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function totalAirDrop() payable {
    return totalAirDrop
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

function sub_0f5a5756(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _27 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_27] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_27 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_27 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _27
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(cd[4]):
        revert with 0, 'Airdrop: Invalid Address'
    if mem[96] != cd[68]:
        revert with 0, 'Airdrop: Invalid Names length'
    idx = 0
    while idx < cd[68]:
        if idx >= mem[96]:
            revert with 0, 50
        _41 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x9021973200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = 96
        _43 = mem[_41]
        mem[mem[64] + 100] = mem[_41]
        s = 0
        while s < _43:
            mem[s + mem[64] + 132] = mem[s + _41 + 32]
            s = s + 32
            continue 
        if ceil32(_43) > _43:
            mem[mem[64] + _43 + 132] = 0
        mem[mem[64] + 68] = stor5
        require ext_code.size(stor1)
        call stor1.0x90219732 with:
             gas gas_remaining wei
            args address(cd[4]), 96, stor5, mem[mem[64] + 100 len ceil32(_43) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x982540c900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(cd[4])
        require ext_code.size(stor2)
        call stor2.0x982540c9 with:
             gas gas_remaining wei
            args address(cd[4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx > -2:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
