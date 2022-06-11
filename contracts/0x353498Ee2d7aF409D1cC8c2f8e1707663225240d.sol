contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 sub_ab731cfa;
address stor3;

function owner() {
    return owner
}

function sub_ab731cfa(?) {
    return sub_ab731cfa
}

function whitelistedAddress(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_e2765044(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_d8ce4d99(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[356 len 0] = None
    require ext_code.size(arg3)
    call arg3.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[256] = arg1
    mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[292] = ext_call.return_data[0]
    mem[324] = 64
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(arg3)
    staticcall arg3.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], 64, 0, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _86 = mem[288 len 4], ext_call.return_data[0 len 28]
    require mem[288 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[288 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[288 len 4], ext_call.return_data[0 len 28] + 288] <= 4294967296 and mem[288 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], ext_call.return_data[0 len 28] + 288]
    _89 = mem[_86 + 288]
    mem[ceil32(return_data.size) + 320 len floor32(mem[_86 + 288])] = mem[_86 + 320 len floor32(mem[_86 + 288])]
    require 1 < mem[ceil32(return_data.size) + 288]
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _89) + ceil32(return_data.size) + 612 len 0] = None
    require ext_code.size(arg3)
    call arg3.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _89) + ceil32(return_data.size) + 612 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return msg.value, ext_call.return_data[0], mem[ceil32(return_data.size) + 352], eth.balance(this.address)
}

function sub_81ce2e00(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388 len 0] = None
    require ext_code.size(arg4)
    call arg4.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 3, mem[388 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[320] = arg1
    mem[352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[356] = ext_call.return_data[0]
    mem[388] = 64
    mem[420] = 3
    mem[452 len 0] = None
    require ext_code.size(arg4)
    staticcall arg4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], 0, 64, 3, mem[452 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 352
    require return_data.size >= 32
    _91 = mem[352 len 4], ext_call.return_data[0 len 28]
    require mem[352 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[352 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[352 len 4], ext_call.return_data[0 len 28] + 352] <= 4294967296 and mem[352 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[352 len 4], ext_call.return_data[0 len 28] + 352]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 352] = mem[mem[352 len 4], ext_call.return_data[0 len 28] + 352]
    _94 = mem[_91 + 352]
    mem[ceil32(return_data.size) + 384 len floor32(mem[_91 + 352])] = mem[_91 + 384 len floor32(mem[_91 + 352])]
    require 2 < mem[ceil32(return_data.size) + 352]
    require ext_code.size(arg3)
    call arg3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _94) + ceil32(return_data.size) + 708 len 0] = None
    require ext_code.size(arg4)
    call arg4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(32 * _94) + ceil32(return_data.size) + 708 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return msg.value, ext_call.return_data[0], mem[ceil32(return_data.size) + 448], eth.balance(this.address)
}

function sub_48727fd3(?) payable {
    require calldata.size - 4 >= 192
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7331303020626e627320616e6420692077686974656c69737420796f752c20636f6e74616374207073696c7661202d204d616361636f426f,
                    mem[220 len 8]
    require arg6
    require ext_code.size(stor3)
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = arg1
    mem[160] = arg2
    mem[356 len 0] = None
    require ext_code.size(arg3)
    call arg3.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value / 1000 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp + 30, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == stor3:
        mem[192] = 2
        mem[224] = arg2
        mem[256] = arg1
        mem[388] = this.address
        mem[420] = block.timestamp + 30
        mem[452] = 2
        mem[484 len 0] = None
        require ext_code.size(arg3)
        call arg3.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 2, mem[484 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg4:
            require msg.value / 1000 / 10000
            if -(ext_call.return_data[0] / msg.value / 1000 / 10000) + 10000 > arg5:
                revert with 0, '', 'taxa ta alta pra caralhoooo'
        mem[356] = ext_call.return_data[0]
        require ext_code.size(stor3)
        call stor3.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        call stor3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 2
        mem[64] = 384
        mem[320] = arg1
        mem[352] = arg2
        idx = 0
        while idx < arg6:
            mem[384] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[388] = 0
            mem[452] = msg.sender
            mem[484] = block.timestamp + 30
            mem[420] = 128
            mem[516] = mem[288]
            s = 0
            while s < 32 * mem[288]:
                mem[s + 548] = mem[s + 320]
                s = s + 32
                continue 
            require ext_code.size(arg3)
            call arg3.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value / 1000) / arg6 wei
                 gas gas_remaining wei
                args 0, 128, msg.sender, block.timestamp + 30, mem[288], mem[548 len 32 * mem[288]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[192] = 3
        mem[224] = arg2
        mem[256] = arg1
        mem[288] = stor3
        mem[420] = this.address
        mem[452] = block.timestamp + 30
        mem[484] = 3
        mem[516 len 0] = None
        require ext_code.size(arg3)
        call arg3.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 0, 160, address(this.address), block.timestamp + 30, 3, mem[516 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg4:
            require msg.value / 1000 / 10000
            if -(ext_call.return_data[0] / msg.value / 1000 / 10000) + 10000 > arg5:
                revert with 0, '', 27, 'taxa ta alta pra caralhoooo'
        mem[388] = ext_call.return_data[0]
        require ext_code.size(stor3)
        call stor3.0x23b872dd with:
             gas gas_remaining wei
            args this.address, 0, msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        call stor3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg3, 0, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg3, 0, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[320] = 2
        mem[64] = 416
        mem[352] = arg1
        mem[384] = arg2
        idx = 0
        while idx < arg6:
            mem[416] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[420] = 0
            mem[484] = msg.sender
            mem[516] = block.timestamp + 30
            mem[452] = 128
            mem[548] = mem[320]
            s = 0
            while s < 32 * mem[320]:
                mem[s + 580] = mem[s + 352]
                s = s + 32
                continue 
            require ext_code.size(arg3)
            call arg3.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value / 1000) / arg6 wei
                 gas gas_remaining wei
                args 0, 128, msg.sender, block.timestamp + 30, mem[320], mem[580 len 32 * mem[320]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}



}
