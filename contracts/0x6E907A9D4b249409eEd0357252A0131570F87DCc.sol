contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address sub_82564bcaAddress;
address tokenAddress;
uint256 stor4; offset 32
uint256 amountOutMin;
uint256 deadlineTimestamp;
uint256 stor6; offset 32
uint256 sub_eac13e61;
mapping of uint8 stor7;

function amountOutMin() {
    return amountOutMin
}

function sub_82564bca(?) {
    return sub_82564bcaAddress
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function authorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function sub_eac13e61(?) {
    return sub_eac13e61
}

function deadlineTimestamp() {
    return deadlineTimestamp
}

function _fallback() payable {
    revert
}

function sub_61c40381(?) {
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    return eth.balance(this.address)
}

function sub_468a38c4(?) {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    sub_eac13e61 = arg1
}

function sub_79fffc60(?) {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    amountOutMin = arg1
}

function sub_e992ab7e(?) {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    deadlineTimestamp = arg1
}

function sub_da9c8666(?) {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    sub_82564bcaAddress = arg1
}

function SetTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    tokenAddress = arg1
}

function withdrawAVAX() {
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe546869732063616e206f6e6c792062652063616c6c65642062792074686520636f6e7472616374206f776e6572,
                    mem[210 len 18]
    stor7[address(arg1)] = 1
}

function sub_50728231(?) {
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    require ext_code.size(sub_82564bcaAddress)
    call sub_82564bcaAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function removeAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe546869732063616e206f6e6c792062652063616c6c65642062792074686520636f6e7472616374206f776e6572,
                    mem[210 len 18]
    require arg1 != msg.sender
    stor7[address(arg1)] = 0
}

function balanceToken() {
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_1698a726(?) {
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    require ext_code.size(sub_82564bcaAddress)
    staticcall sub_82564bcaAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawToken() {
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawQuote() {
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_82564bcaAddress)
    call sub_82564bcaAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_71cbec0e(?) {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    mem[160] = sub_82564bcaAddress
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 0
    mem[292] = this.address
    mem[324] = deadlineTimestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), deadlineTimestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
}

function sub_e11da81a(?) {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[192] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 0
    mem[292] = this.address
    mem[324] = deadlineTimestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(stor1)
    call stor1.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), deadlineTimestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
}

function sub_eab649e0(?) {
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Tokens already boutght'
    mem[160] = tokenAddress
    mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[196] = amountOutMin
    mem[260] = this.address
    mem[292] = deadlineTimestamp
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(stor1)
    call stor1.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value sub_eac13e61 wei
         gas gas_remaining wei
        args amountOutMin, Array(len=2, data=mem[356 len 64]), address(this.address), deadlineTimestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], stor4 <= 4294967296
    require mem[192 len 4], stor4 + 32 <= return_data.size
    require mem[mem[192 len 4], stor4 + 192] <= 4294967296 and mem[192 len 4], stor4 + (32 * mem[mem[192 len 4], stor4 + 192]) + 32 <= return_data.size
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a8444d31(?) {
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Tokens already boutght'
    mem[160] = tokenAddress
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = sub_eac13e61
    mem[228] = amountOutMin
    mem[292] = this.address
    mem[324] = deadlineTimestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args sub_eac13e61, amountOutMin, Array(len=2, data=mem[388 len 64]), address(this.address), deadlineTimestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], stor6 <= 4294967296
    require mem[192 len 4], stor6 + 32 <= return_data.size
    require mem[mem[192 len 4], stor6 + 192] <= 4294967296 and mem[192 len 4], stor6 + (32 * mem[mem[192 len 4], stor6 + 192]) + 32 <= return_data.size
    if not stor7[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
