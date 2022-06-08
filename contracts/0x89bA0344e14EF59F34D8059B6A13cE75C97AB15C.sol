contract main {




// =====================  Runtime code  =====================


uint256 stor0;
array of uint256 claimed;
uint256 sub_d524b0ff;
address tokenAddress;

function sub_d524b0ff(?) {
    return sub_d524b0ff
}

function claimed(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 5555
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
    if sub_d524b0ff > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
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
        if mem[_20] >= 5555:
            revert with 0, 50
        if 1000 * sub_d524b0ff / 5555000 < claimed[mem[_20]]:
            revert with 0, 17
        if not (1000 * sub_d524b0ff / 5555000) - claimed[mem[_20]]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if mem[_20] >= 5555:
            revert with 0, 50
        if claimed[mem[_20]] > !((1000 * sub_d524b0ff / 5555000) - claimed[mem[_20]]):
            revert with 0, 17
        claimed[mem[_20]] = 1000 * sub_d524b0ff / 5555000
        if s > !((1000 * sub_d524b0ff / 5555000) - claimed[mem[_20]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (1000 * sub_d524b0ff / 5555000) - claimed[mem[_20]]
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
    if sub_d524b0ff > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
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
        if mem[_17] >= 5555:
            revert with 0, 50
        if 1000 * sub_d524b0ff / 5555000 < claimed[mem[_17]]:
            revert with 0, 17
        if s > !((1000 * sub_d524b0ff / 5555000) - claimed[mem[_17]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (1000 * sub_d524b0ff / 5555000) - claimed[mem[_17]]
        continue 
    return (s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0])
}



}
