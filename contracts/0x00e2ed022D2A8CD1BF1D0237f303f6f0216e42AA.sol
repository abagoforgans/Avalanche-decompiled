contract main {




// =====================  Runtime code  =====================


#
#  - sub_22466fee(?)
#
mapping of uint8 stor0;
address adminAddress;

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == adminAddress
    if not arg1:
        revert with 0, 'new admin is the zero address'
    if ext_code.size(arg1):
        revert with 0, 'new admin is a contract'
    stor0[stor1] = 0
    adminAddress = arg1
    stor0[arg1] = 1
    return 1
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    71,
                    0x6e576974686472617720616d6f756e74206d75737420626520736d616c6c6572206f7220657175616c20746f2074686520617661696c61626c6520746f6b656e20616d6f756e74,
                    mem[235 len 25]
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    require ext_call.success
    return 1
}

function sub_c0ce282a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    u = 32 * ('cd', 4).length
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        u = cd[s]
        idx = idx + 1
        continue 
    require msg.sender == adminAddress
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        if ext_code.size(mem[(32 * idx) + 128]):
            revert with 0, 'callable cannot be a contract'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function withdrawEth(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require msg.sender == adminAddress
    if not arg2:
        revert with 0, 'recipient cannot be 0 address'
    if not stor0[address(arg2)]:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0xfe726563697069656e74206d75737420626520612063616c6c61626c652061646472657373206f72207468652061646d69,
                        mem[213 len 15]
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x2e576974686472617720616d6f756e74206d75737420626520736d616c6c6572206f7220657175616c20746f2074686520617661696c61626c652065746820616d6f756e74,
                    mem[233 len 27]
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function sub_1d9575a5(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (160 * ('cd', 36).length) + 36 <= calldata.size
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        t = cd[4]
        while idx < ('cd', 36).length:
            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
            require idx < ('cd', 36).length
            if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 36).length
                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                _1908 = mem[64]
                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                mem[64] = mem[64] + 160
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                mem[_1908] = cd[((160 * idx) + cd[36] + 36)]
                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                mem[_1908 + 32] = cd[((160 * idx) + cd[36] + 68)]
                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                mem[_1908 + 64] = cd[((160 * idx) + cd[36] + 100)]
                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                mem[_1908 + 96] = cd[((160 * idx) + cd[36] + 132)]
                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                mem[_1908 + 128] = cd[((160 * idx) + cd[36] + 164)]
                if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                         gas gas_remaining wei
                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2073 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _2136 = mem[_2073]
                    require mem[_2073 + 32] == bool(mem[_2073 + 32])
                    require idx < mem[96]
                    _2561 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2073 + 32])
                    mem[_2561] = _2136
                else:
                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                            revert with 0, 'exchangeType not exist'
                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                             gas gas_remaining wei
                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2132 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _2237 = mem[_2132]
                        require mem[_2132 + 32] == bool(mem[_2132 + 32])
                        require idx < mem[96]
                        _2695 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2132 + 32])
                        mem[_2695] = _2237
                    else:
                        _2045 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_2045]
                        mem[_2045 + 32] = address(s)
                        require 1 < mem[_2045]
                        mem[_2045 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                        mem[_2045 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2045 + 100] = t
                        mem[_2045 + 132] = 64
                        mem[_2045 + 164] = mem[_2045]
                        s = 0
                        while s < 32 * mem[_2045]:
                            mem[s + _2045 + 196] = mem[s + _2045 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args t, 64, mem[_2045 + 164 len (32 * mem[_2045]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2045 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _2045 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _3982 = mem[_2045 + 96 len 4], Mask(224, 32, t) >> 32
                        require mem[_2045 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                        require mem[_2045 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                        require mem[_2045 + mem[_2045 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_2045 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_2045 + mem[_2045 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                        mem[_2045 + ceil32(return_data.size) + 96] = mem[_2045 + mem[_2045 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                        _4023 = mem[_2045 + _3982 + 96]
                        s = 0
                        while s < 32 * _4023:
                            mem[s + _2045 + ceil32(return_data.size) + 128] = mem[s + _2045 + _3982 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _4023) + _2045 + ceil32(return_data.size) + 128
                        require 1 < mem[_2045 + ceil32(return_data.size) + 96]
                        _5403 = mem[_2045 + ceil32(return_data.size) + 160]
                        require idx < mem[96]
                        if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                            _5433 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = 0
                            mem[_5433] = _5403
                        else:
                            _5476 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = 0
                            mem[_5476] = _5403 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
            else:
                if 6 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < ('cd', 36).length
                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                    _1914 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    mem[_1914] = cd[((160 * idx) + cd[36] + 36)]
                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                    mem[_1914 + 32] = cd[((160 * idx) + cd[36] + 68)]
                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                    mem[_1914 + 64] = cd[((160 * idx) + cd[36] + 100)]
                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                    mem[_1914 + 96] = cd[((160 * idx) + cd[36] + 132)]
                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                    mem[_1914 + 128] = cd[((160 * idx) + cd[36] + 164)]
                    if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                             gas gas_remaining wei
                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2099 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _2182 = mem[_2099]
                        require mem[_2099 + 32] == bool(mem[_2099 + 32])
                        require idx < mem[96]
                        _2631 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2099 + 32])
                        mem[_2631] = _2182
                    else:
                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                revert with 0, 'exchangeType not exist'
                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                 gas gas_remaining wei
                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2178 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _2295 = mem[_2178]
                            require mem[_2178 + 32] == bool(mem[_2178 + 32])
                            require idx < mem[96]
                            _2767 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2178 + 32])
                            mem[_2767] = _2295
                        else:
                            _2074 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_2074]
                            mem[_2074 + 32] = address(s)
                            require 1 < mem[_2074]
                            mem[_2074 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                            mem[_2074 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_2074 + 100] = t
                            mem[_2074 + 132] = 64
                            mem[_2074 + 164] = mem[_2074]
                            s = 0
                            while s < 32 * mem[_2074]:
                                mem[s + _2074 + 196] = mem[s + _2074 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args t, 64, mem[_2074 + 164 len (32 * mem[_2074]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_2074 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _2074 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _3984 = mem[_2074 + 96 len 4], Mask(224, 32, t) >> 32
                            require mem[_2074 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                            require mem[_2074 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                            require mem[_2074 + mem[_2074 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_2074 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_2074 + mem[_2074 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                            mem[_2074 + ceil32(return_data.size) + 96] = mem[_2074 + mem[_2074 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                            _4024 = mem[_2074 + _3984 + 96]
                            s = 0
                            while s < 32 * _4024:
                                mem[s + _2074 + ceil32(return_data.size) + 128] = mem[s + _2074 + _3984 + 128]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _4024) + _2074 + ceil32(return_data.size) + 128
                            require 1 < mem[_2074 + ceil32(return_data.size) + 96]
                            _5404 = mem[_2074 + ceil32(return_data.size) + 160]
                            require idx < mem[96]
                            if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                _5436 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = 0
                                mem[_5436] = _5404
                            else:
                                _5480 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = 0
                                mem[_5480] = _5404 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                else:
                    if 17 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < ('cd', 36).length
                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                        _1920 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                        mem[_1920] = cd[((160 * idx) + cd[36] + 36)]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[_1920 + 32] = cd[((160 * idx) + cd[36] + 68)]
                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                        mem[_1920 + 64] = cd[((160 * idx) + cd[36] + 100)]
                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                        mem[_1920 + 96] = cd[((160 * idx) + cd[36] + 132)]
                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                        mem[_1920 + 128] = cd[((160 * idx) + cd[36] + 164)]
                        if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                 gas gas_remaining wei
                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2141 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _2245 = mem[_2141]
                            require mem[_2141 + 32] == bool(mem[_2141 + 32])
                            require idx < mem[96]
                            _2704 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2141 + 32])
                            mem[_2704] = _2245
                        else:
                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                    revert with 0, 'exchangeType not exist'
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                     gas gas_remaining wei
                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2241 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _2361 = mem[_2241]
                                require mem[_2241 + 32] == bool(mem[_2241 + 32])
                                require idx < mem[96]
                                _2841 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2241 + 32])
                                mem[_2841] = _2361
                            else:
                                _2100 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2100]
                                mem[_2100 + 32] = address(s)
                                require 1 < mem[_2100]
                                mem[_2100 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                mem[_2100 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_2100 + 100] = t
                                mem[_2100 + 132] = 64
                                mem[_2100 + 164] = mem[_2100]
                                s = 0
                                while s < 32 * mem[_2100]:
                                    mem[s + _2100 + 196] = mem[s + _2100 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args t, 64, mem[_2100 + 164 len (32 * mem[_2100]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_2100 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _2100 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _3986 = mem[_2100 + 96 len 4], Mask(224, 32, t) >> 32
                                require mem[_2100 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                require mem[_2100 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                require mem[_2100 + mem[_2100 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_2100 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_2100 + mem[_2100 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                mem[_2100 + ceil32(return_data.size) + 96] = mem[_2100 + mem[_2100 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                _4025 = mem[_2100 + _3986 + 96]
                                s = 0
                                while s < 32 * _4025:
                                    mem[s + _2100 + ceil32(return_data.size) + 128] = mem[s + _2100 + _3986 + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _4025) + _2100 + ceil32(return_data.size) + 128
                                require 1 < mem[_2100 + ceil32(return_data.size) + 96]
                                _5405 = mem[_2100 + ceil32(return_data.size) + 160]
                                require idx < mem[96]
                                if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                    _5439 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = 0
                                    mem[_5439] = _5405
                                else:
                                    _5484 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = 0
                                    mem[_5484] = _5405 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                    else:
                        if 18 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx < ('cd', 36).length
                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                            _1926 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                            mem[_1926] = cd[((160 * idx) + cd[36] + 36)]
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            mem[_1926 + 32] = cd[((160 * idx) + cd[36] + 68)]
                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                            mem[_1926 + 64] = cd[((160 * idx) + cd[36] + 100)]
                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                            mem[_1926 + 96] = cd[((160 * idx) + cd[36] + 132)]
                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                            mem[_1926 + 128] = cd[((160 * idx) + cd[36] + 164)]
                            if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                     gas gas_remaining wei
                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2187 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _2303 = mem[_2187]
                                require mem[_2187 + 32] == bool(mem[_2187 + 32])
                                require idx < mem[96]
                                _2776 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2187 + 32])
                                mem[_2776] = _2303
                            else:
                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                        revert with 0, 'exchangeType not exist'
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                         gas gas_remaining wei
                                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2299 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _2425 = mem[_2299]
                                    require mem[_2299 + 32] == bool(mem[_2299 + 32])
                                    require idx < mem[96]
                                    _2910 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2299 + 32])
                                    mem[_2910] = _2425
                                else:
                                    _2142 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_2142]
                                    mem[_2142 + 32] = address(s)
                                    require 1 < mem[_2142]
                                    mem[_2142 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[_2142 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_2142 + 100] = t
                                    mem[_2142 + 132] = 64
                                    mem[_2142 + 164] = mem[_2142]
                                    s = 0
                                    while s < 32 * mem[_2142]:
                                        mem[s + _2142 + 196] = mem[s + _2142 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                    staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args t, 64, mem[_2142 + 164 len (32 * mem[_2142]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_2142 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _2142 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _3988 = mem[_2142 + 96 len 4], Mask(224, 32, t) >> 32
                                    require mem[_2142 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                    require mem[_2142 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                    require mem[_2142 + mem[_2142 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_2142 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_2142 + mem[_2142 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                    mem[_2142 + ceil32(return_data.size) + 96] = mem[_2142 + mem[_2142 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                    _4026 = mem[_2142 + _3988 + 96]
                                    s = 0
                                    while s < 32 * _4026:
                                        mem[s + _2142 + ceil32(return_data.size) + 128] = mem[s + _2142 + _3988 + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _4026) + _2142 + ceil32(return_data.size) + 128
                                    require 1 < mem[_2142 + ceil32(return_data.size) + 96]
                                    _5406 = mem[_2142 + ceil32(return_data.size) + 160]
                                    require idx < mem[96]
                                    if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                        _5442 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = 0
                                        mem[_5442] = _5406
                                    else:
                                        _5488 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = 0
                                        mem[_5488] = _5406 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                        else:
                            if 19 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx < ('cd', 36).length
                                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                _1931 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                mem[_1931] = cd[((160 * idx) + cd[36] + 36)]
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                mem[_1931 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                mem[_1931 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                mem[_1931 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                mem[_1931 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                         gas gas_remaining wei
                                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2250 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _2369 = mem[_2250]
                                    require mem[_2250 + 32] == bool(mem[_2250 + 32])
                                    require idx < mem[96]
                                    _2850 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2250 + 32])
                                    mem[_2850] = _2369
                                else:
                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                            revert with 0, 'exchangeType not exist'
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                             gas gas_remaining wei
                                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2365 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _2495 = mem[_2365]
                                        require mem[_2365 + 32] == bool(mem[_2365 + 32])
                                        require idx < mem[96]
                                        _2971 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2365 + 32])
                                        mem[_2971] = _2495
                                    else:
                                        _2188 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require 0 < mem[_2188]
                                        mem[_2188 + 32] = address(s)
                                        require 1 < mem[_2188]
                                        mem[_2188 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[_2188 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[_2188 + 100] = t
                                        mem[_2188 + 132] = 64
                                        mem[_2188 + 164] = mem[_2188]
                                        s = 0
                                        while s < 32 * mem[_2188]:
                                            mem[s + _2188 + 196] = mem[s + _2188 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                        staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args t, 64, mem[_2188 + 164 len (32 * mem[_2188]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2188 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _2188 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _3990 = mem[_2188 + 96 len 4], Mask(224, 32, t) >> 32
                                        require mem[_2188 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                        require mem[_2188 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                        require mem[_2188 + mem[_2188 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_2188 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_2188 + mem[_2188 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                        mem[_2188 + ceil32(return_data.size) + 96] = mem[_2188 + mem[_2188 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                        _4027 = mem[_2188 + _3990 + 96]
                                        s = 0
                                        while s < 32 * _4027:
                                            mem[s + _2188 + ceil32(return_data.size) + 128] = mem[s + _2188 + _3990 + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _4027) + _2188 + ceil32(return_data.size) + 128
                                        require 1 < mem[_2188 + ceil32(return_data.size) + 96]
                                        _5407 = mem[_2188 + ceil32(return_data.size) + 160]
                                        require idx < mem[96]
                                        if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                            _5445 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = 0
                                            mem[_5445] = _5407
                                        else:
                                            _5492 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = 0
                                            mem[_5492] = _5407 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                            else:
                                if 23 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx < ('cd', 36).length
                                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                    _1937 = mem[64]
                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                    mem[64] = mem[64] + 160
                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                    mem[_1937] = cd[((160 * idx) + cd[36] + 36)]
                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[_1937 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                    mem[_1937 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                    mem[_1937 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                    mem[_1937 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                    if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                             gas gas_remaining wei
                                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2308 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _2433 = mem[_2308]
                                        require mem[_2308 + 32] == bool(mem[_2308 + 32])
                                        require idx < mem[96]
                                        _2919 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2308 + 32])
                                        mem[_2919] = _2433
                                    else:
                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                                revert with 0, 'exchangeType not exist'
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                                 gas gas_remaining wei
                                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2429 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _2567 = mem[_2429]
                                            require mem[_2429 + 32] == bool(mem[_2429 + 32])
                                            require idx < mem[96]
                                            _3030 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2429 + 32])
                                            mem[_3030] = _2567
                                        else:
                                            _2251 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            require 0 < mem[_2251]
                                            mem[_2251 + 32] = address(s)
                                            require 1 < mem[_2251]
                                            mem[_2251 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[_2251 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[_2251 + 100] = t
                                            mem[_2251 + 132] = 64
                                            mem[_2251 + 164] = mem[_2251]
                                            s = 0
                                            while s < 32 * mem[_2251]:
                                                mem[s + _2251 + 196] = mem[s + _2251 + 32]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                            staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args t, 64, mem[_2251 + 164 len (32 * mem[_2251]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_2251 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _2251 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            _3992 = mem[_2251 + 96 len 4], Mask(224, 32, t) >> 32
                                            require mem[_2251 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                            require mem[_2251 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                            require mem[_2251 + mem[_2251 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_2251 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_2251 + mem[_2251 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                            mem[_2251 + ceil32(return_data.size) + 96] = mem[_2251 + mem[_2251 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                            _4028 = mem[_2251 + _3992 + 96]
                                            s = 0
                                            while s < 32 * _4028:
                                                mem[s + _2251 + ceil32(return_data.size) + 128] = mem[s + _2251 + _3992 + 128]
                                                s = s + 32
                                                continue 
                                            mem[64] = (32 * _4028) + _2251 + ceil32(return_data.size) + 128
                                            require 1 < mem[_2251 + ceil32(return_data.size) + 96]
                                            _5408 = mem[_2251 + ceil32(return_data.size) + 160]
                                            require idx < mem[96]
                                            if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                                _5448 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = 0
                                                mem[_5448] = _5408
                                            else:
                                                _5496 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = 0
                                                mem[_5496] = _5408 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                                else:
                                    if 24 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < ('cd', 36).length
                                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                        _1943 = mem[64]
                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                        mem[64] = mem[64] + 160
                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                        mem[_1943] = cd[((160 * idx) + cd[36] + 36)]
                                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[_1943 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                        mem[_1943 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                        mem[_1943 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                        mem[_1943 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                        if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                                 gas gas_remaining wei
                                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2374 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _2503 = mem[_2374]
                                            require mem[_2374 + 32] == bool(mem[_2374 + 32])
                                            require idx < mem[96]
                                            _2980 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2374 + 32])
                                            mem[_2980] = _2503
                                        else:
                                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                                    revert with 0, 'exchangeType not exist'
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                                     gas gas_remaining wei
                                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2499 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _2637 = mem[_2499]
                                                require mem[_2499 + 32] == bool(mem[_2499 + 32])
                                                require idx < mem[96]
                                                _3087 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2499 + 32])
                                                mem[_3087] = _2637
                                            else:
                                                _2309 = mem[64]
                                                mem[mem[64]] = 2
                                                mem[64] = mem[64] + 96
                                                require 0 < mem[_2309]
                                                mem[_2309 + 32] = address(s)
                                                require 1 < mem[_2309]
                                                mem[_2309 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[_2309 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                mem[_2309 + 100] = t
                                                mem[_2309 + 132] = 64
                                                mem[_2309 + 164] = mem[_2309]
                                                s = 0
                                                while s < 32 * mem[_2309]:
                                                    mem[s + _2309 + 196] = mem[s + _2309 + 32]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                        gas gas_remaining wei
                                                       args t, 64, mem[_2309 + 164 len (32 * mem[_2309]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_2309 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = _2309 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                _3994 = mem[_2309 + 96 len 4], Mask(224, 32, t) >> 32
                                                require mem[_2309 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                                require mem[_2309 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                                require mem[_2309 + mem[_2309 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_2309 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_2309 + mem[_2309 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                                mem[_2309 + ceil32(return_data.size) + 96] = mem[_2309 + mem[_2309 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                                _4029 = mem[_2309 + _3994 + 96]
                                                s = 0
                                                while s < 32 * _4029:
                                                    mem[s + _2309 + ceil32(return_data.size) + 128] = mem[s + _2309 + _3994 + 128]
                                                    s = s + 32
                                                    continue 
                                                mem[64] = (32 * _4029) + _2309 + ceil32(return_data.size) + 128
                                                require 1 < mem[_2309 + ceil32(return_data.size) + 96]
                                                _5409 = mem[_2309 + ceil32(return_data.size) + 160]
                                                require idx < mem[96]
                                                if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                                    _5451 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = 0
                                                    mem[_5451] = _5409
                                                else:
                                                    _5500 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = 0
                                                    mem[_5500] = _5409 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                                    else:
                                        if 27 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require idx < ('cd', 36).length
                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                            _1949 = mem[64]
                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                            mem[64] = mem[64] + 160
                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                            mem[_1949] = cd[((160 * idx) + cd[36] + 36)]
                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[_1949 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                            mem[_1949 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                            mem[_1949 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                            mem[_1949 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                            if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                                     gas gas_remaining wei
                                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2438 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _2575 = mem[_2438]
                                                require mem[_2438 + 32] == bool(mem[_2438 + 32])
                                                require idx < mem[96]
                                                _3039 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2438 + 32])
                                                mem[_3039] = _2575
                                            else:
                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                                        revert with 0, 'exchangeType not exist'
                                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                                         gas gas_remaining wei
                                                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2571 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _2710 = mem[_2571]
                                                    require mem[_2571 + 32] == bool(mem[_2571 + 32])
                                                    require idx < mem[96]
                                                    _3143 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2571 + 32])
                                                    mem[_3143] = _2710
                                                else:
                                                    _2375 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    require 0 < mem[_2375]
                                                    mem[_2375 + 32] = address(s)
                                                    require 1 < mem[_2375]
                                                    mem[_2375 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[_2375 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                    mem[_2375 + 100] = t
                                                    mem[_2375 + 132] = 64
                                                    mem[_2375 + 164] = mem[_2375]
                                                    s = 0
                                                    while s < 32 * mem[_2375]:
                                                        mem[s + _2375 + 196] = mem[s + _2375 + 32]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                    staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                            gas gas_remaining wei
                                                           args t, 64, mem[_2375 + 164 len (32 * mem[_2375]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_2375 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _2375 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    _3996 = mem[_2375 + 96 len 4], Mask(224, 32, t) >> 32
                                                    require mem[_2375 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                                    require mem[_2375 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                                    require mem[_2375 + mem[_2375 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_2375 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_2375 + mem[_2375 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                                    mem[_2375 + ceil32(return_data.size) + 96] = mem[_2375 + mem[_2375 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                                    _4030 = mem[_2375 + _3996 + 96]
                                                    s = 0
                                                    while s < 32 * _4030:
                                                        mem[s + _2375 + ceil32(return_data.size) + 128] = mem[s + _2375 + _3996 + 128]
                                                        s = s + 32
                                                        continue 
                                                    mem[64] = (32 * _4030) + _2375 + ceil32(return_data.size) + 128
                                                    require 1 < mem[_2375 + ceil32(return_data.size) + 96]
                                                    _5410 = mem[_2375 + ceil32(return_data.size) + 160]
                                                    require idx < mem[96]
                                                    if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                                        _5454 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = 0
                                                        mem[_5454] = _5410
                                                    else:
                                                        _5504 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = 0
                                                        mem[_5504] = _5410 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                                        else:
                                            if 28 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require idx < ('cd', 36).length
                                                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                _1953 = mem[64]
                                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                mem[64] = mem[64] + 160
                                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                mem[_1953] = cd[((160 * idx) + cd[36] + 36)]
                                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[_1953 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                mem[_1953 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                mem[_1953 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                mem[_1953 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                                         gas gas_remaining wei
                                                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2508 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _2645 = mem[_2508]
                                                    require mem[_2508 + 32] == bool(mem[_2508 + 32])
                                                    require idx < mem[96]
                                                    _3096 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2508 + 32])
                                                    mem[_3096] = _2645
                                                else:
                                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                                            revert with 0, 'exchangeType not exist'
                                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                                             gas gas_remaining wei
                                                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _2641 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _2782 = mem[_2641]
                                                        require mem[_2641 + 32] == bool(mem[_2641 + 32])
                                                        require idx < mem[96]
                                                        _3204 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2641 + 32])
                                                        mem[_3204] = _2782
                                                    else:
                                                        _2439 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        require 0 < mem[_2439]
                                                        mem[_2439 + 32] = address(s)
                                                        require 1 < mem[_2439]
                                                        mem[_2439 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[_2439 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                        mem[_2439 + 100] = t
                                                        mem[_2439 + 132] = 64
                                                        mem[_2439 + 164] = mem[_2439]
                                                        s = 0
                                                        while s < 32 * mem[_2439]:
                                                            mem[s + _2439 + 196] = mem[s + _2439 + 32]
                                                            s = s + 32
                                                            continue 
                                                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                        staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                gas gas_remaining wei
                                                               args t, 64, mem[_2439 + 164 len (32 * mem[_2439]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_2439 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _2439 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        _3998 = mem[_2439 + 96 len 4], Mask(224, 32, t) >> 32
                                                        require mem[_2439 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                                        require mem[_2439 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                                        require mem[_2439 + mem[_2439 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_2439 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_2439 + mem[_2439 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                                        mem[_2439 + ceil32(return_data.size) + 96] = mem[_2439 + mem[_2439 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                                        _4031 = mem[_2439 + _3998 + 96]
                                                        s = 0
                                                        while s < 32 * _4031:
                                                            mem[s + _2439 + ceil32(return_data.size) + 128] = mem[s + _2439 + _3998 + 128]
                                                            s = s + 32
                                                            continue 
                                                        mem[64] = (32 * _4031) + _2439 + ceil32(return_data.size) + 128
                                                        require 1 < mem[_2439 + ceil32(return_data.size) + 96]
                                                        _5411 = mem[_2439 + ceil32(return_data.size) + 160]
                                                        require idx < mem[96]
                                                        if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                                            _5457 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = 0
                                                            mem[_5457] = _5411
                                                        else:
                                                            _5508 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = 0
                                                            mem[_5508] = _5411 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                                            else:
                                                if 29 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require idx < ('cd', 36).length
                                                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                    _1957 = mem[64]
                                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                    mem[64] = mem[64] + 160
                                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                    mem[_1957] = cd[((160 * idx) + cd[36] + 36)]
                                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[_1957 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                    mem[_1957 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                    mem[_1957 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    mem[_1957 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                    if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                                             gas gas_remaining wei
                                                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _2580 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _2718 = mem[_2580]
                                                        require mem[_2580 + 32] == bool(mem[_2580 + 32])
                                                        require idx < mem[96]
                                                        _3152 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2580 + 32])
                                                        mem[_3152] = _2718
                                                    else:
                                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                                                revert with 0, 'exchangeType not exist'
                                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                                                 gas gas_remaining wei
                                                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _2714 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _2856 = mem[_2714]
                                                            require mem[_2714 + 32] == bool(mem[_2714 + 32])
                                                            require idx < mem[96]
                                                            _3264 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2714 + 32])
                                                            mem[_3264] = _2856
                                                        else:
                                                            _2509 = mem[64]
                                                            mem[mem[64]] = 2
                                                            mem[64] = mem[64] + 96
                                                            require 0 < mem[_2509]
                                                            mem[_2509 + 32] = address(s)
                                                            require 1 < mem[_2509]
                                                            mem[_2509 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_2509 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                            mem[_2509 + 100] = t
                                                            mem[_2509 + 132] = 64
                                                            mem[_2509 + 164] = mem[_2509]
                                                            s = 0
                                                            while s < 32 * mem[_2509]:
                                                                mem[s + _2509 + 196] = mem[s + _2509 + 32]
                                                                s = s + 32
                                                                continue 
                                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                            staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                    gas gas_remaining wei
                                                                   args t, 64, mem[_2509 + 164 len (32 * mem[_2509]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_2509 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _2509 + ceil32(return_data.size) + 96
                                                            require return_data.size >= 32
                                                            _4000 = mem[_2509 + 96 len 4], Mask(224, 32, t) >> 32
                                                            require mem[_2509 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                                            require mem[_2509 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                                            require mem[_2509 + mem[_2509 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_2509 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_2509 + mem[_2509 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                                            mem[_2509 + ceil32(return_data.size) + 96] = mem[_2509 + mem[_2509 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                                            _4032 = mem[_2509 + _4000 + 96]
                                                            s = 0
                                                            while s < 32 * _4032:
                                                                mem[s + _2509 + ceil32(return_data.size) + 128] = mem[s + _2509 + _4000 + 128]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4032) + _2509 + ceil32(return_data.size) + 128
                                                            require 1 < mem[_2509 + ceil32(return_data.size) + 96]
                                                            _5412 = mem[_2509 + ceil32(return_data.size) + 160]
                                                            require idx < mem[96]
                                                            if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                                                _5460 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = 0
                                                                mem[_5460] = _5412
                                                            else:
                                                                _5512 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = 0
                                                                mem[_5512] = _5412 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                                                else:
                                                    if 30 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                             gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require idx < ('cd', 36).length
                                                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                        _1961 = mem[64]
                                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                        mem[64] = mem[64] + 160
                                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                        mem[_1961] = cd[((160 * idx) + cd[36] + 36)]
                                                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[_1961 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                        mem[_1961 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                        mem[_1961 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        mem[_1961 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                        if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                                                 gas gas_remaining wei
                                                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _2650 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _2790 = mem[_2650]
                                                            require mem[_2650 + 32] == bool(mem[_2650 + 32])
                                                            require idx < mem[96]
                                                            _3213 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2650 + 32])
                                                            mem[_3213] = _2790
                                                        else:
                                                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                                                    revert with 0, 'exchangeType not exist'
                                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                                                     gas gas_remaining wei
                                                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                                if not delegate.return_code:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _2786 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _2925 = mem[_2786]
                                                                require mem[_2786 + 32] == bool(mem[_2786 + 32])
                                                                require idx < mem[96]
                                                                _3329 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2786 + 32])
                                                                mem[_3329] = _2925
                                                            else:
                                                                _2581 = mem[64]
                                                                mem[mem[64]] = 2
                                                                mem[64] = mem[64] + 96
                                                                require 0 < mem[_2581]
                                                                mem[_2581 + 32] = address(s)
                                                                require 1 < mem[_2581]
                                                                mem[_2581 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                mem[_2581 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                mem[_2581 + 100] = t
                                                                mem[_2581 + 132] = 64
                                                                mem[_2581 + 164] = mem[_2581]
                                                                s = 0
                                                                while s < 32 * mem[_2581]:
                                                                    mem[s + _2581 + 196] = mem[s + _2581 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                                staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                        gas gas_remaining wei
                                                                       args t, 64, mem[_2581 + 164 len (32 * mem[_2581]) + 32]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[_2581 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                mem[64] = _2581 + ceil32(return_data.size) + 96
                                                                require return_data.size >= 32
                                                                _4002 = mem[_2581 + 96 len 4], Mask(224, 32, t) >> 32
                                                                require mem[_2581 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                                                require mem[_2581 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                                                require mem[_2581 + mem[_2581 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_2581 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_2581 + mem[_2581 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                                                mem[_2581 + ceil32(return_data.size) + 96] = mem[_2581 + mem[_2581 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                                                _4033 = mem[_2581 + _4002 + 96]
                                                                s = 0
                                                                while s < 32 * _4033:
                                                                    mem[s + _2581 + ceil32(return_data.size) + 128] = mem[s + _2581 + _4002 + 128]
                                                                    s = s + 32
                                                                    continue 
                                                                mem[64] = (32 * _4033) + _2581 + ceil32(return_data.size) + 128
                                                                require 1 < mem[_2581 + ceil32(return_data.size) + 96]
                                                                _5413 = mem[_2581 + ceil32(return_data.size) + 160]
                                                                require idx < mem[96]
                                                                if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                                                    _5463 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = 0
                                                                    mem[_5463] = _5413
                                                                else:
                                                                    _5516 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = 0
                                                                    mem[_5516] = _5413 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                                                    else:
                                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 31:
                                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                            _1917 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[_1917] = cd[((160 * idx) + cd[36] + 36)]
                                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_1917 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[_1917 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[_1917 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[_1917 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                            if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                                                     gas gas_remaining wei
                                                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                                if not delegate.return_code:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _2122 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _2211 = mem[_2122]
                                                                require mem[_2122 + 32] == bool(mem[_2122 + 32])
                                                                require idx < mem[96]
                                                                _2652 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2122 + 32])
                                                                mem[_2652] = _2211
                                                            else:
                                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                                                        revert with 0, 'exchangeType not exist'
                                                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                                                         gas gas_remaining wei
                                                                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                                    if not delegate.return_code:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _2207 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _2328 = mem[_2207]
                                                                    require mem[_2207 + 32] == bool(mem[_2207 + 32])
                                                                    require idx < mem[96]
                                                                    _2792 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2207 + 32])
                                                                    mem[_2792] = _2328
                                                                else:
                                                                    _2093 = mem[64]
                                                                    mem[mem[64]] = 2
                                                                    mem[64] = mem[64] + 96
                                                                    require 0 < mem[_2093]
                                                                    mem[_2093 + 32] = address(s)
                                                                    require 1 < mem[_2093]
                                                                    mem[_2093 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                    mem[_2093 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2093 + 100] = t
                                                                    mem[_2093 + 132] = 64
                                                                    mem[_2093 + 164] = mem[_2093]
                                                                    s = 0
                                                                    while s < 32 * mem[_2093]:
                                                                        mem[s + _2093 + 196] = mem[s + _2093 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                                    staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                            gas gas_remaining wei
                                                                           args t, 64, mem[_2093 + 164 len (32 * mem[_2093]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[_2093 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    mem[64] = _2093 + ceil32(return_data.size) + 96
                                                                    require return_data.size >= 32
                                                                    _4004 = mem[_2093 + 96 len 4], Mask(224, 32, t) >> 32
                                                                    require mem[_2093 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                                                    require mem[_2093 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                                                    require mem[_2093 + mem[_2093 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_2093 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_2093 + mem[_2093 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                                                    mem[_2093 + ceil32(return_data.size) + 96] = mem[_2093 + mem[_2093 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                                                    _4034 = mem[_2093 + _4004 + 96]
                                                                    s = 0
                                                                    while s < 32 * _4034:
                                                                        mem[s + _2093 + ceil32(return_data.size) + 128] = mem[s + _2093 + _4004 + 128]
                                                                        s = s + 32
                                                                        continue 
                                                                    mem[64] = (32 * _4034) + _2093 + ceil32(return_data.size) + 128
                                                                    require 1 < mem[_2093 + ceil32(return_data.size) + 96]
                                                                    _5414 = mem[_2093 + ceil32(return_data.size) + 160]
                                                                    require idx < mem[96]
                                                                    if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                                                        _5466 = mem[(32 * idx) + 128]
                                                                        require idx < mem[96]
                                                                        mem[mem[(32 * idx) + 128] + 32] = 0
                                                                        mem[_5466] = _5414
                                                                    else:
                                                                        _5520 = mem[(32 * idx) + 128]
                                                                        require idx < mem[96]
                                                                        mem[mem[(32 * idx) + 128] + 32] = 0
                                                                        mem[_5520] = _5414 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                                                        else:
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require idx < ('cd', 36).length
                                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                            _1965 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[_1965] = cd[((160 * idx) + cd[36] + 36)]
                                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_1965 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[_1965 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[_1965 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[_1965 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                            if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                                                     gas gas_remaining wei
                                                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                                if not delegate.return_code:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _2727 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _2868 = mem[_2727]
                                                                require mem[_2727 + 32] == bool(mem[_2727 + 32])
                                                                require idx < mem[96]
                                                                _3276 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2727 + 32])
                                                                mem[_3276] = _2868
                                                            else:
                                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                                                        revert with 0, 'exchangeType not exist'
                                                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                                                         gas gas_remaining wei
                                                                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                                    if not delegate.return_code:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _2864 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _2986 = mem[_2864]
                                                                    require mem[_2864 + 32] == bool(mem[_2864 + 32])
                                                                    require idx < mem[96]
                                                                    _3396 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2864 + 32])
                                                                    mem[_3396] = _2986
                                                                else:
                                                                    _2654 = mem[64]
                                                                    mem[mem[64]] = 2
                                                                    mem[64] = mem[64] + 96
                                                                    require 0 < mem[_2654]
                                                                    mem[_2654 + 32] = address(s)
                                                                    require 1 < mem[_2654]
                                                                    mem[_2654 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                    mem[_2654 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_2654 + 100] = t
                                                                    mem[_2654 + 132] = 64
                                                                    mem[_2654 + 164] = mem[_2654]
                                                                    s = 0
                                                                    while s < 32 * mem[_2654]:
                                                                        mem[s + _2654 + 196] = mem[s + _2654 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                                    staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                            gas gas_remaining wei
                                                                           args t, 64, mem[_2654 + 164 len (32 * mem[_2654]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[_2654 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    mem[64] = _2654 + ceil32(return_data.size) + 96
                                                                    require return_data.size >= 32
                                                                    _4006 = mem[_2654 + 96 len 4], Mask(224, 32, t) >> 32
                                                                    require mem[_2654 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                                                    require mem[_2654 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                                                    require mem[_2654 + mem[_2654 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_2654 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_2654 + mem[_2654 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                                                    mem[_2654 + ceil32(return_data.size) + 96] = mem[_2654 + mem[_2654 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                                                    _4035 = mem[_2654 + _4006 + 96]
                                                                    s = 0
                                                                    while s < 32 * _4035:
                                                                        mem[s + _2654 + ceil32(return_data.size) + 128] = mem[s + _2654 + _4006 + 128]
                                                                        s = s + 32
                                                                        continue 
                                                                    mem[64] = (32 * _4035) + _2654 + ceil32(return_data.size) + 128
                                                                    require 1 < mem[_2654 + ceil32(return_data.size) + 96]
                                                                    _5415 = mem[_2654 + ceil32(return_data.size) + 160]
                                                                    require idx < mem[96]
                                                                    if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                                                        _5469 = mem[(32 * idx) + 128]
                                                                        require idx < mem[96]
                                                                        mem[mem[(32 * idx) + 128] + 32] = 0
                                                                        mem[_5469] = _5415
                                                                    else:
                                                                        _5524 = mem[(32 * idx) + 128]
                                                                        require idx < mem[96]
                                                                        mem[mem[(32 * idx) + 128] + 32] = 0
                                                                        mem[_5524] = _5415 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
            require idx < mem[96]
            require idx < ('cd', 36).length
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[36] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
        _1878 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1878] = cd[4]
        mem[_1878 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        idx = 0
        while idx < ('cd', 36).length:
            _3937 = mem[_1878 + 32]
            _3938 = mem[_1878]
            require idx < mem[96]
            _3967 = mem[mem[(32 * idx) + 128]]
            require idx < ('cd', 36).length
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
            staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4077 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4092 = mem[_4077]
            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
            if uint16(cd[((160 * idx) + cd[36] + 100)]):
                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                _4263 = mem[64]
                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                mem[64] = mem[64] + 160
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                mem[_4263] = cd[((160 * idx) + cd[36] + 36)]
                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                mem[_4263 + 32] = cd[((160 * idx) + cd[36] + 68)]
                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                mem[_4263 + 64] = cd[((160 * idx) + cd[36] + 100)]
                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                mem[_4263 + 96] = cd[((160 * idx) + cd[36] + 132)]
                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                mem[_4263 + 128] = cd[((160 * idx) + cd[36] + 164)]
                if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                    mem[mem[64] + 36] = _3938
                    mem[mem[64] + 68] = _3967
                    mem[mem[64] + 100] = address(_3937)
                    mem[mem[64] + 132] = address(cd[((160 * idx) + cd[36] + 68)])
                    mem[mem[64] + 164] = address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = uint16(cd[((160 * idx) + cd[36] + 132)])
                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xa58d574 with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _3938, _3967, address(_3937), address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), 0, uint16(cd[((160 * idx) + cd[36] + 132)])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                    staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4446 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4446] - _4092 != _3967:
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        if idx != ('cd', 36).length - 1:
                            return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_4446] - _4092, _3967
                        else:
                            return 0
                else:
                    if 3 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                        mem[mem[64] + 36] = _3938
                        mem[mem[64] + 68] = address(_3937)
                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 132] = address(cd[((160 * idx) + cd[36] + 36)])
                        mem[mem[64] + 164] = 0
                        require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                        delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x9f22937f with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _3938, address(_3937), address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), 0
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                        staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4474 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4474] - _4092 != _3967:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            if idx != ('cd', 36).length - 1:
                                return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_4474] - _4092, _3967
                            else:
                                return 0
                    else:
                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                            staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4336 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4336] - _4092 != _3967:
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                if idx != ('cd', 36).length - 1:
                                    return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_4336] - _4092, _3967
                                else:
                                    return 0
                        else:
                            mem[mem[64] + 36] = _3938
                            mem[mem[64] + 68] = _3967
                            mem[mem[64] + 100] = address(_3937)
                            mem[mem[64] + 132] = address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 164] = address(cd[((160 * idx) + cd[36] + 36)])
                            mem[mem[64] + 196] = 0
                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x35d92d69 with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _3938, _3967, address(_3937), address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), 0
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                            staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4504 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4504] - _4092 != _3967:
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                if idx != ('cd', 36).length - 1:
                                    return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_4504] - _4092, _3967
                                else:
                                    return 0
            else:
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[((160 * idx) + cd[36] + 36)])
                require ext_code.size(address(_3937))
                staticcall address(_3937).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((160 * idx) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4268 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4273 = mem[_4268]
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                _4297 = mem[64]
                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = _3938
                _4298 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_4298 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_4298 + 36 len 28]
                _4301 = mem[_4298]
                t = _4298 + 32
                u = mem[64]
                s = mem[_4298]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_4298])] = mem[_4298 + floor32(mem[_4298]) + -(mem[_4298] % 32) + 64 len mem[_4298] % 32] or Mask(8 * -(mem[_4298] % 32) + 32, -(8 * -(mem[_4298] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4298])])
                call address(_3937).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _4301 + _4297 + -mem[64] + 96]
                if not return_data.size:
                    require ext_call.success
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(address(_3937))
                    staticcall address(_3937).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5610 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_5610] - _4273 != _3938:
                        return 1, address(_3937), mem[_5610] - _4273, _3938
                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((160 * idx) + cd[36] + 36)]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5641 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5641] == mem[_5641 + 12 len 20]
                    if mem[_5641 + 12 len 20] != address(cd[((160 * idx) + cd[36] + 68)]):
                        mem[mem[64] + 36] = _3967
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                        call address(cd[((160 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3967, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                        staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5790 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5790] - _4092 != _3967:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            if idx != ('cd', 36).length - 1:
                                return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_5790] - _4092, _3967
                            else:
                                return 0
                    else:
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                        call address(cd[((160 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3967, 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                        staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5791 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5791] - _4092 != _3967:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            if idx != ('cd', 36).length - 1:
                                return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_5791] - _4092, _3967
                            else:
                                return 0
                else:
                    _5402 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_5402] = return_data.size
                    mem[_5402 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(address(_3937))
                    staticcall address(_3937).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5611 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_5611] - _4273 != _3938:
                        return 1, address(_3937), mem[_5611] - _4273, _3938
                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((160 * idx) + cd[36] + 36)]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5642] == mem[_5642 + 12 len 20]
                    if mem[_5642 + 12 len 20] != address(cd[((160 * idx) + cd[36] + 68)]):
                        mem[mem[64] + 36] = _3967
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                        call address(cd[((160 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _3967, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                        staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5792 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5792] - _4092 != _3967:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            if idx != ('cd', 36).length - 1:
                                return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_5792] - _4092, _3967
                            else:
                                return 0
                    else:
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                        call address(cd[((160 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _3967, 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                        staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5793 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5793] - _4092 != _3967:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            if idx != ('cd', 36).length - 1:
                                return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_5793] - _4092, _3967
                            else:
                                return 0
            require idx < mem[96]
            mem[_1878] = mem[mem[(32 * idx) + 128]]
            require idx < ('cd', 36).length
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            mem[_1878 + 32] = address(cd[((160 * idx) + cd[36] + 68)])
            idx = idx + 1
            continue 
    else:
        mem[64] = (32 * ('cd', 36).length) + 192
        mem[(32 * ('cd', 36).length) + 128] = 0
        mem[(32 * ('cd', 36).length) + 160] = 0
        mem[var21001] = (32 * ('cd', 36).length) + 128
        s = var21001
        idx = var21002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 36).length) + 128] = 0
            mem[(32 * ('cd', 36).length) + 160] = 0
            mem[s + 32] = (32 * ('cd', 36).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        t = cd[4]
        while idx < ('cd', 36).length:
            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
            require idx < ('cd', 36).length
            if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 36).length
                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                _5645 = mem[64]
                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                mem[64] = mem[64] + 160
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                mem[_5645] = cd[((160 * idx) + cd[36] + 36)]
                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                mem[_5645 + 32] = cd[((160 * idx) + cd[36] + 68)]
                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                mem[_5645 + 64] = cd[((160 * idx) + cd[36] + 100)]
                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                mem[_5645 + 96] = cd[((160 * idx) + cd[36] + 132)]
                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                mem[_5645 + 128] = cd[((160 * idx) + cd[36] + 164)]
                if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                         gas gas_remaining wei
                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5797 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _5855 = mem[_5797]
                    require mem[_5797 + 32] == bool(mem[_5797 + 32])
                    require idx < mem[96]
                    _6105 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_5797 + 32])
                    mem[_6105] = _5855
                else:
                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                            revert with 0, 'exchangeType not exist'
                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                             gas gas_remaining wei
                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5851 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5918 = mem[_5851]
                        require mem[_5851 + 32] == bool(mem[_5851 + 32])
                        require idx < mem[96]
                        _6189 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_5851 + 32])
                        mem[_6189] = _5918
                    else:
                        _5765 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_5765]
                        mem[_5765 + 32] = address(s)
                        require 1 < mem[_5765]
                        mem[_5765 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                        mem[_5765 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_5765 + 100] = t
                        mem[_5765 + 132] = 64
                        mem[_5765 + 164] = mem[_5765]
                        s = 0
                        while s < 32 * mem[_5765]:
                            mem[s + _5765 + 196] = mem[s + _5765 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args t, 64, mem[_5765 + 164 len (32 * mem[_5765]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5765 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5765 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _6852 = mem[_5765 + 96 len 4], Mask(224, 32, t) >> 32
                        require mem[_5765 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                        require mem[_5765 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                        require mem[_5765 + mem[_5765 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_5765 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_5765 + mem[_5765 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5765 + ceil32(return_data.size) + 96] = mem[_5765 + mem[_5765 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                        _6892 = mem[_5765 + _6852 + 96]
                        s = 0
                        while s < 32 * _6892:
                            mem[s + _5765 + ceil32(return_data.size) + 128] = mem[s + _5765 + _6852 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _6892) + _5765 + ceil32(return_data.size) + 128
                        require 1 < mem[_5765 + ceil32(return_data.size) + 96]
                        _7336 = mem[_5765 + ceil32(return_data.size) + 160]
                        require idx < mem[96]
                        if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                            _7362 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = 0
                            mem[_7362] = _7336
                        else:
                            _7403 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = 0
                            mem[_7403] = _7336 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
            else:
                if 6 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < ('cd', 36).length
                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                    _5651 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    mem[_5651] = cd[((160 * idx) + cd[36] + 36)]
                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                    mem[_5651 + 32] = cd[((160 * idx) + cd[36] + 68)]
                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                    mem[_5651 + 64] = cd[((160 * idx) + cd[36] + 100)]
                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                    mem[_5651 + 96] = cd[((160 * idx) + cd[36] + 132)]
                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                    mem[_5651 + 128] = cd[((160 * idx) + cd[36] + 164)]
                    if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                             gas gas_remaining wei
                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5822 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5884 = mem[_5822]
                        require mem[_5822 + 32] == bool(mem[_5822 + 32])
                        require idx < mem[96]
                        _6154 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_5822 + 32])
                        mem[_6154] = _5884
                    else:
                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                revert with 0, 'exchangeType not exist'
                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                 gas gas_remaining wei
                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5880 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _5951 = mem[_5880]
                            require mem[_5880 + 32] == bool(mem[_5880 + 32])
                            require idx < mem[96]
                            _6227 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_5880 + 32])
                            mem[_6227] = _5951
                        else:
                            _5798 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_5798]
                            mem[_5798 + 32] = address(s)
                            require 1 < mem[_5798]
                            mem[_5798 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                            mem[_5798 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_5798 + 100] = t
                            mem[_5798 + 132] = 64
                            mem[_5798 + 164] = mem[_5798]
                            s = 0
                            while s < 32 * mem[_5798]:
                                mem[s + _5798 + 196] = mem[s + _5798 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args t, 64, mem[_5798 + 164 len (32 * mem[_5798]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_5798 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _5798 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _6854 = mem[_5798 + 96 len 4], Mask(224, 32, t) >> 32
                            require mem[_5798 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                            require mem[_5798 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                            require mem[_5798 + mem[_5798 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_5798 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_5798 + mem[_5798 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                            mem[_5798 + ceil32(return_data.size) + 96] = mem[_5798 + mem[_5798 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                            _6893 = mem[_5798 + _6854 + 96]
                            s = 0
                            while s < 32 * _6893:
                                mem[s + _5798 + ceil32(return_data.size) + 128] = mem[s + _5798 + _6854 + 128]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _6893) + _5798 + ceil32(return_data.size) + 128
                            require 1 < mem[_5798 + ceil32(return_data.size) + 96]
                            _7337 = mem[_5798 + ceil32(return_data.size) + 160]
                            require idx < mem[96]
                            if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                _7365 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = 0
                                mem[_7365] = _7337
                            else:
                                _7407 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = 0
                                mem[_7407] = _7337 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                else:
                    if 17 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < ('cd', 36).length
                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                        _5655 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                        mem[_5655] = cd[((160 * idx) + cd[36] + 36)]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[_5655 + 32] = cd[((160 * idx) + cd[36] + 68)]
                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                        mem[_5655 + 64] = cd[((160 * idx) + cd[36] + 100)]
                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                        mem[_5655 + 96] = cd[((160 * idx) + cd[36] + 132)]
                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                        mem[_5655 + 128] = cd[((160 * idx) + cd[36] + 164)]
                        if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                 gas gas_remaining wei
                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5860 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _5926 = mem[_5860]
                            require mem[_5860 + 32] == bool(mem[_5860 + 32])
                            require idx < mem[96]
                            _6198 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_5860 + 32])
                            mem[_6198] = _5926
                        else:
                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                    revert with 0, 'exchangeType not exist'
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                     gas gas_remaining wei
                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5922 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _5992 = mem[_5922]
                                require mem[_5922 + 32] == bool(mem[_5922 + 32])
                                require idx < mem[96]
                                _6265 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_5922 + 32])
                                mem[_6265] = _5992
                            else:
                                _5823 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_5823]
                                mem[_5823 + 32] = address(s)
                                require 1 < mem[_5823]
                                mem[_5823 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                mem[_5823 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_5823 + 100] = t
                                mem[_5823 + 132] = 64
                                mem[_5823 + 164] = mem[_5823]
                                s = 0
                                while s < 32 * mem[_5823]:
                                    mem[s + _5823 + 196] = mem[s + _5823 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args t, 64, mem[_5823 + 164 len (32 * mem[_5823]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5823 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _5823 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _6856 = mem[_5823 + 96 len 4], Mask(224, 32, t) >> 32
                                require mem[_5823 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                require mem[_5823 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                require mem[_5823 + mem[_5823 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_5823 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_5823 + mem[_5823 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                mem[_5823 + ceil32(return_data.size) + 96] = mem[_5823 + mem[_5823 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                _6894 = mem[_5823 + _6856 + 96]
                                s = 0
                                while s < 32 * _6894:
                                    mem[s + _5823 + ceil32(return_data.size) + 128] = mem[s + _5823 + _6856 + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _6894) + _5823 + ceil32(return_data.size) + 128
                                require 1 < mem[_5823 + ceil32(return_data.size) + 96]
                                _7338 = mem[_5823 + ceil32(return_data.size) + 160]
                                require idx < mem[96]
                                if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                    _7368 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = 0
                                    mem[_7368] = _7338
                                else:
                                    _7411 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = 0
                                    mem[_7411] = _7338 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                    else:
                        if 18 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx < ('cd', 36).length
                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                            _5659 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                            mem[_5659] = cd[((160 * idx) + cd[36] + 36)]
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            mem[_5659 + 32] = cd[((160 * idx) + cd[36] + 68)]
                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                            mem[_5659 + 64] = cd[((160 * idx) + cd[36] + 100)]
                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                            mem[_5659 + 96] = cd[((160 * idx) + cd[36] + 132)]
                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                            mem[_5659 + 128] = cd[((160 * idx) + cd[36] + 164)]
                            if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                     gas gas_remaining wei
                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5889 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _5959 = mem[_5889]
                                require mem[_5889 + 32] == bool(mem[_5889 + 32])
                                require idx < mem[96]
                                _6236 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_5889 + 32])
                                mem[_6236] = _5959
                            else:
                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                        revert with 0, 'exchangeType not exist'
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                         gas gas_remaining wei
                                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5955 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _6029 = mem[_5955]
                                    require mem[_5955 + 32] == bool(mem[_5955 + 32])
                                    require idx < mem[96]
                                    _6302 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_5955 + 32])
                                    mem[_6302] = _6029
                                else:
                                    _5861 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_5861]
                                    mem[_5861 + 32] = address(s)
                                    require 1 < mem[_5861]
                                    mem[_5861 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[_5861 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_5861 + 100] = t
                                    mem[_5861 + 132] = 64
                                    mem[_5861 + 164] = mem[_5861]
                                    s = 0
                                    while s < 32 * mem[_5861]:
                                        mem[s + _5861 + 196] = mem[s + _5861 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                    staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args t, 64, mem[_5861 + 164 len (32 * mem[_5861]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5861 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _5861 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _6858 = mem[_5861 + 96 len 4], Mask(224, 32, t) >> 32
                                    require mem[_5861 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                    require mem[_5861 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                    require mem[_5861 + mem[_5861 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_5861 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_5861 + mem[_5861 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                    mem[_5861 + ceil32(return_data.size) + 96] = mem[_5861 + mem[_5861 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                    _6895 = mem[_5861 + _6858 + 96]
                                    s = 0
                                    while s < 32 * _6895:
                                        mem[s + _5861 + ceil32(return_data.size) + 128] = mem[s + _5861 + _6858 + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _6895) + _5861 + ceil32(return_data.size) + 128
                                    require 1 < mem[_5861 + ceil32(return_data.size) + 96]
                                    _7339 = mem[_5861 + ceil32(return_data.size) + 160]
                                    require idx < mem[96]
                                    if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                        _7371 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = 0
                                        mem[_7371] = _7339
                                    else:
                                        _7415 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = 0
                                        mem[_7415] = _7339 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                        else:
                            if 19 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx < ('cd', 36).length
                                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                _5662 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                mem[_5662] = cd[((160 * idx) + cd[36] + 36)]
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                mem[_5662 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                mem[_5662 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                mem[_5662 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                mem[_5662 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                         gas gas_remaining wei
                                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5931 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _6000 = mem[_5931]
                                    require mem[_5931 + 32] == bool(mem[_5931 + 32])
                                    require idx < mem[96]
                                    _6274 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_5931 + 32])
                                    mem[_6274] = _6000
                                else:
                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                            revert with 0, 'exchangeType not exist'
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                             gas gas_remaining wei
                                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5996 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _6070 = mem[_5996]
                                        require mem[_5996 + 32] == bool(mem[_5996 + 32])
                                        require idx < mem[96]
                                        _6333 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_5996 + 32])
                                        mem[_6333] = _6070
                                    else:
                                        _5890 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require 0 < mem[_5890]
                                        mem[_5890 + 32] = address(s)
                                        require 1 < mem[_5890]
                                        mem[_5890 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[_5890 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[_5890 + 100] = t
                                        mem[_5890 + 132] = 64
                                        mem[_5890 + 164] = mem[_5890]
                                        s = 0
                                        while s < 32 * mem[_5890]:
                                            mem[s + _5890 + 196] = mem[s + _5890 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                        staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args t, 64, mem[_5890 + 164 len (32 * mem[_5890]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5890 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _5890 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _6860 = mem[_5890 + 96 len 4], Mask(224, 32, t) >> 32
                                        require mem[_5890 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                        require mem[_5890 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                        require mem[_5890 + mem[_5890 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_5890 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_5890 + mem[_5890 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                        mem[_5890 + ceil32(return_data.size) + 96] = mem[_5890 + mem[_5890 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                        _6896 = mem[_5890 + _6860 + 96]
                                        s = 0
                                        while s < 32 * _6896:
                                            mem[s + _5890 + ceil32(return_data.size) + 128] = mem[s + _5890 + _6860 + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _6896) + _5890 + ceil32(return_data.size) + 128
                                        require 1 < mem[_5890 + ceil32(return_data.size) + 96]
                                        _7340 = mem[_5890 + ceil32(return_data.size) + 160]
                                        require idx < mem[96]
                                        if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                            _7374 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = 0
                                            mem[_7374] = _7340
                                        else:
                                            _7419 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = 0
                                            mem[_7419] = _7340 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                            else:
                                if 23 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx < ('cd', 36).length
                                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                    _5666 = mem[64]
                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                    mem[64] = mem[64] + 160
                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                    mem[_5666] = cd[((160 * idx) + cd[36] + 36)]
                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[_5666 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                    mem[_5666 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                    mem[_5666 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                    mem[_5666 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                    if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                             gas gas_remaining wei
                                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5964 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _6037 = mem[_5964]
                                        require mem[_5964 + 32] == bool(mem[_5964 + 32])
                                        require idx < mem[96]
                                        _6311 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_5964 + 32])
                                        mem[_6311] = _6037
                                    else:
                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                                revert with 0, 'exchangeType not exist'
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                                 gas gas_remaining wei
                                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6033 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _6111 = mem[_6033]
                                            require mem[_6033 + 32] == bool(mem[_6033 + 32])
                                            require idx < mem[96]
                                            _6362 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_6033 + 32])
                                            mem[_6362] = _6111
                                        else:
                                            _5932 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            require 0 < mem[_5932]
                                            mem[_5932 + 32] = address(s)
                                            require 1 < mem[_5932]
                                            mem[_5932 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[_5932 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                            mem[_5932 + 100] = t
                                            mem[_5932 + 132] = 64
                                            mem[_5932 + 164] = mem[_5932]
                                            s = 0
                                            while s < 32 * mem[_5932]:
                                                mem[s + _5932 + 196] = mem[s + _5932 + 32]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                            staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                    gas gas_remaining wei
                                                   args t, 64, mem[_5932 + 164 len (32 * mem[_5932]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_5932 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5932 + ceil32(return_data.size) + 96
                                            require return_data.size >= 32
                                            _6862 = mem[_5932 + 96 len 4], Mask(224, 32, t) >> 32
                                            require mem[_5932 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                            require mem[_5932 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                            require mem[_5932 + mem[_5932 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_5932 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_5932 + mem[_5932 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                            mem[_5932 + ceil32(return_data.size) + 96] = mem[_5932 + mem[_5932 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                            _6897 = mem[_5932 + _6862 + 96]
                                            s = 0
                                            while s < 32 * _6897:
                                                mem[s + _5932 + ceil32(return_data.size) + 128] = mem[s + _5932 + _6862 + 128]
                                                s = s + 32
                                                continue 
                                            mem[64] = (32 * _6897) + _5932 + ceil32(return_data.size) + 128
                                            require 1 < mem[_5932 + ceil32(return_data.size) + 96]
                                            _7341 = mem[_5932 + ceil32(return_data.size) + 160]
                                            require idx < mem[96]
                                            if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                                _7377 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = 0
                                                mem[_7377] = _7341
                                            else:
                                                _7423 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = 0
                                                mem[_7423] = _7341 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                                else:
                                    if 24 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < ('cd', 36).length
                                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                        _5673 = mem[64]
                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                        mem[64] = mem[64] + 160
                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                        mem[_5673] = cd[((160 * idx) + cd[36] + 36)]
                                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[_5673 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                        mem[_5673 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                        mem[_5673 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                        mem[_5673 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                        if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                                 gas gas_remaining wei
                                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6005 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _6078 = mem[_6005]
                                            require mem[_6005 + 32] == bool(mem[_6005 + 32])
                                            require idx < mem[96]
                                            _6342 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_6005 + 32])
                                            mem[_6342] = _6078
                                        else:
                                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                                    revert with 0, 'exchangeType not exist'
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                                     gas gas_remaining wei
                                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6074 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _6160 = mem[_6074]
                                                require mem[_6074 + 32] == bool(mem[_6074 + 32])
                                                require idx < mem[96]
                                                _6386 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_6074 + 32])
                                                mem[_6386] = _6160
                                            else:
                                                _5965 = mem[64]
                                                mem[mem[64]] = 2
                                                mem[64] = mem[64] + 96
                                                require 0 < mem[_5965]
                                                mem[_5965 + 32] = address(s)
                                                require 1 < mem[_5965]
                                                mem[_5965 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[_5965 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                mem[_5965 + 100] = t
                                                mem[_5965 + 132] = 64
                                                mem[_5965 + 164] = mem[_5965]
                                                s = 0
                                                while s < 32 * mem[_5965]:
                                                    mem[s + _5965 + 196] = mem[s + _5965 + 32]
                                                    s = s + 32
                                                    continue 
                                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                        gas gas_remaining wei
                                                       args t, 64, mem[_5965 + 164 len (32 * mem[_5965]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5965 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = _5965 + ceil32(return_data.size) + 96
                                                require return_data.size >= 32
                                                _6864 = mem[_5965 + 96 len 4], Mask(224, 32, t) >> 32
                                                require mem[_5965 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                                require mem[_5965 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                                require mem[_5965 + mem[_5965 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_5965 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_5965 + mem[_5965 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                                mem[_5965 + ceil32(return_data.size) + 96] = mem[_5965 + mem[_5965 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                                _6898 = mem[_5965 + _6864 + 96]
                                                s = 0
                                                while s < 32 * _6898:
                                                    mem[s + _5965 + ceil32(return_data.size) + 128] = mem[s + _5965 + _6864 + 128]
                                                    s = s + 32
                                                    continue 
                                                mem[64] = (32 * _6898) + _5965 + ceil32(return_data.size) + 128
                                                require 1 < mem[_5965 + ceil32(return_data.size) + 96]
                                                _7342 = mem[_5965 + ceil32(return_data.size) + 160]
                                                require idx < mem[96]
                                                if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                                    _7380 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = 0
                                                    mem[_7380] = _7342
                                                else:
                                                    _7427 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = 0
                                                    mem[_7427] = _7342 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                                    else:
                                        if 27 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require idx < ('cd', 36).length
                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                            _5675 = mem[64]
                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                            mem[64] = mem[64] + 160
                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                            mem[_5675] = cd[((160 * idx) + cd[36] + 36)]
                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[_5675 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                            mem[_5675 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                            mem[_5675 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                            mem[_5675 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                            if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                                     gas gas_remaining wei
                                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6042 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _6119 = mem[_6042]
                                                require mem[_6042 + 32] == bool(mem[_6042 + 32])
                                                require idx < mem[96]
                                                _6371 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_6042 + 32])
                                                mem[_6371] = _6119
                                            else:
                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                                        revert with 0, 'exchangeType not exist'
                                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                                         gas gas_remaining wei
                                                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6115 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _6204 = mem[_6115]
                                                    require mem[_6115 + 32] == bool(mem[_6115 + 32])
                                                    require idx < mem[96]
                                                    _6413 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_6115 + 32])
                                                    mem[_6413] = _6204
                                                else:
                                                    _6006 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    require 0 < mem[_6006]
                                                    mem[_6006 + 32] = address(s)
                                                    require 1 < mem[_6006]
                                                    mem[_6006 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[_6006 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                    mem[_6006 + 100] = t
                                                    mem[_6006 + 132] = 64
                                                    mem[_6006 + 164] = mem[_6006]
                                                    s = 0
                                                    while s < 32 * mem[_6006]:
                                                        mem[s + _6006 + 196] = mem[s + _6006 + 32]
                                                        s = s + 32
                                                        continue 
                                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                    staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                            gas gas_remaining wei
                                                           args t, 64, mem[_6006 + 164 len (32 * mem[_6006]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_6006 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _6006 + ceil32(return_data.size) + 96
                                                    require return_data.size >= 32
                                                    _6866 = mem[_6006 + 96 len 4], Mask(224, 32, t) >> 32
                                                    require mem[_6006 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                                    require mem[_6006 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                                    require mem[_6006 + mem[_6006 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_6006 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_6006 + mem[_6006 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                                    mem[_6006 + ceil32(return_data.size) + 96] = mem[_6006 + mem[_6006 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                                    _6899 = mem[_6006 + _6866 + 96]
                                                    s = 0
                                                    while s < 32 * _6899:
                                                        mem[s + _6006 + ceil32(return_data.size) + 128] = mem[s + _6006 + _6866 + 128]
                                                        s = s + 32
                                                        continue 
                                                    mem[64] = (32 * _6899) + _6006 + ceil32(return_data.size) + 128
                                                    require 1 < mem[_6006 + ceil32(return_data.size) + 96]
                                                    _7343 = mem[_6006 + ceil32(return_data.size) + 160]
                                                    require idx < mem[96]
                                                    if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                                        _7383 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = 0
                                                        mem[_7383] = _7343
                                                    else:
                                                        _7431 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = 0
                                                        mem[_7431] = _7343 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                                        else:
                                            if 28 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require idx < ('cd', 36).length
                                                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                _5680 = mem[64]
                                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                mem[64] = mem[64] + 160
                                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                mem[_5680] = cd[((160 * idx) + cd[36] + 36)]
                                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[_5680 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                mem[_5680 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                mem[_5680 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                mem[_5680 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                                         gas gas_remaining wei
                                                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6083 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _6168 = mem[_6083]
                                                    require mem[_6083 + 32] == bool(mem[_6083 + 32])
                                                    require idx < mem[96]
                                                    _6395 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_6083 + 32])
                                                    mem[_6395] = _6168
                                                else:
                                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                                            revert with 0, 'exchangeType not exist'
                                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                                             gas gas_remaining wei
                                                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6164 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _6242 = mem[_6164]
                                                        require mem[_6164 + 32] == bool(mem[_6164 + 32])
                                                        require idx < mem[96]
                                                        _6442 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_6164 + 32])
                                                        mem[_6442] = _6242
                                                    else:
                                                        _6043 = mem[64]
                                                        mem[mem[64]] = 2
                                                        mem[64] = mem[64] + 96
                                                        require 0 < mem[_6043]
                                                        mem[_6043 + 32] = address(s)
                                                        require 1 < mem[_6043]
                                                        mem[_6043 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[_6043 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                        mem[_6043 + 100] = t
                                                        mem[_6043 + 132] = 64
                                                        mem[_6043 + 164] = mem[_6043]
                                                        s = 0
                                                        while s < 32 * mem[_6043]:
                                                            mem[s + _6043 + 196] = mem[s + _6043 + 32]
                                                            s = s + 32
                                                            continue 
                                                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                        staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                gas gas_remaining wei
                                                               args t, 64, mem[_6043 + 164 len (32 * mem[_6043]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_6043 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = _6043 + ceil32(return_data.size) + 96
                                                        require return_data.size >= 32
                                                        _6868 = mem[_6043 + 96 len 4], Mask(224, 32, t) >> 32
                                                        require mem[_6043 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                                        require mem[_6043 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                                        require mem[_6043 + mem[_6043 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_6043 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_6043 + mem[_6043 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                                        mem[_6043 + ceil32(return_data.size) + 96] = mem[_6043 + mem[_6043 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                                        _6900 = mem[_6043 + _6868 + 96]
                                                        s = 0
                                                        while s < 32 * _6900:
                                                            mem[s + _6043 + ceil32(return_data.size) + 128] = mem[s + _6043 + _6868 + 128]
                                                            s = s + 32
                                                            continue 
                                                        mem[64] = (32 * _6900) + _6043 + ceil32(return_data.size) + 128
                                                        require 1 < mem[_6043 + ceil32(return_data.size) + 96]
                                                        _7344 = mem[_6043 + ceil32(return_data.size) + 160]
                                                        require idx < mem[96]
                                                        if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                                            _7386 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = 0
                                                            mem[_7386] = _7344
                                                        else:
                                                            _7435 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = 0
                                                            mem[_7435] = _7344 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                                            else:
                                                if 29 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require idx < ('cd', 36).length
                                                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                    _5681 = mem[64]
                                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                    mem[64] = mem[64] + 160
                                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                    mem[_5681] = cd[((160 * idx) + cd[36] + 36)]
                                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[_5681 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                    mem[_5681 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                    mem[_5681 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    mem[_5681 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                    if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                                             gas gas_remaining wei
                                                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6124 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _6212 = mem[_6124]
                                                        require mem[_6124 + 32] == bool(mem[_6124 + 32])
                                                        require idx < mem[96]
                                                        _6422 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_6124 + 32])
                                                        mem[_6422] = _6212
                                                    else:
                                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                                                revert with 0, 'exchangeType not exist'
                                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                                                 gas gas_remaining wei
                                                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6208 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _6280 = mem[_6208]
                                                            require mem[_6208 + 32] == bool(mem[_6208 + 32])
                                                            require idx < mem[96]
                                                            _6477 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_6208 + 32])
                                                            mem[_6477] = _6280
                                                        else:
                                                            _6084 = mem[64]
                                                            mem[mem[64]] = 2
                                                            mem[64] = mem[64] + 96
                                                            require 0 < mem[_6084]
                                                            mem[_6084 + 32] = address(s)
                                                            require 1 < mem[_6084]
                                                            mem[_6084 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_6084 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                            mem[_6084 + 100] = t
                                                            mem[_6084 + 132] = 64
                                                            mem[_6084 + 164] = mem[_6084]
                                                            s = 0
                                                            while s < 32 * mem[_6084]:
                                                                mem[s + _6084 + 196] = mem[s + _6084 + 32]
                                                                s = s + 32
                                                                continue 
                                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                            staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                    gas gas_remaining wei
                                                                   args t, 64, mem[_6084 + 164 len (32 * mem[_6084]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_6084 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _6084 + ceil32(return_data.size) + 96
                                                            require return_data.size >= 32
                                                            _6870 = mem[_6084 + 96 len 4], Mask(224, 32, t) >> 32
                                                            require mem[_6084 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                                            require mem[_6084 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                                            require mem[_6084 + mem[_6084 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_6084 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_6084 + mem[_6084 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                                            mem[_6084 + ceil32(return_data.size) + 96] = mem[_6084 + mem[_6084 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                                            _6901 = mem[_6084 + _6870 + 96]
                                                            s = 0
                                                            while s < 32 * _6901:
                                                                mem[s + _6084 + ceil32(return_data.size) + 128] = mem[s + _6084 + _6870 + 128]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _6901) + _6084 + ceil32(return_data.size) + 128
                                                            require 1 < mem[_6084 + ceil32(return_data.size) + 96]
                                                            _7345 = mem[_6084 + ceil32(return_data.size) + 160]
                                                            require idx < mem[96]
                                                            if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                                                _7389 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = 0
                                                                mem[_7389] = _7345
                                                            else:
                                                                _7439 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = 0
                                                                mem[_7439] = _7345 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                                                else:
                                                    if 30 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                             gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require idx < ('cd', 36).length
                                                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                        _5682 = mem[64]
                                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                        mem[64] = mem[64] + 160
                                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                        mem[_5682] = cd[((160 * idx) + cd[36] + 36)]
                                                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[_5682 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                        mem[_5682 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                        mem[_5682 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        mem[_5682 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                        if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                                                 gas gas_remaining wei
                                                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _6173 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _6250 = mem[_6173]
                                                            require mem[_6173 + 32] == bool(mem[_6173 + 32])
                                                            require idx < mem[96]
                                                            _6451 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_6173 + 32])
                                                            mem[_6451] = _6250
                                                        else:
                                                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                                                    revert with 0, 'exchangeType not exist'
                                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                                                     gas gas_remaining wei
                                                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                                if not delegate.return_code:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _6246 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _6317 = mem[_6246]
                                                                require mem[_6246 + 32] == bool(mem[_6246 + 32])
                                                                require idx < mem[96]
                                                                _6520 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_6246 + 32])
                                                                mem[_6520] = _6317
                                                            else:
                                                                _6125 = mem[64]
                                                                mem[mem[64]] = 2
                                                                mem[64] = mem[64] + 96
                                                                require 0 < mem[_6125]
                                                                mem[_6125 + 32] = address(s)
                                                                require 1 < mem[_6125]
                                                                mem[_6125 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                mem[_6125 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                mem[_6125 + 100] = t
                                                                mem[_6125 + 132] = 64
                                                                mem[_6125 + 164] = mem[_6125]
                                                                s = 0
                                                                while s < 32 * mem[_6125]:
                                                                    mem[s + _6125 + 196] = mem[s + _6125 + 32]
                                                                    s = s + 32
                                                                    continue 
                                                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                                staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                        gas gas_remaining wei
                                                                       args t, 64, mem[_6125 + 164 len (32 * mem[_6125]) + 32]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[_6125 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                mem[64] = _6125 + ceil32(return_data.size) + 96
                                                                require return_data.size >= 32
                                                                _6872 = mem[_6125 + 96 len 4], Mask(224, 32, t) >> 32
                                                                require mem[_6125 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                                                require mem[_6125 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                                                require mem[_6125 + mem[_6125 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_6125 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_6125 + mem[_6125 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                                                mem[_6125 + ceil32(return_data.size) + 96] = mem[_6125 + mem[_6125 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                                                _6902 = mem[_6125 + _6872 + 96]
                                                                s = 0
                                                                while s < 32 * _6902:
                                                                    mem[s + _6125 + ceil32(return_data.size) + 128] = mem[s + _6125 + _6872 + 128]
                                                                    s = s + 32
                                                                    continue 
                                                                mem[64] = (32 * _6902) + _6125 + ceil32(return_data.size) + 128
                                                                require 1 < mem[_6125 + ceil32(return_data.size) + 96]
                                                                _7346 = mem[_6125 + ceil32(return_data.size) + 160]
                                                                require idx < mem[96]
                                                                if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                                                    _7392 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = 0
                                                                    mem[_7392] = _7346
                                                                else:
                                                                    _7443 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = 0
                                                                    mem[_7443] = _7346 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                                                    else:
                                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 31:
                                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                            _5654 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[_5654] = cd[((160 * idx) + cd[36] + 36)]
                                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_5654 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[_5654 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[_5654 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[_5654 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                            if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                                                     gas gas_remaining wei
                                                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                                if not delegate.return_code:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _5845 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _5913 = mem[_5845]
                                                                require mem[_5845 + 32] == bool(mem[_5845 + 32])
                                                                require idx < mem[96]
                                                                _6175 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_5845 + 32])
                                                                mem[_6175] = _5913
                                                            else:
                                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                                                        revert with 0, 'exchangeType not exist'
                                                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                                                         gas gas_remaining wei
                                                                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                                    if not delegate.return_code:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _5909 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _5984 = mem[_5909]
                                                                    require mem[_5909 + 32] == bool(mem[_5909 + 32])
                                                                    require idx < mem[96]
                                                                    _6252 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_5909 + 32])
                                                                    mem[_6252] = _5984
                                                                else:
                                                                    _5817 = mem[64]
                                                                    mem[mem[64]] = 2
                                                                    mem[64] = mem[64] + 96
                                                                    require 0 < mem[_5817]
                                                                    mem[_5817 + 32] = address(s)
                                                                    require 1 < mem[_5817]
                                                                    mem[_5817 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                    mem[_5817 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_5817 + 100] = t
                                                                    mem[_5817 + 132] = 64
                                                                    mem[_5817 + 164] = mem[_5817]
                                                                    s = 0
                                                                    while s < 32 * mem[_5817]:
                                                                        mem[s + _5817 + 196] = mem[s + _5817 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                                    staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                            gas gas_remaining wei
                                                                           args t, 64, mem[_5817 + 164 len (32 * mem[_5817]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[_5817 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    mem[64] = _5817 + ceil32(return_data.size) + 96
                                                                    require return_data.size >= 32
                                                                    _6874 = mem[_5817 + 96 len 4], Mask(224, 32, t) >> 32
                                                                    require mem[_5817 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                                                    require mem[_5817 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                                                    require mem[_5817 + mem[_5817 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_5817 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_5817 + mem[_5817 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                                                    mem[_5817 + ceil32(return_data.size) + 96] = mem[_5817 + mem[_5817 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                                                    _6903 = mem[_5817 + _6874 + 96]
                                                                    s = 0
                                                                    while s < 32 * _6903:
                                                                        mem[s + _5817 + ceil32(return_data.size) + 128] = mem[s + _5817 + _6874 + 128]
                                                                        s = s + 32
                                                                        continue 
                                                                    mem[64] = (32 * _6903) + _5817 + ceil32(return_data.size) + 128
                                                                    require 1 < mem[_5817 + ceil32(return_data.size) + 96]
                                                                    _7347 = mem[_5817 + ceil32(return_data.size) + 160]
                                                                    require idx < mem[96]
                                                                    if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                                                        _7395 = mem[(32 * idx) + 128]
                                                                        require idx < mem[96]
                                                                        mem[mem[(32 * idx) + 128] + 32] = 0
                                                                        mem[_7395] = _7347
                                                                    else:
                                                                        _7447 = mem[(32 * idx) + 128]
                                                                        require idx < mem[96]
                                                                        mem[mem[(32 * idx) + 128] + 32] = 0
                                                                        mem[_7447] = _7347 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
                                                        else:
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require idx < ('cd', 36).length
                                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                            _5683 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[_5683] = cd[((160 * idx) + cd[36] + 36)]
                                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_5683 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[_5683 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[_5683 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[_5683 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                            if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                                                                     gas gas_remaining wei
                                                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                                if not delegate.return_code:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _6221 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _6292 = mem[_6221]
                                                                require mem[_6221 + 32] == bool(mem[_6221 + 32])
                                                                require idx < mem[96]
                                                                _6489 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_6221 + 32])
                                                                mem[_6489] = _6292
                                                            else:
                                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 3:
                                                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                                                                        revert with 0, 'exchangeType not exist'
                                                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                                                                         gas gas_remaining wei
                                                                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                                    if not delegate.return_code:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _6288 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _6348 = mem[_6288]
                                                                    require mem[_6288 + 32] == bool(mem[_6288 + 32])
                                                                    require idx < mem[96]
                                                                    _6565 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_6288 + 32])
                                                                    mem[_6565] = _6348
                                                                else:
                                                                    _6177 = mem[64]
                                                                    mem[mem[64]] = 2
                                                                    mem[64] = mem[64] + 96
                                                                    require 0 < mem[_6177]
                                                                    mem[_6177 + 32] = address(s)
                                                                    require 1 < mem[_6177]
                                                                    mem[_6177 + 64] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                    mem[_6177 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                    mem[_6177 + 100] = t
                                                                    mem[_6177 + 132] = 64
                                                                    mem[_6177 + 164] = mem[_6177]
                                                                    s = 0
                                                                    while s < 32 * mem[_6177]:
                                                                        mem[s + _6177 + 196] = mem[s + _6177 + 32]
                                                                        s = s + 32
                                                                        continue 
                                                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                                    staticcall address(cd[((160 * idx) + cd[36] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                            gas gas_remaining wei
                                                                           args t, 64, mem[_6177 + 164 len (32 * mem[_6177]) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[_6177 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    mem[64] = _6177 + ceil32(return_data.size) + 96
                                                                    require return_data.size >= 32
                                                                    _6876 = mem[_6177 + 96 len 4], Mask(224, 32, t) >> 32
                                                                    require mem[_6177 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                                                                    require mem[_6177 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                                                                    require mem[_6177 + mem[_6177 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_6177 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_6177 + mem[_6177 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                                                                    mem[_6177 + ceil32(return_data.size) + 96] = mem[_6177 + mem[_6177 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                                                                    _6904 = mem[_6177 + _6876 + 96]
                                                                    s = 0
                                                                    while s < 32 * _6904:
                                                                        mem[s + _6177 + ceil32(return_data.size) + 128] = mem[s + _6177 + _6876 + 128]
                                                                        s = s + 32
                                                                        continue 
                                                                    mem[64] = (32 * _6904) + _6177 + ceil32(return_data.size) + 128
                                                                    require 1 < mem[_6177 + ceil32(return_data.size) + 96]
                                                                    _7348 = mem[_6177 + ceil32(return_data.size) + 160]
                                                                    require idx < mem[96]
                                                                    if 10000 == uint16(cd[((160 * idx) + cd[36] + 164)]):
                                                                        _7398 = mem[(32 * idx) + 128]
                                                                        require idx < mem[96]
                                                                        mem[mem[(32 * idx) + 128] + 32] = 0
                                                                        mem[_7398] = _7348
                                                                    else:
                                                                        _7451 = mem[(32 * idx) + 128]
                                                                        require idx < mem[96]
                                                                        mem[mem[(32 * idx) + 128] + 32] = 0
                                                                        mem[_7451] = _7348 * uint16(cd[((160 * idx) + cd[36] + 164)]) / 10000
            require idx < mem[96]
            require idx < ('cd', 36).length
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[36] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
        _5416 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5416] = cd[4]
        mem[_5416 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        idx = 0
        while idx < ('cd', 36).length:
            _6807 = mem[_5416 + 32]
            _6808 = mem[_5416]
            require idx < mem[96]
            _6837 = mem[mem[(32 * idx) + 128]]
            require idx < ('cd', 36).length
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
            staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6946 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6960 = mem[_6946]
            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
            if uint16(cd[((160 * idx) + cd[36] + 100)]):
                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                _7130 = mem[64]
                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                mem[64] = mem[64] + 160
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                mem[_7130] = cd[((160 * idx) + cd[36] + 36)]
                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                mem[_7130 + 32] = cd[((160 * idx) + cd[36] + 68)]
                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                mem[_7130 + 64] = cd[((160 * idx) + cd[36] + 100)]
                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                mem[_7130 + 96] = cd[((160 * idx) + cd[36] + 132)]
                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                mem[_7130 + 128] = cd[((160 * idx) + cd[36] + 164)]
                if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                    mem[mem[64] + 36] = _6808
                    mem[mem[64] + 68] = _6837
                    mem[mem[64] + 100] = address(_6807)
                    mem[mem[64] + 132] = address(cd[((160 * idx) + cd[36] + 68)])
                    mem[mem[64] + 164] = address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = uint16(cd[((160 * idx) + cd[36] + 132)])
                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xa58d574 with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _6808, _6837, address(_6807), address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), 0, uint16(cd[((160 * idx) + cd[36] + 132)])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                    staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7179 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_7179] - _6960 != _6837:
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        if idx != ('cd', 36).length - 1:
                            return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_7179] - _6960, _6837
                        else:
                            return 0
                else:
                    if 3 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                        mem[mem[64] + 36] = _6808
                        mem[mem[64] + 68] = address(_6807)
                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 132] = address(cd[((160 * idx) + cd[36] + 36)])
                        mem[mem[64] + 164] = 0
                        require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                        delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x9f22937f with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _6808, address(_6807), address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), 0
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                        staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7180 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_7180] - _6960 != _6837:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            if idx != ('cd', 36).length - 1:
                                return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_7180] - _6960, _6837
                            else:
                                return 0
                    else:
                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 32:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                            staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7165 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7165] - _6960 != _6837:
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                if idx != ('cd', 36).length - 1:
                                    return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_7165] - _6960, _6837
                                else:
                                    return 0
                        else:
                            mem[mem[64] + 36] = _6808
                            mem[mem[64] + 68] = _6837
                            mem[mem[64] + 100] = address(_6807)
                            mem[mem[64] + 132] = address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 164] = address(cd[((160 * idx) + cd[36] + 36)])
                            mem[mem[64] + 196] = 0
                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x35d92d69 with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, _6808, _6837, address(_6807), address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), 0
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                            staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7181 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7181] - _6960 != _6837:
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                if idx != ('cd', 36).length - 1:
                                    return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_7181] - _6960, _6837
                                else:
                                    return 0
            else:
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[((160 * idx) + cd[36] + 36)])
                require ext_code.size(address(_6807))
                staticcall address(_6807).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((160 * idx) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7133 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7134 = mem[_7133]
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                _7136 = mem[64]
                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = _6808
                _7137 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_7137 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_7137 + 36 len 28]
                _7140 = mem[_7137]
                t = _7137 + 32
                u = mem[64]
                s = mem[_7137]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_7137])] = mem[_7137 + floor32(mem[_7137]) + -(mem[_7137] % 32) + 64 len mem[_7137] % 32] or Mask(8 * -(mem[_7137] % 32) + 32, -(8 * -(mem[_7137] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_7137])])
                call address(_6807).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _7140 + _7136 + -mem[64] + 96]
                if not return_data.size:
                    require ext_call.success
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(address(_6807))
                    staticcall address(_6807).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7535 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_7535] - _7134 != _6808:
                        return 1, address(_6807), mem[_7535] - _7134, _6808
                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((160 * idx) + cd[36] + 36)]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7551 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7551] == mem[_7551 + 12 len 20]
                    if mem[_7551 + 12 len 20] != address(cd[((160 * idx) + cd[36] + 68)]):
                        mem[mem[64] + 36] = _6837
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                        call address(cd[((160 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _6837, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                        staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7571 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_7571] - _6960 != _6837:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            if idx != ('cd', 36).length - 1:
                                return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_7571] - _6960, _6837
                            else:
                                return 0
                    else:
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                        call address(cd[((160 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _6837, 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                        staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7572 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_7572] - _6960 != _6837:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            if idx != ('cd', 36).length - 1:
                                return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_7572] - _6960, _6837
                            else:
                                return 0
                else:
                    _7335 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_7335] = return_data.size
                    mem[_7335 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(address(_6807))
                    staticcall address(_6807).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7536 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_7536] - _7134 != _6808:
                        return 1, address(_6807), mem[_7536] - _7134, _6808
                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((160 * idx) + cd[36] + 36)]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7552 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7552] == mem[_7552 + 12 len 20]
                    if mem[_7552 + 12 len 20] != address(cd[((160 * idx) + cd[36] + 68)]):
                        mem[mem[64] + 36] = _6837
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                        call address(cd[((160 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _6837, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                        staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7573 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_7573] - _6960 != _6837:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            if idx != ('cd', 36).length - 1:
                                return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_7573] - _6960, _6837
                            else:
                                return 0
                    else:
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                        call address(cd[((160 * idx) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _6837, 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                        staticcall address(cd[((160 * idx) + cd[36] + 68)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7574 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_7574] - _6960 != _6837:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            if idx != ('cd', 36).length - 1:
                                return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_7574] - _6960, _6837
                            else:
                                return 0
            require idx < mem[96]
            mem[_5416] = mem[mem[(32 * idx) + 128]]
            require idx < ('cd', 36).length
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            mem[_5416 + 32] = address(cd[((160 * idx) + cd[36] + 68)])
            idx = idx + 1
            continue 
    return 0
}



}
