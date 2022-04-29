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
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.delegates(address rg1) with:
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
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 rg1, address rg2) with:
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
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
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
            staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string rg1) with:
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
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
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
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 rg1, address rg2, address[] rg3) with:
             gas gas_remaining wei
            args 0, address(this.address), 96, mem[mem[64] + 100 len (32 * mem[96]) + 32]
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
        if _116 > mem[_226]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2:
            _238 = mem[64]
            mem[64] = mem[64] + 96
            mem[_238] = 33
            mem[_238 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
            _239 = mem[64]
            mem[mem[64] + 32] = _228 - _116
            mem[mem[64] + 64] = arg2
            _242 = mem[64]
            mem[64] = mem[64] + 96
            mem[_239 + 96] = 64
            mem[_239 + 160] = 33
            mem[_239 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_238 + 65 len 31]
            mem[_239 + 225] = 0
            mem[_239 + 128] = 160
            _302 = mem[_242]
            mem[_239 + 256] = mem[_242]
            mem[_239 + 288 len ceil32(_302)] = mem[_242 + 32 len ceil32(_302)]
            if ceil32(_302) > _302:
                mem[_239 + _302 + 288] = 0
            return 64, 160, 33, mem[_239 + 192 len 33], 0, mem[_239 + 256 len ceil32(_302) + 32]
        mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg2, _228 - _116
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _245 = mem[64]
        mem[64] = mem[64] + 96
        mem[_245] = 33
        mem[_245 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
        _246 = mem[64]
        mem[mem[64] + 32] = _228 - _116
        mem[mem[64] + 64] = arg2
        _251 = mem[64]
        mem[64] = mem[64] + 96
        mem[_246 + 96] = 64
        mem[_246 + 160] = 33
        mem[_246 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_245 + 65 len 31]
        mem[_246 + 225] = 0
        mem[_246 + 128] = 160
        _303 = mem[_251]
        mem[_246 + 256] = mem[_251]
        mem[_246 + 288 len ceil32(_303)] = mem[_251 + 32 len ceil32(_303)]
        if ceil32(_303) > _303:
            mem[_246 + _303 + 288] = 0
        return 64, 160, 33, mem[_246 + 192 len 33], 0, mem[_246 + 256 len ceil32(_303) + 32]
    mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
        require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        _119 = mem[64]
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
        mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64] + 68] = 0
        require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
        staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string rg1) with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) + _119 + -mem[64] + 64]
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
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
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
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 rg1, address rg2, address[] rg3) with:
         gas gas_remaining wei
        args 0, address(this.address), 96, mem[mem[64] + 100 len (32 * mem[96]) + 32]
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
    if _118 > mem[_227]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2:
        _240 = mem[64]
        mem[64] = mem[64] + 96
        mem[_240] = 33
        mem[_240 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
        _241 = mem[64]
        mem[mem[64] + 32] = _229 - _118
        mem[mem[64] + 64] = arg2
        _243 = mem[64]
        mem[64] = mem[64] + 96
        mem[_241 + 96] = 64
        mem[_241 + 160] = 33
        mem[_241 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_240 + 65 len 31]
        mem[_241 + 225] = 0
        mem[_241 + 128] = 160
        _304 = mem[_243]
        mem[_241 + 256] = mem[_243]
        mem[_241 + 288 len ceil32(_304)] = mem[_243 + 32 len ceil32(_304)]
        if ceil32(_304) > _304:
            mem[_241 + _304 + 288] = 0
        return 64, 160, 33, mem[_241 + 192 len 33], 0, mem[_241 + 256 len ceil32(_304) + 32]
    mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg2
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg2, _229 - _118
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _248 = mem[64]
    mem[64] = mem[64] + 96
    mem[_248] = 33
    mem[_248 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
    _249 = mem[64]
    mem[mem[64] + 32] = _229 - _118
    mem[mem[64] + 64] = arg2
    _253 = mem[64]
    mem[64] = mem[64] + 96
    mem[_249 + 96] = 64
    mem[_249 + 160] = 33
    mem[_249 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_248 + 65 len 31]
    mem[_249 + 225] = 0
    mem[_249 + 128] = 160
    _305 = mem[_253]
    mem[_249 + 256] = mem[_253]
    mem[_249 + 288 len ceil32(_305)] = mem[_253 + 32 len ceil32(_305)]
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
                staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
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
                call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 rg1, address[] rg2, address[] rg3, bool rg4, bool rg5) with:
                     gas gas_remaining wei
                    args 0, 160, 224, 0, 0, 1, mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 388], arg2.length + arg1.length, mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 452 len 32 * arg2.length + arg1.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
                staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
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
                call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
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
                staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string rg1) with:
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
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
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
            call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 rg1, address[] rg2, address[] rg3, bool rg4, bool rg5) with:
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
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
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
            mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64] + 68] = 0
            require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
            staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string rg1) with:
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
        if arg2.length:
            idx = 0
            while idx < arg2.length:
                require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
                require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 36] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64] + 68] = 0
                require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
                staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string rg1) with:
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
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
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
            mem[_885 + ceil32(return_data.size) + (32 * mem[_885]) + 260] = mem[96]
            idx = 0
            s = 128
            t = _885 + ceil32(return_data.size) + (32 * mem[_885]) + 292
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_885 + ceil32(return_data.size) + 164] = 1
            mem[_885 + ceil32(return_data.size) + 196] = 1
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 rg1, address[] rg2, address[] rg3, bool rg4, bool rg5) with:
                 gas gas_remaining wei
                args 0, 160, (32 * mem[_885]) + 192, 1, 1, mem[_885 + ceil32(return_data.size) + 228 len (32 * mem[_885]) + (32 * mem[96]) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg3:
                mem[_885 + (2 * ceil32(return_data.size)) + 192] = 0
                mem[_885 + (2 * ceil32(return_data.size)) + 224] = arg3
                mem[_885 + (2 * ceil32(return_data.size)) + 256] = 64
                mem[_885 + (2 * ceil32(return_data.size)) + 320] = 33
                mem[_885 + (2 * ceil32(return_data.size)) + 352 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_885 + (2 * ceil32(return_data.size)) + 129 len 31]
                mem[_885 + (2 * ceil32(return_data.size)) + 385] = 0
                mem[_885 + (2 * ceil32(return_data.size)) + 288] = 160
                mem[_885 + (2 * ceil32(return_data.size)) + 416] = mem[_885 + (2 * ceil32(return_data.size)) + 160]
                mem[_885 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_885 + (2 * ceil32(return_data.size)) + 160])] = mem[_885 + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_885 + (2 * ceil32(return_data.size)) + 160])]
                if ceil32(mem[_885 + (2 * ceil32(return_data.size)) + 160]) > mem[_885 + (2 * ceil32(return_data.size)) + 160]:
                    mem[_885 + (2 * ceil32(return_data.size)) + mem[_885 + (2 * ceil32(return_data.size)) + 160] + 448] = 0
                return 64, 
                       160,
                       33,
                       0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_885 + (2 * ceil32(return_data.size)) + 129 len 31] / 0.00390625,
                       0,
                       mem[_885 + (2 * ceil32(return_data.size)) + 160],
                       mem[_885 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_885 + (2 * ceil32(return_data.size)) + 160])]
            require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg3, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_885 + (2 * ceil32(return_data.size)) + 192] = 0
            mem[_885 + (2 * ceil32(return_data.size)) + 224] = arg3
            mem[_885 + (2 * ceil32(return_data.size)) + 256] = 64
            mem[_885 + (2 * ceil32(return_data.size)) + 320] = 33
            mem[_885 + (2 * ceil32(return_data.size)) + 352 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[_885 + (2 * ceil32(return_data.size)) + 132 len 28]
            mem[_885 + (2 * ceil32(return_data.size)) + 385] = 0
            mem[_885 + (2 * ceil32(return_data.size)) + 288] = 160
            mem[_885 + (2 * ceil32(return_data.size)) + 416] = mem[_885 + (2 * ceil32(return_data.size)) + 160]
            mem[_885 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_885 + (2 * ceil32(return_data.size)) + 160])] = mem[_885 + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_885 + (2 * ceil32(return_data.size)) + 160])]
            if ceil32(mem[_885 + (2 * ceil32(return_data.size)) + 160]) > mem[_885 + (2 * ceil32(return_data.size)) + 160]:
                mem[_885 + (2 * ceil32(return_data.size)) + mem[_885 + (2 * ceil32(return_data.size)) + 160] + 448] = 0
            return 64, 
                   160,
                   33,
                   0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, 0, mem[_885 + (2 * ceil32(return_data.size)) + 132 len 28] / 0.00390625,
                   0,
                   mem[_885 + (2 * ceil32(return_data.size)) + 160],
                   mem[_885 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[_885 + (2 * ceil32(return_data.size)) + 160])]
        _457 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        require 0 < mem[_457]
        mem[_457 + 32] = this.address
        mem[_457 + 68] = this.address
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
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
        _884 = mem[96]
        mem[_457 + ceil32(return_data.size) + (32 * mem[_457]) + 260] = mem[96]
        idx = 0
        s = 128
        t = _457 + ceil32(return_data.size) + (32 * mem[_457]) + 292
        while idx < _884:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_457 + ceil32(return_data.size) + 164] = 0
        mem[_457 + ceil32(return_data.size) + 196] = 1
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _457 + ceil32(return_data.size) + (32 * mem[_457]) + (32 * _884) + -mem[64] + 288]
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
        _1275 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1293 = mem[_1275]
        if ext_call.return_data[0] > mem[_1275]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg3:
            _1326 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1326] = 33
            mem[_1326 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
            _1327 = mem[64]
            mem[mem[64] + 32] = _1293 - ext_call.return_data[0]
            mem[mem[64] + 64] = arg3
            _1333 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1327 + 96] = 64
            mem[_1327 + 160] = 33
            mem[_1327 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1326 + 65 len 31]
            mem[_1327 + 225] = 0
            mem[_1327 + 128] = 160
            _1538 = mem[_1333]
            mem[_1327 + 256] = mem[_1333]
            mem[_1327 + 288 len ceil32(_1538)] = mem[_1333 + 32 len ceil32(_1538)]
            if ceil32(_1538) > _1538:
                mem[_1327 + _1538 + 288] = 0
            return 64, 160, 33, mem[_1327 + 192 len 33], 0, mem[_1327 + 256 len ceil32(_1538) + 32]
        mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg3, _1293 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1340 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1340] = 33
        mem[_1340 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
        _1341 = mem[64]
        mem[mem[64] + 32] = _1293 - ext_call.return_data[0]
        mem[mem[64] + 64] = arg3
        _1359 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1341 + 96] = 64
        mem[_1341 + 160] = 33
        mem[_1341 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1340 + 65 len 31]
        mem[_1341 + 225] = 0
        mem[_1341 + 128] = 160
        _1539 = mem[_1359]
        mem[_1341 + 256] = mem[_1359]
        mem[_1341 + 288 len ceil32(_1539)] = mem[_1359 + 32 len ceil32(_1539)]
        if ceil32(_1539) > _1539:
            mem[_1341 + _1539 + 288] = 0
        return 64, 160, 33, mem[_1341 + 192 len 33], 0, mem[_1341 + 256 len ceil32(_1539) + 32]
    mem[128 len 32 * arg2.length + arg1.length] = call.data[calldata.size len 32 * arg2.length + arg1.length]
    if not arg1.length:
        if not arg2.length:
            mem[(32 * arg2.length + arg1.length) + 128] = 1
            mem[(32 * arg2.length + arg1.length) + 160] = this.address
            require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
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
            call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 rg1, address[] rg2, address[] rg3, bool rg4, bool rg5) with:
                 gas gas_remaining wei
                args 0, 160, 224, 0, 0, 1, mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 388], arg2.length + arg1.length, mem[(32 * arg2.length + arg1.length) + ceil32(return_data.size) + 452 len 32 * arg2.length + arg1.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
            staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
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
            call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
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
            staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string rg1) with:
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
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
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
        mem[_454 + ceil32(return_data.size) + 164] = 1
        mem[_454 + ceil32(return_data.size) + 196] = 0
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 rg1, address[] rg2, address[] rg3, bool rg4, bool rg5) with:
             gas gas_remaining wei
            args 0, 160, (32 * mem[_454]) + 192, 1, 0, mem[_454 + ceil32(return_data.size) + 228 len (32 * mem[_454]) + (32 * mem[96]) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
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
    while idx < arg1.length:
        require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
        require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 36] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
        mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64] + 68] = 0
        require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
        staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string rg1) with:
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
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
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
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
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
            _1330 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1330] = 33
            mem[_1330 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
            _1331 = mem[64]
            mem[mem[64] + 32] = _1298 - ext_call.return_data[0]
            mem[mem[64] + 64] = arg3
            _1335 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1331 + 96] = 64
            mem[_1331 + 160] = 33
            mem[_1331 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1330 + 65 len 31]
            mem[_1331 + 225] = 0
            mem[_1331 + 128] = 160
            _1547 = mem[_1335]
            mem[_1331 + 256] = mem[_1335]
            mem[_1331 + 288 len ceil32(_1547)] = mem[_1335 + 32 len ceil32(_1547)]
            if ceil32(_1547) > _1547:
                mem[_1331 + _1547 + 288] = 0
            return 64, 160, 33, mem[_1331 + 192 len 33], 0, mem[_1331 + 256 len ceil32(_1547) + 32]
        mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
        call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args arg3, _1298 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1348 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1348] = 33
        mem[_1348 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
        _1349 = mem[64]
        mem[mem[64] + 32] = _1298 - ext_call.return_data[0]
        mem[mem[64] + 64] = arg3
        _1363 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1349 + 96] = 64
        mem[_1349 + 160] = 33
        mem[_1349 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1348 + 65 len 31]
        mem[_1349 + 225] = 0
        mem[_1349 + 128] = 160
        _1548 = mem[_1363]
        mem[_1349 + 256] = mem[_1363]
        mem[_1349 + 288 len ceil32(_1548)] = mem[_1363 + 32 len ceil32(_1548)]
        if ceil32(_1548) > _1548:
            mem[_1349 + _1548 + 288] = 0
        return 64, 160, 33, mem[_1349 + 192 len 33], 0, mem[_1349 + 256 len ceil32(_1548) + 32]
    idx = 0
    while idx < arg2.length:
        require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 36] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64] + 68] = 0
        require ext_code.size(0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6)
        staticcall 0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6.getMapping(string rg1) with:
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
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
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
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
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
        _1614 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1614] = 33
        mem[_1614 + 32 len 33] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536
        _1615 = mem[64]
        mem[mem[64] + 32] = _1603 - ext_call.return_data[0]
        mem[mem[64] + 64] = arg3
        _1617 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1615 + 96] = 64
        mem[_1615 + 160] = 33
        mem[_1615 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1614 + 65 len 31]
        mem[_1615 + 225] = 0
        mem[_1615 + 128] = 160
        _1726 = mem[_1617]
        mem[_1615 + 256] = mem[_1617]
        mem[_1615 + 288 len ceil32(_1726)] = mem[_1617 + 32 len ceil32(_1726)]
        if ceil32(_1726) > _1726:
            mem[_1615 + _1726 + 288] = 0
        return 64, 160, 33, mem[_1615 + 192 len 33], 0, mem[_1615 + 256 len ceil32(_1726) + 32]
    mem[mem[64]] = 0x61e3c94400000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    require ext_code.size(0x3254ce8f5b1c82431b8f21df01918342215825c2)
    call 0x3254ce8f5b1c82431b8f21df01918342215825c2.setUint(uint256 rg1, uint256 rg2) with:
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
    _1627 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1623 + 96] = 64
    mem[_1623 + 160] = 33
    mem[_1623 + 192 len 64] = 0xfe4c6f67436c61696d65645265776172642875696e743235362c75696e74323536, mem[_1622 + 65 len 31]
    mem[_1623 + 225] = 0
    mem[_1623 + 128] = 160
    _1727 = mem[_1627]
    mem[_1623 + 256] = mem[_1627]
    mem[_1623 + 288 len ceil32(_1727)] = mem[_1627 + 32 len ceil32(_1727)]
    if ceil32(_1727) > _1727:
        mem[_1623 + _1727 + 288] = 0
    return 64, 160, 33, mem[_1623 + 192 len 33], 0, mem[_1623 + 256 len ceil32(_1727) + 32]
}



}
