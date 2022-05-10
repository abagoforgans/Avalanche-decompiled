contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_5441f9d1(?) {
    require calldata.size - 4 >= 32
    mem[260 len 64] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, 0x7a250d5630b4cf539739df2c, 0, 0
    call arg1.0x59f2488d with:
         gas gas_remaining wei
        args Mask(480, -256, Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, 0x7a250d5630b4cf539739df2c, 0, 0) << 256, mem[324 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'ERC20 test TRANSFER_FAILED'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'ERC20 test TRANSFER_FAILED'
    if return_data.size:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 'ERC20 test TRANSFER_FAILED'
}

function sub_2d40c0cd(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[356 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), 1899883657, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[388 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, 160, msg.sender, 1899883657, 0, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_65d234ca(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[160] = arg1
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    mem[260] = this.address
    mem[292] = 1899883657
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), 1899883657, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _37 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= 4294967296
    require mem[192 len 4], 0 + 32 <= return_data.size
    require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    _40 = mem[_37 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_37 + 192])] = mem[_37 + 224 len floor32(mem[_37 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _63 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _40) + ceil32(return_data.size) + 224] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
    mem[(32 * _40) + ceil32(return_data.size) + 228] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[(32 * _40) + ceil32(return_data.size) + 260] = _63
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _63
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[128] = arg1
    mem[160] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
    require 1 < mem[ceil32(return_data.size) + 192]
    _69 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _40) + ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * _40) + ceil32(return_data.size) + 228] = _69
    mem[(32 * _40) + ceil32(return_data.size) + 260] = 0
    mem[(32 * _40) + ceil32(return_data.size) + 324] = msg.sender
    mem[(32 * _40) + ceil32(return_data.size) + 356] = 1899883657
    mem[(32 * _40) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _40) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _40) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _69, 0, 160, msg.sender, 1899883657, 2, mem[(32 * _40) + ceil32(return_data.size) + 420 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _40) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _40) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * _40) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _69) >> 32 <= 4294967296
    require mem[(32 * _40) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _69) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _40) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _69) >> 32 + (32 * _40) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _40) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _69) >> 32 + (32 * mem[mem[(32 * _40) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _69) >> 32 + (32 * _40) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
}

function sub_246af7fa(?) {
    require calldata.size - 4 >= 96
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require ('cd', 68).length / 3 <= test266151307()
    mem[96] = ('cd', 68).length / 3
    if not ('cd', 68).length / 3:
        require ('cd', 68).length / 3 <= test266151307()
        mem[(32 * ('cd', 68).length / 3) + 128] = ('cd', 68).length / 3
        mem[64] = (64 * ('cd', 68).length / 3) + 160
        if not ('cd', 68).length / 3:
            idx = 0
            s = cd[4]
            t = address(cd[36])
            u = 0
            while idx < ('cd', 68).length:
                require idx + 1 < ('cd', 68).length
                require idx + 2 < ('cd', 68).length
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x1ad0cdb5 with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx + 1) + cd[68] + 36)]), s, address(t), address(cd[((32 * idx + 2) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require u < mem[96]
                mem[(32 * u) + 128] = ext_call.return_data[0]
                require idx < ('cd', 68).length
                require idx + 1 < ('cd', 68).length
                require idx + 2 < ('cd', 68).length
                mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                mem[mem[64] + 36] = s
                mem[mem[64] + 68] = address(t)
                mem[mem[64] + 100] = address(cd[((32 * idx + 2) + cd[68] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x7b116446 with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx + 1) + cd[68] + 36)]), s, address(t), address(cd[((32 * idx + 2) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require u < mem[(32 * ('cd', 68).length / 3) + 128]
                mem[(32 * u) + (32 * ('cd', 68).length / 3) + 160] = ext_call.return_data[0]
                require u < mem[96]
                require idx + 2 < ('cd', 68).length
                idx = idx + 3
                s = ext_call.return_data[0]
                t = address(cd[((32 * idx + 2) + cd[68] + 36)])
                u = u + 1
                continue 
            _84 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _86 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _84 + 96] = mem[(32 * ('cd', 68).length / 3) + 128]
            _165 = mem[(32 * ('cd', 68).length / 3) + 128]
            mem[(32 * _86) + _84 + 128 len floor32(mem[(32 * ('cd', 68).length / 3) + 128])] = mem[(32 * ('cd', 68).length / 3) + 160 len floor32(mem[(32 * ('cd', 68).length / 3) + 128])]
            return memory
              from mem[64]
               len (32 * _165) + (32 * _86) + _84 + -mem[64] + 128
        mem[(32 * ('cd', 68).length / 3) + 160 len 32 * ('cd', 68).length / 3] = call.data[calldata.size len 32 * ('cd', 68).length / 3]
        idx = 0
        s = cd[4]
        t = address(cd[36])
        u = 0
        while idx < ('cd', 68).length:
            require idx + 1 < ('cd', 68).length
            require idx + 2 < ('cd', 68).length
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x1ad0cdb5 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx + 1) + cd[68] + 36)]), s, address(t), address(cd[((32 * idx + 2) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require u < mem[96]
            mem[(32 * u) + 128] = ext_call.return_data[0]
            require idx < ('cd', 68).length
            require idx + 1 < ('cd', 68).length
            require idx + 2 < ('cd', 68).length
            mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[68] + 36)])
            mem[mem[64] + 36] = s
            mem[mem[64] + 68] = address(t)
            mem[mem[64] + 100] = address(cd[((32 * idx + 2) + cd[68] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x7b116446 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx + 1) + cd[68] + 36)]), s, address(t), address(cd[((32 * idx + 2) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require u < mem[(32 * ('cd', 68).length / 3) + 128]
            mem[(32 * u) + (32 * ('cd', 68).length / 3) + 160] = ext_call.return_data[0]
            require u < mem[96]
            require idx + 2 < ('cd', 68).length
            idx = idx + 3
            s = ext_call.return_data[0]
            t = address(cd[((32 * idx + 2) + cd[68] + 36)])
            u = u + 1
            continue 
        _87 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _89 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _87 + 96] = mem[(32 * ('cd', 68).length / 3) + 128]
        _168 = mem[(32 * ('cd', 68).length / 3) + 128]
        mem[(32 * _89) + _87 + 128 len floor32(mem[(32 * ('cd', 68).length / 3) + 128])] = mem[(32 * ('cd', 68).length / 3) + 160 len floor32(mem[(32 * ('cd', 68).length / 3) + 128])]
        return memory
          from mem[64]
           len (32 * _168) + (32 * _89) + _87 + -mem[64] + 128
    mem[128 len 32 * ('cd', 68).length / 3] = call.data[calldata.size len 32 * ('cd', 68).length / 3]
    require ('cd', 68).length / 3 <= test266151307()
    mem[(32 * ('cd', 68).length / 3) + 128] = ('cd', 68).length / 3
    mem[64] = (64 * ('cd', 68).length / 3) + 160
    if not ('cd', 68).length / 3:
        idx = 0
        s = cd[4]
        t = address(cd[36])
        u = 0
        while idx < ('cd', 68).length:
            require idx + 1 < ('cd', 68).length
            require idx + 2 < ('cd', 68).length
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x1ad0cdb5 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx + 1) + cd[68] + 36)]), s, address(t), address(cd[((32 * idx + 2) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require u < mem[96]
            mem[(32 * u) + 128] = ext_call.return_data[0]
            require idx < ('cd', 68).length
            require idx + 1 < ('cd', 68).length
            require idx + 2 < ('cd', 68).length
            mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[68] + 36)])
            mem[mem[64] + 36] = s
            mem[mem[64] + 68] = address(t)
            mem[mem[64] + 100] = address(cd[((32 * idx + 2) + cd[68] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x7b116446 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx + 1) + cd[68] + 36)]), s, address(t), address(cd[((32 * idx + 2) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require u < mem[(32 * ('cd', 68).length / 3) + 128]
            mem[(32 * u) + (32 * ('cd', 68).length / 3) + 160] = ext_call.return_data[0]
            require u < mem[96]
            require idx + 2 < ('cd', 68).length
            idx = idx + 3
            s = ext_call.return_data[0]
            t = address(cd[((32 * idx + 2) + cd[68] + 36)])
            u = u + 1
            continue 
        _90 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _92 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _90 + 96] = mem[(32 * ('cd', 68).length / 3) + 128]
        _171 = mem[(32 * ('cd', 68).length / 3) + 128]
        mem[(32 * _92) + _90 + 128 len floor32(mem[(32 * ('cd', 68).length / 3) + 128])] = mem[(32 * ('cd', 68).length / 3) + 160 len floor32(mem[(32 * ('cd', 68).length / 3) + 128])]
        return memory
          from mem[64]
           len (32 * _171) + (32 * _92) + _90 + -mem[64] + 128
    mem[(32 * ('cd', 68).length / 3) + 160 len 32 * ('cd', 68).length / 3] = call.data[calldata.size len 32 * ('cd', 68).length / 3]
    idx = 0
    s = cd[4]
    t = address(cd[36])
    u = 0
    while idx < ('cd', 68).length:
        require idx + 1 < ('cd', 68).length
        require idx + 2 < ('cd', 68).length
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x1ad0cdb5 with:
                gas gas_remaining wei
               args address(cd[((32 * idx + 1) + cd[68] + 36)]), s, address(t), address(cd[((32 * idx + 2) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require u < mem[96]
        mem[(32 * u) + 128] = ext_call.return_data[0]
        require idx < ('cd', 68).length
        require idx + 1 < ('cd', 68).length
        require idx + 2 < ('cd', 68).length
        mem[mem[64] + 4] = address(cd[((32 * idx + 1) + cd[68] + 36)])
        mem[mem[64] + 36] = s
        mem[mem[64] + 68] = address(t)
        mem[mem[64] + 100] = address(cd[((32 * idx + 2) + cd[68] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x7b116446 with:
                gas gas_remaining wei
               args address(cd[((32 * idx + 1) + cd[68] + 36)]), s, address(t), address(cd[((32 * idx + 2) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require u < mem[(32 * ('cd', 68).length / 3) + 128]
        mem[(32 * u) + (32 * ('cd', 68).length / 3) + 160] = ext_call.return_data[0]
        require u < mem[96]
        require idx + 2 < ('cd', 68).length
        idx = idx + 3
        s = ext_call.return_data[0]
        t = address(cd[((32 * idx + 2) + cd[68] + 36)])
        u = u + 1
        continue 
    _93 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _95 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _93 + 96] = mem[(32 * ('cd', 68).length / 3) + 128]
    _174 = mem[(32 * ('cd', 68).length / 3) + 128]
    mem[(32 * _95) + _93 + 128 len floor32(mem[(32 * ('cd', 68).length / 3) + 128])] = mem[(32 * ('cd', 68).length / 3) + 160 len floor32(mem[(32 * ('cd', 68).length / 3) + 128])]
    return memory
      from mem[64]
       len (32 * _174) + (32 * _95) + _93 + -mem[64] + 128
}

function getReserves(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = 2
    mem[128 len 64] = call.data[calldata.size len 64]
    require arg1.length / 2 <= test266151307()
    mem[192] = arg1.length / 2
    if not Mask(255, 1, arg1.length):
        require arg1.length / 2 <= test266151307()
        mem[(16 * Mask(251, 1, arg1.length)) + 224] = arg1.length / 2
        mem[64] = (32 * Mask(250, 1, arg1.length)) + 256
        if not Mask(255, 1, arg1.length):
            idx = 0
            s = 0
            while idx < arg1.length:
                require idx + 2 < arg1.length
                require 0 < mem[96]
                mem[128] = address(cd[((32 * idx + 2) + arg1 + 36)])
                require idx + 3 < arg1.length
                require 1 < mem[96]
                mem[160] = address(cd[((32 * idx + 3) + arg1 + 36)])
                require idx < arg1.length
                require idx + 1 < arg1.length
                mem[mem[64]] = 0x275f539600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx + 1) + arg1 + 36)])
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                _199 = mem[96]
                t = 0
                while t < 32 * mem[96]:
                    mem[mem[64] + t + 100] = mem[t + 128]
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _199) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _331 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _341 = mem[_331]
                require mem[_331] <= 4294967296
                require mem[_331] + 32 <= return_data.size
                require mem[mem[_331] + _331] <= 4294967296 and mem[_331] + (32 * mem[mem[_331] + _331]) + 32 <= return_data.size
                mem[_331 + ceil32(return_data.size)] = mem[mem[_331] + _331]
                _353 = mem[_341 + _331]
                t = 0
                while t < 32 * _353:
                    mem[_331 + ceil32(return_data.size) + t + 32] = mem[_341 + _331 + t + 32]
                    t = t + 32
                    continue 
                mem[64] = (32 * _353) + _331 + ceil32(return_data.size) + 32
                _431 = mem[_331 + 32]
                require mem[_331 + 32] <= 4294967296
                require mem[_331 + 32] + 32 <= return_data.size
                require mem[mem[_331 + 32] + _331] <= 4294967296 and mem[_331 + 32] + (32 * mem[mem[_331 + 32] + _331]) + 32 <= return_data.size
                mem[(32 * _353) + _331 + ceil32(return_data.size) + 32] = mem[mem[_331 + 32] + _331]
                _453 = mem[_431 + _331]
                t = 0
                while t < 32 * _453:
                    mem[(32 * _353) + _331 + ceil32(return_data.size) + t + 64] = mem[_431 + _331 + t + 32]
                    t = t + 32
                    continue 
                mem[64] = (32 * _453) + (32 * _353) + _331 + ceil32(return_data.size) + 64
                require 0 < mem[_331 + ceil32(return_data.size)]
                require s < mem[192]
                mem[(32 * s) + 224] = mem[_331 + ceil32(return_data.size) + 32]
                require 1 < mem[_331 + ceil32(return_data.size)]
                require s + 1 < mem[192]
                mem[(32 * s + 1) + 224] = mem[_331 + ceil32(return_data.size) + 64]
                require 0 < mem[(32 * _353) + _331 + ceil32(return_data.size) + 32]
                require s < mem[(16 * Mask(251, 1, arg1.length)) + 224]
                mem[(32 * s) + (16 * Mask(251, 1, arg1.length)) + 256] = mem[(32 * _353) + _331 + ceil32(return_data.size) + 64]
                require 1 < mem[(32 * _353) + _331 + ceil32(return_data.size) + 32]
                require s + 1 < mem[(16 * Mask(251, 1, arg1.length)) + 224]
                mem[(32 * s + 1) + (16 * Mask(251, 1, arg1.length)) + 256] = mem[(32 * _353) + _331 + ceil32(return_data.size) + 96]
                idx = idx + 4
                s = s + 2
                continue 
            _157 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[192]
            _159 = mem[192]
            mem[mem[64] + 96 len floor32(mem[192])] = mem[224 len floor32(mem[192])]
            mem[mem[64] + 32] = (32 * _159) + 96
            mem[(32 * _159) + _157 + 96] = mem[(16 * Mask(251, 1, arg1.length)) + 224]
            _310 = mem[(16 * Mask(251, 1, arg1.length)) + 224]
            mem[(32 * _159) + _157 + 128 len floor32(mem[(16 * Mask(251, 1, arg1.length)) + 224])] = mem[(16 * Mask(251, 1, arg1.length)) + 256 len floor32(mem[(16 * Mask(251, 1, arg1.length)) + 224])]
            return memory
              from mem[64]
               len (32 * _310) + (32 * _159) + _157 + -mem[64] + 128
        mem[(16 * Mask(251, 1, arg1.length)) + 256 len 16 * Mask(251, 1, arg1.length)] = call.data[calldata.size len 16 * Mask(251, 1, arg1.length)]
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx + 2 < arg1.length
            require 0 < mem[96]
            mem[128] = address(cd[((32 * idx + 2) + arg1 + 36)])
            require idx + 3 < arg1.length
            require 1 < mem[96]
            mem[160] = address(cd[((32 * idx + 3) + arg1 + 36)])
            require idx < arg1.length
            require idx + 1 < arg1.length
            _200 = mem[64]
            mem[mem[64]] = 0x275f539600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx + 1) + arg1 + 36)])
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            _202 = mem[96]
            t = 0
            while t < 32 * _202:
                mem[mem[64] + t + 100] = mem[t + 128]
                t = t + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _202) + _200 + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _334 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _343 = mem[_334]
            require mem[_334] <= 4294967296
            require mem[_334] + 32 <= return_data.size
            require mem[mem[_334] + _334] <= 4294967296 and mem[_334] + (32 * mem[mem[_334] + _334]) + 32 <= return_data.size
            mem[_334 + ceil32(return_data.size)] = mem[mem[_334] + _334]
            _354 = mem[_343 + _334]
            t = 0
            while t < 32 * _354:
                mem[_334 + ceil32(return_data.size) + t + 32] = mem[_343 + _334 + t + 32]
                t = t + 32
                continue 
            mem[64] = (32 * _354) + _334 + ceil32(return_data.size) + 32
            _436 = mem[_334 + 32]
            require mem[_334 + 32] <= 4294967296
            require mem[_334 + 32] + 32 <= return_data.size
            require mem[mem[_334 + 32] + _334] <= 4294967296 and mem[_334 + 32] + (32 * mem[mem[_334 + 32] + _334]) + 32 <= return_data.size
            mem[(32 * _354) + _334 + ceil32(return_data.size) + 32] = mem[mem[_334 + 32] + _334]
            _454 = mem[_436 + _334]
            t = 0
            while t < 32 * _454:
                mem[(32 * _354) + _334 + ceil32(return_data.size) + t + 64] = mem[_436 + _334 + t + 32]
                t = t + 32
                continue 
            mem[64] = (32 * _454) + (32 * _354) + _334 + ceil32(return_data.size) + 64
            require 0 < mem[_334 + ceil32(return_data.size)]
            require s < mem[192]
            mem[(32 * s) + 224] = mem[_334 + ceil32(return_data.size) + 32]
            require 1 < mem[_334 + ceil32(return_data.size)]
            require s + 1 < mem[192]
            mem[(32 * s + 1) + 224] = mem[_334 + ceil32(return_data.size) + 64]
            require 0 < mem[(32 * _354) + _334 + ceil32(return_data.size) + 32]
            require s < mem[(16 * Mask(251, 1, arg1.length)) + 224]
            mem[(32 * s) + (16 * Mask(251, 1, arg1.length)) + 256] = mem[(32 * _354) + _334 + ceil32(return_data.size) + 64]
            require 1 < mem[(32 * _354) + _334 + ceil32(return_data.size) + 32]
            require s + 1 < mem[(16 * Mask(251, 1, arg1.length)) + 224]
            mem[(32 * s + 1) + (16 * Mask(251, 1, arg1.length)) + 256] = mem[(32 * _354) + _334 + ceil32(return_data.size) + 96]
            idx = idx + 4
            s = s + 2
            continue 
        _161 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[192]
        _163 = mem[192]
        mem[mem[64] + 96 len floor32(mem[192])] = mem[224 len floor32(mem[192])]
        mem[mem[64] + 32] = (32 * _163) + 96
        mem[(32 * _163) + _161 + 96] = mem[(16 * Mask(251, 1, arg1.length)) + 224]
        _315 = mem[(16 * Mask(251, 1, arg1.length)) + 224]
        mem[(32 * _163) + _161 + 128 len floor32(mem[(16 * Mask(251, 1, arg1.length)) + 224])] = mem[(16 * Mask(251, 1, arg1.length)) + 256 len floor32(mem[(16 * Mask(251, 1, arg1.length)) + 224])]
        return memory
          from mem[64]
           len (32 * _315) + (32 * _163) + _161 + -mem[64] + 128
    mem[224 len 16 * Mask(251, 1, arg1.length)] = call.data[calldata.size len 16 * Mask(251, 1, arg1.length)]
    require arg1.length / 2 <= test266151307()
    mem[(16 * Mask(251, 1, arg1.length)) + 224] = arg1.length / 2
    mem[64] = (32 * Mask(250, 1, arg1.length)) + 256
    if not Mask(255, 1, arg1.length):
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx + 2 < arg1.length
            require 0 < mem[96]
            mem[128] = address(cd[((32 * idx + 2) + arg1 + 36)])
            require idx + 3 < arg1.length
            require 1 < mem[96]
            mem[160] = address(cd[((32 * idx + 3) + arg1 + 36)])
            require idx < arg1.length
            require idx + 1 < arg1.length
            _203 = mem[64]
            mem[mem[64]] = 0x275f539600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx + 1) + arg1 + 36)])
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            _205 = mem[96]
            t = 0
            while t < 32 * _205:
                mem[mem[64] + t + 100] = mem[t + 128]
                t = t + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _205) + _203 + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _337 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _345 = mem[_337]
            require mem[_337] <= 4294967296
            require mem[_337] + 32 <= return_data.size
            require mem[mem[_337] + _337] <= 4294967296 and mem[_337] + (32 * mem[mem[_337] + _337]) + 32 <= return_data.size
            mem[_337 + ceil32(return_data.size)] = mem[mem[_337] + _337]
            _355 = mem[_345 + _337]
            t = 0
            while t < 32 * _355:
                mem[_337 + ceil32(return_data.size) + t + 32] = mem[_345 + _337 + t + 32]
                t = t + 32
                continue 
            mem[64] = (32 * _355) + _337 + ceil32(return_data.size) + 32
            _441 = mem[_337 + 32]
            require mem[_337 + 32] <= 4294967296
            require mem[_337 + 32] + 32 <= return_data.size
            require mem[mem[_337 + 32] + _337] <= 4294967296 and mem[_337 + 32] + (32 * mem[mem[_337 + 32] + _337]) + 32 <= return_data.size
            mem[(32 * _355) + _337 + ceil32(return_data.size) + 32] = mem[mem[_337 + 32] + _337]
            _455 = mem[_441 + _337]
            t = 0
            while t < 32 * _455:
                mem[(32 * _355) + _337 + ceil32(return_data.size) + t + 64] = mem[_441 + _337 + t + 32]
                t = t + 32
                continue 
            mem[64] = (32 * _455) + (32 * _355) + _337 + ceil32(return_data.size) + 64
            require 0 < mem[_337 + ceil32(return_data.size)]
            require s < mem[192]
            mem[(32 * s) + 224] = mem[_337 + ceil32(return_data.size) + 32]
            require 1 < mem[_337 + ceil32(return_data.size)]
            require s + 1 < mem[192]
            mem[(32 * s + 1) + 224] = mem[_337 + ceil32(return_data.size) + 64]
            require 0 < mem[(32 * _355) + _337 + ceil32(return_data.size) + 32]
            require s < mem[(16 * Mask(251, 1, arg1.length)) + 224]
            mem[(32 * s) + (16 * Mask(251, 1, arg1.length)) + 256] = mem[(32 * _355) + _337 + ceil32(return_data.size) + 64]
            require 1 < mem[(32 * _355) + _337 + ceil32(return_data.size) + 32]
            require s + 1 < mem[(16 * Mask(251, 1, arg1.length)) + 224]
            mem[(32 * s + 1) + (16 * Mask(251, 1, arg1.length)) + 256] = mem[(32 * _355) + _337 + ceil32(return_data.size) + 96]
            idx = idx + 4
            s = s + 2
            continue 
        _165 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[192]
        _167 = mem[192]
        mem[mem[64] + 96 len floor32(mem[192])] = mem[224 len floor32(mem[192])]
        mem[mem[64] + 32] = (32 * _167) + 96
        mem[(32 * _167) + _165 + 96] = mem[(16 * Mask(251, 1, arg1.length)) + 224]
        _320 = mem[(16 * Mask(251, 1, arg1.length)) + 224]
        mem[(32 * _167) + _165 + 128 len floor32(mem[(16 * Mask(251, 1, arg1.length)) + 224])] = mem[(16 * Mask(251, 1, arg1.length)) + 256 len floor32(mem[(16 * Mask(251, 1, arg1.length)) + 224])]
        return memory
          from mem[64]
           len (32 * _320) + (32 * _167) + _165 + -mem[64] + 128
    mem[(16 * Mask(251, 1, arg1.length)) + 256 len 16 * Mask(251, 1, arg1.length)] = call.data[calldata.size len 16 * Mask(251, 1, arg1.length)]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx + 2 < arg1.length
        require 0 < mem[96]
        mem[128] = address(cd[((32 * idx + 2) + arg1 + 36)])
        require idx + 3 < arg1.length
        require 1 < mem[96]
        mem[160] = address(cd[((32 * idx + 3) + arg1 + 36)])
        require idx < arg1.length
        require idx + 1 < arg1.length
        _206 = mem[64]
        mem[mem[64]] = 0x275f539600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(cd[((32 * idx + 1) + arg1 + 36)])
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        _208 = mem[96]
        t = 0
        while t < 32 * _208:
            mem[mem[64] + t + 100] = mem[t + 128]
            t = t + 32
            continue 
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _208) + _206 + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _340 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _347 = mem[_340]
        require mem[_340] <= 4294967296
        require mem[_340] + 32 <= return_data.size
        require mem[mem[_340] + _340] <= 4294967296 and mem[_340] + (32 * mem[mem[_340] + _340]) + 32 <= return_data.size
        mem[_340 + ceil32(return_data.size)] = mem[mem[_340] + _340]
        _356 = mem[_347 + _340]
        t = 0
        while t < 32 * _356:
            mem[_340 + ceil32(return_data.size) + t + 32] = mem[_347 + _340 + t + 32]
            t = t + 32
            continue 
        mem[64] = (32 * _356) + _340 + ceil32(return_data.size) + 32
        _446 = mem[_340 + 32]
        require mem[_340 + 32] <= 4294967296
        require mem[_340 + 32] + 32 <= return_data.size
        require mem[mem[_340 + 32] + _340] <= 4294967296 and mem[_340 + 32] + (32 * mem[mem[_340 + 32] + _340]) + 32 <= return_data.size
        mem[(32 * _356) + _340 + ceil32(return_data.size) + 32] = mem[mem[_340 + 32] + _340]
        _456 = mem[_446 + _340]
        t = 0
        while t < 32 * _456:
            mem[(32 * _356) + _340 + ceil32(return_data.size) + t + 64] = mem[_446 + _340 + t + 32]
            t = t + 32
            continue 
        mem[64] = (32 * _456) + (32 * _356) + _340 + ceil32(return_data.size) + 64
        require 0 < mem[_340 + ceil32(return_data.size)]
        require s < mem[192]
        mem[(32 * s) + 224] = mem[_340 + ceil32(return_data.size) + 32]
        require 1 < mem[_340 + ceil32(return_data.size)]
        require s + 1 < mem[192]
        mem[(32 * s + 1) + 224] = mem[_340 + ceil32(return_data.size) + 64]
        require 0 < mem[(32 * _356) + _340 + ceil32(return_data.size) + 32]
        require s < mem[(16 * Mask(251, 1, arg1.length)) + 224]
        mem[(32 * s) + (16 * Mask(251, 1, arg1.length)) + 256] = mem[(32 * _356) + _340 + ceil32(return_data.size) + 64]
        require 1 < mem[(32 * _356) + _340 + ceil32(return_data.size) + 32]
        require s + 1 < mem[(16 * Mask(251, 1, arg1.length)) + 224]
        mem[(32 * s + 1) + (16 * Mask(251, 1, arg1.length)) + 256] = mem[(32 * _356) + _340 + ceil32(return_data.size) + 96]
        idx = idx + 4
        s = s + 2
        continue 
    _169 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[192]
    _171 = mem[192]
    mem[mem[64] + 96 len floor32(mem[192])] = mem[224 len floor32(mem[192])]
    mem[mem[64] + 32] = (32 * _171) + 96
    mem[(32 * _171) + _169 + 96] = mem[(16 * Mask(251, 1, arg1.length)) + 224]
    _325 = mem[(16 * Mask(251, 1, arg1.length)) + 224]
    mem[(32 * _171) + _169 + 128 len floor32(mem[(16 * Mask(251, 1, arg1.length)) + 224])] = mem[(16 * Mask(251, 1, arg1.length)) + 256 len floor32(mem[(16 * Mask(251, 1, arg1.length)) + 224])]
    return memory
      from mem[64]
       len (32 * _325) + (32 * _171) + _169 + -mem[64] + 128
}



}
