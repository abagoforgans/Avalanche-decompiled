contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function isMember(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function kill() {
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function addMember(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    if stor1[address(arg1)]:
        revert with 0, 'Address is member already.'
    stor1[address(arg1)] = 1
    emit MemberAdded(arg1);
}

function removeMember(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    if not stor1[address(arg1)]:
        revert with 0, 'Not member of whitelist.'
    stor1[address(arg1)] = 0
    emit MemberRemoved(arg1);
}

function sendEther(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_726c8c62(?) {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require stor1[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, arg2, arg3, 160, address(arg5), arg6, arg4.length, call.data[arg4 + 36 len floor32(arg4.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a7331b38(?) {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    require ext_code.size(arg1)
    call arg1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, arg2, arg3, 160, address(arg5), arg6, arg4.length, call.data[arg4 + 36 len floor32(arg4.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function drainToken(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'manager allowed only'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_f9d40161(?) payable {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require stor1[address(msg.sender)]
    if eth.balance(this.address):
        require ext_code.size(arg2)
        call arg2.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg1 wei
             gas gas_remaining wei
            args 0, arg3, 128, address(arg5), arg6, arg4.length, call.data[arg4 + 36 len floor32(arg4.length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_21634131(?) payable {
    require calldata.size - 4 >= 224
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    require stor1[address(msg.sender)]
    idx = 0
    while idx <= arg1 - 1:
        mem[96] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[100] = arg4
        mem[164] = arg6
        mem[196] = arg7
        mem[132] = 128
        mem[228] = arg5.length
        mem[260 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
        mem[(32 * arg5.length) + 260] = 0
        require ext_code.size(arg3)
        call arg3.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg2 wei
             gas gas_remaining wei
            args arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)]), address(arg6), arg7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_b6f69f35(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require stor1[address(msg.sender)]
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = eth.balance(this.address)
    mem[132] = 64
    mem[164] = arg3.length
    mem[196 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 196] = 0
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args eth.balance(this.address), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 96]
    require arg3.length - 1 < mem[ceil32(return_data.size) + 96]
    if mem[(32 * arg3.length - 1) + ceil32(return_data.size) + 128] > arg2:
        if eth.balance(this.address):
            require ext_code.size(arg1)
            call arg1.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)]), address(arg4), arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
