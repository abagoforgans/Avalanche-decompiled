contract main {




// =====================  Runtime code  =====================


uint256 stor0;
array of uint256 claimed;
uint256 sub_d524b0ff;
uint256 sub_228dfe74;
uint256 sub_72057d19;
address marketingAddress;
address sub_835a1faeAddress;
address owner;
address tokenAddress;

function sub_228dfe74(?) {
    return sub_228dfe74
}

function marketing() {
    return marketingAddress
}

function sub_72057d19(?) {
    return sub_72057d19
}

function sub_835a1fae(?) {
    return sub_835a1faeAddress
}

function owner() {
    return owner
}

function sub_d524b0ff(?) {
    return sub_d524b0ff
}

function claimed(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 10000
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

function sub_d473b045(?) {
    if sub_d524b0ff > 0xa3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3:
        revert with 0, 17
    if 400 * sub_d524b0ff / 1000 < sub_72057d19:
        revert with 0, 17
    return ((400 * sub_d524b0ff / 1000) - sub_72057d19)
}

function sub_88a69865(?) {
    if sub_d524b0ff > 0x147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147:
        revert with 0, 17
    if 200 * sub_d524b0ff / 1000 < sub_228dfe74:
        revert with 0, 17
    return ((200 * sub_d524b0ff / 1000) - sub_228dfe74)
}

function claimMarketing() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if owner != msg.sender:
        revert with 0, 'Only creator can claim creator'
    if sub_d524b0ff > 0x147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147:
        revert with 0, 17
    if 200 * sub_d524b0ff / 1000 < sub_228dfe74:
        revert with 0, 17
    if (200 * sub_d524b0ff / 1000) - sub_228dfe74 <= 0:
        revert with 0, 'No avax to claim'
    if sub_228dfe74 > !((200 * sub_d524b0ff / 1000) - sub_228dfe74):
        revert with 0, 17
    sub_228dfe74 = 200 * sub_d524b0ff / 1000
    call marketingAddress with:
       value (200 * sub_d524b0ff / 1000) - sub_228dfe74 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function sub_327f8e8f(?) {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if owner != msg.sender:
        revert with 0, 'Only creator can claim creator'
    if sub_d524b0ff > 0xa3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3:
        revert with 0, 17
    if 400 * sub_d524b0ff / 1000 < sub_72057d19:
        revert with 0, 17
    if (400 * sub_d524b0ff / 1000) - sub_72057d19 <= 0:
        revert with 0, 'No avax to claim'
    if sub_72057d19 > !((400 * sub_d524b0ff / 1000) - sub_72057d19):
        revert with 0, 17
    sub_72057d19 = 400 * sub_d524b0ff / 1000
    call sub_835a1faeAddress with:
       value (400 * sub_d524b0ff / 1000) - sub_72057d19 wei
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
    if sub_d524b0ff > 0xa3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3:
        revert with 0, 17
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_20] >= 10000:
            revert with 0, 50
        if 400 * sub_d524b0ff / 10 * 10^6 < claimed[mem[_20]]:
            revert with 0, 17
        if not (400 * sub_d524b0ff / 10 * 10^6) - claimed[mem[_20]]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if mem[_20] >= 10000:
            revert with 0, 50
        if claimed[mem[_20]] > !((400 * sub_d524b0ff / 10 * 10^6) - claimed[mem[_20]]):
            revert with 0, 17
        claimed[mem[_20]] = 400 * sub_d524b0ff / 10 * 10^6
        if s > !((400 * sub_d524b0ff / 10 * 10^6) - claimed[mem[_20]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (400 * sub_d524b0ff / 10 * 10^6) - claimed[mem[_20]]
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
    if sub_d524b0ff > 0xa3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3:
        revert with 0, 17
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_17] >= 10000:
            revert with 0, 50
        if 400 * sub_d524b0ff / 10 * 10^6 < claimed[mem[_17]]:
            revert with 0, 17
        if s > !((400 * sub_d524b0ff / 10 * 10^6) - claimed[mem[_17]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (400 * sub_d524b0ff / 10 * 10^6) - claimed[mem[_17]]
        continue 
    return (s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0])
}



}
