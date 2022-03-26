contract main {




// =====================  Runtime code  =====================


const sub_fedd970b(?) = (125 * 10^16 * 3600 * 24 * 3600)

const BURN_ADDRESS = 57005


address lydAddress;
address owner;
mapping of uint128 withdrawAmount;
mapping of uint8 stor3;
uint256 totalAllocated;
uint8 stor5;

function sub_0dc29f7f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

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

function owner() payable {
    return owner
}

function lyd() payable {
    return lydAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Airdrop::setowner: unauthorized'
    owner = arg1
}

function allowClaiming() payable {
    require ext_code.size(lydAddress)
    staticcall lydAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 125 * 10^16 * 3600 * 24 * 3600:
        revert with 0, 'Airdrop::allowClaiming: incorrect LYD supply'
    if owner != msg.sender:
        revert with 0, 'Airdrop::allowClaiming: unauthorized'
    stor5 = 1
    emit 0x5182f287 
}

function claim() payable {
    if not stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::claim: Claiming is not allowed'
    if withdrawAmount[address(msg.sender)] <= 0:
        revert with 0, 'Airdrop::claim: No LYD to claim'
    withdrawAmount[address(msg.sender)] = 0
    emit 0xa3b23619: msg.sender, withdrawAmount[address(msg.sender)]
    require ext_code.size(lydAddress)
    call lydAddress.0xa9059cbb with:
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
    if Mask(96, 0, arg2) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::whitelistAddress: No LYD to allocated'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::checkList: address already added'
    withdrawAmount[address(arg1)] = Mask(96, 0, arg2)
    stor3[address(arg1)] = 1
    if totalAllocated > -Mask(96, 0, arg2) - 1:
        revert with 'NH{q', 17
    totalAllocated += Mask(96, 0, arg2)
    if totalAllocated > 125 * 10^16 * 3600 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::whitelistAddress: Exceeds LYD allocation'
}

function endClaiming() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::endClaiming: unauthorized'
    if not stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop::endClaiming: Claiming not started'
    stor5 = 0
    emit 0x56120211 
    require ext_code.size(lydAddress)
    staticcall lydAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(lydAddress)
    call lydAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 57005, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Airdrop::endClaiming: Transfer failed'
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
        if mem[(32 * idx) + (32 * ('cd', 4).length) + 180 len 12] <= 0:
            revert with 0, 'Airdrop::whitelistAddress: No LYD to allocated'
        if stor3[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'Airdrop::checkList: address already added'
        withdrawAmount[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * ('cd', 4).length) + 180 len 12]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[address(mem[(32 * idx) + 128])] = 1
        if totalAllocated > -mem[(32 * idx) + (32 * ('cd', 4).length) + 180 len 12] - 1:
            revert with 'NH{q', 17
        totalAllocated += mem[(32 * idx) + (32 * ('cd', 4).length) + 180 len 12]
        if totalAllocated > 125 * 10^16 * 3600 * 24 * 3600:
            revert with 0, 'Airdrop::whitelistAddress: Exceeds LYD allocation'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
