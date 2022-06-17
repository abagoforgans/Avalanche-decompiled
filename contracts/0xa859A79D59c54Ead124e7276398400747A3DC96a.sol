contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint8 stor2;

function owner() {
    return owner
}

function authorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function sub_61c40381(?) {
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    return eth.balance(this.address)
}

function withdrawAVAX() {
    if not stor2[address(msg.sender)]:
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
    stor2[address(arg1)] = 1
}

function sub_2f53183f(?) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
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
    stor2[address(arg1)] = 0
}

function balanceToken(address arg1) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_31aeab39(?) {
    require calldata.size - 4 >= 128
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    mem[160] = arg3
    mem[192] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 0
    mem[292] = this.address
    mem[324] = arg2
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(stor1)
    call stor1.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), arg2 << 224, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
}

function sub_e2aae155(?) {
    require calldata.size - 4 >= 160
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Tokens already boutght'
    if arg5 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        if not stor2[address(msg.sender)]:
            if owner != msg.sender:
                revert with 0, 'onlyAuthorized!'
        require ext_code.size(arg5)
        call arg5.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    mem[160] = arg2
    mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[196] = arg4
    mem[260] = this.address
    mem[292] = arg3
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(stor1)
    call stor1.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args arg4, Array(len=2, data=mem[356 len 64]), address(this.address), arg3 << 224
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 32 <= return_data.size
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
