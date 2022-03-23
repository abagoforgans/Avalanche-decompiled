contract main {




// =====================  Runtime code  =====================


const sub_fedd970b(?) = 26000000 * 10^18


address pngAddress;
address uniAddress;
address sushiAddress;
address owner;
address sub_80edf30dAddress;
mapping of uint128 withdrawAmount;
uint256 totalAllocated;
uint8 stor7;

function sushi() payable {
    return sushiAddress
}

function totalAllocated() payable {
    return totalAllocated
}

function withdrawAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return withdrawAmount[arg1]
}

function png() payable {
    return pngAddress
}

function sub_673f200a(?) payable {
    return bool(stor7)
}

function sub_80edf30d(?) payable {
    return sub_80edf30dAddress
}

function owner() payable {
    return owner
}

function uni() payable {
    return uniAddress
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
    require ext_code.size(pngAddress)
    staticcall pngAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 26000000 * 10^18:
        revert with 0, 'Airdrop::allowClaiming: incorrect PNG supply'
    if owner != msg.sender:
        revert with 0, 'Airdrop::allowClaiming: unauthorized'
    stor7 = 1
    emit 0x5182f287 
}

function sub_b5a8266f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == Mask(96, 0, arg2)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::whitelistAddress: unauthorized'
    if stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::whitelistAddress: claiming in session'
    if Mask(96, 0, arg2) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::whitelistAddress: No PNG to allocated'
    if withdrawAmount[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::whitelistAddress: address already added'
    withdrawAmount[address(arg1)] = Mask(96, 0, arg2)
    if totalAllocated > -Mask(96, 0, arg2) - 1:
        revert with 'NH{q', 17
    totalAllocated += Mask(96, 0, arg2)
    if totalAllocated > 26000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::whitelistAddress: Exceeds PNG allocation'
}

function endClaiming() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::endClaiming: unauthorized'
    if not stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::endClaiming: Claiming not started'
    stor7 = 0
    emit 0x56120211 
    require ext_code.size(pngAddress)
    staticcall pngAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(pngAddress)
    call pngAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_80edf30dAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Airdrop::endClaiming: Transfer failed'
}

function claim() payable {
    if not stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::claim: Claiming is not allowed'
    if withdrawAmount[address(msg.sender)] <= 0:
        revert with 0, 'Airdrop::claim: No PNG to claim'
    require ext_code.size(uniAddress)
    staticcall uniAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 10^18:
        require ext_code.size(sushiAddress)
        staticcall sushiAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < 10^18:
            revert with 0, 'Airdrop::claim: Insufficient UNI or SUSHI balance'
    withdrawAmount[address(msg.sender)] = 0
    emit 0x9ab241b2: msg.sender, withdrawAmount[address(msg.sender)]
    require ext_code.size(pngAddress)
    call pngAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, withdrawAmount[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Airdrop::claim: Transfer failed'
}

function sub_e67c1e69(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307() or (32 * ('cd', 36).length) + 160 < 128:
        revert with 'NH{q', 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == Mask(96, 0, cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Airdrop::whitelistAddresses: unauthorized'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Airdrop::whitelistAddresses: incorrect array length'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if owner != msg.sender:
            revert with 0, 'Airdrop::whitelistAddress: unauthorized'
        if stor7:
            revert with 0, 'Airdrop::whitelistAddress: claiming in session'
        if mem[(32 * idx) + (32 * ('cd', 4).length) + 180 len 12] <= 0:
            revert with 0, 'Airdrop::whitelistAddress: No PNG to allocated'
        if withdrawAmount[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'Airdrop::whitelistAddress: address already added'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        withdrawAmount[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * ('cd', 4).length) + 180 len 12]
        if totalAllocated > -mem[(32 * idx) + (32 * ('cd', 4).length) + 180 len 12] - 1:
            revert with 'NH{q', 17
        totalAllocated += mem[(32 * idx) + (32 * ('cd', 4).length) + 180 len 12]
        if totalAllocated > 26000000 * 10^18:
            revert with 0, 'Airdrop::whitelistAddress: Exceeds PNG allocation'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
