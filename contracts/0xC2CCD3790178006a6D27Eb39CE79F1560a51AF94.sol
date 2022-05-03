contract main {




// =====================  Runtime code  =====================


const name = 'QI-v1', 0


function _fallback() payable {
    revert
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.delegates(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == arg1:
        revert with 0, 'Already delegated to same delegatee.'
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    call 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x5c19a95c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 64, 128, 20, 'LogDelegate(address)', 0, 32, arg1
}

function ClaimReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address arg2) with:
         gas gas_remaining wei
        args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        return 64, 
               160,
               33,
               0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[(2 * ceil32(return_data.size)) + 161 len 31] / 0.00390625,
               0,
               64,
               0,
               arg1
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 64, 
           160,
           33,
           0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[(2 * ceil32(return_data.size)) + 164 len 28] / 0.00390625,
           0,
           64,
           0,
           arg1
}

function ClaimRewardTwo(string[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    require arg1.length <= test266151307()
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            _112 = mem[64]
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + 68] = 0
            require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
            staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string arg1) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _112 + ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) + -mem[64] + 64]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _122 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_122] == mem[_122 + 12 len 20]
            require mem[_122 + 32] == mem[_122 + 44 len 20]
            if not mem[_122 + 12 len 20]:
                revert with 0, 'invalid token/qitoken address'
            if not mem[_122 + 44 len 20]:
                revert with 0, 'invalid token/qitoken address'
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_122 + 44 len 20]
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _116 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _118 = mem[_116]
        require mem[_116] == mem[_116]
        _124 = mem[64]
        mem[mem[64]] = 0x744532ae00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = 96
        _130 = mem[96]
        mem[mem[64] + 100] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 132
        while idx < _130:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _124 + (32 * _130) + -mem[64] + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _226 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _228 = mem[_226]
        require mem[_226] == mem[_226]
        if _118 > mem[_226]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2:
            _234 = mem[64]
            mem[64] = mem[64] + 96
            mem[_234] = 33
            mem[_234 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
            _235 = mem[64]
            mem[mem[64] + 32] = _228 - _118
            mem[mem[64] + 64] = arg2
            _242 = mem[64]
            mem[64] = mem[64] + 96
            mem[_235 + 96] = 64
            mem[_235 + 160] = 33
            mem[_235 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_234 + 65 len 31]
            mem[_235 + 225] = 0
            mem[_235 + 128] = 160
            _302 = mem[_242]
            mem[_235 + 256] = mem[_242]
            mem[_235 + 288 len ceil32(_302)] = mem[_242 + 32 len ceil32(_302)]
            if ceil32(_302) > _302:
                mem[_235 + _302 + 288] = 0
            return 64, 160, 33, mem[_235 + 192 len 33], 0, mem[_235 + 256 len ceil32(_302) + 32]
        mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg2, _228 - _118
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _246 = mem[64]
        mem[64] = mem[64] + 96
        mem[_246] = 33
        mem[_246 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
        _247 = mem[64]
        mem[mem[64] + 32] = _228 - _118
        mem[mem[64] + 64] = arg2
        _254 = mem[64]
        mem[64] = mem[64] + 96
        mem[_247 + 96] = 64
        mem[_247 + 160] = 33
        mem[_247 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_246 + 65 len 31]
        mem[_247 + 225] = 0
        mem[_247 + 128] = 160
        _303 = mem[_254]
        mem[_247 + 256] = mem[_254]
        mem[_247 + 288 len ceil32(_303)] = mem[_254 + 32 len ceil32(_303)]
        if ceil32(_303) > _303:
            mem[_247 + _303 + 288] = 0
        return 64, 160, 33, mem[_247 + 192 len 33], 0, mem[_247 + 256 len ceil32(_303) + 32]
    mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
        require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        _113 = mem[64]
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
        mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + 68] = 0
        require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
        staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string arg1) with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _113 + ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) + -mem[64] + 64]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _123 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_123] == mem[_123 + 12 len 20]
        require mem[_123 + 32] == mem[_123 + 44 len 20]
        if not mem[_123 + 12 len 20]:
            revert with 0, 'invalid token/qitoken address'
        if not mem[_123 + 44 len 20]:
            revert with 0, 'invalid token/qitoken address'
        require idx < mem[96]
        mem[(32 * idx) + 128] = mem[_123 + 44 len 20]
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _117 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _119 = mem[_117]
    require mem[_117] == mem[_117]
    _125 = mem[64]
    mem[mem[64]] = 0x744532ae00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = 96
    _131 = mem[96]
    mem[mem[64] + 100] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 132
    while idx < _131:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _125 + (32 * _131) + -mem[64] + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _227 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _229 = mem[_227]
    require mem[_227] == mem[_227]
    if _119 > mem[_227]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2:
        _236 = mem[64]
        mem[64] = mem[64] + 96
        mem[_236] = 33
        mem[_236 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
        _237 = mem[64]
        mem[mem[64] + 32] = _229 - _119
        mem[mem[64] + 64] = arg2
        _243 = mem[64]
        mem[64] = mem[64] + 96
        mem[_237 + 96] = 64
        mem[_237 + 160] = 33
        mem[_237 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_236 + 65 len 31]
        mem[_237 + 225] = 0
        mem[_237 + 128] = 160
        _304 = mem[_243]
        mem[_237 + 256] = mem[_243]
        mem[_237 + 288 len ceil32(_304)] = mem[_243 + 32 len ceil32(_304)]
        if ceil32(_304) > _304:
            mem[_237 + _304 + 288] = 0
        return 64, 160, 33, mem[_237 + 192 len 33], 0, mem[_237 + 256 len ceil32(_304) + 32]
    mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg2
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, _229 - _119
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _248 = mem[64]
    mem[64] = mem[64] + 96
    mem[_248] = 33
    mem[_248 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
    _249 = mem[64]
    mem[mem[64] + 32] = _229 - _119
    mem[mem[64] + 64] = arg2
    _255 = mem[64]
    mem[64] = mem[64] + 96
    mem[_249 + 96] = 64
    mem[_249 + 160] = 33
    mem[_249 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_248 + 65 len 31]
    mem[_249 + 225] = 0
    mem[_249 + 128] = 160
    _305 = mem[_255]
    mem[_249 + 256] = mem[_255]
    mem[_249 + 288 len ceil32(_305)] = mem[_255 + 32 len ceil32(_305)]
    if ceil32(_305) > _305:
        mem[_249 + _305 + 288] = 0
    return 64, 160, 33, mem[_249 + 192 len 33], 0, mem[_249 + 256 len ceil32(_305) + 32]
}

function ClaimRewardThree(string[] arg1, string[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    if arg1.length + arg2.length < arg1.length:
        revert with 0, 'SafeMath: addition overflow'
    require arg1.length + arg2.length <= test266151307()
    mem[96] = arg1.length + arg2.length
    mem[64] = (32 * arg1.length + arg2.length) + 128
    if not arg1.length + arg2.length:
        if arg1.length <= 0:
            if arg2.length <= 0:
                mem[(32 * arg1.length + arg2.length) + 128] = 1
                mem[(32 * arg1.length + arg2.length) + 160] = this.address
                require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
                staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(32 * arg1.length + arg2.length) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 192] = 0x8805714b00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 196] = 0
                mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 228] = 160
                mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 356] = 1
                idx = 0
                s = (32 * arg1.length + arg2.length) + 160
                t = (32 * arg1.length + arg2.length) + ceil32(return_data.size) + 388
                while idx < 1:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 260] = 224
                mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 420] = arg1.length + arg2.length
                idx = 0
                s = 128
                t = (32 * arg1.length + arg2.length) + ceil32(return_data.size) + 452
                while idx < arg1.length + arg2.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 292] = 0
                mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 324] = 0
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                     gas gas_remaining wei
                    args 0, 160, 224, 0, 0, 1, mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 388], arg1.length + arg2.length, mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 452 len 32 * arg1.length + arg2.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
                staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg3:
                    mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 320] = 0
                    mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 352] = arg3
                    mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 384] = 64
                    mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 448] = 33
                    mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 480 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 257 len 31]
                    mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 513] = 0
                    mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 416] = 160
                    mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288]
                    mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288])] = mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288])]
                    if ceil32(mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288]) > mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288]:
                        mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288] + 576] = 0
                    return 64, 
                           160,
                           33,
                           0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 257 len 31] / 0.00390625,
                           0,
                           mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288],
                           mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288])]
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg3, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 320] = 0
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 352] = arg3
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 384] = 64
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 448] = 33
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 480 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 260 len 28]
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 513] = 0
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 416] = 160
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288]
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288])] = mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288])]
                if ceil32(mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288]) > mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288]:
                    mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288] + 576] = 0
                return 64, 
                       160,
                       33,
                       0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 260 len 28] / 0.00390625,
                       0,
                       mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288],
                       mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288])]
            idx = 0
            while idx < arg2.length:
                require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
                require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
                _459 = mem[64]
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 68] = 0
                require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
                staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string arg1) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _459 + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + -mem[64] + 64]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _490 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_490] == mem[_490 + 12 len 20]
                require mem[_490 + 32] == mem[_490 + 44 len 20]
                if not mem[_490 + 12 len 20]:
                    revert with 0, 'invalid token/qitoken address'
                if not mem[_490 + 44 len 20]:
                    revert with 0, 'invalid token/qitoken address'
                require arg1.length + idx < mem[96]
                mem[(32 * arg1.length + idx) + 128] = mem[_490 + 44 len 20]
                idx = idx + 1
                continue 
            _451 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            require 0 < mem[_451]
            mem[_451 + 32] = this.address
            mem[_451 + 68] = this.address
            require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_451 + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _451 + ceil32(return_data.size) + 64
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_451 + ceil32(return_data.size) + 64] = 0x8805714b00000000000000000000000000000000000000000000000000000000
            mem[_451 + ceil32(return_data.size) + 68] = 0
            mem[_451 + ceil32(return_data.size) + 100] = 160
            mem[_451 + ceil32(return_data.size) + 228] = mem[_451]
            idx = 0
            s = _451 + 32
            t = _451 + ceil32(return_data.size) + 260
            while idx < mem[_451]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_451 + ceil32(return_data.size) + 132] = (32 * mem[_451]) + 192
            mem[_451 + ceil32(return_data.size) + (32 * mem[_451]) + 260] = mem[96]
            idx = 0
            s = 128
            t = _451 + ceil32(return_data.size) + (32 * mem[_451]) + 292
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_451 + ceil32(return_data.size) + 164] = 1
            mem[_451 + ceil32(return_data.size) + 196] = 0
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                 gas gas_remaining wei
                args 0, 160, (32 * mem[_451]) + 192, 1, 0, mem[_451 + ceil32(return_data.size) + 228 len (32 * mem[_451]) + (32 * mem[96]) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg3:
                mem[_451 + (2 * ceil32(return_data.size)) + 192] = 0
                mem[_451 + (2 * ceil32(return_data.size)) + 224] = arg3
                mem[_451 + (2 * ceil32(return_data.size)) + 256] = 64
                mem[_451 + (2 * ceil32(return_data.size)) + 320] = 33
                mem[_451 + (2 * ceil32(return_data.size)) + 352 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_451 + (2 * ceil32(return_data.size)) + 129 len 31]
                mem[_451 + (2 * ceil32(return_data.size)) + 385] = 0
                mem[_451 + (2 * ceil32(return_data.size)) + 288] = 160
                mem[_451 + (2 * ceil32(return_data.size)) + 416] = mem[_451 + (2 * ceil32(return_data.size)) + 160]
                mem[_451 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_451 + (2 * ceil32(return_data.size)) + 160])] = mem[_451 + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_451 + (2 * ceil32(return_data.size)) + 160])]
                if ceil32(mem[_451 + (2 * ceil32(return_data.size)) + 160]) > mem[_451 + (2 * ceil32(return_data.size)) + 160]:
                    mem[_451 + (2 * ceil32(return_data.size)) + mem[_451 + (2 * ceil32(return_data.size)) + 160] + 448] = 0
                return 64, 
                       160,
                       33,
                       0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_451 + (2 * ceil32(return_data.size)) + 129 len 31] / 0.00390625,
                       0,
                       mem[_451 + (2 * ceil32(return_data.size)) + 160],
                       mem[_451 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_451 + (2 * ceil32(return_data.size)) + 160])]
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg3, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_451 + (2 * ceil32(return_data.size)) + 192] = 0
            mem[_451 + (2 * ceil32(return_data.size)) + 224] = arg3
            mem[_451 + (2 * ceil32(return_data.size)) + 256] = 64
            mem[_451 + (2 * ceil32(return_data.size)) + 320] = 33
            mem[_451 + (2 * ceil32(return_data.size)) + 352 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[_451 + (2 * ceil32(return_data.size)) + 132 len 28]
            mem[_451 + (2 * ceil32(return_data.size)) + 385] = 0
            mem[_451 + (2 * ceil32(return_data.size)) + 288] = 160
            mem[_451 + (2 * ceil32(return_data.size)) + 416] = mem[_451 + (2 * ceil32(return_data.size)) + 160]
            mem[_451 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_451 + (2 * ceil32(return_data.size)) + 160])] = mem[_451 + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_451 + (2 * ceil32(return_data.size)) + 160])]
            if ceil32(mem[_451 + (2 * ceil32(return_data.size)) + 160]) > mem[_451 + (2 * ceil32(return_data.size)) + 160]:
                mem[_451 + (2 * ceil32(return_data.size)) + mem[_451 + (2 * ceil32(return_data.size)) + 160] + 448] = 0
            return 64, 
                   160,
                   33,
                   0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[_451 + (2 * ceil32(return_data.size)) + 132 len 28] / 0.00390625,
                   0,
                   mem[_451 + (2 * ceil32(return_data.size)) + 160],
                   mem[_451 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_451 + (2 * ceil32(return_data.size)) + 160])]
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 36] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + 68] = 0
            require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
            staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string arg1) with:
                    gas gas_remaining wei
                   args Array(len=cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)], data=call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _492 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_492] == mem[_492 + 12 len 20]
            require mem[_492 + 32] == mem[_492 + 44 len 20]
            if not mem[_492 + 12 len 20]:
                revert with 0, 'invalid token/qitoken address'
            if not mem[_492 + 44 len 20]:
                revert with 0, 'invalid token/qitoken address'
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_492 + 44 len 20]
            idx = idx + 1
            continue 
        if arg2.length <= 0:
            _454 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            require 0 < mem[_454]
            mem[_454 + 32] = this.address
            mem[_454 + 68] = this.address
            require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_454 + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _454 + ceil32(return_data.size) + 64
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_454 + ceil32(return_data.size) + 64] = 0x8805714b00000000000000000000000000000000000000000000000000000000
            mem[_454 + ceil32(return_data.size) + 68] = 0
            mem[_454 + ceil32(return_data.size) + 100] = 160
            mem[_454 + ceil32(return_data.size) + 228] = mem[_454]
            idx = 0
            s = _454 + 32
            t = _454 + ceil32(return_data.size) + 260
            while idx < mem[_454]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_454 + ceil32(return_data.size) + 132] = (32 * mem[_454]) + 192
            mem[_454 + ceil32(return_data.size) + (32 * mem[_454]) + 260] = mem[96]
            idx = 0
            s = 128
            t = _454 + ceil32(return_data.size) + (32 * mem[_454]) + 292
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_454 + ceil32(return_data.size) + 164] = 0
            mem[_454 + ceil32(return_data.size) + 196] = 1
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                 gas gas_remaining wei
                args 0, 160, (32 * mem[_454]) + 192, 0, 1, mem[_454 + ceil32(return_data.size) + 228 len (32 * mem[_454]) + (32 * mem[96]) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg3:
                mem[_454 + (2 * ceil32(return_data.size)) + 192] = 0
                mem[_454 + (2 * ceil32(return_data.size)) + 224] = arg3
                mem[_454 + (2 * ceil32(return_data.size)) + 256] = 64
                mem[_454 + (2 * ceil32(return_data.size)) + 320] = 33
                mem[_454 + (2 * ceil32(return_data.size)) + 352 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_454 + (2 * ceil32(return_data.size)) + 129 len 31]
                mem[_454 + (2 * ceil32(return_data.size)) + 385] = 0
                mem[_454 + (2 * ceil32(return_data.size)) + 288] = 160
                mem[_454 + (2 * ceil32(return_data.size)) + 416] = mem[_454 + (2 * ceil32(return_data.size)) + 160]
                mem[_454 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_454 + (2 * ceil32(return_data.size)) + 160])] = mem[_454 + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_454 + (2 * ceil32(return_data.size)) + 160])]
                if ceil32(mem[_454 + (2 * ceil32(return_data.size)) + 160]) > mem[_454 + (2 * ceil32(return_data.size)) + 160]:
                    mem[_454 + (2 * ceil32(return_data.size)) + mem[_454 + (2 * ceil32(return_data.size)) + 160] + 448] = 0
                return 64, 
                       160,
                       33,
                       0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_454 + (2 * ceil32(return_data.size)) + 129 len 31] / 0.00390625,
                       0,
                       mem[_454 + (2 * ceil32(return_data.size)) + 160],
                       mem[_454 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_454 + (2 * ceil32(return_data.size)) + 160])]
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg3, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_454 + (2 * ceil32(return_data.size)) + 192] = 0
            mem[_454 + (2 * ceil32(return_data.size)) + 224] = arg3
            mem[_454 + (2 * ceil32(return_data.size)) + 256] = 64
            mem[_454 + (2 * ceil32(return_data.size)) + 320] = 33
            mem[_454 + (2 * ceil32(return_data.size)) + 352 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[_454 + (2 * ceil32(return_data.size)) + 132 len 28]
            mem[_454 + (2 * ceil32(return_data.size)) + 385] = 0
            mem[_454 + (2 * ceil32(return_data.size)) + 288] = 160
            mem[_454 + (2 * ceil32(return_data.size)) + 416] = mem[_454 + (2 * ceil32(return_data.size)) + 160]
            mem[_454 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_454 + (2 * ceil32(return_data.size)) + 160])] = mem[_454 + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_454 + (2 * ceil32(return_data.size)) + 160])]
            if ceil32(mem[_454 + (2 * ceil32(return_data.size)) + 160]) > mem[_454 + (2 * ceil32(return_data.size)) + 160]:
                mem[_454 + (2 * ceil32(return_data.size)) + mem[_454 + (2 * ceil32(return_data.size)) + 160] + 448] = 0
            return 64, 
                   160,
                   33,
                   0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[_454 + (2 * ceil32(return_data.size)) + 132 len 28] / 0.00390625,
                   0,
                   mem[_454 + (2 * ceil32(return_data.size)) + 160],
                   mem[_454 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_454 + (2 * ceil32(return_data.size)) + 160])]
        idx = 0
        while idx < arg2.length:
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 36] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 68] = 0
            require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
            staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string arg1) with:
                    gas gas_remaining wei
                   args Array(len=cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)], data=call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _908 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_908] == mem[_908 + 12 len 20]
            require mem[_908 + 32] == mem[_908 + 44 len 20]
            if not mem[_908 + 12 len 20]:
                revert with 0, 'invalid token/qitoken address'
            if not mem[_908 + 44 len 20]:
                revert with 0, 'invalid token/qitoken address'
            require arg1.length + idx < mem[96]
            mem[(32 * arg1.length + idx) + 128] = mem[_908 + 44 len 20]
            idx = idx + 1
            continue 
        _884 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        require 0 < mem[_884]
        mem[_884 + 32] = this.address
        mem[_884 + 68] = this.address
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[_884 + 64] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _884 + ceil32(return_data.size) + 64
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[_884 + ceil32(return_data.size) + 64] = 0x8805714b00000000000000000000000000000000000000000000000000000000
        mem[_884 + ceil32(return_data.size) + 68] = 0
        mem[_884 + ceil32(return_data.size) + 100] = 160
        mem[_884 + ceil32(return_data.size) + 228] = mem[_884]
        idx = 0
        s = _884 + 32
        t = _884 + ceil32(return_data.size) + 260
        while idx < mem[_884]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_884 + ceil32(return_data.size) + 132] = (32 * mem[_884]) + 192
        _1238 = mem[96]
        mem[_884 + ceil32(return_data.size) + (32 * mem[_884]) + 260] = mem[96]
        idx = 0
        s = 128
        t = _884 + ceil32(return_data.size) + (32 * mem[_884]) + 292
        while idx < _1238:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_884 + ceil32(return_data.size) + 164] = 1
        mem[_884 + ceil32(return_data.size) + 196] = 1
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _884 + ceil32(return_data.size) + (32 * mem[_884]) + (32 * _1238) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1600 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1602 = mem[_1600]
        require mem[_1600] == mem[_1600]
        if ext_call.return_data[0] > mem[_1600]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg3:
            _1608 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1608] = 33
            mem[_1608 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
            _1609 = mem[64]
            mem[mem[64] + 32] = _1602 - ext_call.return_data[0]
            mem[mem[64] + 64] = arg3
            _1616 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1609 + 96] = 64
            mem[_1609 + 160] = 33
            mem[_1609 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1608 + 65 len 31]
            mem[_1609 + 225] = 0
            mem[_1609 + 128] = 160
            _1724 = mem[_1616]
            mem[_1609 + 256] = mem[_1616]
            mem[_1609 + 288 len ceil32(_1724)] = mem[_1616 + 32 len ceil32(_1724)]
            if ceil32(_1724) > _1724:
                mem[_1609 + _1724 + 288] = 0
            return 64, 160, 33, mem[_1609 + 192 len 33], 0, mem[_1609 + 256 len ceil32(_1724) + 32]
        mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg3, _1602 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1620 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1620] = 33
        mem[_1620 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
        _1621 = mem[64]
        mem[mem[64] + 32] = _1602 - ext_call.return_data[0]
        mem[mem[64] + 64] = arg3
        _1628 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1621 + 96] = 64
        mem[_1621 + 160] = 33
        mem[_1621 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1620 + 65 len 31]
        mem[_1621 + 225] = 0
        mem[_1621 + 128] = 160
        _1725 = mem[_1628]
        mem[_1621 + 256] = mem[_1628]
        mem[_1621 + 288 len ceil32(_1725)] = mem[_1628 + 32 len ceil32(_1725)]
        if ceil32(_1725) > _1725:
            mem[_1621 + _1725 + 288] = 0
        return 64, 160, 33, mem[_1621 + 192 len 33], 0, mem[_1621 + 256 len ceil32(_1725) + 32]
    mem[128 len 32 * arg1.length + arg2.length] = call.data[calldata.size len 32 * arg1.length + arg2.length]
    if arg1.length <= 0:
        if arg2.length <= 0:
            mem[(32 * arg1.length + arg2.length) + 128] = 1
            mem[(32 * arg1.length + arg2.length) + 160] = this.address
            require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * arg1.length + arg2.length) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 192] = 0x8805714b00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 196] = 0
            mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 228] = 160
            mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 356] = 1
            idx = 0
            s = (32 * arg1.length + arg2.length) + 160
            t = (32 * arg1.length + arg2.length) + ceil32(return_data.size) + 388
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 260] = 224
            mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 420] = arg1.length + arg2.length
            idx = 0
            s = 128
            t = (32 * arg1.length + arg2.length) + ceil32(return_data.size) + 452
            while idx < arg1.length + arg2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 292] = 0
            mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 324] = 0
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                 gas gas_remaining wei
                args 0, 160, 224, 0, 0, 1, mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 388], arg1.length + arg2.length, mem[(32 * arg1.length + arg2.length) + ceil32(return_data.size) + 452 len 32 * arg1.length + arg2.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg3:
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 320] = 0
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 352] = arg3
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 384] = 64
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 448] = 33
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 480 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 257 len 31]
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 513] = 0
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 416] = 160
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288]
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288])] = mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288])]
                if ceil32(mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288]) > mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288]:
                    mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288] + 576] = 0
                return 64, 
                       160,
                       33,
                       0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 257 len 31] / 0.00390625,
                       0,
                       mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288],
                       mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288])]
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg3, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 320] = 0
            mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 352] = arg3
            mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 384] = 64
            mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 448] = 33
            mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 480 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 260 len 28]
            mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 513] = 0
            mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 416] = 160
            mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288]
            mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288])] = mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288])]
            if ceil32(mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288]) > mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288]:
                mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288] + 576] = 0
            return 64, 
                   160,
                   33,
                   0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 260 len 28] / 0.00390625,
                   0,
                   mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288],
                   mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(mem[(32 * arg1.length + arg2.length) + (2 * ceil32(return_data.size)) + 288])]
        idx = 0
        while idx < arg2.length:
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            _463 = mem[64]
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 68] = 0
            require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
            staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string arg1) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _463 + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + -mem[64] + 64]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _493 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_493] == mem[_493 + 12 len 20]
            require mem[_493 + 32] == mem[_493 + 44 len 20]
            if not mem[_493 + 12 len 20]:
                revert with 0, 'invalid token/qitoken address'
            if not mem[_493 + 44 len 20]:
                revert with 0, 'invalid token/qitoken address'
            require arg1.length + idx < mem[96]
            mem[(32 * arg1.length + idx) + 128] = mem[_493 + 44 len 20]
            idx = idx + 1
            continue 
        _453 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        require 0 < mem[_453]
        mem[_453 + 32] = this.address
        mem[_453 + 68] = this.address
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[_453 + 64] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _453 + ceil32(return_data.size) + 64
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[_453 + ceil32(return_data.size) + 64] = 0x8805714b00000000000000000000000000000000000000000000000000000000
        mem[_453 + ceil32(return_data.size) + 68] = 0
        mem[_453 + ceil32(return_data.size) + 100] = 160
        mem[_453 + ceil32(return_data.size) + 228] = mem[_453]
        idx = 0
        s = _453 + 32
        t = _453 + ceil32(return_data.size) + 260
        while idx < mem[_453]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_453 + ceil32(return_data.size) + 132] = (32 * mem[_453]) + 192
        mem[_453 + ceil32(return_data.size) + (32 * mem[_453]) + 260] = mem[96]
        idx = 0
        s = 128
        t = _453 + ceil32(return_data.size) + (32 * mem[_453]) + 292
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_453 + ceil32(return_data.size) + 164] = 1
        mem[_453 + ceil32(return_data.size) + 196] = 0
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
             gas gas_remaining wei
            args 0, 160, (32 * mem[_453]) + 192, 1, 0, mem[_453 + ceil32(return_data.size) + 228 len (32 * mem[_453]) + (32 * mem[96]) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg3:
            mem[_453 + (2 * ceil32(return_data.size)) + 192] = 0
            mem[_453 + (2 * ceil32(return_data.size)) + 224] = arg3
            mem[_453 + (2 * ceil32(return_data.size)) + 256] = 64
            mem[_453 + (2 * ceil32(return_data.size)) + 320] = 33
            mem[_453 + (2 * ceil32(return_data.size)) + 352 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_453 + (2 * ceil32(return_data.size)) + 129 len 31]
            mem[_453 + (2 * ceil32(return_data.size)) + 385] = 0
            mem[_453 + (2 * ceil32(return_data.size)) + 288] = 160
            mem[_453 + (2 * ceil32(return_data.size)) + 416] = mem[_453 + (2 * ceil32(return_data.size)) + 160]
            mem[_453 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_453 + (2 * ceil32(return_data.size)) + 160])] = mem[_453 + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_453 + (2 * ceil32(return_data.size)) + 160])]
            if ceil32(mem[_453 + (2 * ceil32(return_data.size)) + 160]) > mem[_453 + (2 * ceil32(return_data.size)) + 160]:
                mem[_453 + (2 * ceil32(return_data.size)) + mem[_453 + (2 * ceil32(return_data.size)) + 160] + 448] = 0
            return 64, 
                   160,
                   33,
                   0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_453 + (2 * ceil32(return_data.size)) + 129 len 31] / 0.00390625,
                   0,
                   mem[_453 + (2 * ceil32(return_data.size)) + 160],
                   mem[_453 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_453 + (2 * ceil32(return_data.size)) + 160])]
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_453 + (2 * ceil32(return_data.size)) + 192] = 0
        mem[_453 + (2 * ceil32(return_data.size)) + 224] = arg3
        mem[_453 + (2 * ceil32(return_data.size)) + 256] = 64
        mem[_453 + (2 * ceil32(return_data.size)) + 320] = 33
        mem[_453 + (2 * ceil32(return_data.size)) + 352 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[_453 + (2 * ceil32(return_data.size)) + 132 len 28]
        mem[_453 + (2 * ceil32(return_data.size)) + 385] = 0
        mem[_453 + (2 * ceil32(return_data.size)) + 288] = 160
        mem[_453 + (2 * ceil32(return_data.size)) + 416] = mem[_453 + (2 * ceil32(return_data.size)) + 160]
        mem[_453 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_453 + (2 * ceil32(return_data.size)) + 160])] = mem[_453 + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_453 + (2 * ceil32(return_data.size)) + 160])]
        if ceil32(mem[_453 + (2 * ceil32(return_data.size)) + 160]) > mem[_453 + (2 * ceil32(return_data.size)) + 160]:
            mem[_453 + (2 * ceil32(return_data.size)) + mem[_453 + (2 * ceil32(return_data.size)) + 160] + 448] = 0
        return 64, 
               160,
               33,
               0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[_453 + (2 * ceil32(return_data.size)) + 132 len 28] / 0.00390625,
               0,
               mem[_453 + (2 * ceil32(return_data.size)) + 160],
               mem[_453 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_453 + (2 * ceil32(return_data.size)) + 160])]
    idx = 0
    while idx < arg1.length:
        require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
        require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 36] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
        mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + 68] = 0
        require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
        staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string arg1) with:
                gas gas_remaining wei
               args Array(len=cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)], data=call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]])
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _495 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_495] == mem[_495 + 12 len 20]
        require mem[_495 + 32] == mem[_495 + 44 len 20]
        if not mem[_495 + 12 len 20]:
            revert with 0, 'invalid token/qitoken address'
        if not mem[_495 + 44 len 20]:
            revert with 0, 'invalid token/qitoken address'
        require idx < mem[96]
        mem[(32 * idx) + 128] = mem[_495 + 44 len 20]
        idx = idx + 1
        continue 
    if arg2.length <= 0:
        _455 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        require 0 < mem[_455]
        mem[_455 + 32] = this.address
        mem[_455 + 68] = this.address
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[_455 + 64] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _455 + ceil32(return_data.size) + 64
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[_455 + ceil32(return_data.size) + 64] = 0x8805714b00000000000000000000000000000000000000000000000000000000
        mem[_455 + ceil32(return_data.size) + 68] = 0
        mem[_455 + ceil32(return_data.size) + 100] = 160
        mem[_455 + ceil32(return_data.size) + 228] = mem[_455]
        idx = 0
        s = _455 + 32
        t = _455 + ceil32(return_data.size) + 260
        while idx < mem[_455]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_455 + ceil32(return_data.size) + 132] = (32 * mem[_455]) + 192
        _886 = mem[96]
        mem[_455 + ceil32(return_data.size) + (32 * mem[_455]) + 260] = mem[96]
        idx = 0
        s = 128
        t = _455 + ceil32(return_data.size) + (32 * mem[_455]) + 292
        while idx < _886:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_455 + ceil32(return_data.size) + 164] = 0
        mem[_455 + ceil32(return_data.size) + 196] = 1
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _455 + ceil32(return_data.size) + (32 * mem[_455]) + (32 * _886) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1292 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1297 = mem[_1292]
        require mem[_1292] == mem[_1292]
        if ext_call.return_data[0] > mem[_1292]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg3:
            _1318 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1318] = 33
            mem[_1318 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
            _1319 = mem[64]
            mem[mem[64] + 32] = _1297 - ext_call.return_data[0]
            mem[mem[64] + 64] = arg3
            _1337 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1319 + 96] = 64
            mem[_1319 + 160] = 33
            mem[_1319 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1318 + 65 len 31]
            mem[_1319 + 225] = 0
            mem[_1319 + 128] = 160
            _1544 = mem[_1337]
            mem[_1319 + 256] = mem[_1337]
            mem[_1319 + 288 len ceil32(_1544)] = mem[_1337 + 32 len ceil32(_1544)]
            if ceil32(_1544) > _1544:
                mem[_1319 + _1544 + 288] = 0
            return 64, 160, 33, mem[_1319 + 192 len 33], 0, mem[_1319 + 256 len ceil32(_1544) + 32]
        mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg3, _1297 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1352 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1352] = 33
        mem[_1352 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
        _1353 = mem[64]
        mem[mem[64] + 32] = _1297 - ext_call.return_data[0]
        mem[mem[64] + 64] = arg3
        _1373 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1353 + 96] = 64
        mem[_1353 + 160] = 33
        mem[_1353 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1352 + 65 len 31]
        mem[_1353 + 225] = 0
        mem[_1353 + 128] = 160
        _1545 = mem[_1373]
        mem[_1353 + 256] = mem[_1373]
        mem[_1353 + 288 len ceil32(_1545)] = mem[_1373 + 32 len ceil32(_1545)]
        if ceil32(_1545) > _1545:
            mem[_1353 + _1545 + 288] = 0
        return 64, 160, 33, mem[_1353 + 192 len 33], 0, mem[_1353 + 256 len ceil32(_1545) + 32]
    idx = 0
    while idx < arg2.length:
        require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        _893 = mem[64]
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        mem[mem[64] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 68] = 0
        require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
        staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string arg1) with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _893 + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + -mem[64] + 64]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _909 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_909] == mem[_909 + 12 len 20]
        require mem[_909 + 32] == mem[_909 + 44 len 20]
        if not mem[_909 + 12 len 20]:
            revert with 0, 'invalid token/qitoken address'
        if not mem[_909 + 44 len 20]:
            revert with 0, 'invalid token/qitoken address'
        require arg1.length + idx < mem[96]
        mem[(32 * arg1.length + idx) + 128] = mem[_909 + 44 len 20]
        idx = idx + 1
        continue 
    _887 = mem[64]
    mem[mem[64]] = 1
    mem[64] = mem[64] + 64
    require 0 < mem[_887]
    mem[_887 + 32] = this.address
    mem[_887 + 68] = this.address
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[_887 + 64] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _887 + ceil32(return_data.size) + 64
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[_887 + ceil32(return_data.size) + 64] = 0x8805714b00000000000000000000000000000000000000000000000000000000
    mem[_887 + ceil32(return_data.size) + 68] = 0
    mem[_887 + ceil32(return_data.size) + 100] = 160
    mem[_887 + ceil32(return_data.size) + 228] = mem[_887]
    idx = 0
    s = _887 + 32
    t = _887 + ceil32(return_data.size) + 260
    while idx < mem[_887]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_887 + ceil32(return_data.size) + 132] = (32 * mem[_887]) + 192
    _1239 = mem[96]
    mem[_887 + ceil32(return_data.size) + (32 * mem[_887]) + 260] = mem[96]
    idx = 0
    s = 128
    t = _887 + ceil32(return_data.size) + (32 * mem[_887]) + 292
    while idx < _1239:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_887 + ceil32(return_data.size) + 164] = 1
    mem[_887 + ceil32(return_data.size) + 196] = 1
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _887 + ceil32(return_data.size) + (32 * mem[_887]) + (32 * _1239) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1601 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1603 = mem[_1601]
    require mem[_1601] == mem[_1601]
    if ext_call.return_data[0] > mem[_1601]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg3:
        _1610 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1610] = 33
        mem[_1610 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
        _1611 = mem[64]
        mem[mem[64] + 32] = _1603 - ext_call.return_data[0]
        mem[mem[64] + 64] = arg3
        _1617 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1611 + 96] = 64
        mem[_1611 + 160] = 33
        mem[_1611 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1610 + 65 len 31]
        mem[_1611 + 225] = 0
        mem[_1611 + 128] = 160
        _1726 = mem[_1617]
        mem[_1611 + 256] = mem[_1617]
        mem[_1611 + 288 len ceil32(_1726)] = mem[_1617 + 32 len ceil32(_1726)]
        if ceil32(_1726) > _1726:
            mem[_1611 + _1726 + 288] = 0
        return 64, 160, 33, mem[_1611 + 192 len 33], 0, mem[_1611 + 256 len ceil32(_1726) + 32]
    mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg3, _1603 - ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1622 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1622] = 33
    mem[_1622 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
    _1623 = mem[64]
    mem[mem[64] + 32] = _1603 - ext_call.return_data[0]
    mem[mem[64] + 64] = arg3
    _1629 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1623 + 96] = 64
    mem[_1623 + 160] = 33
    mem[_1623 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1622 + 65 len 31]
    mem[_1623 + 225] = 0
    mem[_1623 + 128] = 160
    _1727 = mem[_1629]
    mem[_1623 + 256] = mem[_1629]
    mem[_1623 + 288 len ceil32(_1727)] = mem[_1629 + 32 len ceil32(_1727)]
    if ceil32(_1727) > _1727:
        mem[_1623 + _1727 + 288] = 0
    return 64, 160, 33, mem[_1623 + 192 len 33], 0, mem[_1623 + 256 len ceil32(_1727) + 32]
}



}
