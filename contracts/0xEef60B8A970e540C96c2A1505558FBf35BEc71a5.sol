contract main {




// =====================  Runtime code  =====================


#
#  - buyBack(uint256 arg1)
#  - sub_0e7e37eb(?)
#  - compound(uint256 arg1)
#
address owner;
mapping of struct sub_4c7f57be;
mapping of uint8 stor9;
mapping of struct reserves;
mapping of struct stor11;

function sub_4c7f57be(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4c7f57be[arg1].field_0, sub_4c7f57be[arg1].field_256
}

function reserves(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return reserves[arg1].field_0, reserves[arg1].field_256, reserves[arg1].field_512
}

function owner() payable {
    return owner
}

function isEnabled(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
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

function sub_ee368490(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == uint16(cd[36])
    require cd[68] == uint16(cd[68])
    require cd[100] == bool(cd[100])
    require cd[132] == cd[132]
    if uint16(cd[36]) > 10000:
        revert with 0, 'Fee too high.'
    if uint16(cd[68]) > 10000:
        revert with 0, 'Rate too high.'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 9
        if stor9[mem[(32 * idx) + 128]]:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            stor11[mem[(32 * idx) + 128]].field_960 = uint16(cd[36])
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            stor11[mem[(32 * idx) + 128]].field_976 = uint16(cd[68])
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            stor11[mem[(32 * idx) + 128]].field_928 = Mask(96, 0, bool(cd[100]))
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 11
            stor11[mem[(32 * idx) + 128]].field_1024 = cd[132]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
