contract main {




// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1)
#
address usdcAddress;
address rainbowAddress;
address treasuryAddress;
uint256 sub_9069d814;
uint256 sub_fef3cd85;
mapping of uint8 stor5;
mapping of uint256 sub_c1a35b38;

function usdc() payable {
    return usdcAddress
}

function treasury() payable {
    return treasuryAddress
}

function sub_9069d814(?) payable {
    return sub_9069d814
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function sub_c1a35b38(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c1a35b38[arg1]
}

function rainbow() payable {
    return rainbowAddress
}

function sub_fef3cd85(?) payable {
    return sub_fef3cd85
}

function _fallback() payable {
    revert
}

function sub_b123290a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if treasuryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the treasury can perform this action'
    sub_fef3cd85 = arg1
}

function sub_b9af98c2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if treasuryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the treasury can perform this action'
    sub_9069d814 = arg1
}

function sub_f865aa3b(?) payable {
    require calldata.size - 4 >= 32
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
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if treasuryAddress != msg.sender:
        revert with 0, 'Only the treasury can perform this action'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        stor5[mem[(32 * idx) + 140 len 20]] = 0
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        sub_c1a35b38[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_2b4dc4a1(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if treasuryAddress != msg.sender:
        revert with 0, 'Only the treasury can perform this action'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        stor5[mem[(32 * idx) + 140 len 20]] = 1
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        sub_c1a35b38[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
