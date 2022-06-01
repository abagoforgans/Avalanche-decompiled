contract main {




// =====================  Runtime code  =====================


#
#  - sub_64ebef07(?)
#
address owner;
array of struct stor2;
uint256 stor3;
address stor4;
uint8 stor5; offset 160
uint8 stor5; offset 168
uint128 stor5; offset 168
uint128 stor5; offset 160
address stor5;
address stor6;
address stor7;
uint256 stor8;
mapping of uint8 stor9;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
}

function sub_174627d8(?) payable {
    require msg.sender == owner
    Mask(96, 0, stor5.field_160) = 0
    stor3 = 0
    Mask(88, 0, stor5.field_168) = 0
}

function sub_c13fe696(?) payable {
    return stor3, stor4, address(stor5.field_0), bool(uint8(stor5.field_160)), bool(uint8(stor5.field_168)), stor6, stor7, stor8
}

function addOwnerAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require stor9[address(msg.sender)]
    stor9[address(arg1)] = 1
}

function claimTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
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

function sub_bc9821c4(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = arg3
    mem[(32 * arg1.length) + 164] = 64
    mem[(32 * arg1.length) + 196] = arg1.length
    mem[(32 * arg1.length) + 228 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(arg2)
    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 228 len (32 * arg1.length) - floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _21 = mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg3) >> 32
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg1.length) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg1.length) + 128]) + 32 <= return_data.size
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg1.length) + 128]
    _24 = mem[_21 + (32 * arg1.length) + 128]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[_21 + (32 * arg1.length) + 128])] = mem[_21 + (32 * arg1.length) + 160 len floor32(mem[_21 + (32 * arg1.length) + 128])]
    require arg1.length - 1 < mem[(32 * arg1.length) + ceil32(return_data.size) + 128]
    mem[(32 * _24) + (32 * arg1.length) + ceil32(return_data.size) + 160] = mem[(32 * arg1.length - 1) + (32 * arg1.length) + ceil32(return_data.size) + 160]
    return memory
      from (32 * _24) + (32 * arg1.length) + ceil32(return_data.size) + 160
       len 32
}

function sub_e5d32e5b(?) payable {
    require calldata.size - 4 >= 128
    require stor9[address(msg.sender)]
    if arg3:
        if stor2.length:
            require ext_code.size(stor4)
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require block.timestamp + 1800 >= block.timestamp
            if not stor2.length:
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, uint32(arg3), 0, 160, address(this.address), block.timestamp + 1800, stor2.length
            else:
                mem[292] = address(stor2.field_0)
                idx = 292
                s = 0
                while (32 * stor2.length) + 292 > idx + 32:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, uint32(arg3), 0, 160, address(this.address), block.timestamp + 1800, stor2.length, mem[292 len 32 * stor2.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor4)
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 < arg4:
                if arg4 > 0:
                    revert with 0, 'Min Amount'
    else:
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if stor2.length:
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require block.timestamp + 1800 >= block.timestamp
                if not stor2.length:
                    require ext_code.size(arg1)
                    call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp + 1800, stor2.length
                else:
                    mem[292] = address(stor2.field_0)
                    idx = 292
                    s = 0
                    while (32 * stor2.length) + 292 > idx + 32:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg1)
                    call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp + 1800, stor2.length, mem[292 len 32 * stor2.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 < arg4:
                    if arg4 > 0:
                        revert with 0, 'Min Amount'
}

function sub_a7f28143(?) payable {
    require calldata.size - 4 >= 96
    if arg3:
        mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        mem[132] = 64
        mem[164] = stor2.length
        if not stor2.length:
            require ext_code.size(arg1)
            staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, 64, stor2.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _9 = mem[96 len 4], Mask(224, 32, arg3) >> 32
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
            _15 = mem[_9 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_9 + 96])] = mem[_9 + 128 len floor32(mem[_9 + 96])]
            require stor2.length - 1 < mem[ceil32(return_data.size) + 96]
            mem[(32 * _15) + ceil32(return_data.size) + 128] = mem[(32 * stor2.length - 1) + ceil32(return_data.size) + 128]
            return memory
              from (32 * _15) + ceil32(return_data.size) + 128
               len 32
        mem[0] = 2
        mem[196] = address(stor2.field_0)
        idx = 196
        s = 0
        while (32 * stor2.length) + 196 > idx + 32:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(arg1)
        staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=stor2.length, data=mem[196 len 32 * stor2.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _45 = mem[96 len 4], Mask(224, 32, arg3) >> 32
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
        _51 = mem[_45 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_45 + 96])] = mem[_45 + 128 len floor32(mem[_45 + 96])]
        require stor2.length - 1 < mem[ceil32(return_data.size) + 96]
        mem[(32 * _51) + ceil32(return_data.size) + 128] = mem[(32 * stor2.length - 1) + ceil32(return_data.size) + 128]
        return memory
          from (32 * _51) + ceil32(return_data.size) + 128
           len 32
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = ext_call.return_data[0]
    mem[132] = 64
    mem[164] = stor2.length
    if not stor2.length:
        require ext_code.size(arg1)
        staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], 64, stor2.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _17 = mem[96 len 4], ext_call.return_data[0 len 28]
        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
        _25 = mem[_17 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_17 + 96])] = mem[_17 + 128 len floor32(mem[_17 + 96])]
        require stor2.length - 1 < mem[ceil32(return_data.size) + 96]
        mem[(32 * _25) + ceil32(return_data.size) + 128] = mem[(32 * stor2.length - 1) + ceil32(return_data.size) + 128]
        return memory
          from (32 * _25) + ceil32(return_data.size) + 128
           len 32
    mem[0] = 2
    mem[196] = address(stor2.field_0)
    idx = 196
    s = 0
    while (32 * stor2.length) + 196 > idx + 32:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=stor2.length, data=mem[196 len 32 * stor2.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _47 = mem[96 len 4], ext_call.return_data[0 len 28]
    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
    _52 = mem[_47 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_47 + 96])] = mem[_47 + 128 len floor32(mem[_47 + 96])]
    require stor2.length - 1 < mem[ceil32(return_data.size) + 96]
    mem[(32 * _52) + ceil32(return_data.size) + 128] = mem[(32 * stor2.length - 1) + ceil32(return_data.size) + 128]
    return memory
      from (32 * _52) + ceil32(return_data.size) + 128
       len 32
}



}
