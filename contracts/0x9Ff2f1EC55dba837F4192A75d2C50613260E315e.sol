contract main {




// =====================  Runtime code  =====================


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

function sub_a2abe54e(?) {
    require calldata.size - 4 >= 192
    require cd[68] == bool(cd[68])
    require cd[100] == bool(cd[100])
    require cd[132] == uint8(cd[132])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (160 * ('cd', 164).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    require stor0[msg.sender]
    mem[64] = (32 * ('cd', 164).length) + 128
    mem[96] = ('cd', 164).length
    s = 128
    idx = 0
    while idx < ('cd', 164).length:
        require calldata.size + -cd[164] + (-160 * idx) - 36 >= 160
        _1493 = mem[64]
        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
        mem[64] = mem[64] + 160
        require cd[(cd[164] + (160 * idx) + 36)] == address(cd[(cd[164] + (160 * idx) + 36)])
        mem[_1493] = cd[(cd[164] + (160 * idx) + 36)]
        require cd[(cd[164] + (160 * idx) + 68)] == address(cd[(cd[164] + (160 * idx) + 68)])
        mem[_1493 + 32] = cd[(cd[164] + (160 * idx) + 68)]
        require cd[(cd[164] + (160 * idx) + 100)] == uint16(cd[(cd[164] + (160 * idx) + 100)])
        mem[_1493 + 64] = cd[(cd[164] + (160 * idx) + 100)]
        require cd[(cd[164] + (160 * idx) + 132)] == uint16(cd[(cd[164] + (160 * idx) + 132)])
        mem[_1493 + 96] = cd[(cd[164] + (160 * idx) + 132)]
        require cd[(cd[164] + (160 * idx) + 164)] == uint16(cd[(cd[164] + (160 * idx) + 164)])
        mem[_1493 + 128] = cd[(cd[164] + (160 * idx) + 164)]
        mem[s] = _1493
        s = s + 32
        idx = idx + 1
        continue 
    _1492 = mem[96]
    require mem[96] - 1 < mem[96]
    require mem[mem[(32 * mem[96] - 1) + 128] + 44 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    require mem[96] <= test266151307()
    _1497 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _1492) + 32
    if not _1492:
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        s = 10000
        s = cd[4]
        while idx < _1492:
            require idx < mem[96]
            if mem[mem[(32 * idx) + 128] + 94 len 2] != 0:
                require 32 == mem[mem[(32 * idx) + 128] + 94 len 2]
                _2995 = mem[mem[(32 * idx) + 128] + 32]
                _2996 = mem[mem[(32 * idx) + 128]]
                _2997 = mem[mem[(32 * idx) + 128] + 128]
                mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 44 len 20]
                mem[mem[64] + 68] = address(_2996)
                mem[mem[64] + 100] = uint16(_2997)
                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                     gas gas_remaining wei
                    args s, address(_2995), address(_2996), uint16(_2997)
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _3010 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _3025 = mem[_3010]
                require mem[_3010 + 32] == bool(mem[_3010 + 32])
                if idx < mem[_1497]:
                    _3055 = mem[(32 * idx) + _1497 + 32]
                    if idx < mem[_1497]:
                        mem[mem[(32 * idx) + _1497 + 32] + 32] = bool(mem[_3010 + 32])
                        mem[_3055] = _3025
                        if idx < mem[_1497]:
                            if 0 == mem[mem[(32 * idx) + _1497 + 32]]:
                            if idx < mem[96]:
                                if idx < mem[96]:
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + 128] + 32]
                                    s = mem[mem[(32 * idx) + 128] + 128]
                                    s = mem[mem[(32 * idx) + _1497 + 32]]
                                    continue 
            else:
                _2989 = mem[mem[(32 * idx) + 128] + 32]
                _2990 = mem[mem[(32 * idx) + 128]]
                _2991 = mem[mem[(32 * idx) + 128] + 96]
                _2992 = mem[mem[(32 * idx) + 128] + 128]
                mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 44 len 20]
                mem[mem[64] + 68] = address(_2990)
                mem[mem[64] + 100] = uint16(_2991)
                mem[mem[64] + 132] = uint16(_2992)
                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                     gas gas_remaining wei
                    args s, address(_2989), address(_2990), _2991 << 240, uint16(_2992)
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _3007 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _3017 = mem[_3007]
                require mem[_3007 + 32] == bool(mem[_3007 + 32])
                if idx < mem[_1497]:
                    _3051 = mem[(32 * idx) + _1497 + 32]
                    if idx < mem[_1497]:
                        mem[mem[(32 * idx) + _1497 + 32] + 32] = bool(mem[_3007 + 32])
                        mem[_3051] = _3017
                        if idx < mem[_1497]:
                            if 0 == mem[mem[(32 * idx) + _1497 + 32]]:
                            if idx < mem[96]:
                                if idx < mem[96]:
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + 128] + 32]
                                    s = mem[mem[(32 * idx) + 128] + 128]
                                    s = mem[mem[(32 * idx) + _1497 + 32]]
                                    continue 
            revert
        require _1492 - 1 < mem[_1497]
        if mem[mem[(32 * _1492 - 1) + _1497 + 32]] > cd[4] + cd[36]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3009 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3024 = mem[_3009]
            require 0 < mem[_1497]
            _3032 = mem[mem[_1497 + 32]]
            require 0 < mem[96]
            require 1 < mem[_1497]
            if not mem[mem[_1497 + 64] + 32]:
                if mem[mem[128] + 94 len 2]:
                    if mem[mem[128] + 94 len 2] != 32:
                        require 0 < mem[_1497]
                        require 0 < mem[96]
                        idx = 1
                        s = mem[mem[128] + 32]
                        s = mem[mem[_1497 + 32]]
                        while idx < _1492 - 1:
                            require idx < mem[_1497]
                            _4499 = mem[mem[(32 * idx) + _1497 + 32]]
                            require idx < mem[96]
                            require idx + 1 < mem[_1497]
                            if not mem[mem[(32 * idx + 1) + _1497 + 32] + 32]:
                                if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _4710 = mem[mem[(32 * idx) + 128] + 32]
                                        _4711 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4499
                                        mem[mem[64] + 36] = address(_4710)
                                        mem[mem[64] + 68] = address(_4711)
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _4499, address(_4710), address(_4711), address(this.address), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _4657 = mem[mem[(32 * idx) + 128] + 32]
                                    _4658 = mem[mem[(32 * idx) + 128]]
                                    _4659 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4499
                                    mem[mem[64] + 36] = address(_4657)
                                    mem[mem[64] + 68] = address(_4658)
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_4659)
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _4499, address(_4657), address(_4658), address(this.address), bool(cd[100]), uint16(_4659)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_1497]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        s = mem[mem[(32 * idx) + _1497 + 32]]
                                        continue 
                            else:
                                if idx + 1 < mem[96]:
                                    _4606 = mem[mem[(32 * idx + 1) + 128]]
                                    if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _4749 = mem[mem[(32 * idx) + 128] + 32]
                                            _4750 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _4499
                                            mem[mem[64] + 36] = address(_4749)
                                            mem[mem[64] + 68] = address(_4750)
                                            mem[mem[64] + 100] = address(_4606)
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _4499, address(_4749), address(_4750), address(_4606), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _4706 = mem[mem[(32 * idx) + 128] + 32]
                                        _4707 = mem[mem[(32 * idx) + 128]]
                                        _4708 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4499
                                        mem[mem[64] + 36] = address(_4706)
                                        mem[mem[64] + 68] = address(_4707)
                                        mem[mem[64] + 100] = address(_4606)
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(_4708)
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _4499, address(_4706), address(_4707), address(_4606), bool(cd[100]), uint16(_4708)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[_1497]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            s = mem[mem[(32 * idx) + _1497 + 32]]
                                            continue 
                            revert
                        require _1492 - 1 < mem[_1497]
                        require _1492 - 1 < mem[96]
                        if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2]:
                            if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2] != 32:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4898 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4898] <= _3024:
                                    revert with 0, 'no profit'
                            else:
                                _4602 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                                _4603 = mem[mem[(32 * _1492 - 1) + 128]]
                                mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                                mem[mem[64] + 36] = address(_4602)
                                mem[mem[64] + 68] = address(_4603)
                                mem[mem[64] + 100] = bool(cd[100])
                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_4602), address(_4603), bool(cd[100])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5067 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_5067] <= _3024:
                                    revert with 0, 'no profit'
                        else:
                            _4568 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                            _4569 = mem[mem[(32 * _1492 - 1) + 128]]
                            _4570 = mem[mem[(32 * _1492 - 1) + 128] + 96]
                            mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                            mem[mem[64] + 36] = address(_4568)
                            mem[mem[64] + 68] = address(_4569)
                            mem[mem[64] + 100] = bool(cd[100])
                            mem[mem[64] + 132] = uint16(_4570)
                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_4568), address(_4569), bool(cd[100]), uint16(_4570)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5068 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5068] <= _3024:
                                revert with 0, 'no profit'
                    else:
                        _3095 = mem[mem[128] + 32]
                        _3096 = mem[mem[128]]
                        mem[mem[64]] = 0x5ce9750800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[mem[64] + 36] = cd[4]
                        mem[mem[64] + 68] = _3032
                        mem[mem[64] + 100] = address(_3095)
                        mem[mem[64] + 132] = address(_3096)
                        mem[mem[64] + 164] = this.address
                        mem[mem[64] + 196] = bool(cd[100])
                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x5ce97508 with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, cd[4], _3032, address(_3095), address(_3096), address(this.address), bool(cd[100])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < mem[_1497]
                        require 0 < mem[96]
                        idx = 1
                        s = mem[mem[128] + 32]
                        s = mem[mem[_1497 + 32]]
                        while idx < _1492 - 1:
                            require idx < mem[_1497]
                            _4505 = mem[mem[(32 * idx) + _1497 + 32]]
                            require idx < mem[96]
                            require idx + 1 < mem[_1497]
                            if not mem[mem[(32 * idx + 1) + _1497 + 32] + 32]:
                                if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _4718 = mem[mem[(32 * idx) + 128] + 32]
                                        _4719 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4505
                                        mem[mem[64] + 36] = address(_4718)
                                        mem[mem[64] + 68] = address(_4719)
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _4505, address(_4718), address(_4719), address(this.address), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _4664 = mem[mem[(32 * idx) + 128] + 32]
                                    _4665 = mem[mem[(32 * idx) + 128]]
                                    _4666 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4505
                                    mem[mem[64] + 36] = address(_4664)
                                    mem[mem[64] + 68] = address(_4665)
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_4666)
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _4505, address(_4664), address(_4665), address(this.address), bool(cd[100]), uint16(_4666)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_1497]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        s = mem[mem[(32 * idx) + _1497 + 32]]
                                        continue 
                            else:
                                if idx + 1 < mem[96]:
                                    _4611 = mem[mem[(32 * idx + 1) + 128]]
                                    if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _4754 = mem[mem[(32 * idx) + 128] + 32]
                                            _4755 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _4505
                                            mem[mem[64] + 36] = address(_4754)
                                            mem[mem[64] + 68] = address(_4755)
                                            mem[mem[64] + 100] = address(_4611)
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _4505, address(_4754), address(_4755), address(_4611), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _4714 = mem[mem[(32 * idx) + 128] + 32]
                                        _4715 = mem[mem[(32 * idx) + 128]]
                                        _4716 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4505
                                        mem[mem[64] + 36] = address(_4714)
                                        mem[mem[64] + 68] = address(_4715)
                                        mem[mem[64] + 100] = address(_4611)
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(_4716)
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _4505, address(_4714), address(_4715), address(_4611), bool(cd[100]), uint16(_4716)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[_1497]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            s = mem[mem[(32 * idx) + _1497 + 32]]
                                            continue 
                            revert
                        require _1492 - 1 < mem[_1497]
                        require _1492 - 1 < mem[96]
                        if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2]:
                            if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2] != 32:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4906 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4906] <= _3024:
                                    revert with 0, 'no profit'
                            else:
                                _4607 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                                _4608 = mem[mem[(32 * _1492 - 1) + 128]]
                                mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                                mem[mem[64] + 36] = address(_4607)
                                mem[mem[64] + 68] = address(_4608)
                                mem[mem[64] + 100] = bool(cd[100])
                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_4607), address(_4608), bool(cd[100])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5070 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_5070] <= _3024:
                                    revert with 0, 'no profit'
                        else:
                            _4574 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                            _4575 = mem[mem[(32 * _1492 - 1) + 128]]
                            _4576 = mem[mem[(32 * _1492 - 1) + 128] + 96]
                            mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                            mem[mem[64] + 36] = address(_4574)
                            mem[mem[64] + 68] = address(_4575)
                            mem[mem[64] + 100] = bool(cd[100])
                            mem[mem[64] + 132] = uint16(_4576)
                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_4574), address(_4575), bool(cd[100]), uint16(_4576)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5071 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5071] <= _3024:
                                revert with 0, 'no profit'
                else:
                    _3077 = mem[mem[128] + 32]
                    _3078 = mem[mem[128]]
                    _3079 = mem[mem[128] + 96]
                    mem[mem[64]] = 0x1d1f04fb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = _3032
                    mem[mem[64] + 100] = address(_3077)
                    mem[mem[64] + 132] = address(_3078)
                    mem[mem[64] + 164] = this.address
                    mem[mem[64] + 196] = bool(cd[100])
                    mem[mem[64] + 228] = uint16(_3079)
                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x1d1f04fb with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, cd[4], _3032, address(_3077), address(_3078), address(this.address), bool(cd[100]), uint16(_3079)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 < mem[_1497]
                    require 0 < mem[96]
                    idx = 1
                    s = mem[mem[128] + 32]
                    s = mem[mem[_1497 + 32]]
                    while idx < _1492 - 1:
                        require idx < mem[_1497]
                        _4511 = mem[mem[(32 * idx) + _1497 + 32]]
                        require idx < mem[96]
                        require idx + 1 < mem[_1497]
                        if not mem[mem[(32 * idx + 1) + _1497 + 32] + 32]:
                            if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    _4726 = mem[mem[(32 * idx) + 128] + 32]
                                    _4727 = mem[mem[(32 * idx) + 128]]
                                    mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4511
                                    mem[mem[64] + 36] = address(_4726)
                                    mem[mem[64] + 68] = address(_4727)
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                         gas gas_remaining wei
                                        args _4511, address(_4726), address(_4727), address(this.address), bool(cd[100])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _4671 = mem[mem[(32 * idx) + 128] + 32]
                                _4672 = mem[mem[(32 * idx) + 128]]
                                _4673 = mem[mem[(32 * idx) + 128] + 96]
                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4511
                                mem[mem[64] + 36] = address(_4671)
                                mem[mem[64] + 68] = address(_4672)
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = bool(cd[100])
                                mem[mem[64] + 164] = uint16(_4673)
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                     gas gas_remaining wei
                                    args _4511, address(_4671), address(_4672), address(this.address), bool(cd[100]), uint16(_4673)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if idx < mem[_1497]:
                                if idx < mem[96]:
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + 128] + 32]
                                    s = mem[mem[(32 * idx) + _1497 + 32]]
                                    continue 
                        else:
                            if idx + 1 < mem[96]:
                                _4616 = mem[mem[(32 * idx + 1) + 128]]
                                if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _4759 = mem[mem[(32 * idx) + 128] + 32]
                                        _4760 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4511
                                        mem[mem[64] + 36] = address(_4759)
                                        mem[mem[64] + 68] = address(_4760)
                                        mem[mem[64] + 100] = address(_4616)
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _4511, address(_4759), address(_4760), address(_4616), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _4722 = mem[mem[(32 * idx) + 128] + 32]
                                    _4723 = mem[mem[(32 * idx) + 128]]
                                    _4724 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4511
                                    mem[mem[64] + 36] = address(_4722)
                                    mem[mem[64] + 68] = address(_4723)
                                    mem[mem[64] + 100] = address(_4616)
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_4724)
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _4511, address(_4722), address(_4723), address(_4616), bool(cd[100]), uint16(_4724)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_1497]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        s = mem[mem[(32 * idx) + _1497 + 32]]
                                        continue 
                        revert
                    require _1492 - 1 < mem[_1497]
                    require _1492 - 1 < mem[96]
                    if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2]:
                        if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2] != 32:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4914 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4914] <= _3024:
                                revert with 0, 'no profit'
                        else:
                            _4612 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                            _4613 = mem[mem[(32 * _1492 - 1) + 128]]
                            mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                            mem[mem[64] + 36] = address(_4612)
                            mem[mem[64] + 68] = address(_4613)
                            mem[mem[64] + 100] = bool(cd[100])
                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_4612), address(_4613), bool(cd[100])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5073 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5073] <= _3024:
                                revert with 0, 'no profit'
                    else:
                        _4580 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                        _4581 = mem[mem[(32 * _1492 - 1) + 128]]
                        _4582 = mem[mem[(32 * _1492 - 1) + 128] + 96]
                        mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                        mem[mem[64] + 36] = address(_4580)
                        mem[mem[64] + 68] = address(_4581)
                        mem[mem[64] + 100] = bool(cd[100])
                        mem[mem[64] + 132] = uint16(_4582)
                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_4580), address(_4581), bool(cd[100]), uint16(_4582)
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5074 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5074] <= _3024:
                            revert with 0, 'no profit'
            else:
                require 1 < mem[96]
                _3049 = mem[mem[160]]
                if mem[mem[128] + 94 len 2]:
                    if mem[mem[128] + 94 len 2] != 32:
                        require 0 < mem[_1497]
                        require 0 < mem[96]
                        idx = 1
                        s = mem[mem[128] + 32]
                        s = mem[mem[_1497 + 32]]
                        while idx < _1492 - 1:
                            require idx < mem[_1497]
                            _4481 = mem[mem[(32 * idx) + _1497 + 32]]
                            require idx < mem[96]
                            require idx + 1 < mem[_1497]
                            if not mem[mem[(32 * idx + 1) + _1497 + 32] + 32]:
                                if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _4686 = mem[mem[(32 * idx) + 128] + 32]
                                        _4687 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4481
                                        mem[mem[64] + 36] = address(_4686)
                                        mem[mem[64] + 68] = address(_4687)
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _4481, address(_4686), address(_4687), address(this.address), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _4636 = mem[mem[(32 * idx) + 128] + 32]
                                    _4637 = mem[mem[(32 * idx) + 128]]
                                    _4638 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4481
                                    mem[mem[64] + 36] = address(_4636)
                                    mem[mem[64] + 68] = address(_4637)
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_4638)
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _4481, address(_4636), address(_4637), address(this.address), bool(cd[100]), uint16(_4638)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_1497]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        s = mem[mem[(32 * idx) + _1497 + 32]]
                                        continue 
                            else:
                                if idx + 1 < mem[96]:
                                    _4591 = mem[mem[(32 * idx + 1) + 128]]
                                    if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _4734 = mem[mem[(32 * idx) + 128] + 32]
                                            _4735 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _4481
                                            mem[mem[64] + 36] = address(_4734)
                                            mem[mem[64] + 68] = address(_4735)
                                            mem[mem[64] + 100] = address(_4591)
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _4481, address(_4734), address(_4735), address(_4591), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _4682 = mem[mem[(32 * idx) + 128] + 32]
                                        _4683 = mem[mem[(32 * idx) + 128]]
                                        _4684 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4481
                                        mem[mem[64] + 36] = address(_4682)
                                        mem[mem[64] + 68] = address(_4683)
                                        mem[mem[64] + 100] = address(_4591)
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(_4684)
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _4481, address(_4682), address(_4683), address(_4591), bool(cd[100]), uint16(_4684)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[_1497]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            s = mem[mem[(32 * idx) + _1497 + 32]]
                                            continue 
                            revert
                        require _1492 - 1 < mem[_1497]
                        require _1492 - 1 < mem[96]
                        if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2]:
                            if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2] != 32:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4874 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4874] <= _3024:
                                    revert with 0, 'no profit'
                            else:
                                _4587 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                                _4588 = mem[mem[(32 * _1492 - 1) + 128]]
                                mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                                mem[mem[64] + 36] = address(_4587)
                                mem[mem[64] + 68] = address(_4588)
                                mem[mem[64] + 100] = bool(cd[100])
                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_4587), address(_4588), bool(cd[100])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5058 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_5058] <= _3024:
                                    revert with 0, 'no profit'
                        else:
                            _4550 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                            _4551 = mem[mem[(32 * _1492 - 1) + 128]]
                            _4552 = mem[mem[(32 * _1492 - 1) + 128] + 96]
                            mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                            mem[mem[64] + 36] = address(_4550)
                            mem[mem[64] + 68] = address(_4551)
                            mem[mem[64] + 100] = bool(cd[100])
                            mem[mem[64] + 132] = uint16(_4552)
                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_4550), address(_4551), bool(cd[100]), uint16(_4552)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5059 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5059] <= _3024:
                                revert with 0, 'no profit'
                    else:
                        _3111 = mem[mem[128] + 32]
                        _3112 = mem[mem[128]]
                        mem[mem[64]] = 0x5ce9750800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[mem[64] + 36] = cd[4]
                        mem[mem[64] + 68] = _3032
                        mem[mem[64] + 100] = address(_3111)
                        mem[mem[64] + 132] = address(_3112)
                        mem[mem[64] + 164] = address(_3049)
                        mem[mem[64] + 196] = bool(cd[100])
                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x5ce97508 with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, cd[4], _3032, address(_3111), address(_3112), address(_3049), bool(cd[100])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < mem[_1497]
                        require 0 < mem[96]
                        idx = 1
                        s = mem[mem[128] + 32]
                        s = mem[mem[_1497 + 32]]
                        while idx < _1492 - 1:
                            require idx < mem[_1497]
                            _4487 = mem[mem[(32 * idx) + _1497 + 32]]
                            require idx < mem[96]
                            require idx + 1 < mem[_1497]
                            if not mem[mem[(32 * idx + 1) + _1497 + 32] + 32]:
                                if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _4694 = mem[mem[(32 * idx) + 128] + 32]
                                        _4695 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4487
                                        mem[mem[64] + 36] = address(_4694)
                                        mem[mem[64] + 68] = address(_4695)
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _4487, address(_4694), address(_4695), address(this.address), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _4643 = mem[mem[(32 * idx) + 128] + 32]
                                    _4644 = mem[mem[(32 * idx) + 128]]
                                    _4645 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4487
                                    mem[mem[64] + 36] = address(_4643)
                                    mem[mem[64] + 68] = address(_4644)
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_4645)
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _4487, address(_4643), address(_4644), address(this.address), bool(cd[100]), uint16(_4645)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_1497]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        s = mem[mem[(32 * idx) + _1497 + 32]]
                                        continue 
                            else:
                                if idx + 1 < mem[96]:
                                    _4596 = mem[mem[(32 * idx + 1) + 128]]
                                    if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _4739 = mem[mem[(32 * idx) + 128] + 32]
                                            _4740 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _4487
                                            mem[mem[64] + 36] = address(_4739)
                                            mem[mem[64] + 68] = address(_4740)
                                            mem[mem[64] + 100] = address(_4596)
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _4487, address(_4739), address(_4740), address(_4596), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _4690 = mem[mem[(32 * idx) + 128] + 32]
                                        _4691 = mem[mem[(32 * idx) + 128]]
                                        _4692 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4487
                                        mem[mem[64] + 36] = address(_4690)
                                        mem[mem[64] + 68] = address(_4691)
                                        mem[mem[64] + 100] = address(_4596)
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(_4692)
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _4487, address(_4690), address(_4691), address(_4596), bool(cd[100]), uint16(_4692)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[_1497]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            s = mem[mem[(32 * idx) + _1497 + 32]]
                                            continue 
                            revert
                        require _1492 - 1 < mem[_1497]
                        require _1492 - 1 < mem[96]
                        if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2]:
                            if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2] != 32:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4882 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4882] <= _3024:
                                    revert with 0, 'no profit'
                            else:
                                _4592 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                                _4593 = mem[mem[(32 * _1492 - 1) + 128]]
                                mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                                mem[mem[64] + 36] = address(_4592)
                                mem[mem[64] + 68] = address(_4593)
                                mem[mem[64] + 100] = bool(cd[100])
                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_4592), address(_4593), bool(cd[100])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5061 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_5061] <= _3024:
                                    revert with 0, 'no profit'
                        else:
                            _4556 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                            _4557 = mem[mem[(32 * _1492 - 1) + 128]]
                            _4558 = mem[mem[(32 * _1492 - 1) + 128] + 96]
                            mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                            mem[mem[64] + 36] = address(_4556)
                            mem[mem[64] + 68] = address(_4557)
                            mem[mem[64] + 100] = bool(cd[100])
                            mem[mem[64] + 132] = uint16(_4558)
                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_4556), address(_4557), bool(cd[100]), uint16(_4558)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5062 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5062] <= _3024:
                                revert with 0, 'no profit'
                else:
                    _3088 = mem[mem[128] + 32]
                    _3089 = mem[mem[128]]
                    _3090 = mem[mem[128] + 96]
                    mem[mem[64]] = 0x1d1f04fb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = _3032
                    mem[mem[64] + 100] = address(_3088)
                    mem[mem[64] + 132] = address(_3089)
                    mem[mem[64] + 164] = address(_3049)
                    mem[mem[64] + 196] = bool(cd[100])
                    mem[mem[64] + 228] = uint16(_3090)
                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x1d1f04fb with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, cd[4], _3032, address(_3088), address(_3089), address(_3049), bool(cd[100]), uint16(_3090)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 < mem[_1497]
                    require 0 < mem[96]
                    idx = 1
                    s = mem[mem[128] + 32]
                    s = mem[mem[_1497 + 32]]
                    while idx < _1492 - 1:
                        require idx < mem[_1497]
                        _4493 = mem[mem[(32 * idx) + _1497 + 32]]
                        require idx < mem[96]
                        require idx + 1 < mem[_1497]
                        if not mem[mem[(32 * idx + 1) + _1497 + 32] + 32]:
                            if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    _4702 = mem[mem[(32 * idx) + 128] + 32]
                                    _4703 = mem[mem[(32 * idx) + 128]]
                                    mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4493
                                    mem[mem[64] + 36] = address(_4702)
                                    mem[mem[64] + 68] = address(_4703)
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                         gas gas_remaining wei
                                        args _4493, address(_4702), address(_4703), address(this.address), bool(cd[100])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _4650 = mem[mem[(32 * idx) + 128] + 32]
                                _4651 = mem[mem[(32 * idx) + 128]]
                                _4652 = mem[mem[(32 * idx) + 128] + 96]
                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4493
                                mem[mem[64] + 36] = address(_4650)
                                mem[mem[64] + 68] = address(_4651)
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = bool(cd[100])
                                mem[mem[64] + 164] = uint16(_4652)
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                     gas gas_remaining wei
                                    args _4493, address(_4650), address(_4651), address(this.address), bool(cd[100]), uint16(_4652)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if idx < mem[_1497]:
                                if idx < mem[96]:
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + 128] + 32]
                                    s = mem[mem[(32 * idx) + _1497 + 32]]
                                    continue 
                        else:
                            if idx + 1 < mem[96]:
                                _4601 = mem[mem[(32 * idx + 1) + 128]]
                                if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _4744 = mem[mem[(32 * idx) + 128] + 32]
                                        _4745 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4493
                                        mem[mem[64] + 36] = address(_4744)
                                        mem[mem[64] + 68] = address(_4745)
                                        mem[mem[64] + 100] = address(_4601)
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _4493, address(_4744), address(_4745), address(_4601), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _4698 = mem[mem[(32 * idx) + 128] + 32]
                                    _4699 = mem[mem[(32 * idx) + 128]]
                                    _4700 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4493
                                    mem[mem[64] + 36] = address(_4698)
                                    mem[mem[64] + 68] = address(_4699)
                                    mem[mem[64] + 100] = address(_4601)
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_4700)
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _4493, address(_4698), address(_4699), address(_4601), bool(cd[100]), uint16(_4700)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_1497]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        s = mem[mem[(32 * idx) + _1497 + 32]]
                                        continue 
                        revert
                    require _1492 - 1 < mem[_1497]
                    require _1492 - 1 < mem[96]
                    if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2]:
                        if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2] != 32:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4890 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4890] <= _3024:
                                revert with 0, 'no profit'
                        else:
                            _4597 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                            _4598 = mem[mem[(32 * _1492 - 1) + 128]]
                            mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                            mem[mem[64] + 36] = address(_4597)
                            mem[mem[64] + 68] = address(_4598)
                            mem[mem[64] + 100] = bool(cd[100])
                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_4597), address(_4598), bool(cd[100])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5064 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5064] <= _3024:
                                revert with 0, 'no profit'
                    else:
                        _4562 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                        _4563 = mem[mem[(32 * _1492 - 1) + 128]]
                        _4564 = mem[mem[(32 * _1492 - 1) + 128] + 96]
                        mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                        mem[mem[64] + 36] = address(_4562)
                        mem[mem[64] + 68] = address(_4563)
                        mem[mem[64] + 100] = bool(cd[100])
                        mem[mem[64] + 132] = uint16(_4564)
                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_4562), address(_4563), bool(cd[100]), uint16(_4564)
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5065 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5065] <= _3024:
                            revert with 0, 'no profit'
    else:
        mem[64] = _1497 + (32 * _1492) + 96
        mem[_1497 + (32 * _1492) + 32] = 0
        mem[_1497 + (32 * _1492) + 64] = 0
        mem[var34001] = _1497 + (32 * _1492) + 32
        s = var34001
        idx = var34002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_1497 + (32 * _1492) + 32] = 0
            mem[_1497 + (32 * _1492) + 64] = 0
            mem[s + 32] = _1497 + (32 * _1492) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        s = 10000
        s = cd[4]
        while idx < _1492:
            require idx < mem[96]
            if mem[mem[(32 * idx) + 128] + 94 len 2] != 0:
                require 32 == mem[mem[(32 * idx) + 128] + 94 len 2]
                _5837 = mem[mem[(32 * idx) + 128] + 32]
                _5838 = mem[mem[(32 * idx) + 128]]
                _5839 = mem[mem[(32 * idx) + 128] + 128]
                mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 44 len 20]
                mem[mem[64] + 68] = address(_5838)
                mem[mem[64] + 100] = uint16(_5839)
                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                     gas gas_remaining wei
                    args s, address(_5837), address(_5838), uint16(_5839)
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _5846 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _5850 = mem[_5846]
                require mem[_5846 + 32] == bool(mem[_5846 + 32])
                if idx < mem[_1497]:
                    _5868 = mem[(32 * idx) + _1497 + 32]
                    if idx < mem[_1497]:
                        mem[mem[(32 * idx) + _1497 + 32] + 32] = bool(mem[_5846 + 32])
                        mem[_5868] = _5850
                        if idx < mem[_1497]:
                            if 0 == mem[mem[(32 * idx) + _1497 + 32]]:
                            if idx < mem[96]:
                                if idx < mem[96]:
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + 128] + 32]
                                    s = mem[mem[(32 * idx) + 128] + 128]
                                    s = mem[mem[(32 * idx) + _1497 + 32]]
                                    continue 
            else:
                _5831 = mem[mem[(32 * idx) + 128] + 32]
                _5832 = mem[mem[(32 * idx) + 128]]
                _5833 = mem[mem[(32 * idx) + 128] + 96]
                _5834 = mem[mem[(32 * idx) + 128] + 128]
                mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 44 len 20]
                mem[mem[64] + 68] = address(_5832)
                mem[mem[64] + 100] = uint16(_5833)
                mem[mem[64] + 132] = uint16(_5834)
                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                     gas gas_remaining wei
                    args s, address(_5831), address(_5832), _5833 << 240, uint16(_5834)
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _5844 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _5847 = mem[_5844]
                require mem[_5844 + 32] == bool(mem[_5844 + 32])
                if idx < mem[_1497]:
                    _5865 = mem[(32 * idx) + _1497 + 32]
                    if idx < mem[_1497]:
                        mem[mem[(32 * idx) + _1497 + 32] + 32] = bool(mem[_5844 + 32])
                        mem[_5865] = _5847
                        if idx < mem[_1497]:
                            if 0 == mem[mem[(32 * idx) + _1497 + 32]]:
                            if idx < mem[96]:
                                if idx < mem[96]:
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + 128] + 32]
                                    s = mem[mem[(32 * idx) + 128] + 128]
                                    s = mem[mem[(32 * idx) + _1497 + 32]]
                                    continue 
            revert
        require _1492 - 1 < mem[_1497]
        if mem[mem[(32 * _1492 - 1) + _1497 + 32]] > cd[4] + cd[36]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5845 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5849 = mem[_5845]
            require 0 < mem[_1497]
            _5854 = mem[mem[_1497 + 32]]
            require 0 < mem[96]
            require 1 < mem[_1497]
            if not mem[mem[_1497 + 64] + 32]:
                if mem[mem[128] + 94 len 2]:
                    if mem[mem[128] + 94 len 2] != 32:
                        require 0 < mem[_1497]
                        require 0 < mem[96]
                        idx = 1
                        s = mem[mem[128] + 32]
                        s = mem[mem[_1497 + 32]]
                        while idx < _1492 - 1:
                            require idx < mem[_1497]
                            _6599 = mem[mem[(32 * idx) + _1497 + 32]]
                            require idx < mem[96]
                            require idx + 1 < mem[_1497]
                            if not mem[mem[(32 * idx + 1) + _1497 + 32] + 32]:
                                if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _6798 = mem[mem[(32 * idx) + 128] + 32]
                                        _6799 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6599
                                        mem[mem[64] + 36] = address(_6798)
                                        mem[mem[64] + 68] = address(_6799)
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _6599, address(_6798), address(_6799), address(this.address), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _6751 = mem[mem[(32 * idx) + 128] + 32]
                                    _6752 = mem[mem[(32 * idx) + 128]]
                                    _6753 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6599
                                    mem[mem[64] + 36] = address(_6751)
                                    mem[mem[64] + 68] = address(_6752)
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_6753)
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _6599, address(_6751), address(_6752), address(this.address), bool(cd[100]), uint16(_6753)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_1497]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        s = mem[mem[(32 * idx) + _1497 + 32]]
                                        continue 
                            else:
                                if idx + 1 < mem[96]:
                                    _6704 = mem[mem[(32 * idx + 1) + 128]]
                                    if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _6832 = mem[mem[(32 * idx) + 128] + 32]
                                            _6833 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _6599
                                            mem[mem[64] + 36] = address(_6832)
                                            mem[mem[64] + 68] = address(_6833)
                                            mem[mem[64] + 100] = address(_6704)
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _6599, address(_6832), address(_6833), address(_6704), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _6794 = mem[mem[(32 * idx) + 128] + 32]
                                        _6795 = mem[mem[(32 * idx) + 128]]
                                        _6796 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6599
                                        mem[mem[64] + 36] = address(_6794)
                                        mem[mem[64] + 68] = address(_6795)
                                        mem[mem[64] + 100] = address(_6704)
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(_6796)
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _6599, address(_6794), address(_6795), address(_6704), bool(cd[100]), uint16(_6796)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[_1497]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            s = mem[mem[(32 * idx) + _1497 + 32]]
                                            continue 
                            revert
                        require _1492 - 1 < mem[_1497]
                        require _1492 - 1 < mem[96]
                        if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2]:
                            if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2] != 32:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6973 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_6973] <= _5849:
                                    revert with 0, 'no profit'
                            else:
                                _6700 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                                _6701 = mem[mem[(32 * _1492 - 1) + 128]]
                                mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                                mem[mem[64] + 36] = address(_6700)
                                mem[mem[64] + 68] = address(_6701)
                                mem[mem[64] + 100] = bool(cd[100])
                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_6700), address(_6701), bool(cd[100])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7133 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7133] <= _5849:
                                    revert with 0, 'no profit'
                        else:
                            _6668 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                            _6669 = mem[mem[(32 * _1492 - 1) + 128]]
                            _6670 = mem[mem[(32 * _1492 - 1) + 128] + 96]
                            mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                            mem[mem[64] + 36] = address(_6668)
                            mem[mem[64] + 68] = address(_6669)
                            mem[mem[64] + 100] = bool(cd[100])
                            mem[mem[64] + 132] = uint16(_6670)
                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_6668), address(_6669), bool(cd[100]), uint16(_6670)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7134 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7134] <= _5849:
                                revert with 0, 'no profit'
                    else:
                        _5899 = mem[mem[128] + 32]
                        _5900 = mem[mem[128]]
                        mem[mem[64]] = 0x5ce9750800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[mem[64] + 36] = cd[4]
                        mem[mem[64] + 68] = _5854
                        mem[mem[64] + 100] = address(_5899)
                        mem[mem[64] + 132] = address(_5900)
                        mem[mem[64] + 164] = this.address
                        mem[mem[64] + 196] = bool(cd[100])
                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x5ce97508 with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, cd[4], _5854, address(_5899), address(_5900), address(this.address), bool(cd[100])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < mem[_1497]
                        require 0 < mem[96]
                        idx = 1
                        s = mem[mem[128] + 32]
                        s = mem[mem[_1497 + 32]]
                        while idx < _1492 - 1:
                            require idx < mem[_1497]
                            _6605 = mem[mem[(32 * idx) + _1497 + 32]]
                            require idx < mem[96]
                            require idx + 1 < mem[_1497]
                            if not mem[mem[(32 * idx + 1) + _1497 + 32] + 32]:
                                if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _6806 = mem[mem[(32 * idx) + 128] + 32]
                                        _6807 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6605
                                        mem[mem[64] + 36] = address(_6806)
                                        mem[mem[64] + 68] = address(_6807)
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _6605, address(_6806), address(_6807), address(this.address), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _6758 = mem[mem[(32 * idx) + 128] + 32]
                                    _6759 = mem[mem[(32 * idx) + 128]]
                                    _6760 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6605
                                    mem[mem[64] + 36] = address(_6758)
                                    mem[mem[64] + 68] = address(_6759)
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_6760)
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _6605, address(_6758), address(_6759), address(this.address), bool(cd[100]), uint16(_6760)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_1497]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        s = mem[mem[(32 * idx) + _1497 + 32]]
                                        continue 
                            else:
                                if idx + 1 < mem[96]:
                                    _6709 = mem[mem[(32 * idx + 1) + 128]]
                                    if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _6837 = mem[mem[(32 * idx) + 128] + 32]
                                            _6838 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _6605
                                            mem[mem[64] + 36] = address(_6837)
                                            mem[mem[64] + 68] = address(_6838)
                                            mem[mem[64] + 100] = address(_6709)
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _6605, address(_6837), address(_6838), address(_6709), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _6802 = mem[mem[(32 * idx) + 128] + 32]
                                        _6803 = mem[mem[(32 * idx) + 128]]
                                        _6804 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6605
                                        mem[mem[64] + 36] = address(_6802)
                                        mem[mem[64] + 68] = address(_6803)
                                        mem[mem[64] + 100] = address(_6709)
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(_6804)
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _6605, address(_6802), address(_6803), address(_6709), bool(cd[100]), uint16(_6804)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[_1497]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            s = mem[mem[(32 * idx) + _1497 + 32]]
                                            continue 
                            revert
                        require _1492 - 1 < mem[_1497]
                        require _1492 - 1 < mem[96]
                        if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2]:
                            if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2] != 32:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6981 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_6981] <= _5849:
                                    revert with 0, 'no profit'
                            else:
                                _6705 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                                _6706 = mem[mem[(32 * _1492 - 1) + 128]]
                                mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                                mem[mem[64] + 36] = address(_6705)
                                mem[mem[64] + 68] = address(_6706)
                                mem[mem[64] + 100] = bool(cd[100])
                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_6705), address(_6706), bool(cd[100])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7136 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7136] <= _5849:
                                    revert with 0, 'no profit'
                        else:
                            _6674 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                            _6675 = mem[mem[(32 * _1492 - 1) + 128]]
                            _6676 = mem[mem[(32 * _1492 - 1) + 128] + 96]
                            mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                            mem[mem[64] + 36] = address(_6674)
                            mem[mem[64] + 68] = address(_6675)
                            mem[mem[64] + 100] = bool(cd[100])
                            mem[mem[64] + 132] = uint16(_6676)
                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_6674), address(_6675), bool(cd[100]), uint16(_6676)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7137 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7137] <= _5849:
                                revert with 0, 'no profit'
                else:
                    _5883 = mem[mem[128] + 32]
                    _5884 = mem[mem[128]]
                    _5885 = mem[mem[128] + 96]
                    mem[mem[64]] = 0x1d1f04fb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = _5854
                    mem[mem[64] + 100] = address(_5883)
                    mem[mem[64] + 132] = address(_5884)
                    mem[mem[64] + 164] = this.address
                    mem[mem[64] + 196] = bool(cd[100])
                    mem[mem[64] + 228] = uint16(_5885)
                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x1d1f04fb with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, cd[4], _5854, address(_5883), address(_5884), address(this.address), bool(cd[100]), uint16(_5885)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 < mem[_1497]
                    require 0 < mem[96]
                    idx = 1
                    s = mem[mem[128] + 32]
                    s = mem[mem[_1497 + 32]]
                    while idx < _1492 - 1:
                        require idx < mem[_1497]
                        _6611 = mem[mem[(32 * idx) + _1497 + 32]]
                        require idx < mem[96]
                        require idx + 1 < mem[_1497]
                        if not mem[mem[(32 * idx + 1) + _1497 + 32] + 32]:
                            if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    _6814 = mem[mem[(32 * idx) + 128] + 32]
                                    _6815 = mem[mem[(32 * idx) + 128]]
                                    mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6611
                                    mem[mem[64] + 36] = address(_6814)
                                    mem[mem[64] + 68] = address(_6815)
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                         gas gas_remaining wei
                                        args _6611, address(_6814), address(_6815), address(this.address), bool(cd[100])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _6765 = mem[mem[(32 * idx) + 128] + 32]
                                _6766 = mem[mem[(32 * idx) + 128]]
                                _6767 = mem[mem[(32 * idx) + 128] + 96]
                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _6611
                                mem[mem[64] + 36] = address(_6765)
                                mem[mem[64] + 68] = address(_6766)
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = bool(cd[100])
                                mem[mem[64] + 164] = uint16(_6767)
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                     gas gas_remaining wei
                                    args _6611, address(_6765), address(_6766), address(this.address), bool(cd[100]), uint16(_6767)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if idx < mem[_1497]:
                                if idx < mem[96]:
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + 128] + 32]
                                    s = mem[mem[(32 * idx) + _1497 + 32]]
                                    continue 
                        else:
                            if idx + 1 < mem[96]:
                                _6714 = mem[mem[(32 * idx + 1) + 128]]
                                if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _6842 = mem[mem[(32 * idx) + 128] + 32]
                                        _6843 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6611
                                        mem[mem[64] + 36] = address(_6842)
                                        mem[mem[64] + 68] = address(_6843)
                                        mem[mem[64] + 100] = address(_6714)
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _6611, address(_6842), address(_6843), address(_6714), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _6810 = mem[mem[(32 * idx) + 128] + 32]
                                    _6811 = mem[mem[(32 * idx) + 128]]
                                    _6812 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6611
                                    mem[mem[64] + 36] = address(_6810)
                                    mem[mem[64] + 68] = address(_6811)
                                    mem[mem[64] + 100] = address(_6714)
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_6812)
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _6611, address(_6810), address(_6811), address(_6714), bool(cd[100]), uint16(_6812)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_1497]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        s = mem[mem[(32 * idx) + _1497 + 32]]
                                        continue 
                        revert
                    require _1492 - 1 < mem[_1497]
                    require _1492 - 1 < mem[96]
                    if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2]:
                        if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2] != 32:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6989 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_6989] <= _5849:
                                revert with 0, 'no profit'
                        else:
                            _6710 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                            _6711 = mem[mem[(32 * _1492 - 1) + 128]]
                            mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                            mem[mem[64] + 36] = address(_6710)
                            mem[mem[64] + 68] = address(_6711)
                            mem[mem[64] + 100] = bool(cd[100])
                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_6710), address(_6711), bool(cd[100])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7139 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7139] <= _5849:
                                revert with 0, 'no profit'
                    else:
                        _6680 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                        _6681 = mem[mem[(32 * _1492 - 1) + 128]]
                        _6682 = mem[mem[(32 * _1492 - 1) + 128] + 96]
                        mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                        mem[mem[64] + 36] = address(_6680)
                        mem[mem[64] + 68] = address(_6681)
                        mem[mem[64] + 100] = bool(cd[100])
                        mem[mem[64] + 132] = uint16(_6682)
                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_6680), address(_6681), bool(cd[100]), uint16(_6682)
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7140 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_7140] <= _5849:
                            revert with 0, 'no profit'
            else:
                require 1 < mem[96]
                _5863 = mem[mem[160]]
                if mem[mem[128] + 94 len 2]:
                    if mem[mem[128] + 94 len 2] != 32:
                        require 0 < mem[_1497]
                        require 0 < mem[96]
                        idx = 1
                        s = mem[mem[128] + 32]
                        s = mem[mem[_1497 + 32]]
                        while idx < _1492 - 1:
                            require idx < mem[_1497]
                            _6581 = mem[mem[(32 * idx) + _1497 + 32]]
                            require idx < mem[96]
                            require idx + 1 < mem[_1497]
                            if not mem[mem[(32 * idx + 1) + _1497 + 32] + 32]:
                                if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _6774 = mem[mem[(32 * idx) + 128] + 32]
                                        _6775 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6581
                                        mem[mem[64] + 36] = address(_6774)
                                        mem[mem[64] + 68] = address(_6775)
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _6581, address(_6774), address(_6775), address(this.address), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _6730 = mem[mem[(32 * idx) + 128] + 32]
                                    _6731 = mem[mem[(32 * idx) + 128]]
                                    _6732 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6581
                                    mem[mem[64] + 36] = address(_6730)
                                    mem[mem[64] + 68] = address(_6731)
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_6732)
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _6581, address(_6730), address(_6731), address(this.address), bool(cd[100]), uint16(_6732)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_1497]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        s = mem[mem[(32 * idx) + _1497 + 32]]
                                        continue 
                            else:
                                if idx + 1 < mem[96]:
                                    _6689 = mem[mem[(32 * idx + 1) + 128]]
                                    if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _6817 = mem[mem[(32 * idx) + 128] + 32]
                                            _6818 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _6581
                                            mem[mem[64] + 36] = address(_6817)
                                            mem[mem[64] + 68] = address(_6818)
                                            mem[mem[64] + 100] = address(_6689)
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _6581, address(_6817), address(_6818), address(_6689), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _6770 = mem[mem[(32 * idx) + 128] + 32]
                                        _6771 = mem[mem[(32 * idx) + 128]]
                                        _6772 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6581
                                        mem[mem[64] + 36] = address(_6770)
                                        mem[mem[64] + 68] = address(_6771)
                                        mem[mem[64] + 100] = address(_6689)
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(_6772)
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _6581, address(_6770), address(_6771), address(_6689), bool(cd[100]), uint16(_6772)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[_1497]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            s = mem[mem[(32 * idx) + _1497 + 32]]
                                            continue 
                            revert
                        require _1492 - 1 < mem[_1497]
                        require _1492 - 1 < mem[96]
                        if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2]:
                            if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2] != 32:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6949 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_6949] <= _5849:
                                    revert with 0, 'no profit'
                            else:
                                _6685 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                                _6686 = mem[mem[(32 * _1492 - 1) + 128]]
                                mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                                mem[mem[64] + 36] = address(_6685)
                                mem[mem[64] + 68] = address(_6686)
                                mem[mem[64] + 100] = bool(cd[100])
                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_6685), address(_6686), bool(cd[100])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7124 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7124] <= _5849:
                                    revert with 0, 'no profit'
                        else:
                            _6650 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                            _6651 = mem[mem[(32 * _1492 - 1) + 128]]
                            _6652 = mem[mem[(32 * _1492 - 1) + 128] + 96]
                            mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                            mem[mem[64] + 36] = address(_6650)
                            mem[mem[64] + 68] = address(_6651)
                            mem[mem[64] + 100] = bool(cd[100])
                            mem[mem[64] + 132] = uint16(_6652)
                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_6650), address(_6651), bool(cd[100]), uint16(_6652)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7125 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7125] <= _5849:
                                revert with 0, 'no profit'
                    else:
                        _5910 = mem[mem[128] + 32]
                        _5911 = mem[mem[128]]
                        mem[mem[64]] = 0x5ce9750800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[mem[64] + 36] = cd[4]
                        mem[mem[64] + 68] = _5854
                        mem[mem[64] + 100] = address(_5910)
                        mem[mem[64] + 132] = address(_5911)
                        mem[mem[64] + 164] = address(_5863)
                        mem[mem[64] + 196] = bool(cd[100])
                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x5ce97508 with:
                             gas gas_remaining wei
                            args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, cd[4], _5854, address(_5910), address(_5911), address(_5863), bool(cd[100])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < mem[_1497]
                        require 0 < mem[96]
                        idx = 1
                        s = mem[mem[128] + 32]
                        s = mem[mem[_1497 + 32]]
                        while idx < _1492 - 1:
                            require idx < mem[_1497]
                            _6587 = mem[mem[(32 * idx) + _1497 + 32]]
                            require idx < mem[96]
                            require idx + 1 < mem[_1497]
                            if not mem[mem[(32 * idx + 1) + _1497 + 32] + 32]:
                                if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _6782 = mem[mem[(32 * idx) + 128] + 32]
                                        _6783 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6587
                                        mem[mem[64] + 36] = address(_6782)
                                        mem[mem[64] + 68] = address(_6783)
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _6587, address(_6782), address(_6783), address(this.address), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _6737 = mem[mem[(32 * idx) + 128] + 32]
                                    _6738 = mem[mem[(32 * idx) + 128]]
                                    _6739 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6587
                                    mem[mem[64] + 36] = address(_6737)
                                    mem[mem[64] + 68] = address(_6738)
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_6739)
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _6587, address(_6737), address(_6738), address(this.address), bool(cd[100]), uint16(_6739)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_1497]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        s = mem[mem[(32 * idx) + _1497 + 32]]
                                        continue 
                            else:
                                if idx + 1 < mem[96]:
                                    _6694 = mem[mem[(32 * idx + 1) + 128]]
                                    if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _6822 = mem[mem[(32 * idx) + 128] + 32]
                                            _6823 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _6587
                                            mem[mem[64] + 36] = address(_6822)
                                            mem[mem[64] + 68] = address(_6823)
                                            mem[mem[64] + 100] = address(_6694)
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _6587, address(_6822), address(_6823), address(_6694), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _6778 = mem[mem[(32 * idx) + 128] + 32]
                                        _6779 = mem[mem[(32 * idx) + 128]]
                                        _6780 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6587
                                        mem[mem[64] + 36] = address(_6778)
                                        mem[mem[64] + 68] = address(_6779)
                                        mem[mem[64] + 100] = address(_6694)
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(_6780)
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _6587, address(_6778), address(_6779), address(_6694), bool(cd[100]), uint16(_6780)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[_1497]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            s = mem[mem[(32 * idx) + _1497 + 32]]
                                            continue 
                            revert
                        require _1492 - 1 < mem[_1497]
                        require _1492 - 1 < mem[96]
                        if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2]:
                            if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2] != 32:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6957 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_6957] <= _5849:
                                    revert with 0, 'no profit'
                            else:
                                _6690 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                                _6691 = mem[mem[(32 * _1492 - 1) + 128]]
                                mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                                mem[mem[64] + 36] = address(_6690)
                                mem[mem[64] + 68] = address(_6691)
                                mem[mem[64] + 100] = bool(cd[100])
                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_6690), address(_6691), bool(cd[100])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7127 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7127] <= _5849:
                                    revert with 0, 'no profit'
                        else:
                            _6656 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                            _6657 = mem[mem[(32 * _1492 - 1) + 128]]
                            _6658 = mem[mem[(32 * _1492 - 1) + 128] + 96]
                            mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                            mem[mem[64] + 36] = address(_6656)
                            mem[mem[64] + 68] = address(_6657)
                            mem[mem[64] + 100] = bool(cd[100])
                            mem[mem[64] + 132] = uint16(_6658)
                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_6656), address(_6657), bool(cd[100]), uint16(_6658)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7128 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7128] <= _5849:
                                revert with 0, 'no profit'
                else:
                    _5892 = mem[mem[128] + 32]
                    _5893 = mem[mem[128]]
                    _5894 = mem[mem[128] + 96]
                    mem[mem[64]] = 0x1d1f04fb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = _5854
                    mem[mem[64] + 100] = address(_5892)
                    mem[mem[64] + 132] = address(_5893)
                    mem[mem[64] + 164] = address(_5863)
                    mem[mem[64] + 196] = bool(cd[100])
                    mem[mem[64] + 228] = uint16(_5894)
                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x1d1f04fb with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, cd[4], _5854, address(_5892), address(_5893), address(_5863), bool(cd[100]), uint16(_5894)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 < mem[_1497]
                    require 0 < mem[96]
                    idx = 1
                    s = mem[mem[128] + 32]
                    s = mem[mem[_1497 + 32]]
                    while idx < _1492 - 1:
                        require idx < mem[_1497]
                        _6593 = mem[mem[(32 * idx) + _1497 + 32]]
                        require idx < mem[96]
                        require idx + 1 < mem[_1497]
                        if not mem[mem[(32 * idx + 1) + _1497 + 32] + 32]:
                            if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    _6790 = mem[mem[(32 * idx) + 128] + 32]
                                    _6791 = mem[mem[(32 * idx) + 128]]
                                    mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6593
                                    mem[mem[64] + 36] = address(_6790)
                                    mem[mem[64] + 68] = address(_6791)
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                         gas gas_remaining wei
                                        args _6593, address(_6790), address(_6791), address(this.address), bool(cd[100])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _6744 = mem[mem[(32 * idx) + 128] + 32]
                                _6745 = mem[mem[(32 * idx) + 128]]
                                _6746 = mem[mem[(32 * idx) + 128] + 96]
                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _6593
                                mem[mem[64] + 36] = address(_6744)
                                mem[mem[64] + 68] = address(_6745)
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = bool(cd[100])
                                mem[mem[64] + 164] = uint16(_6746)
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                     gas gas_remaining wei
                                    args _6593, address(_6744), address(_6745), address(this.address), bool(cd[100]), uint16(_6746)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if idx < mem[_1497]:
                                if idx < mem[96]:
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + 128] + 32]
                                    s = mem[mem[(32 * idx) + _1497 + 32]]
                                    continue 
                        else:
                            if idx + 1 < mem[96]:
                                _6699 = mem[mem[(32 * idx + 1) + 128]]
                                if mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    if 32 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _6827 = mem[mem[(32 * idx) + 128] + 32]
                                        _6828 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6593
                                        mem[mem[64] + 36] = address(_6827)
                                        mem[mem[64] + 68] = address(_6828)
                                        mem[mem[64] + 100] = address(_6699)
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _6593, address(_6827), address(_6828), address(_6699), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _6786 = mem[mem[(32 * idx) + 128] + 32]
                                    _6787 = mem[mem[(32 * idx) + 128]]
                                    _6788 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6593
                                    mem[mem[64] + 36] = address(_6786)
                                    mem[mem[64] + 68] = address(_6787)
                                    mem[mem[64] + 100] = address(_6699)
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_6788)
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _6593, address(_6786), address(_6787), address(_6699), bool(cd[100]), uint16(_6788)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_1497]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        s = mem[mem[(32 * idx) + _1497 + 32]]
                                        continue 
                        revert
                    require _1492 - 1 < mem[_1497]
                    require _1492 - 1 < mem[96]
                    if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2]:
                        if mem[mem[(32 * _1492 - 1) + 128] + 94 len 2] != 32:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6965 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_6965] <= _5849:
                                revert with 0, 'no profit'
                        else:
                            _6695 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                            _6696 = mem[mem[(32 * _1492 - 1) + 128]]
                            mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                            mem[mem[64] + 36] = address(_6695)
                            mem[mem[64] + 68] = address(_6696)
                            mem[mem[64] + 100] = bool(cd[100])
                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_6695), address(_6696), bool(cd[100])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7130 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7130] <= _5849:
                                revert with 0, 'no profit'
                    else:
                        _6662 = mem[mem[(32 * _1492 - 1) + 128] + 32]
                        _6663 = mem[mem[(32 * _1492 - 1) + 128]]
                        _6664 = mem[mem[(32 * _1492 - 1) + 128] + 96]
                        mem[mem[64] + 4] = mem[mem[(32 * _1492 - 1) + _1497 + 32]]
                        mem[mem[64] + 36] = address(_6662)
                        mem[mem[64] + 68] = address(_6663)
                        mem[mem[64] + 100] = bool(cd[100])
                        mem[mem[64] + 132] = uint16(_6664)
                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_6662), address(_6663), bool(cd[100]), uint16(_6664)
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7131 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_7131] <= _5849:
                            revert with 0, 'no profit'
}



}
