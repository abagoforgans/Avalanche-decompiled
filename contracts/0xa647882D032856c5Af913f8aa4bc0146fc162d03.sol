contract main {




// =====================  Runtime code  =====================


uint256 stor0;
array of uint256 claimed;
uint256 sub_d524b0ff;
uint256 creatorClaimed;
address creatorAddress;
address tokenAddress;

function creator() {
    return creatorAddress
}

function creatorClaimed() {
    return creatorClaimed
}

function sub_d524b0ff(?) {
    return sub_d524b0ff
}

function claimed(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 100
    return claimed[arg1]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    if sub_d524b0ff > !msg.value:
        revert with 0, 17
    sub_d524b0ff += msg.value
}

function sub_9e5f358a(?) {
    if sub_d524b0ff > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43f:
        revert with 0, 17
    if 625 * sub_d524b0ff / 1000 < creatorClaimed:
        revert with 0, 17
    return ((625 * sub_d524b0ff / 1000) - creatorClaimed)
}

function claimCreator() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if creatorAddress != msg.sender:
        revert with 0, 'Only creator can claim creator'
    if sub_d524b0ff > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43f:
        revert with 0, 17
    if 625 * sub_d524b0ff / 1000 < creatorClaimed:
        revert with 0, 17
    if (625 * sub_d524b0ff / 1000) - creatorClaimed <= 0:
        revert with 0, 'No avax to claim'
    if creatorClaimed > !((625 * sub_d524b0ff / 1000) - creatorClaimed):
        revert with 0, 17
    creatorClaimed = 625 * sub_d524b0ff / 1000
    call msg.sender with:
       value (625 * sub_d524b0ff / 1000) - creatorClaimed wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function holderClaim() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[100] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You don't own any nft'
    if sub_d524b0ff > 0xaec33e1f671529a485cd7b900aec33e1f671529a485cd7b900aec33e1f6715:
        revert with 0, 17
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_20] >= 100:
            revert with 0, 50
        if 375 * sub_d524b0ff / 100000 < claimed[mem[_20]]:
            revert with 0, 17
        if not (375 * sub_d524b0ff / 100000) - claimed[mem[_20]]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if mem[_20] >= 100:
            revert with 0, 50
        if claimed[mem[_20]] > !((375 * sub_d524b0ff / 100000) - claimed[mem[_20]]):
            revert with 0, 17
        claimed[mem[_20]] = 375 * sub_d524b0ff / 100000
        if s > !((375 * sub_d524b0ff / 100000) - claimed[mem[_20]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (375 * sub_d524b0ff / 100000) - claimed[mem[_20]]
        continue 
    if s <= 0:
        revert with 0, 'No royalties to claim'
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function sub_f67d21e8(?) {
    mem[100] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You don't own any nft'
    if sub_d524b0ff > 0xaec33e1f671529a485cd7b900aec33e1f671529a485cd7b900aec33e1f6715:
        revert with 0, 17
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_17] >= 100:
            revert with 0, 50
        if 375 * sub_d524b0ff / 100000 < claimed[mem[_17]]:
            revert with 0, 17
        if s > !((375 * sub_d524b0ff / 100000) - claimed[mem[_17]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (375 * sub_d524b0ff / 100000) - claimed[mem[_17]]
        continue 
    return (s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0])
}



}
