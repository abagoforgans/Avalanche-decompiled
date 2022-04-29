contract main {




// =====================  Runtime code  =====================


const name = 'Benqi-v1', 0


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
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address arg2) with:
         gas gas_remaining wei
        args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    require arg1.length <= test266151307()
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 36] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64] + 68] = 0
            require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
            staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string arg1) with:
                    gas gas_remaining wei
                   args Array(len=cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)], data=call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _126 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_126] == mem[_126 + 12 len 20]
            require mem[_126 + 32] == mem[_126 + 44 len 20]
            if not mem[_126 + 12 len 20]:
                revert with 0, 'invalid token/qitoken address'
            if not mem[_126 + 44 len 20]:
                revert with 0, 'invalid token/qitoken address'
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_126 + 44 len 20]
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _114 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _116 = mem[_114]
        mem[mem[64]] = 0x744532ae00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = 96
        mem[mem[64] + 100] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 132
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address arg2, address[] arg3) with:
             gas gas_remaining wei
            args 0, address(this.address), 96, mem[mem[64] + 100 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _226 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _228 = mem[_226]
        if _116 > mem[_226]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2:
            _236 = mem[64]
            mem[64] = mem[64] + 96
            mem[_236] = 33
            mem[_236 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
            _237 = mem[64]
            mem[mem[64] + 32] = _228 - _116
            mem[mem[64] + 64] = arg2
            _242 = mem[64]
            mem[64] = mem[64] + 96
            mem[_237 + 96] = 64
            mem[_237 + 160] = 33
            mem[_237 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_236 + 65 len 31]
            mem[_237 + 225] = 0
            mem[_237 + 128] = 160
            _302 = mem[_242]
            mem[_237 + 256] = mem[_242]
            mem[_237 + 288 len ceil32(_302)] = mem[_242 + 32 len ceil32(_302)]
            if ceil32(_302) > _302:
                mem[_237 + _302 + 288] = 0
            return 64, 160, 33, mem[_237 + 192 len 33], 0, mem[_237 + 256 len ceil32(_302) + 32]
        mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg2, _228 - _116
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _247 = mem[64]
        mem[64] = mem[64] + 96
        mem[_247] = 33
        mem[_247 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
        _248 = mem[64]
        mem[mem[64] + 32] = _228 - _116
        mem[mem[64] + 64] = arg2
        _253 = mem[64]
        mem[64] = mem[64] + 96
        mem[_248 + 96] = 64
        mem[_248 + 160] = 33
        mem[_248 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_247 + 65 len 31]
        mem[_248 + 225] = 0
        mem[_248 + 128] = 160
        _303 = mem[_253]
        mem[_248 + 256] = mem[_253]
        mem[_248 + 288 len ceil32(_303)] = mem[_253 + 32 len ceil32(_303)]
        if ceil32(_303) > _303:
            mem[_248 + _303 + 288] = 0
        return 64, 160, 33, mem[_248 + 192 len 33], 0, mem[_248 + 256 len ceil32(_303) + 32]
    mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
        require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 36] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
        mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64] + 68] = 0
        require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
        staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string arg1) with:
                gas gas_remaining wei
               args Array(len=cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)], data=call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]])
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _127 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_127] == mem[_127 + 12 len 20]
        require mem[_127 + 32] == mem[_127 + 44 len 20]
        if not mem[_127 + 12 len 20]:
            revert with 0, 'invalid token/qitoken address'
        if not mem[_127 + 44 len 20]:
            revert with 0, 'invalid token/qitoken address'
        require idx < mem[96]
        mem[(32 * idx) + 128] = mem[_127 + 44 len 20]
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _115 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _118 = mem[_115]
    mem[mem[64]] = 0x744532ae00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = 96
    mem[mem[64] + 100] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 132
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address arg2, address[] arg3) with:
         gas gas_remaining wei
        args 0, address(this.address), 96, mem[mem[64] + 100 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _227 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _229 = mem[_227]
    if _118 > mem[_227]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2:
        _238 = mem[64]
        mem[64] = mem[64] + 96
        mem[_238] = 33
        mem[_238 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
        _239 = mem[64]
        mem[mem[64] + 32] = _229 - _118
        mem[mem[64] + 64] = arg2
        _243 = mem[64]
        mem[64] = mem[64] + 96
        mem[_239 + 96] = 64
        mem[_239 + 160] = 33
        mem[_239 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_238 + 65 len 31]
        mem[_239 + 225] = 0
        mem[_239 + 128] = 160
        _304 = mem[_243]
        mem[_239 + 256] = mem[_243]
        mem[_239 + 288 len ceil32(_304)] = mem[_243 + 32 len ceil32(_304)]
        if ceil32(_304) > _304:
            mem[_239 + _304 + 288] = 0
        return 64, 160, 33, mem[_239 + 192 len 33], 0, mem[_239 + 256 len ceil32(_304) + 32]
    mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg2
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, _229 - _118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _250 = mem[64]
    mem[64] = mem[64] + 96
    mem[_250] = 33
    mem[_250 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
    _251 = mem[64]
    mem[mem[64] + 32] = _229 - _118
    mem[mem[64] + 64] = arg2
    _255 = mem[64]
    mem[64] = mem[64] + 96
    mem[_251 + 96] = 64
    mem[_251 + 160] = 33
    mem[_251 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_250 + 65 len 31]
    mem[_251 + 225] = 0
    mem[_251 + 128] = 160
    _305 = mem[_255]
    mem[_251 + 256] = mem[_255]
    mem[_251 + 288 len ceil32(_305)] = mem[_255 + 32 len ceil32(_305)]
    if ceil32(_305) > _305:
        mem[_251 + _305 + 288] = 0
    return 64, 160, 33, mem[_251 + 192 len 33], 0, mem[_251 + 256 len ceil32(_305) + 32]
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
    if arg2.length + arg1.length < arg1.length:
        revert with 0, 'SafeMath: addition overflow'
    require arg2.length + arg1.length <= test266151307()
    mem[96] = arg2.length + arg1.length
    mem[64] = (32 * arg2.length + arg1.length) + 128
    if not arg2.length + arg1.length:
        if not arg1.length:
            if not arg2.length:
                mem[(32 * arg2.length + arg1.length) + 128] = 1
                mem[(32 * arg2.length + arg1.length) + 160] = this.address
                require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
                staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(32 * arg2.length + arg1.length) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 192] = 0x8805714b00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 196] = 0
                mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 228] = 160
                mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 356] = 1
                idx = 0
                s = (32 * arg2.length + arg1.length) + 160
                t = (32 * arg2.length + arg1.length) + ceil32(return_data.size) + 388
                while idx < 1:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 260] = 224
                mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 420] = arg2.length + arg1.length
                idx = 0
                s = 128
                t = (32 * arg2.length + arg1.length) + ceil32(return_data.size) + 452
                while idx < arg2.length + arg1.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 292] = 0
                mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 324] = 0
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                     gas gas_remaining wei
                    args 0, 160, 224, 0, 0, 1, mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 388], arg2.length + arg1.length, mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 452 len 32 * arg2.length + arg1.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
                staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg3:
                    mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 320] = 0
                    mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 352] = arg3
                    mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 384] = 64
                    mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 448] = 33
                    mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 480 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 257 len 31]
                    mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 513] = 0
                    mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 416] = 160
                    mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288]
                    mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288])] = mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288])]
                    if ceil32(mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288]) > mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288]:
                        mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288] + 576] = 0
                    return 64, 
                           160,
                           33,
                           0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 257 len 31] / 0.00390625,
                           0,
                           mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288],
                           mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288])]
                require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg3, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 320] = 0
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 352] = arg3
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 384] = 64
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 448] = 33
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 480 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 260 len 28]
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 513] = 0
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 416] = 160
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288]
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288])] = mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288])]
                if ceil32(mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288]) > mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288]:
                    mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288] + 576] = 0
                return 64, 
                       160,
                       33,
                       0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 260 len 28] / 0.00390625,
                       0,
                       mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288],
                       mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288])]
            idx = 0
            while idx < arg2.length:
                require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
                require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 36] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64] + 68] = 0
                require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
                staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string arg1) with:
                        gas gas_remaining wei
                       args Array(len=cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)], data=call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]])
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _498 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_498] == mem[_498 + 12 len 20]
                require mem[_498 + 32] == mem[_498 + 44 len 20]
                if not mem[_498 + 12 len 20]:
                    revert with 0, 'invalid token/qitoken address'
                if not mem[_498 + 44 len 20]:
                    revert with 0, 'invalid token/qitoken address'
                require arg1.length + idx < mem[96]
                mem[(32 * arg1.length + idx) + 128] = mem[_498 + 44 len 20]
                idx = idx + 1
                continue 
            _451 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            require 0 < mem[_451]
            mem[_451 + 32] = this.address
            mem[_451 + 68] = this.address
            require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[_451 + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _451 + ceil32(return_data.size) + 64
            require return_data.size >= 32
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
            _883 = mem[96]
            mem[_451 + ceil32(return_data.size) + (32 * mem[_451]) + 260] = mem[96]
            idx = 0
            s = 128
            t = _451 + ceil32(return_data.size) + (32 * mem[_451]) + 292
            while idx < _883:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_451 + ceil32(return_data.size) + 164] = 1
            mem[_451 + ceil32(return_data.size) + 196] = 0
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _451 + ceil32(return_data.size) + (32 * mem[_451]) + (32 * _883) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1274 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1292 = mem[_1274]
            if ext_call.return_data[0] > mem[_1274]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg3:
                _1318 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1318] = 33
                mem[_1318 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
                _1319 = mem[64]
                mem[mem[64] + 32] = _1292 - ext_call.return_data[0]
                mem[mem[64] + 64] = arg3
                _1332 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1319 + 96] = 64
                mem[_1319 + 160] = 33
                mem[_1319 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1318 + 65 len 31]
                mem[_1319 + 225] = 0
                mem[_1319 + 128] = 160
                _1536 = mem[_1332]
                mem[_1319 + 256] = mem[_1332]
                mem[_1319 + 288 len ceil32(_1536)] = mem[_1332 + 32 len ceil32(_1536)]
                if ceil32(_1536) > _1536:
                    mem[_1319 + _1536 + 288] = 0
                return 64, 160, 33, mem[_1319 + 192 len 33], 0, mem[_1319 + 256 len ceil32(_1536) + 32]
            mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg3, _1292 - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1347 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1347] = 33
            mem[_1347 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
            _1348 = mem[64]
            mem[mem[64] + 32] = _1292 - ext_call.return_data[0]
            mem[mem[64] + 64] = arg3
            _1363 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1348 + 96] = 64
            mem[_1348 + 160] = 33
            mem[_1348 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1347 + 65 len 31]
            mem[_1348 + 225] = 0
            mem[_1348 + 128] = 160
            _1537 = mem[_1363]
            mem[_1348 + 256] = mem[_1363]
            mem[_1348 + 288 len ceil32(_1537)] = mem[_1363 + 32 len ceil32(_1537)]
            if ceil32(_1537) > _1537:
                mem[_1348 + _1537 + 288] = 0
            return 64, 160, 33, mem[_1348 + 192 len 33], 0, mem[_1348 + 256 len ceil32(_1537) + 32]
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 36] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64] + 68] = 0
            require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
            staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string arg1) with:
                    gas gas_remaining wei
                   args Array(len=cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)], data=call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _501 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_501] == mem[_501 + 12 len 20]
            require mem[_501 + 32] == mem[_501 + 44 len 20]
            if not mem[_501 + 12 len 20]:
                revert with 0, 'invalid token/qitoken address'
            if not mem[_501 + 44 len 20]:
                revert with 0, 'invalid token/qitoken address'
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_501 + 44 len 20]
            idx = idx + 1
            continue 
        if not arg2.length:
            _457 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            require 0 < mem[_457]
            mem[_457 + 32] = this.address
            mem[_457 + 68] = this.address
            require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[_457 + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _457 + ceil32(return_data.size) + 64
            require return_data.size >= 32
            mem[_457 + ceil32(return_data.size) + 64] = 0x8805714b00000000000000000000000000000000000000000000000000000000
            mem[_457 + ceil32(return_data.size) + 68] = 0
            mem[_457 + ceil32(return_data.size) + 100] = 160
            mem[_457 + ceil32(return_data.size) + 228] = mem[_457]
            idx = 0
            s = _457 + 32
            t = _457 + ceil32(return_data.size) + 260
            while idx < mem[_457]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_457 + ceil32(return_data.size) + 132] = (32 * mem[_457]) + 192
            mem[_457 + ceil32(return_data.size) + (32 * mem[_457]) + 260] = mem[96]
            idx = 0
            s = 128
            t = _457 + ceil32(return_data.size) + (32 * mem[_457]) + 292
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_457 + ceil32(return_data.size) + 164] = 0
            mem[_457 + ceil32(return_data.size) + 196] = 1
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                 gas gas_remaining wei
                args 0, 160, (32 * mem[_457]) + 192, 0, 1, mem[_457 + ceil32(return_data.size) + 228 len (32 * mem[_457]) + (32 * mem[96]) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg3:
                mem[_457 + (2 * ceil32(return_data.size)) + 192] = 0
                mem[_457 + (2 * ceil32(return_data.size)) + 224] = arg3
                mem[_457 + (2 * ceil32(return_data.size)) + 256] = 64
                mem[_457 + (2 * ceil32(return_data.size)) + 320] = 33
                mem[_457 + (2 * ceil32(return_data.size)) + 352 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_457 + (2 * ceil32(return_data.size)) + 129 len 31]
                mem[_457 + (2 * ceil32(return_data.size)) + 385] = 0
                mem[_457 + (2 * ceil32(return_data.size)) + 288] = 160
                mem[_457 + (2 * ceil32(return_data.size)) + 416] = mem[_457 + (2 * ceil32(return_data.size)) + 160]
                mem[_457 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_457 + (2 * ceil32(return_data.size)) + 160])] = mem[_457 + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_457 + (2 * ceil32(return_data.size)) + 160])]
                if ceil32(mem[_457 + (2 * ceil32(return_data.size)) + 160]) > mem[_457 + (2 * ceil32(return_data.size)) + 160]:
                    mem[_457 + (2 * ceil32(return_data.size)) + mem[_457 + (2 * ceil32(return_data.size)) + 160] + 448] = 0
                return 64, 
                       160,
                       33,
                       0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_457 + (2 * ceil32(return_data.size)) + 129 len 31] / 0.00390625,
                       0,
                       mem[_457 + (2 * ceil32(return_data.size)) + 160],
                       mem[_457 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_457 + (2 * ceil32(return_data.size)) + 160])]
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg3, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_457 + (2 * ceil32(return_data.size)) + 192] = 0
            mem[_457 + (2 * ceil32(return_data.size)) + 224] = arg3
            mem[_457 + (2 * ceil32(return_data.size)) + 256] = 64
            mem[_457 + (2 * ceil32(return_data.size)) + 320] = 33
            mem[_457 + (2 * ceil32(return_data.size)) + 352 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[_457 + (2 * ceil32(return_data.size)) + 132 len 28]
            mem[_457 + (2 * ceil32(return_data.size)) + 385] = 0
            mem[_457 + (2 * ceil32(return_data.size)) + 288] = 160
            mem[_457 + (2 * ceil32(return_data.size)) + 416] = mem[_457 + (2 * ceil32(return_data.size)) + 160]
            mem[_457 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_457 + (2 * ceil32(return_data.size)) + 160])] = mem[_457 + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_457 + (2 * ceil32(return_data.size)) + 160])]
            if ceil32(mem[_457 + (2 * ceil32(return_data.size)) + 160]) > mem[_457 + (2 * ceil32(return_data.size)) + 160]:
                mem[_457 + (2 * ceil32(return_data.size)) + mem[_457 + (2 * ceil32(return_data.size)) + 160] + 448] = 0
            return 64, 
                   160,
                   33,
                   0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[_457 + (2 * ceil32(return_data.size)) + 132 len 28] / 0.00390625,
                   0,
                   mem[_457 + (2 * ceil32(return_data.size)) + 160],
                   mem[_457 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_457 + (2 * ceil32(return_data.size)) + 160])]
        idx = 0
        while idx < arg2.length:
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 36] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64] + 68] = 0
            require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
            staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string arg1) with:
                    gas gas_remaining wei
                   args Array(len=cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)], data=call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _926 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_926] == mem[_926 + 12 len 20]
            require mem[_926 + 32] == mem[_926 + 44 len 20]
            if not mem[_926 + 12 len 20]:
                revert with 0, 'invalid token/qitoken address'
            if not mem[_926 + 44 len 20]:
                revert with 0, 'invalid token/qitoken address'
            require arg1.length + idx < mem[96]
            mem[(32 * arg1.length + idx) + 128] = mem[_926 + 44 len 20]
            idx = idx + 1
            continue 
        _885 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        require 0 < mem[_885]
        mem[_885 + 32] = this.address
        mem[_885 + 68] = this.address
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[_885 + 64] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _885 + ceil32(return_data.size) + 64
        require return_data.size >= 32
        mem[_885 + ceil32(return_data.size) + 64] = 0x8805714b00000000000000000000000000000000000000000000000000000000
        mem[_885 + ceil32(return_data.size) + 68] = 0
        mem[_885 + ceil32(return_data.size) + 100] = 160
        mem[_885 + ceil32(return_data.size) + 228] = mem[_885]
        idx = 0
        s = _885 + 32
        t = _885 + ceil32(return_data.size) + 260
        while idx < mem[_885]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_885 + ceil32(return_data.size) + 132] = (32 * mem[_885]) + 192
        _1240 = mem[96]
        mem[_885 + ceil32(return_data.size) + (32 * mem[_885]) + 260] = mem[96]
        idx = 0
        s = 128
        t = _885 + ceil32(return_data.size) + (32 * mem[_885]) + 292
        while idx < _1240:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_885 + ceil32(return_data.size) + 164] = 1
        mem[_885 + ceil32(return_data.size) + 196] = 1
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _885 + ceil32(return_data.size) + (32 * mem[_885]) + (32 * _1240) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1572 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1598 = mem[_1572]
        if ext_call.return_data[0] > mem[_1572]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg3:
            _1610 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1610] = 33
            mem[_1610 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
            _1611 = mem[64]
            mem[mem[64] + 32] = _1598 - ext_call.return_data[0]
            mem[mem[64] + 64] = arg3
            _1616 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1611 + 96] = 64
            mem[_1611 + 160] = 33
            mem[_1611 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1610 + 65 len 31]
            mem[_1611 + 225] = 0
            mem[_1611 + 128] = 160
            _1716 = mem[_1616]
            mem[_1611 + 256] = mem[_1616]
            mem[_1611 + 288 len ceil32(_1716)] = mem[_1616 + 32 len ceil32(_1716)]
            if ceil32(_1716) > _1716:
                mem[_1611 + _1716 + 288] = 0
            return 64, 160, 33, mem[_1611 + 192 len 33], 0, mem[_1611 + 256 len ceil32(_1716) + 32]
        mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg3, _1598 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1621 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1621] = 33
        mem[_1621 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
        _1622 = mem[64]
        mem[mem[64] + 32] = _1598 - ext_call.return_data[0]
        mem[mem[64] + 64] = arg3
        _1627 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1622 + 96] = 64
        mem[_1622 + 160] = 33
        mem[_1622 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1621 + 65 len 31]
        mem[_1622 + 225] = 0
        mem[_1622 + 128] = 160
        _1717 = mem[_1627]
        mem[_1622 + 256] = mem[_1627]
        mem[_1622 + 288 len ceil32(_1717)] = mem[_1627 + 32 len ceil32(_1717)]
        if ceil32(_1717) > _1717:
            mem[_1622 + _1717 + 288] = 0
        return 64, 160, 33, mem[_1622 + 192 len 33], 0, mem[_1622 + 256 len ceil32(_1717) + 32]
    mem[128 len 32 * arg2.length + arg1.length] = call.data[calldata.size len 32 * arg2.length + arg1.length]
    if not arg1.length:
        if not arg2.length:
            mem[(32 * arg2.length + arg1.length) + 128] = 1
            mem[(32 * arg2.length + arg1.length) + 160] = this.address
            require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * arg2.length + arg1.length) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 192] = 0x8805714b00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 196] = 0
            mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 228] = 160
            mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 356] = 1
            idx = 0
            s = (32 * arg2.length + arg1.length) + 160
            t = (32 * arg2.length + arg1.length) + ceil32(return_data.size) + 388
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 260] = 224
            mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 420] = arg2.length + arg1.length
            idx = 0
            s = 128
            t = (32 * arg2.length + arg1.length) + ceil32(return_data.size) + 452
            while idx < arg2.length + arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 292] = 0
            mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 324] = 0
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                 gas gas_remaining wei
                args 0, 160, 224, 0, 0, 1, mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 388], arg2.length + arg1.length, mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 452 len 32 * arg2.length + arg1.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg3:
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 320] = 0
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 352] = arg3
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 384] = 64
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 448] = 33
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 480 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 257 len 31]
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 513] = 0
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 416] = 160
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288]
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288])] = mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288])]
                if ceil32(mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288]) > mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288]:
                    mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288] + 576] = 0
                return 64, 
                       160,
                       33,
                       0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 257 len 31] / 0.00390625,
                       0,
                       mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288],
                       mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288])]
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg3, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 320] = 0
            mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 352] = arg3
            mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 384] = 64
            mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 448] = 33
            mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 480 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 260 len 28]
            mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 513] = 0
            mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 416] = 160
            mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 544] = mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288]
            mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288])] = mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288])]
            if ceil32(mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288]) > mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288]:
                mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288] + 576] = 0
            return 64, 
                   160,
                   33,
                   0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 260 len 28] / 0.00390625,
                   0,
                   mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288],
                   mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 576 len ceil32(mem[(32 * arg2.length + arg1.length) + (2 * ceil32(return_data.size)) + 288])]
        idx = 0
        while idx < arg2.length:
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 36] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64] + 68] = 0
            require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
            staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string arg1) with:
                    gas gas_remaining wei
                   args Array(len=cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)], data=call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _504 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_504] == mem[_504 + 12 len 20]
            require mem[_504 + 32] == mem[_504 + 44 len 20]
            if not mem[_504 + 12 len 20]:
                revert with 0, 'invalid token/qitoken address'
            if not mem[_504 + 44 len 20]:
                revert with 0, 'invalid token/qitoken address'
            require arg1.length + idx < mem[96]
            mem[(32 * arg1.length + idx) + 128] = mem[_504 + 44 len 20]
            idx = idx + 1
            continue 
        _454 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        require 0 < mem[_454]
        mem[_454 + 32] = this.address
        mem[_454 + 68] = this.address
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[_454 + 64] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _454 + ceil32(return_data.size) + 64
        require return_data.size >= 32
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
        _888 = mem[96]
        mem[_454 + ceil32(return_data.size) + (32 * mem[_454]) + 260] = mem[96]
        idx = 0
        s = 128
        t = _454 + ceil32(return_data.size) + (32 * mem[_454]) + 292
        while idx < _888:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_454 + ceil32(return_data.size) + 164] = 1
        mem[_454 + ceil32(return_data.size) + 196] = 0
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _454 + ceil32(return_data.size) + (32 * mem[_454]) + (32 * _888) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1279 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1297 = mem[_1279]
        if ext_call.return_data[0] > mem[_1279]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg3:
            _1322 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1322] = 33
            mem[_1322 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
            _1323 = mem[64]
            mem[mem[64] + 32] = _1297 - ext_call.return_data[0]
            mem[mem[64] + 64] = arg3
            _1334 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1323 + 96] = 64
            mem[_1323 + 160] = 33
            mem[_1323 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1322 + 65 len 31]
            mem[_1323 + 225] = 0
            mem[_1323 + 128] = 160
            _1545 = mem[_1334]
            mem[_1323 + 256] = mem[_1334]
            mem[_1323 + 288 len ceil32(_1545)] = mem[_1334 + 32 len ceil32(_1545)]
            if ceil32(_1545) > _1545:
                mem[_1323 + _1545 + 288] = 0
            return 64, 160, 33, mem[_1323 + 192 len 33], 0, mem[_1323 + 256 len ceil32(_1545) + 32]
        mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg3, _1297 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1354 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1354] = 33
        mem[_1354 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
        _1355 = mem[64]
        mem[mem[64] + 32] = _1297 - ext_call.return_data[0]
        mem[mem[64] + 64] = arg3
        _1368 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1355 + 96] = 64
        mem[_1355 + 160] = 33
        mem[_1355 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1354 + 65 len 31]
        mem[_1355 + 225] = 0
        mem[_1355 + 128] = 160
        _1546 = mem[_1368]
        mem[_1355 + 256] = mem[_1368]
        mem[_1355 + 288 len ceil32(_1546)] = mem[_1368 + 32 len ceil32(_1546)]
        if ceil32(_1546) > _1546:
            mem[_1355 + _1546 + 288] = 0
        return 64, 160, 33, mem[_1355 + 192 len 33], 0, mem[_1355 + 256 len ceil32(_1546) + 32]
    idx = 0
    while idx < arg1.length:
        require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
        require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 36] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
        mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64] + 68] = 0
        require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
        staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string arg1) with:
                gas gas_remaining wei
               args Array(len=cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)], data=call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]])
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _507 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_507] == mem[_507 + 12 len 20]
        require mem[_507 + 32] == mem[_507 + 44 len 20]
        if not mem[_507 + 12 len 20]:
            revert with 0, 'invalid token/qitoken address'
        if not mem[_507 + 44 len 20]:
            revert with 0, 'invalid token/qitoken address'
        require idx < mem[96]
        mem[(32 * idx) + 128] = mem[_507 + 44 len 20]
        idx = idx + 1
        continue 
    if not arg2.length:
        _460 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        require 0 < mem[_460]
        mem[_460 + 32] = this.address
        mem[_460 + 68] = this.address
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[_460 + 64] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _460 + ceil32(return_data.size) + 64
        require return_data.size >= 32
        mem[_460 + ceil32(return_data.size) + 64] = 0x8805714b00000000000000000000000000000000000000000000000000000000
        mem[_460 + ceil32(return_data.size) + 68] = 0
        mem[_460 + ceil32(return_data.size) + 100] = 160
        mem[_460 + ceil32(return_data.size) + 228] = mem[_460]
        idx = 0
        s = _460 + 32
        t = _460 + ceil32(return_data.size) + 260
        while idx < mem[_460]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_460 + ceil32(return_data.size) + 132] = (32 * mem[_460]) + 192
        _889 = mem[96]
        mem[_460 + ceil32(return_data.size) + (32 * mem[_460]) + 260] = mem[96]
        idx = 0
        s = 128
        t = _460 + ceil32(return_data.size) + (32 * mem[_460]) + 292
        while idx < _889:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_460 + ceil32(return_data.size) + 164] = 0
        mem[_460 + ceil32(return_data.size) + 196] = 1
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _460 + ceil32(return_data.size) + (32 * mem[_460]) + (32 * _889) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1280 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1298 = mem[_1280]
        if ext_call.return_data[0] > mem[_1280]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg3:
            _1324 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1324] = 33
            mem[_1324 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
            _1325 = mem[64]
            mem[mem[64] + 32] = _1298 - ext_call.return_data[0]
            mem[mem[64] + 64] = arg3
            _1335 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1325 + 96] = 64
            mem[_1325 + 160] = 33
            mem[_1325 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1324 + 65 len 31]
            mem[_1325 + 225] = 0
            mem[_1325 + 128] = 160
            _1547 = mem[_1335]
            mem[_1325 + 256] = mem[_1335]
            mem[_1325 + 288 len ceil32(_1547)] = mem[_1335 + 32 len ceil32(_1547)]
            if ceil32(_1547) > _1547:
                mem[_1325 + _1547 + 288] = 0
            return 64, 160, 33, mem[_1325 + 192 len 33], 0, mem[_1325 + 256 len ceil32(_1547) + 32]
        mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg3, _1298 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1357 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1357] = 33
        mem[_1357 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
        _1358 = mem[64]
        mem[mem[64] + 32] = _1298 - ext_call.return_data[0]
        mem[mem[64] + 64] = arg3
        _1370 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1358 + 96] = 64
        mem[_1358 + 160] = 33
        mem[_1358 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1357 + 65 len 31]
        mem[_1358 + 225] = 0
        mem[_1358 + 128] = 160
        _1548 = mem[_1370]
        mem[_1358 + 256] = mem[_1370]
        mem[_1358 + 288 len ceil32(_1548)] = mem[_1370 + 32 len ceil32(_1548)]
        if ceil32(_1548) > _1548:
            mem[_1358 + _1548 + 288] = 0
        return 64, 160, 33, mem[_1358 + 192 len 33], 0, mem[_1358 + 256 len ceil32(_1548) + 32]
    idx = 0
    while idx < arg2.length:
        require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 36] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64] + 68] = 0
        require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
        staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string arg1) with:
                gas gas_remaining wei
               args Array(len=cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)], data=call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]])
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _931 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_931] == mem[_931 + 12 len 20]
        require mem[_931 + 32] == mem[_931 + 44 len 20]
        if not mem[_931 + 12 len 20]:
            revert with 0, 'invalid token/qitoken address'
        if not mem[_931 + 44 len 20]:
            revert with 0, 'invalid token/qitoken address'
        require arg1.length + idx < mem[96]
        mem[(32 * arg1.length + idx) + 128] = mem[_931 + 44 len 20]
        idx = idx + 1
        continue 
    _890 = mem[64]
    mem[mem[64]] = 1
    mem[64] = mem[64] + 64
    require 0 < mem[_890]
    mem[_890 + 32] = this.address
    mem[_890 + 68] = this.address
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[_890 + 64] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _890 + ceil32(return_data.size) + 64
    require return_data.size >= 32
    mem[_890 + ceil32(return_data.size) + 64] = 0x8805714b00000000000000000000000000000000000000000000000000000000
    mem[_890 + ceil32(return_data.size) + 68] = 0
    mem[_890 + ceil32(return_data.size) + 100] = 160
    mem[_890 + ceil32(return_data.size) + 228] = mem[_890]
    idx = 0
    s = _890 + 32
    t = _890 + ceil32(return_data.size) + 260
    while idx < mem[_890]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_890 + ceil32(return_data.size) + 132] = (32 * mem[_890]) + 192
    _1243 = mem[96]
    mem[_890 + ceil32(return_data.size) + (32 * mem[_890]) + 260] = mem[96]
    idx = 0
    s = 128
    t = _890 + ceil32(return_data.size) + (32 * mem[_890]) + 292
    while idx < _1243:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_890 + ceil32(return_data.size) + 164] = 1
    mem[_890 + ceil32(return_data.size) + 196] = 1
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _890 + ceil32(return_data.size) + (32 * mem[_890]) + (32 * _1243) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1577 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1603 = mem[_1577]
    if ext_call.return_data[0] > mem[_1577]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg3:
        _1612 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1612] = 33
        mem[_1612 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
        _1613 = mem[64]
        mem[mem[64] + 32] = _1603 - ext_call.return_data[0]
        mem[mem[64] + 64] = arg3
        _1617 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1613 + 96] = 64
        mem[_1613 + 160] = 33
        mem[_1613 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1612 + 65 len 31]
        mem[_1613 + 225] = 0
        mem[_1613 + 128] = 160
        _1726 = mem[_1617]
        mem[_1613 + 256] = mem[_1617]
        mem[_1613 + 288 len ceil32(_1726)] = mem[_1617 + 32 len ceil32(_1726)]
        if ceil32(_1726) > _1726:
            mem[_1613 + _1726 + 288] = 0
        return 64, 160, 33, mem[_1613 + 192 len 33], 0, mem[_1613 + 256 len ceil32(_1726) + 32]
    mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg3, _1603 - ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1624 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1624] = 33
    mem[_1624 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
    _1625 = mem[64]
    mem[mem[64] + 32] = _1603 - ext_call.return_data[0]
    mem[mem[64] + 64] = arg3
    _1629 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1625 + 96] = 64
    mem[_1625 + 160] = 33
    mem[_1625 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1624 + 65 len 31]
    mem[_1625 + 225] = 0
    mem[_1625 + 128] = 160
    _1727 = mem[_1629]
    mem[_1625 + 256] = mem[_1629]
    mem[_1625 + 288 len ceil32(_1727)] = mem[_1629 + 32 len ceil32(_1727)]
    if ceil32(_1727) > _1727:
        mem[_1625 + _1727 + 288] = 0
    return 64, 160, 33, mem[_1625 + 192 len 33], 0, mem[_1625 + 256 len ceil32(_1727) + 32]
}



}
