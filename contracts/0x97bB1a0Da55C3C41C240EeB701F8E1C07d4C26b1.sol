contract main {




// =====================  Runtime code  =====================


#
#  - sub_2588dccd(?)
#  - sub_82ee4f4e(?)
#
address owner;
array of address sub_ba7d33cb;
array of struct stor3;
uint8 stor4;
address stor4;
address stor5;
uint256 stor6;
mapping of uint8 stor7;

function owner() payable {
    return owner
}

function sub_ba7d33cb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_ba7d33cb.length
    return address(sub_ba7d33cb[arg1])
}

function _fallback() payable {
    revert
}

function sub_c13fe696(?) payable {
    return bool(uint8(stor4)), address(stor4), stor5, stor6
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
}

function addOwnerAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require stor7[msg.sender]
    stor7[address(arg1)] = 1
}

function sub_174627d8(?) payable {
    require msg.sender == owner
    uint8(stor4) = 0
    sub_ba7d33cb.length = 0
    idx = 0
    while sub_ba7d33cb.length > idx:
        uint256(sub_ba7d33cb[idx]) = 0
        idx = idx + 1
        continue 
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
    mem[96] = arg1.length
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
    require mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 32 <= return_data.size
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
    _24 = mem[(32 * arg1.length) + _21 + 128]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg1.length) + _21 + 128])] = mem[(32 * arg1.length) + _21 + 160 len floor32(mem[(32 * arg1.length) + _21 + 128])]
    require arg1.length - 1 < mem[(32 * arg1.length) + ceil32(return_data.size) + 128]
    mem[(32 * _24) + (32 * arg1.length) + ceil32(return_data.size) + 160] = mem[(32 * arg1.length - 1) + (32 * arg1.length) + ceil32(return_data.size) + 160]
    return memory
      from (32 * _24) + (32 * arg1.length) + ceil32(return_data.size) + 160
       len 32
}

function sub_a7f28143(?) payable {
    require calldata.size - 4 >= 96
    if arg3:
        mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        mem[132] = 64
        mem[164] = stor3.length
        if not stor3.length:
            require ext_code.size(arg1)
            staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, 64, stor3.length
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
            require stor3.length - 1 < mem[ceil32(return_data.size) + 96]
            mem[(32 * _15) + ceil32(return_data.size) + 128] = mem[(32 * stor3.length - 1) + ceil32(return_data.size) + 128]
            return memory
              from (32 * _15) + ceil32(return_data.size) + 128
               len 32
        mem[0] = 3
        mem[196] = address(stor3.field_0)
        idx = 196
        s = 0
        while (32 * stor3.length) + 196 > idx + 32:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(arg1)
        staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=stor3.length, data=mem[196 len 32 * stor3.length])
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
        require stor3.length - 1 < mem[ceil32(return_data.size) + 96]
        mem[(32 * _51) + ceil32(return_data.size) + 128] = mem[(32 * stor3.length - 1) + ceil32(return_data.size) + 128]
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
    mem[164] = stor3.length
    if not stor3.length:
        require ext_code.size(arg1)
        staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], 64, stor3.length
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
        _23 = mem[_17 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_17 + 96])] = mem[_17 + 128 len floor32(mem[_17 + 96])]
        require stor3.length - 1 < mem[ceil32(return_data.size) + 96]
        mem[(32 * _23) + ceil32(return_data.size) + 128] = mem[(32 * stor3.length - 1) + ceil32(return_data.size) + 128]
        return memory
          from (32 * _23) + ceil32(return_data.size) + 128
           len 32
    mem[0] = 3
    mem[196] = address(stor3.field_0)
    idx = 196
    s = 0
    while (32 * stor3.length) + 196 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=stor3.length, data=mem[196 len 32 * stor3.length])
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
    require stor3.length - 1 < mem[ceil32(return_data.size) + 96]
    mem[(32 * _52) + ceil32(return_data.size) + 128] = mem[(32 * stor3.length - 1) + ceil32(return_data.size) + 128]
    return memory
      from (32 * _52) + ceil32(return_data.size) + 128
       len 32
}



}
