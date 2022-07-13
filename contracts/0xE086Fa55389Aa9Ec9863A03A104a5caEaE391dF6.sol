contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor1;

function _fallback() payable {
    revert
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'GTFO my contract bitch'
    stor1[address(arg1)] = 1
}

function sub_1d86ce77(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = 2
    mem[64] = 192
    mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[160] = address(cd[68])
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[196] = 0
        mem[260] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[292] = block.timestamp
        mem[228] = 128
        mem[324] = mem[96]
        s = 0
        while s < 32 * mem[96]:
            mem[s + 356] = mem[s + 128]
            s = s + 32
            continue 
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value cd[((32 * idx) + cd[36] + 36)] wei
             gas gas_remaining wei
            args 0, 128, address(cd[((32 * idx) + cd[4] + 36)]), block.timestamp, mem[324 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function swap(address arg1, address arg2, uint256 arg3, address arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
        mem[388 len 0] = None
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg5, Array(len=2, data=mem[388 len 64]), address(arg1), block.timestamp
    else:
        if arg4 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            mem[420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg5, Array(len=3, data=mem[420 len 96]), address(arg1), block.timestamp
        else:
            mem[388 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg5, Array(len=2, data=mem[388 len 64]), address(arg1), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a76f109c(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'GTFO my contract bitch'
    mem[96] = 2
    mem[64] = 192
    mem[128] = address(cd[100])
    mem[160] = address(cd[68])
    mem[260] = cd[132]
    require ext_code.size(address(cd[100]))
    call address(cd[100]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[228] = -1
    require ext_code.size(address(cd[100]))
    call address(cd[100]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, -1
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[196] = cd[((32 * idx) + cd[36] + 36)]
        mem[228] = 0
        mem[292] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = mem[96]
        s = 0
        while s < 32 * mem[96]:
            mem[s + 388] = mem[s + 128]
            s = s + 32
            continue 
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[36] + 36)], 0, 160, address(cd[((32 * idx) + cd[4] + 36)]), block.timestamp, mem[356 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function getAmountOutMin(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _68 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _77 = mem[_68 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_68 + 192])] = mem[_68 + 224 len floor32(mem[_68 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        mem[(32 * _77) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
        return memory
          from (32 * _77) + ceil32(return_data.size) + 224
           len 32
    if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[192] = arg2
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = arg3
        mem[260] = 64
        mem[292] = 3
        mem[324 len 0] = None
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _70 = mem[224 len 4], Mask(224, 32, arg3) >> 32
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _78 = mem[_70 + 224]
        mem[ceil32(return_data.size) + 256 len floor32(mem[_70 + 224])] = mem[_70 + 256 len floor32(mem[_70 + 224])]
        require 2 < mem[ceil32(return_data.size) + 224]
        mem[(32 * _78) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 320]
        return memory
          from (32 * _78) + ceil32(return_data.size) + 256
           len 32
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _72 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _79 = mem[_72 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_72 + 192])] = mem[_72 + 224 len floor32(mem[_72 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _79) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _79) + ceil32(return_data.size) + 224
       len 32
}



}
