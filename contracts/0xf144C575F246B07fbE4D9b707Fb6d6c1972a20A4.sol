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

function sub_38e1170f(?) {
    require calldata.size - 4 >= 96
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    mem[388 len 0] = None
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), arg2 << 224, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function approve(address arg1) {
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
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_c617da6d(?) {
    require calldata.size - 4 >= 128
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    call 0x130966628846bfd36ff31a822705796e8cb8c18d.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388 len 0] = None
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, arg2, Array(len=2, data=mem[388 len 64]), address(this.address), arg4 << 224
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'onlyAuthorized!'
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
