contract main {




// =====================  Runtime code  =====================


const sub_fedd970b(?) = 500000 * 10^18


address ripAddress;
address owner;
address sub_80edf30dAddress;
mapping of uint128 withdrawAmount;
uint256 totalAllocated;
uint8 stor5;

function totalAllocated() payable {
    return totalAllocated
}

function withdrawAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return withdrawAmount[arg1]
}

function sub_673f200a(?) payable {
    return bool(stor5)
}

function sub_80edf30d(?) payable {
    return sub_80edf30dAddress
}

function owner() payable {
    return owner
}

function rip() payable {
    return ripAddress
}

function _fallback() payable {
    revert
}

function setowner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Airdrop::setowner: unauthorized'
    owner = arg1
}

function sub_9ae1ea0d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::setRemainderDestination: unauthorized'
    sub_80edf30dAddress = address(arg1)
}

function allowClaiming() payable {
    require ext_code.size(ripAddress)
    staticcall ripAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 500000 * 10^18:
        revert with 0, 'Airdrop::allowClaiming: incorrect rip supply'
    if owner != msg.sender:
        revert with 0, 'Airdrop::allowClaiming: unauthorized'
    stor5 = 1
    emit 0x5182f287 
}

function claim() payable {
    if not stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::claim: Claiming is not allowed'
    if withdrawAmount[address(msg.sender)] <= 0:
        revert with 0, 'Airdrop::claim: No rip to claim'
    withdrawAmount[address(msg.sender)] = 0
    emit 0x7bbc706d: msg.sender, withdrawAmount[address(msg.sender)]
    require ext_code.size(ripAddress)
    call ripAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, withdrawAmount[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Airdrop::claim: Transfer failed'
}

function sub_b5a8266f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == Mask(96, 0, arg2)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::whitelistAddress: unauthorized'
    if stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::whitelistAddress: claiming in session'
    if Mask(96, 0, arg2) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::whitelistAddress: No rip to allocated'
    if withdrawAmount[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::whitelistAddress: address already added'
    withdrawAmount[address(arg1)] = Mask(96, 0, arg2)
    if totalAllocated > -Mask(96, 0, arg2) - 1:
        revert with 'NH{q', 17
    totalAllocated += Mask(96, 0, arg2)
    if totalAllocated > 500000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::whitelistAddress: Exceeds rip allocation'
}

function endClaiming() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::endClaiming: unauthorized'
    if not stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::endClaiming: Claiming not started'
    stor5 = 0
    emit 0x56120211 
    require ext_code.size(ripAddress)
    staticcall ripAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(ripAddress)
    call ripAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_80edf30dAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Airdrop::endClaiming: Transfer failed'
}

function sub_f640c67f(?) payable {
    require calldata.size - 4 >= 64
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
    require cd[36] == Mask(96, 0, cd[36])
    if owner != msg.sender:
        revert with 0, 'Airdrop::whitelistAddresses: unauthorized'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if owner != msg.sender:
            revert with 0, 'Airdrop::whitelistAddress: unauthorized'
        if stor5:
            revert with 0, 'Airdrop::whitelistAddress: claiming in session'
        if Mask(96, 0, cd[36]) <= 0:
            revert with 0, 'Airdrop::whitelistAddress: No rip to allocated'
        if withdrawAmount[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'Airdrop::whitelistAddress: address already added'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        withdrawAmount[address(mem[(32 * idx) + 128])] = Mask(96, 0, cd[36])
        if totalAllocated > -Mask(96, 0, cd[36]) - 1:
            revert with 'NH{q', 17
        totalAllocated += Mask(96, 0, cd[36])
        if totalAllocated > 500000 * 10^18:
            revert with 0, 'Airdrop::whitelistAddress: Exceeds rip allocation'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
