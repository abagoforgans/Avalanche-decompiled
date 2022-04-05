contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 sub_a9f18550;
uint256 sub_26d7af04;
uint256 sub_723f65b6;
uint256 sub_2a9dce9a;
address vaultAddress;

function sub_26d7af04(?) {
    return sub_26d7af04
}

function sub_2a9dce9a(?) {
    return sub_2a9dce9a
}

function sub_723f65b6(?) {
    return sub_723f65b6
}

function owner() {
    return owner
}

function sub_a9f18550(?) {
    return sub_a9f18550
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function sub_7f358ee2(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > 0
    sub_a9f18550 = arg1
}

function sub_8f6213a6(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > 0
    sub_723f65b6 = arg1
}

function sub_ea3ac874(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > 0
    sub_26d7af04 = arg1
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    tokenAddress = arg1
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    vaultAddress = arg1
}

function transferAny(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function burn() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42966c68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    require msg.value
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        if sub_26d7af04 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_26d7af04
        if (0 / sub_26d7af04) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require (0 / sub_26d7af04) + ext_call.return_data[0] <= sub_723f65b6
        if msg.value + sub_2a9dce9a < sub_2a9dce9a:
            revert with 0, 'SafeMath: addition overflow'
        sub_2a9dce9a += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 0 / sub_26d7af04
    else:
        if sub_a9f18550 * msg.value / msg.value != sub_a9f18550:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_26d7af04 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_26d7af04
        if (sub_a9f18550 * msg.value / sub_26d7af04) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require (sub_a9f18550 * msg.value / sub_26d7af04) + ext_call.return_data[0] <= sub_723f65b6
        if msg.value + sub_2a9dce9a < sub_2a9dce9a:
            revert with 0, 'SafeMath: addition overflow'
        sub_2a9dce9a += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), sub_a9f18550 * msg.value / sub_26d7af04
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call vaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
