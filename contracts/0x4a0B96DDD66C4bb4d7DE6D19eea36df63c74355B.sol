contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_17e83f75;
mapping of uint256 sub_59c9267e;
address stor3;
uint8 sub_a50b6081; offset 160
uint8 sub_dac15bc5; offset 168
uint128 stor4; offset 168
uint128 stor4; offset 160
address stor4;

function sub_17e83f75(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_17e83f75[address(arg1)]
}

function sub_59c9267e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_59c9267e[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_a50b6081(?) payable {
    return bool(sub_a50b6081)
}

function sub_dac15bc5(?) payable {
    return bool(sub_dac15bc5)
}

function sub_e8ec9269(?) payable {
    return sub_17e83f75[address(msg.sender)]
}

function sub_f973e8f3(?) payable {
    return sub_59c9267e[address(msg.sender)]
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

function sub_c4af6f9c(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_a50b6081:
        revert with 0, 'Diamond claim already enabled'
    Mask(96, 0, stor4.field_160) = 1
}

function sub_f27bd3da(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_dac15bc5:
        revert with 0, 'Airdrop claim already enabled'
    Mask(88, 0, stor4.field_168) = 1
}

function sub_0d2e6e94(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_dac15bc5:
        revert with 0, 'Airdrop claim already disabled'
    Mask(88, 0, stor4.field_168) = 0
}

function sub_d13772bc(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_a50b6081:
        revert with 0, 'Diamond claim already disabled'
    Mask(96, 0, stor4.field_160) = 0
}

function setCoinAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
    address(stor4.field_0) = stor3
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

function balance() payable {
    require ext_code.size(address(stor4.field_0))
    staticcall address(stor4.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function claimAirdrop() payable {
    if not sub_dac15bc5:
        revert with 0, 'Airdrop claim not enabled'
    if sub_59c9267e[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No Token to claim for this address'
    require ext_code.size(address(stor4.field_0))
    staticcall address(stor4.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if sub_59c9267e[address(msg.sender)] > ext_call.return_data[0]:
        revert with 0, 'Not enough token in contract'
    if sub_59c9267e[address(msg.sender)] < sub_59c9267e[address(msg.sender)]:
        revert with 'NH{q', 17
    sub_59c9267e[address(msg.sender)] = 0
    require ext_code.size(address(stor4.field_0))
    call address(stor4.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_59c9267e[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x4f0153f0: sub_59c9267e[address(msg.sender)], msg.sender
}

function sub_0e6c2790(?) payable {
    if not sub_a50b6081:
        revert with 0, 'Diamond claim not enabled'
    if sub_17e83f75[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No Token to claim for this address'
    require ext_code.size(address(stor4.field_0))
    staticcall address(stor4.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if sub_17e83f75[address(msg.sender)] > ext_call.return_data[0]:
        revert with 0, 'Not enough token in contract'
    if sub_17e83f75[address(msg.sender)] < sub_17e83f75[address(msg.sender)]:
        revert with 'NH{q', 17
    sub_17e83f75[address(msg.sender)] = 0
    require ext_code.size(address(stor4.field_0))
    call address(stor4.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_17e83f75[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x689409bb: sub_17e83f75[address(msg.sender)], msg.sender
}

function sub_1cb81303(?) payable {
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Address and Values array don't have the same length'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        sub_59c9267e[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_6d6950fd(?) payable {
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Address and Values array don't have the same length'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        sub_17e83f75[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
