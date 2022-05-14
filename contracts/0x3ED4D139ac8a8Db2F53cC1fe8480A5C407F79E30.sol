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
    require ('cd', 164).length - 1 < ('cd', 164).length
    require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
    require address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    require ('cd', 164).length <= test266151307()
    mem[96] = ('cd', 164).length
    mem[64] = (32 * ('cd', 164).length) + 128
    if not ('cd', 164).length:
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        t = 10000
        u = cd[4]
        while idx < ('cd', 164).length:
            require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
            _2000 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
            mem[_2000] = cd[((160 * idx) + cd[164] + 36)]
            require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
            mem[_2000 + 32] = cd[((160 * idx) + cd[164] + 68)]
            require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
            mem[_2000 + 64] = cd[((160 * idx) + cd[164] + 100)]
            require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
            mem[_2000 + 96] = cd[((160 * idx) + cd[164] + 132)]
            require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
            mem[_2000 + 128] = cd[((160 * idx) + cd[164] + 164)]
            if 0 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[164] + 132)])
                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[164] + 164)])
                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                     gas gas_remaining wei
                    args u, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), cd[((160 * idx) + cd[164] + 132)] << 240, uint16(cd[((160 * idx) + cd[164] + 164)])
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _2043 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _2055 = mem[_2043]
                require mem[_2043 + 32] == bool(mem[_2043 + 32])
                require idx < mem[96]
                _2099 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2043 + 32])
                mem[_2099] = _2055
            else:
                if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                    if uint16(cd[((160 * idx) + cd[164] + 100)]) != 32:
                        revert with 0, 'exchangeType not exist'
                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[164] + 164)])
                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                         gas gas_remaining wei
                        args u, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), uint16(cd[((160 * idx) + cd[164] + 164)])
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2051 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _2070 = mem[_2051]
                    require mem[_2051 + 32] == bool(mem[_2051 + 32])
                    require idx < mem[96]
                    _2112 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2051 + 32])
                    mem[_2112] = _2070
                else:
                    _2038 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_2038]
                    mem[_2038 + 32] = address(s)
                    require 1 < mem[_2038]
                    mem[_2038 + 64] = address(cd[((160 * idx) + cd[164] + 68)])
                    mem[_2038 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    if 10000 == uint16(t):
                        mem[_2038 + 100] = u
                        mem[_2038 + 132] = 64
                        mem[_2038 + 164] = mem[_2038]
                        s = 0
                        while s < 32 * mem[_2038]:
                            mem[s + _2038 + 196] = mem[s + _2038 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((160 * idx) + cd[164] + 36)]))
                        staticcall address(cd[((160 * idx) + cd[164] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args u, 64, mem[_2038 + 164 len (32 * mem[_2038]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2038 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _2038 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _4071 = mem[_2038 + 96 len 4], Mask(224, 32, u) >> 32
                        require mem[_2038 + 96 len 4], Mask(224, 32, u) >> 32 <= 4294967296
                        require mem[_2038 + 96 len 4], Mask(224, 32, u) >> 32 + 32 <= return_data.size
                        require mem[_2038 + mem[_2038 + 96 len 4], Mask(224, 32, u) >> 32 + 96] <= 4294967296 and mem[_2038 + 96 len 4], Mask(224, 32, u) >> 32 + (32 * mem[_2038 + mem[_2038 + 96 len 4], Mask(224, 32, u) >> 32 + 96]) + 32 <= return_data.size
                        mem[_2038 + ceil32(return_data.size) + 96] = mem[_2038 + mem[_2038 + 96 len 4], Mask(224, 32, u) >> 32 + 96]
                        _4096 = mem[_2038 + _4071 + 96]
                        s = 0
                        while s < 32 * _4096:
                            mem[s + _2038 + ceil32(return_data.size) + 128] = mem[s + _2038 + _4071 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _4096) + _2038 + ceil32(return_data.size) + 128
                        require 1 < mem[_2038 + ceil32(return_data.size) + 96]
                        _5922 = mem[_2038 + ceil32(return_data.size) + 160]
                        require idx < mem[96]
                        if 10000 == uint16(cd[((160 * idx) + cd[164] + 164)]):
                            _5931 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = 0
                            mem[_5931] = _5922
                        else:
                            _5939 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = 0
                            mem[_5939] = _5922 * uint16(cd[((160 * idx) + cd[164] + 164)]) / 10000
                    else:
                        mem[_2038 + 100] = uint16(t) * u / 10000
                        mem[_2038 + 132] = 64
                        mem[_2038 + 164] = mem[_2038]
                        s = 0
                        while s < 32 * mem[_2038]:
                            mem[s + _2038 + 196] = mem[s + _2038 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((160 * idx) + cd[164] + 36)]))
                        staticcall address(cd[((160 * idx) + cd[164] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args uint16(t) * u / 10000, 64, mem[_2038 + 164 len (32 * mem[_2038]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2038 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _2038 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _4073 = mem[_2038 + 96 len 4], Mask(224, 32, uint16(t) * u / 10000) >> 32
                        require mem[_2038 + 96 len 4], Mask(224, 32, uint16(t) * u / 10000) >> 32 <= 4294967296
                        require mem[_2038 + 96 len 4], Mask(224, 32, uint16(t) * u / 10000) >> 32 + 32 <= return_data.size
                        require mem[_2038 + mem[_2038 + 96 len 4], Mask(224, 32, uint16(t) * u / 10000) >> 32 + 96] <= 4294967296 and mem[_2038 + 96 len 4], Mask(224, 32, uint16(t) * u / 10000) >> 32 + (32 * mem[_2038 + mem[_2038 + 96 len 4], Mask(224, 32, uint16(t) * u / 10000) >> 32 + 96]) + 32 <= return_data.size
                        mem[_2038 + ceil32(return_data.size) + 96] = mem[_2038 + mem[_2038 + 96 len 4], Mask(224, 32, uint16(t) * u / 10000) >> 32 + 96]
                        _4097 = mem[_2038 + _4073 + 96]
                        s = 0
                        while s < 32 * _4097:
                            mem[s + _2038 + ceil32(return_data.size) + 128] = mem[s + _2038 + _4073 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _4097) + _2038 + ceil32(return_data.size) + 128
                        require 1 < mem[_2038 + ceil32(return_data.size) + 96]
                        _5923 = mem[_2038 + ceil32(return_data.size) + 160]
                        require idx < mem[96]
                        if 10000 == uint16(cd[((160 * idx) + cd[164] + 164)]):
                            _5934 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = 0
                            mem[_5934] = _5923
                        else:
                            _5943 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = 0
                            mem[_5943] = _5923 * uint16(cd[((160 * idx) + cd[164] + 164)]) / 10000
            require idx < mem[96]
            if 0 == mem[mem[(32 * idx) + 128]]:
            require idx < ('cd', 164).length
            require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
            require idx < ('cd', 164).length
            require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[164] + 68)]
            t = cd[((160 * idx) + cd[164] + 164)]
            u = mem[mem[(32 * idx) + 128]]
            continue 
        require ('cd', 164).length - 1 < mem[96]
        if mem[mem[(32 * ('cd', 164).length - 1) + 128]] > cd[4] + cd[36]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2006 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2009 = mem[_2006]
            require 0 < mem[96]
            _2013 = mem[mem[128]]
            require 0 < ('cd', 164).length
            require calldata.size + -cd[164] - 36 >= 160
            _2015 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require ('cd', 164)[0] == address(('cd', 164)[0])
            mem[_2015] = ('cd', 164)[0]
            require ('cd', 164)[1] == address(('cd', 164)[1])
            mem[_2015 + 32] = ('cd', 164)[1]
            require ('cd', 164)[2] == uint16(('cd', 164)[2])
            mem[_2015 + 64] = ('cd', 164)[2]
            require ('cd', 164)[3] == uint16(('cd', 164)[3])
            mem[_2015 + 96] = ('cd', 164)[3]
            require ('cd', 164)[4] == uint16(('cd', 164)[4])
            mem[_2015 + 128] = ('cd', 164)[4]
            require 1 < mem[96]
            if not mem[mem[160] + 32]:
                if not uint16(('cd', 164)[2]):
                    mem[mem[64]] = 0x1d1f04fb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = _2013
                    mem[mem[64] + 100] = address(('cd', 164)[1])
                    mem[mem[64] + 132] = address(('cd', 164)[0])
                    mem[mem[64] + 164] = this.address
                    mem[mem[64] + 196] = bool(cd[100])
                    mem[mem[64] + 228] = uint16(('cd', 164)[3])
                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x1d1f04fb with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, cd[4], _2013, address(('cd', 164)[1]), address(('cd', 164)[0]), address(this.address), bool(cd[100]), uint16(('cd', 164)[3])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 < mem[96]
                    require 0 < ('cd', 164).length
                    require ('cd', 164)[1] == address(('cd', 164)[1])
                    idx = 1
                    s = ('cd', 164)[1]
                    t = mem[mem[128]]
                    while idx < ('cd', 164).length - 1:
                        require idx < mem[96]
                        _4068 = mem[mem[(32 * idx) + 128]]
                        require idx < ('cd', 164).length
                        require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
                        _4090 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
                        mem[_4090] = cd[((160 * idx) + cd[164] + 36)]
                        require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                        mem[_4090 + 32] = cd[((160 * idx) + cd[164] + 68)]
                        require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
                        mem[_4090 + 64] = cd[((160 * idx) + cd[164] + 100)]
                        require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
                        mem[_4090 + 96] = cd[((160 * idx) + cd[164] + 132)]
                        require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
                        mem[_4090 + 128] = cd[((160 * idx) + cd[164] + 164)]
                        require idx + 1 < mem[96]
                        if not mem[mem[(32 * idx + 1) + 128] + 32]:
                            if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4068
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = bool(cd[100])
                                mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                     gas gas_remaining wei
                                    args _4068, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                    if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4068
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _4068, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = t
                                    mem[mem[64] + 36] = address(s)
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                    mem[mem[64] + 132] = this.address
                                    mem[mem[64] + 164] = bool(cd[100])
                                    require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                    delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                         gas gas_remaining wei
                                        args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require idx + 1 < ('cd', 164).length
                            require cd[((160 * idx) + cd[164] + 196)] == address(cd[((160 * idx) + cd[164] + 196)])
                            if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4068
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                mem[mem[64] + 132] = bool(cd[100])
                                mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                     gas gas_remaining wei
                                    args _4068, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                    if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4068
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _4068, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = t
                                    mem[mem[64] + 36] = address(s)
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                    mem[mem[64] + 132] = address(cd[((160 * idx) + cd[164] + 196)])
                                    mem[mem[64] + 164] = bool(cd[100])
                                    require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                    delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                         gas gas_remaining wei
                                        args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                        require idx < mem[96]
                        require idx < ('cd', 164).length
                        require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                        idx = idx + 1
                        s = cd[((160 * idx) + cd[164] + 68)]
                        t = mem[mem[(32 * idx) + 128]]
                        continue 
                    require ('cd', 164).length - 1 < mem[96]
                    _4066 = mem[mem[(32 * ('cd', 164).length - 1) + 128]]
                    require ('cd', 164).length - 1 < ('cd', 164).length
                    require calldata.size + (-160 * ('cd', 164).length) + -cd[164] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff84 >= 160
                    _4089 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * ('cd', 164).length) + cd[164] - 124)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                    mem[_4089] = cd[((160 * ('cd', 164).length) + cd[164] - 124)]
                    require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                    mem[_4089 + 32] = cd[((160 * ('cd', 164).length) + cd[164] - 92)]
                    require cd[((160 * ('cd', 164).length) + cd[164] - 60)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)])
                    mem[_4089 + 64] = cd[((160 * ('cd', 164).length) + cd[164] - 60)]
                    require cd[((160 * ('cd', 164).length) + cd[164] - 28)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                    mem[_4089 + 96] = cd[((160 * ('cd', 164).length) + cd[164] - 28)]
                    require cd[((160 * ('cd', 164).length) + cd[164] + 4)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] + 4)])
                    mem[_4089 + 128] = cd[((160 * ('cd', 164).length) + cd[164] + 4)]
                    if not uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]):
                        mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                        mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                        mem[mem[64] + 100] = bool(cd[100])
                        mem[mem[64] + 132] = uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                             gas gas_remaining wei
                            args _4066, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100]), uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
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
                        _4791 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4791] <= _2009:
                            revert with 0, 'no profit'
                    else:
                        if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 3:
                            if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 32:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4673 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4673] <= _2009:
                                    revert with 0, 'no profit'
                            else:
                                mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                mem[mem[64] + 100] = bool(cd[100])
                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                     gas gas_remaining wei
                                    args _4066, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                _4856 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4856] <= _2009:
                                    revert with 0, 'no profit'
                        else:
                            mem[mem[64] + 36] = address(s)
                            mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                            mem[mem[64] + 100] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                            mem[mem[64] + 132] = bool(cd[100])
                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xcb471787 with:
                                 gas gas_remaining wei
                                args t, address(s), address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                            _4818 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4818] <= _2009:
                                revert with 0, 'no profit'
                else:
                    if 3 == uint16(('cd', 164)[2]):
                        mem[mem[64]] = 0xfdcba57c00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[4]
                        mem[mem[64] + 36] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[mem[64] + 68] = address(('cd', 164)[1])
                        mem[mem[64] + 100] = address(('cd', 164)[0])
                        mem[mem[64] + 132] = this.address
                        require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                        delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xfdcba57c with:
                             gas gas_remaining wei
                            args cd[4], 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(('cd', 164)[1]), address(('cd', 164)[0]), this.address
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < mem[96]
                        require 0 < ('cd', 164).length
                        require ('cd', 164)[1] == address(('cd', 164)[1])
                        idx = 1
                        s = ('cd', 164)[1]
                        t = mem[mem[128]]
                        while idx < ('cd', 164).length - 1:
                            require idx < mem[96]
                            _4064 = mem[mem[(32 * idx) + 128]]
                            require idx < ('cd', 164).length
                            require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
                            _4088 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
                            mem[_4088] = cd[((160 * idx) + cd[164] + 36)]
                            require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                            mem[_4088 + 32] = cd[((160 * idx) + cd[164] + 68)]
                            require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
                            mem[_4088 + 64] = cd[((160 * idx) + cd[164] + 100)]
                            require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
                            mem[_4088 + 96] = cd[((160 * idx) + cd[164] + 132)]
                            require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
                            mem[_4088 + 128] = cd[((160 * idx) + cd[164] + 164)]
                            require idx + 1 < mem[96]
                            if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4064
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _4064, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                        if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _4064
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _4064, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = t
                                        mem[mem[64] + 36] = address(s)
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = bool(cd[100])
                                        require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                        delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                             gas gas_remaining wei
                                            args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < ('cd', 164).length
                                require cd[((160 * idx) + cd[164] + 196)] == address(cd[((160 * idx) + cd[164] + 196)])
                                if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4064
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _4064, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                        if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _4064
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _4064, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = t
                                        mem[mem[64] + 36] = address(s)
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 132] = address(cd[((160 * idx) + cd[164] + 196)])
                                        mem[mem[64] + 164] = bool(cd[100])
                                        require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                        delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                             gas gas_remaining wei
                                            args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                            require idx < mem[96]
                            require idx < ('cd', 164).length
                            require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                            idx = idx + 1
                            s = cd[((160 * idx) + cd[164] + 68)]
                            t = mem[mem[(32 * idx) + 128]]
                            continue 
                        require ('cd', 164).length - 1 < mem[96]
                        _4062 = mem[mem[(32 * ('cd', 164).length - 1) + 128]]
                        require ('cd', 164).length - 1 < ('cd', 164).length
                        require calldata.size + (-160 * ('cd', 164).length) + -cd[164] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff84 >= 160
                        _4087 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * ('cd', 164).length) + cd[164] - 124)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                        mem[_4087] = cd[((160 * ('cd', 164).length) + cd[164] - 124)]
                        require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                        mem[_4087 + 32] = cd[((160 * ('cd', 164).length) + cd[164] - 92)]
                        require cd[((160 * ('cd', 164).length) + cd[164] - 60)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)])
                        mem[_4087 + 64] = cd[((160 * ('cd', 164).length) + cd[164] - 60)]
                        require cd[((160 * ('cd', 164).length) + cd[164] - 28)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                        mem[_4087 + 96] = cd[((160 * ('cd', 164).length) + cd[164] - 28)]
                        require cd[((160 * ('cd', 164).length) + cd[164] + 4)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] + 4)])
                        mem[_4087 + 128] = cd[((160 * ('cd', 164).length) + cd[164] + 4)]
                        if not uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]):
                            mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                            mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                            mem[mem[64] + 100] = bool(cd[100])
                            mem[mem[64] + 132] = uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                 gas gas_remaining wei
                                args _4062, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100]), uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
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
                            _4789 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4789] <= _2009:
                                revert with 0, 'no profit'
                        else:
                            if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 3:
                                if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 32:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4664 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4664] <= _2009:
                                        revert with 0, 'no profit'
                                else:
                                    mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                    mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                    mem[mem[64] + 100] = bool(cd[100])
                                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                         gas gas_remaining wei
                                        args _4062, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                    _4851 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4851] <= _2009:
                                        revert with 0, 'no profit'
                            else:
                                mem[mem[64] + 36] = address(s)
                                mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                mem[mem[64] + 100] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                mem[mem[64] + 132] = bool(cd[100])
                                require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xcb471787 with:
                                     gas gas_remaining wei
                                    args t, address(s), address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                _4815 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4815] <= _2009:
                                    revert with 0, 'no profit'
                    else:
                        if uint16(('cd', 164)[2]) != 32:
                            require 0 < mem[96]
                            require 0 < ('cd', 164).length
                            require ('cd', 164)[1] == address(('cd', 164)[1])
                            idx = 1
                            s = ('cd', 164)[1]
                            t = mem[mem[128]]
                            while idx < ('cd', 164).length - 1:
                                require idx < mem[96]
                                _4056 = mem[mem[(32 * idx) + 128]]
                                require idx < ('cd', 164).length
                                require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
                                _4084 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
                                mem[_4084] = cd[((160 * idx) + cd[164] + 36)]
                                require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                                mem[_4084 + 32] = cd[((160 * idx) + cd[164] + 68)]
                                require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
                                mem[_4084 + 64] = cd[((160 * idx) + cd[164] + 100)]
                                require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
                                mem[_4084 + 96] = cd[((160 * idx) + cd[164] + 132)]
                                require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
                                mem[_4084 + 128] = cd[((160 * idx) + cd[164] + 164)]
                                require idx + 1 < mem[96]
                                if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                    if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4056
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _4056, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                            if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _4056
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _4056, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = address(s)
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = bool(cd[100])
                                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                                 gas gas_remaining wei
                                                args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < ('cd', 164).length
                                    require cd[((160 * idx) + cd[164] + 196)] == address(cd[((160 * idx) + cd[164] + 196)])
                                    if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4056
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _4056, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                            if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _4056
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                                mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _4056, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = address(s)
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 132] = address(cd[((160 * idx) + cd[164] + 196)])
                                            mem[mem[64] + 164] = bool(cd[100])
                                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                                 gas gas_remaining wei
                                                args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                require idx < mem[96]
                                require idx < ('cd', 164).length
                                require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[164] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            require ('cd', 164).length - 1 < mem[96]
                            _4054 = mem[mem[(32 * ('cd', 164).length - 1) + 128]]
                            require ('cd', 164).length - 1 < ('cd', 164).length
                            require calldata.size + (-160 * ('cd', 164).length) + -cd[164] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff84 >= 160
                            _4083 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * ('cd', 164).length) + cd[164] - 124)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                            mem[_4083] = cd[((160 * ('cd', 164).length) + cd[164] - 124)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                            mem[_4083 + 32] = cd[((160 * ('cd', 164).length) + cd[164] - 92)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 60)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)])
                            mem[_4083 + 64] = cd[((160 * ('cd', 164).length) + cd[164] - 60)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 28)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                            mem[_4083 + 96] = cd[((160 * ('cd', 164).length) + cd[164] - 28)]
                            require cd[((160 * ('cd', 164).length) + cd[164] + 4)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] + 4)])
                            mem[_4083 + 128] = cd[((160 * ('cd', 164).length) + cd[164] + 4)]
                            if not uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]):
                                mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                mem[mem[64] + 100] = bool(cd[100])
                                mem[mem[64] + 132] = uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                     gas gas_remaining wei
                                    args _4054, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100]), uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
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
                                _4785 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4785] <= _2009:
                                    revert with 0, 'no profit'
                            else:
                                if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 3:
                                    if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 32:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4646 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_4646] <= _2009:
                                            revert with 0, 'no profit'
                                    else:
                                        mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                        mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                        mem[mem[64] + 100] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                             gas gas_remaining wei
                                            args _4054, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                        _4841 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_4841] <= _2009:
                                            revert with 0, 'no profit'
                                else:
                                    mem[mem[64] + 36] = address(s)
                                    mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                    mem[mem[64] + 100] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                    mem[mem[64] + 132] = bool(cd[100])
                                    require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                    delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xcb471787 with:
                                         gas gas_remaining wei
                                        args t, address(s), address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                    _4809 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4809] <= _2009:
                                        revert with 0, 'no profit'
                        else:
                            mem[mem[64]] = 0x5ce9750800000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            mem[mem[64] + 36] = cd[4]
                            mem[mem[64] + 68] = _2013
                            mem[mem[64] + 100] = address(('cd', 164)[1])
                            mem[mem[64] + 132] = address(('cd', 164)[0])
                            mem[mem[64] + 164] = this.address
                            mem[mem[64] + 196] = bool(cd[100])
                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x5ce97508 with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, cd[4], _2013, address(('cd', 164)[1]), address(('cd', 164)[0]), address(this.address), bool(cd[100])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[96]
                            require 0 < ('cd', 164).length
                            require ('cd', 164)[1] == address(('cd', 164)[1])
                            idx = 1
                            s = ('cd', 164)[1]
                            t = mem[mem[128]]
                            while idx < ('cd', 164).length - 1:
                                require idx < mem[96]
                                _4060 = mem[mem[(32 * idx) + 128]]
                                require idx < ('cd', 164).length
                                require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
                                _4086 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
                                mem[_4086] = cd[((160 * idx) + cd[164] + 36)]
                                require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                                mem[_4086 + 32] = cd[((160 * idx) + cd[164] + 68)]
                                require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
                                mem[_4086 + 64] = cd[((160 * idx) + cd[164] + 100)]
                                require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
                                mem[_4086 + 96] = cd[((160 * idx) + cd[164] + 132)]
                                require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
                                mem[_4086 + 128] = cd[((160 * idx) + cd[164] + 164)]
                                require idx + 1 < mem[96]
                                if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                    if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4060
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _4060, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                            if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _4060
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _4060, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = address(s)
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = bool(cd[100])
                                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                                 gas gas_remaining wei
                                                args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < ('cd', 164).length
                                    require cd[((160 * idx) + cd[164] + 196)] == address(cd[((160 * idx) + cd[164] + 196)])
                                    if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4060
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _4060, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                            if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _4060
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                                mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _4060, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = address(s)
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 132] = address(cd[((160 * idx) + cd[164] + 196)])
                                            mem[mem[64] + 164] = bool(cd[100])
                                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                                 gas gas_remaining wei
                                                args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                require idx < mem[96]
                                require idx < ('cd', 164).length
                                require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[164] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            require ('cd', 164).length - 1 < mem[96]
                            _4058 = mem[mem[(32 * ('cd', 164).length - 1) + 128]]
                            require ('cd', 164).length - 1 < ('cd', 164).length
                            require calldata.size + (-160 * ('cd', 164).length) + -cd[164] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff84 >= 160
                            _4085 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * ('cd', 164).length) + cd[164] - 124)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                            mem[_4085] = cd[((160 * ('cd', 164).length) + cd[164] - 124)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                            mem[_4085 + 32] = cd[((160 * ('cd', 164).length) + cd[164] - 92)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 60)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)])
                            mem[_4085 + 64] = cd[((160 * ('cd', 164).length) + cd[164] - 60)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 28)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                            mem[_4085 + 96] = cd[((160 * ('cd', 164).length) + cd[164] - 28)]
                            require cd[((160 * ('cd', 164).length) + cd[164] + 4)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] + 4)])
                            mem[_4085 + 128] = cd[((160 * ('cd', 164).length) + cd[164] + 4)]
                            if not uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]):
                                mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                mem[mem[64] + 100] = bool(cd[100])
                                mem[mem[64] + 132] = uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                     gas gas_remaining wei
                                    args _4058, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100]), uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
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
                                _4787 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4787] <= _2009:
                                    revert with 0, 'no profit'
                            else:
                                if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 3:
                                    if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 32:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4655 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_4655] <= _2009:
                                            revert with 0, 'no profit'
                                    else:
                                        mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                        mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                        mem[mem[64] + 100] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                             gas gas_remaining wei
                                            args _4058, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                        _4846 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_4846] <= _2009:
                                            revert with 0, 'no profit'
                                else:
                                    mem[mem[64] + 36] = address(s)
                                    mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                    mem[mem[64] + 100] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                    mem[mem[64] + 132] = bool(cd[100])
                                    require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                    delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xcb471787 with:
                                         gas gas_remaining wei
                                        args t, address(s), address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                    _4812 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4812] <= _2009:
                                        revert with 0, 'no profit'
            else:
                require 1 < ('cd', 164).length
                require ('cd', 164)[5] == address(('cd', 164)[5])
                if not uint16(('cd', 164)[2]):
                    mem[mem[64]] = 0x1d1f04fb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = _2013
                    mem[mem[64] + 100] = address(('cd', 164)[1])
                    mem[mem[64] + 132] = address(('cd', 164)[0])
                    mem[mem[64] + 164] = address(('cd', 164)[5])
                    mem[mem[64] + 196] = bool(cd[100])
                    mem[mem[64] + 228] = uint16(('cd', 164)[3])
                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x1d1f04fb with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, cd[4], _2013, address(('cd', 164)[1]), address(('cd', 164)[0]), address(('cd', 164)[5]), bool(cd[100]), uint16(('cd', 164)[3])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 < mem[96]
                    require 0 < ('cd', 164).length
                    require ('cd', 164)[1] == address(('cd', 164)[1])
                    idx = 1
                    s = ('cd', 164)[1]
                    t = mem[mem[128]]
                    while idx < ('cd', 164).length - 1:
                        require idx < mem[96]
                        _4052 = mem[mem[(32 * idx) + 128]]
                        require idx < ('cd', 164).length
                        require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
                        _4082 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
                        mem[_4082] = cd[((160 * idx) + cd[164] + 36)]
                        require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                        mem[_4082 + 32] = cd[((160 * idx) + cd[164] + 68)]
                        require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
                        mem[_4082 + 64] = cd[((160 * idx) + cd[164] + 100)]
                        require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
                        mem[_4082 + 96] = cd[((160 * idx) + cd[164] + 132)]
                        require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
                        mem[_4082 + 128] = cd[((160 * idx) + cd[164] + 164)]
                        require idx + 1 < mem[96]
                        if not mem[mem[(32 * idx + 1) + 128] + 32]:
                            if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4052
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = bool(cd[100])
                                mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                     gas gas_remaining wei
                                    args _4052, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                    if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4052
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _4052, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = t
                                    mem[mem[64] + 36] = address(s)
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                    mem[mem[64] + 132] = this.address
                                    mem[mem[64] + 164] = bool(cd[100])
                                    require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                    delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                         gas gas_remaining wei
                                        args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require idx + 1 < ('cd', 164).length
                            require cd[((160 * idx) + cd[164] + 196)] == address(cd[((160 * idx) + cd[164] + 196)])
                            if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _4052
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                mem[mem[64] + 132] = bool(cd[100])
                                mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                     gas gas_remaining wei
                                    args _4052, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                    if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4052
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _4052, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = t
                                    mem[mem[64] + 36] = address(s)
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                    mem[mem[64] + 132] = address(cd[((160 * idx) + cd[164] + 196)])
                                    mem[mem[64] + 164] = bool(cd[100])
                                    require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                    delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                         gas gas_remaining wei
                                        args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                        require idx < mem[96]
                        require idx < ('cd', 164).length
                        require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                        idx = idx + 1
                        s = cd[((160 * idx) + cd[164] + 68)]
                        t = mem[mem[(32 * idx) + 128]]
                        continue 
                    require ('cd', 164).length - 1 < mem[96]
                    _4050 = mem[mem[(32 * ('cd', 164).length - 1) + 128]]
                    require ('cd', 164).length - 1 < ('cd', 164).length
                    require calldata.size + (-160 * ('cd', 164).length) + -cd[164] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff84 >= 160
                    _4081 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * ('cd', 164).length) + cd[164] - 124)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                    mem[_4081] = cd[((160 * ('cd', 164).length) + cd[164] - 124)]
                    require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                    mem[_4081 + 32] = cd[((160 * ('cd', 164).length) + cd[164] - 92)]
                    require cd[((160 * ('cd', 164).length) + cd[164] - 60)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)])
                    mem[_4081 + 64] = cd[((160 * ('cd', 164).length) + cd[164] - 60)]
                    require cd[((160 * ('cd', 164).length) + cd[164] - 28)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                    mem[_4081 + 96] = cd[((160 * ('cd', 164).length) + cd[164] - 28)]
                    require cd[((160 * ('cd', 164).length) + cd[164] + 4)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] + 4)])
                    mem[_4081 + 128] = cd[((160 * ('cd', 164).length) + cd[164] + 4)]
                    if not uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]):
                        mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                        mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                        mem[mem[64] + 100] = bool(cd[100])
                        mem[mem[64] + 132] = uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                             gas gas_remaining wei
                            args _4050, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100]), uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
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
                        _4783 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4783] <= _2009:
                            revert with 0, 'no profit'
                    else:
                        if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 3:
                            if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 32:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4637 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4637] <= _2009:
                                    revert with 0, 'no profit'
                            else:
                                mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                mem[mem[64] + 100] = bool(cd[100])
                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                     gas gas_remaining wei
                                    args _4050, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                _4836 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4836] <= _2009:
                                    revert with 0, 'no profit'
                        else:
                            mem[mem[64] + 36] = address(s)
                            mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                            mem[mem[64] + 100] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                            mem[mem[64] + 132] = bool(cd[100])
                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xcb471787 with:
                                 gas gas_remaining wei
                                args t, address(s), address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                            _4806 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4806] <= _2009:
                                revert with 0, 'no profit'
                else:
                    if 3 == uint16(('cd', 164)[2]):
                        mem[mem[64]] = 0xfdcba57c00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[4]
                        mem[mem[64] + 36] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[mem[64] + 68] = address(('cd', 164)[1])
                        mem[mem[64] + 100] = address(('cd', 164)[0])
                        mem[mem[64] + 132] = address(('cd', 164)[5])
                        require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                        delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xfdcba57c with:
                             gas gas_remaining wei
                            args cd[4], 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(('cd', 164)[1]), address(('cd', 164)[0]), address(('cd', 164)[5])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < mem[96]
                        require 0 < ('cd', 164).length
                        require ('cd', 164)[1] == address(('cd', 164)[1])
                        idx = 1
                        s = ('cd', 164)[1]
                        t = mem[mem[128]]
                        while idx < ('cd', 164).length - 1:
                            require idx < mem[96]
                            _4048 = mem[mem[(32 * idx) + 128]]
                            require idx < ('cd', 164).length
                            require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
                            _4080 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
                            mem[_4080] = cd[((160 * idx) + cd[164] + 36)]
                            require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                            mem[_4080 + 32] = cd[((160 * idx) + cd[164] + 68)]
                            require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
                            mem[_4080 + 64] = cd[((160 * idx) + cd[164] + 100)]
                            require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
                            mem[_4080 + 96] = cd[((160 * idx) + cd[164] + 132)]
                            require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
                            mem[_4080 + 128] = cd[((160 * idx) + cd[164] + 164)]
                            require idx + 1 < mem[96]
                            if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4048
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _4048, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                        if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _4048
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _4048, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = t
                                        mem[mem[64] + 36] = address(s)
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = bool(cd[100])
                                        require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                        delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                             gas gas_remaining wei
                                            args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < ('cd', 164).length
                                require cd[((160 * idx) + cd[164] + 196)] == address(cd[((160 * idx) + cd[164] + 196)])
                                if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _4048
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _4048, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                        if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _4048
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _4048, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = t
                                        mem[mem[64] + 36] = address(s)
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 132] = address(cd[((160 * idx) + cd[164] + 196)])
                                        mem[mem[64] + 164] = bool(cd[100])
                                        require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                        delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                             gas gas_remaining wei
                                            args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                            require idx < mem[96]
                            require idx < ('cd', 164).length
                            require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                            idx = idx + 1
                            s = cd[((160 * idx) + cd[164] + 68)]
                            t = mem[mem[(32 * idx) + 128]]
                            continue 
                        require ('cd', 164).length - 1 < mem[96]
                        _4046 = mem[mem[(32 * ('cd', 164).length - 1) + 128]]
                        require ('cd', 164).length - 1 < ('cd', 164).length
                        require calldata.size + (-160 * ('cd', 164).length) + -cd[164] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff84 >= 160
                        _4079 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * ('cd', 164).length) + cd[164] - 124)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                        mem[_4079] = cd[((160 * ('cd', 164).length) + cd[164] - 124)]
                        require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                        mem[_4079 + 32] = cd[((160 * ('cd', 164).length) + cd[164] - 92)]
                        require cd[((160 * ('cd', 164).length) + cd[164] - 60)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)])
                        mem[_4079 + 64] = cd[((160 * ('cd', 164).length) + cd[164] - 60)]
                        require cd[((160 * ('cd', 164).length) + cd[164] - 28)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                        mem[_4079 + 96] = cd[((160 * ('cd', 164).length) + cd[164] - 28)]
                        require cd[((160 * ('cd', 164).length) + cd[164] + 4)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] + 4)])
                        mem[_4079 + 128] = cd[((160 * ('cd', 164).length) + cd[164] + 4)]
                        if not uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]):
                            mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                            mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                            mem[mem[64] + 100] = bool(cd[100])
                            mem[mem[64] + 132] = uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                 gas gas_remaining wei
                                args _4046, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100]), uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
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
                            _4781 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4781] <= _2009:
                                revert with 0, 'no profit'
                        else:
                            if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 3:
                                if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 32:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4628 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4628] <= _2009:
                                        revert with 0, 'no profit'
                                else:
                                    mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                    mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                    mem[mem[64] + 100] = bool(cd[100])
                                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                         gas gas_remaining wei
                                        args _4046, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                    _4831 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4831] <= _2009:
                                        revert with 0, 'no profit'
                            else:
                                mem[mem[64] + 36] = address(s)
                                mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                mem[mem[64] + 100] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                mem[mem[64] + 132] = bool(cd[100])
                                require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xcb471787 with:
                                     gas gas_remaining wei
                                    args t, address(s), address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                _4803 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4803] <= _2009:
                                    revert with 0, 'no profit'
                    else:
                        if uint16(('cd', 164)[2]) != 32:
                            require 0 < mem[96]
                            require 0 < ('cd', 164).length
                            require ('cd', 164)[1] == address(('cd', 164)[1])
                            idx = 1
                            s = ('cd', 164)[1]
                            t = mem[mem[128]]
                            while idx < ('cd', 164).length - 1:
                                require idx < mem[96]
                                _4040 = mem[mem[(32 * idx) + 128]]
                                require idx < ('cd', 164).length
                                require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
                                _4076 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
                                mem[_4076] = cd[((160 * idx) + cd[164] + 36)]
                                require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                                mem[_4076 + 32] = cd[((160 * idx) + cd[164] + 68)]
                                require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
                                mem[_4076 + 64] = cd[((160 * idx) + cd[164] + 100)]
                                require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
                                mem[_4076 + 96] = cd[((160 * idx) + cd[164] + 132)]
                                require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
                                mem[_4076 + 128] = cd[((160 * idx) + cd[164] + 164)]
                                require idx + 1 < mem[96]
                                if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                    if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4040
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _4040, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                            if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _4040
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _4040, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = address(s)
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = bool(cd[100])
                                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                                 gas gas_remaining wei
                                                args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < ('cd', 164).length
                                    require cd[((160 * idx) + cd[164] + 196)] == address(cd[((160 * idx) + cd[164] + 196)])
                                    if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4040
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _4040, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                            if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _4040
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                                mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _4040, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = address(s)
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 132] = address(cd[((160 * idx) + cd[164] + 196)])
                                            mem[mem[64] + 164] = bool(cd[100])
                                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                                 gas gas_remaining wei
                                                args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                require idx < mem[96]
                                require idx < ('cd', 164).length
                                require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[164] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            require ('cd', 164).length - 1 < mem[96]
                            _4038 = mem[mem[(32 * ('cd', 164).length - 1) + 128]]
                            require ('cd', 164).length - 1 < ('cd', 164).length
                            require calldata.size + (-160 * ('cd', 164).length) + -cd[164] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff84 >= 160
                            _4075 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * ('cd', 164).length) + cd[164] - 124)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                            mem[_4075] = cd[((160 * ('cd', 164).length) + cd[164] - 124)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                            mem[_4075 + 32] = cd[((160 * ('cd', 164).length) + cd[164] - 92)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 60)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)])
                            mem[_4075 + 64] = cd[((160 * ('cd', 164).length) + cd[164] - 60)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 28)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                            mem[_4075 + 96] = cd[((160 * ('cd', 164).length) + cd[164] - 28)]
                            require cd[((160 * ('cd', 164).length) + cd[164] + 4)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] + 4)])
                            mem[_4075 + 128] = cd[((160 * ('cd', 164).length) + cd[164] + 4)]
                            if not uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]):
                                mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                mem[mem[64] + 100] = bool(cd[100])
                                mem[mem[64] + 132] = uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                     gas gas_remaining wei
                                    args _4038, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100]), uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
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
                                _4777 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4777] <= _2009:
                                    revert with 0, 'no profit'
                            else:
                                if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 3:
                                    if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 32:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4610 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_4610] <= _2009:
                                            revert with 0, 'no profit'
                                    else:
                                        mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                        mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                        mem[mem[64] + 100] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                             gas gas_remaining wei
                                            args _4038, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                        _4821 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_4821] <= _2009:
                                            revert with 0, 'no profit'
                                else:
                                    mem[mem[64] + 36] = address(s)
                                    mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                    mem[mem[64] + 100] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                    mem[mem[64] + 132] = bool(cd[100])
                                    require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                    delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xcb471787 with:
                                         gas gas_remaining wei
                                        args t, address(s), address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                    _4797 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4797] <= _2009:
                                        revert with 0, 'no profit'
                        else:
                            mem[mem[64]] = 0x5ce9750800000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            mem[mem[64] + 36] = cd[4]
                            mem[mem[64] + 68] = _2013
                            mem[mem[64] + 100] = address(('cd', 164)[1])
                            mem[mem[64] + 132] = address(('cd', 164)[0])
                            mem[mem[64] + 164] = address(('cd', 164)[5])
                            mem[mem[64] + 196] = bool(cd[100])
                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x5ce97508 with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, cd[4], _2013, address(('cd', 164)[1]), address(('cd', 164)[0]), address(('cd', 164)[5]), bool(cd[100])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[96]
                            require 0 < ('cd', 164).length
                            require ('cd', 164)[1] == address(('cd', 164)[1])
                            idx = 1
                            s = ('cd', 164)[1]
                            t = mem[mem[128]]
                            while idx < ('cd', 164).length - 1:
                                require idx < mem[96]
                                _4044 = mem[mem[(32 * idx) + 128]]
                                require idx < ('cd', 164).length
                                require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
                                _4078 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
                                mem[_4078] = cd[((160 * idx) + cd[164] + 36)]
                                require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                                mem[_4078 + 32] = cd[((160 * idx) + cd[164] + 68)]
                                require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
                                mem[_4078 + 64] = cd[((160 * idx) + cd[164] + 100)]
                                require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
                                mem[_4078 + 96] = cd[((160 * idx) + cd[164] + 132)]
                                require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
                                mem[_4078 + 128] = cd[((160 * idx) + cd[164] + 164)]
                                require idx + 1 < mem[96]
                                if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                    if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4044
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _4044, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                            if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _4044
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _4044, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = address(s)
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = bool(cd[100])
                                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                                 gas gas_remaining wei
                                                args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < ('cd', 164).length
                                    require cd[((160 * idx) + cd[164] + 196)] == address(cd[((160 * idx) + cd[164] + 196)])
                                    if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _4044
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _4044, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                            if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _4044
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                                mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _4044, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = address(s)
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 132] = address(cd[((160 * idx) + cd[164] + 196)])
                                            mem[mem[64] + 164] = bool(cd[100])
                                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                                 gas gas_remaining wei
                                                args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                require idx < mem[96]
                                require idx < ('cd', 164).length
                                require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[164] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            require ('cd', 164).length - 1 < mem[96]
                            _4042 = mem[mem[(32 * ('cd', 164).length - 1) + 128]]
                            require ('cd', 164).length - 1 < ('cd', 164).length
                            require calldata.size + (-160 * ('cd', 164).length) + -cd[164] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff84 >= 160
                            _4077 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * ('cd', 164).length) + cd[164] - 124)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                            mem[_4077] = cd[((160 * ('cd', 164).length) + cd[164] - 124)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                            mem[_4077 + 32] = cd[((160 * ('cd', 164).length) + cd[164] - 92)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 60)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)])
                            mem[_4077 + 64] = cd[((160 * ('cd', 164).length) + cd[164] - 60)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 28)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                            mem[_4077 + 96] = cd[((160 * ('cd', 164).length) + cd[164] - 28)]
                            require cd[((160 * ('cd', 164).length) + cd[164] + 4)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] + 4)])
                            mem[_4077 + 128] = cd[((160 * ('cd', 164).length) + cd[164] + 4)]
                            if not uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]):
                                mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                mem[mem[64] + 100] = bool(cd[100])
                                mem[mem[64] + 132] = uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                     gas gas_remaining wei
                                    args _4042, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100]), uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
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
                                _4779 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4779] <= _2009:
                                    revert with 0, 'no profit'
                            else:
                                if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 3:
                                    if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 32:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4619 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_4619] <= _2009:
                                            revert with 0, 'no profit'
                                    else:
                                        mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                        mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                        mem[mem[64] + 100] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                             gas gas_remaining wei
                                            args _4042, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                        _4826 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_4826] <= _2009:
                                            revert with 0, 'no profit'
                                else:
                                    mem[mem[64] + 36] = address(s)
                                    mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                    mem[mem[64] + 100] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                    mem[mem[64] + 132] = bool(cd[100])
                                    require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                    delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xcb471787 with:
                                         gas gas_remaining wei
                                        args t, address(s), address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                    _4800 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_4800] <= _2009:
                                        revert with 0, 'no profit'
    else:
        mem[64] = (32 * ('cd', 164).length) + 192
        mem[(32 * ('cd', 164).length) + 128] = 0
        mem[(32 * ('cd', 164).length) + 160] = 0
        mem[var36001] = (32 * ('cd', 164).length) + 128
        s = var36001
        idx = var36002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 164).length) + 128] = 0
            mem[(32 * ('cd', 164).length) + 160] = 0
            mem[s + 32] = (32 * ('cd', 164).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        t = 10000
        u = cd[4]
        while idx < ('cd', 164).length:
            require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
            _5926 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
            mem[_5926] = cd[((160 * idx) + cd[164] + 36)]
            require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
            mem[_5926 + 32] = cd[((160 * idx) + cd[164] + 68)]
            require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
            mem[_5926 + 64] = cd[((160 * idx) + cd[164] + 100)]
            require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
            mem[_5926 + 96] = cd[((160 * idx) + cd[164] + 132)]
            require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
            mem[_5926 + 128] = cd[((160 * idx) + cd[164] + 164)]
            if 0 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[164] + 132)])
                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[164] + 164)])
                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x659ad184 with:
                     gas gas_remaining wei
                    args u, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), cd[((160 * idx) + cd[164] + 132)] << 240, uint16(cd[((160 * idx) + cd[164] + 164)])
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _5985 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _5990 = mem[_5985]
                require mem[_5985 + 32] == bool(mem[_5985 + 32])
                require idx < mem[96]
                _6012 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_5985 + 32])
                mem[_6012] = _5990
            else:
                if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                    if uint16(cd[((160 * idx) + cd[164] + 100)]) != 32:
                        revert with 0, 'exchangeType not exist'
                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[164] + 164)])
                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xb3072703 with:
                         gas gas_remaining wei
                        args u, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), uint16(cd[((160 * idx) + cd[164] + 164)])
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5986 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _5995 = mem[_5986]
                    require mem[_5986 + 32] == bool(mem[_5986 + 32])
                    require idx < mem[96]
                    _6021 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_5986 + 32])
                    mem[_6021] = _5995
                else:
                    _5980 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_5980]
                    mem[_5980 + 32] = address(s)
                    require 1 < mem[_5980]
                    mem[_5980 + 64] = address(cd[((160 * idx) + cd[164] + 68)])
                    mem[_5980 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    if 10000 == uint16(t):
                        mem[_5980 + 100] = u
                        mem[_5980 + 132] = 64
                        mem[_5980 + 164] = mem[_5980]
                        s = 0
                        while s < 32 * mem[_5980]:
                            mem[s + _5980 + 196] = mem[s + _5980 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((160 * idx) + cd[164] + 36)]))
                        staticcall address(cd[((160 * idx) + cd[164] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args u, 64, mem[_5980 + 164 len (32 * mem[_5980]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5980 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5980 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _7028 = mem[_5980 + 96 len 4], Mask(224, 32, u) >> 32
                        require mem[_5980 + 96 len 4], Mask(224, 32, u) >> 32 <= 4294967296
                        require mem[_5980 + 96 len 4], Mask(224, 32, u) >> 32 + 32 <= return_data.size
                        require mem[_5980 + mem[_5980 + 96 len 4], Mask(224, 32, u) >> 32 + 96] <= 4294967296 and mem[_5980 + 96 len 4], Mask(224, 32, u) >> 32 + (32 * mem[_5980 + mem[_5980 + 96 len 4], Mask(224, 32, u) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5980 + ceil32(return_data.size) + 96] = mem[_5980 + mem[_5980 + 96 len 4], Mask(224, 32, u) >> 32 + 96]
                        _7050 = mem[_5980 + _7028 + 96]
                        s = 0
                        while s < 32 * _7050:
                            mem[s + _5980 + ceil32(return_data.size) + 128] = mem[s + _5980 + _7028 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _7050) + _5980 + ceil32(return_data.size) + 128
                        require 1 < mem[_5980 + ceil32(return_data.size) + 96]
                        _7882 = mem[_5980 + ceil32(return_data.size) + 160]
                        require idx < mem[96]
                        if 10000 == uint16(cd[((160 * idx) + cd[164] + 164)]):
                            _7886 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = 0
                            mem[_7886] = _7882
                        else:
                            _7894 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = 0
                            mem[_7894] = _7882 * uint16(cd[((160 * idx) + cd[164] + 164)]) / 10000
                    else:
                        mem[_5980 + 100] = uint16(t) * u / 10000
                        mem[_5980 + 132] = 64
                        mem[_5980 + 164] = mem[_5980]
                        s = 0
                        while s < 32 * mem[_5980]:
                            mem[s + _5980 + 196] = mem[s + _5980 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((160 * idx) + cd[164] + 36)]))
                        staticcall address(cd[((160 * idx) + cd[164] + 36)]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args uint16(t) * u / 10000, 64, mem[_5980 + 164 len (32 * mem[_5980]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_5980 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _5980 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _7030 = mem[_5980 + 96 len 4], Mask(224, 32, uint16(t) * u / 10000) >> 32
                        require mem[_5980 + 96 len 4], Mask(224, 32, uint16(t) * u / 10000) >> 32 <= 4294967296
                        require mem[_5980 + 96 len 4], Mask(224, 32, uint16(t) * u / 10000) >> 32 + 32 <= return_data.size
                        require mem[_5980 + mem[_5980 + 96 len 4], Mask(224, 32, uint16(t) * u / 10000) >> 32 + 96] <= 4294967296 and mem[_5980 + 96 len 4], Mask(224, 32, uint16(t) * u / 10000) >> 32 + (32 * mem[_5980 + mem[_5980 + 96 len 4], Mask(224, 32, uint16(t) * u / 10000) >> 32 + 96]) + 32 <= return_data.size
                        mem[_5980 + ceil32(return_data.size) + 96] = mem[_5980 + mem[_5980 + 96 len 4], Mask(224, 32, uint16(t) * u / 10000) >> 32 + 96]
                        _7051 = mem[_5980 + _7030 + 96]
                        s = 0
                        while s < 32 * _7051:
                            mem[s + _5980 + ceil32(return_data.size) + 128] = mem[s + _5980 + _7030 + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _7051) + _5980 + ceil32(return_data.size) + 128
                        require 1 < mem[_5980 + ceil32(return_data.size) + 96]
                        _7883 = mem[_5980 + ceil32(return_data.size) + 160]
                        require idx < mem[96]
                        if 10000 == uint16(cd[((160 * idx) + cd[164] + 164)]):
                            _7889 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = 0
                            mem[_7889] = _7883
                        else:
                            _7898 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = 0
                            mem[_7898] = _7883 * uint16(cd[((160 * idx) + cd[164] + 164)]) / 10000
            require idx < mem[96]
            if 0 == mem[mem[(32 * idx) + 128]]:
            require idx < ('cd', 164).length
            require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
            require idx < ('cd', 164).length
            require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[164] + 68)]
            t = cd[((160 * idx) + cd[164] + 164)]
            u = mem[mem[(32 * idx) + 128]]
            continue 
        require ('cd', 164).length - 1 < mem[96]
        if mem[mem[(32 * ('cd', 164).length - 1) + 128]] > cd[4] + cd[36]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5945 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5958 = mem[_5945]
            require 0 < mem[96]
            _5961 = mem[mem[128]]
            require 0 < ('cd', 164).length
            require calldata.size + -cd[164] - 36 >= 160
            _5962 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require ('cd', 164)[0] == address(('cd', 164)[0])
            mem[_5962] = ('cd', 164)[0]
            require ('cd', 164)[1] == address(('cd', 164)[1])
            mem[_5962 + 32] = ('cd', 164)[1]
            require ('cd', 164)[2] == uint16(('cd', 164)[2])
            mem[_5962 + 64] = ('cd', 164)[2]
            require ('cd', 164)[3] == uint16(('cd', 164)[3])
            mem[_5962 + 96] = ('cd', 164)[3]
            require ('cd', 164)[4] == uint16(('cd', 164)[4])
            mem[_5962 + 128] = ('cd', 164)[4]
            require 1 < mem[96]
            if not mem[mem[160] + 32]:
                if not uint16(('cd', 164)[2]):
                    mem[mem[64]] = 0x1d1f04fb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = _5961
                    mem[mem[64] + 100] = address(('cd', 164)[1])
                    mem[mem[64] + 132] = address(('cd', 164)[0])
                    mem[mem[64] + 164] = this.address
                    mem[mem[64] + 196] = bool(cd[100])
                    mem[mem[64] + 228] = uint16(('cd', 164)[3])
                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x1d1f04fb with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, cd[4], _5961, address(('cd', 164)[1]), address(('cd', 164)[0]), address(this.address), bool(cd[100]), uint16(('cd', 164)[3])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 < mem[96]
                    require 0 < ('cd', 164).length
                    require ('cd', 164)[1] == address(('cd', 164)[1])
                    idx = 1
                    s = ('cd', 164)[1]
                    t = mem[mem[128]]
                    while idx < ('cd', 164).length - 1:
                        require idx < mem[96]
                        _7025 = mem[mem[(32 * idx) + 128]]
                        require idx < ('cd', 164).length
                        require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
                        _7047 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
                        mem[_7047] = cd[((160 * idx) + cd[164] + 36)]
                        require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                        mem[_7047 + 32] = cd[((160 * idx) + cd[164] + 68)]
                        require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
                        mem[_7047 + 64] = cd[((160 * idx) + cd[164] + 100)]
                        require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
                        mem[_7047 + 96] = cd[((160 * idx) + cd[164] + 132)]
                        require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
                        mem[_7047 + 128] = cd[((160 * idx) + cd[164] + 164)]
                        require idx + 1 < mem[96]
                        if not mem[mem[(32 * idx + 1) + 128] + 32]:
                            if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _7025
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = bool(cd[100])
                                mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                     gas gas_remaining wei
                                    args _7025, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                    if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _7025
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _7025, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = t
                                    mem[mem[64] + 36] = address(s)
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                    mem[mem[64] + 132] = this.address
                                    mem[mem[64] + 164] = bool(cd[100])
                                    require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                    delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                         gas gas_remaining wei
                                        args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require idx + 1 < ('cd', 164).length
                            require cd[((160 * idx) + cd[164] + 196)] == address(cd[((160 * idx) + cd[164] + 196)])
                            if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _7025
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                mem[mem[64] + 132] = bool(cd[100])
                                mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                     gas gas_remaining wei
                                    args _7025, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                    if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _7025
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _7025, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = t
                                    mem[mem[64] + 36] = address(s)
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                    mem[mem[64] + 132] = address(cd[((160 * idx) + cd[164] + 196)])
                                    mem[mem[64] + 164] = bool(cd[100])
                                    require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                    delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                         gas gas_remaining wei
                                        args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                        require idx < mem[96]
                        require idx < ('cd', 164).length
                        require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                        idx = idx + 1
                        s = cd[((160 * idx) + cd[164] + 68)]
                        t = mem[mem[(32 * idx) + 128]]
                        continue 
                    require ('cd', 164).length - 1 < mem[96]
                    _7023 = mem[mem[(32 * ('cd', 164).length - 1) + 128]]
                    require ('cd', 164).length - 1 < ('cd', 164).length
                    require calldata.size + (-160 * ('cd', 164).length) + -cd[164] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff84 >= 160
                    _7046 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * ('cd', 164).length) + cd[164] - 124)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                    mem[_7046] = cd[((160 * ('cd', 164).length) + cd[164] - 124)]
                    require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                    mem[_7046 + 32] = cd[((160 * ('cd', 164).length) + cd[164] - 92)]
                    require cd[((160 * ('cd', 164).length) + cd[164] - 60)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)])
                    mem[_7046 + 64] = cd[((160 * ('cd', 164).length) + cd[164] - 60)]
                    require cd[((160 * ('cd', 164).length) + cd[164] - 28)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                    mem[_7046 + 96] = cd[((160 * ('cd', 164).length) + cd[164] - 28)]
                    require cd[((160 * ('cd', 164).length) + cd[164] + 4)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] + 4)])
                    mem[_7046 + 128] = cd[((160 * ('cd', 164).length) + cd[164] + 4)]
                    if not uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]):
                        mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                        mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                        mem[mem[64] + 100] = bool(cd[100])
                        mem[mem[64] + 132] = uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                             gas gas_remaining wei
                            args _7023, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100]), uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
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
                        _7701 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_7701] <= _5958:
                            revert with 0, 'no profit'
                    else:
                        if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 3:
                            if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 32:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7589 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7589] <= _5958:
                                    revert with 0, 'no profit'
                            else:
                                mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                mem[mem[64] + 100] = bool(cd[100])
                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                     gas gas_remaining wei
                                    args _7023, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                _7761 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7761] <= _5958:
                                    revert with 0, 'no profit'
                        else:
                            mem[mem[64] + 36] = address(s)
                            mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                            mem[mem[64] + 100] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                            mem[mem[64] + 132] = bool(cd[100])
                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xcb471787 with:
                                 gas gas_remaining wei
                                args t, address(s), address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                            _7724 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7724] <= _5958:
                                revert with 0, 'no profit'
                else:
                    if 3 == uint16(('cd', 164)[2]):
                        mem[mem[64]] = 0xfdcba57c00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[4]
                        mem[mem[64] + 36] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[mem[64] + 68] = address(('cd', 164)[1])
                        mem[mem[64] + 100] = address(('cd', 164)[0])
                        mem[mem[64] + 132] = this.address
                        require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                        delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xfdcba57c with:
                             gas gas_remaining wei
                            args cd[4], 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(('cd', 164)[1]), address(('cd', 164)[0]), this.address
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < mem[96]
                        require 0 < ('cd', 164).length
                        require ('cd', 164)[1] == address(('cd', 164)[1])
                        idx = 1
                        s = ('cd', 164)[1]
                        t = mem[mem[128]]
                        while idx < ('cd', 164).length - 1:
                            require idx < mem[96]
                            _7021 = mem[mem[(32 * idx) + 128]]
                            require idx < ('cd', 164).length
                            require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
                            _7045 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
                            mem[_7045] = cd[((160 * idx) + cd[164] + 36)]
                            require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                            mem[_7045 + 32] = cd[((160 * idx) + cd[164] + 68)]
                            require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
                            mem[_7045 + 64] = cd[((160 * idx) + cd[164] + 100)]
                            require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
                            mem[_7045 + 96] = cd[((160 * idx) + cd[164] + 132)]
                            require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
                            mem[_7045 + 128] = cd[((160 * idx) + cd[164] + 164)]
                            require idx + 1 < mem[96]
                            if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7021
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _7021, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                        if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _7021
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _7021, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = t
                                        mem[mem[64] + 36] = address(s)
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = bool(cd[100])
                                        require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                        delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                             gas gas_remaining wei
                                            args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < ('cd', 164).length
                                require cd[((160 * idx) + cd[164] + 196)] == address(cd[((160 * idx) + cd[164] + 196)])
                                if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7021
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _7021, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                        if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _7021
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _7021, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = t
                                        mem[mem[64] + 36] = address(s)
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 132] = address(cd[((160 * idx) + cd[164] + 196)])
                                        mem[mem[64] + 164] = bool(cd[100])
                                        require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                        delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                             gas gas_remaining wei
                                            args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                            require idx < mem[96]
                            require idx < ('cd', 164).length
                            require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                            idx = idx + 1
                            s = cd[((160 * idx) + cd[164] + 68)]
                            t = mem[mem[(32 * idx) + 128]]
                            continue 
                        require ('cd', 164).length - 1 < mem[96]
                        _7019 = mem[mem[(32 * ('cd', 164).length - 1) + 128]]
                        require ('cd', 164).length - 1 < ('cd', 164).length
                        require calldata.size + (-160 * ('cd', 164).length) + -cd[164] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff84 >= 160
                        _7044 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * ('cd', 164).length) + cd[164] - 124)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                        mem[_7044] = cd[((160 * ('cd', 164).length) + cd[164] - 124)]
                        require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                        mem[_7044 + 32] = cd[((160 * ('cd', 164).length) + cd[164] - 92)]
                        require cd[((160 * ('cd', 164).length) + cd[164] - 60)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)])
                        mem[_7044 + 64] = cd[((160 * ('cd', 164).length) + cd[164] - 60)]
                        require cd[((160 * ('cd', 164).length) + cd[164] - 28)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                        mem[_7044 + 96] = cd[((160 * ('cd', 164).length) + cd[164] - 28)]
                        require cd[((160 * ('cd', 164).length) + cd[164] + 4)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] + 4)])
                        mem[_7044 + 128] = cd[((160 * ('cd', 164).length) + cd[164] + 4)]
                        if not uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]):
                            mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                            mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                            mem[mem[64] + 100] = bool(cd[100])
                            mem[mem[64] + 132] = uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                 gas gas_remaining wei
                                args _7019, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100]), uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
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
                            _7699 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7699] <= _5958:
                                revert with 0, 'no profit'
                        else:
                            if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 3:
                                if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 32:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7580 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7580] <= _5958:
                                        revert with 0, 'no profit'
                                else:
                                    mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                    mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                    mem[mem[64] + 100] = bool(cd[100])
                                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                         gas gas_remaining wei
                                        args _7019, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                    _7756 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7756] <= _5958:
                                        revert with 0, 'no profit'
                            else:
                                mem[mem[64] + 36] = address(s)
                                mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                mem[mem[64] + 100] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                mem[mem[64] + 132] = bool(cd[100])
                                require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xcb471787 with:
                                     gas gas_remaining wei
                                    args t, address(s), address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                _7721 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7721] <= _5958:
                                    revert with 0, 'no profit'
                    else:
                        if uint16(('cd', 164)[2]) != 32:
                            require 0 < mem[96]
                            require 0 < ('cd', 164).length
                            require ('cd', 164)[1] == address(('cd', 164)[1])
                            idx = 1
                            s = ('cd', 164)[1]
                            t = mem[mem[128]]
                            while idx < ('cd', 164).length - 1:
                                require idx < mem[96]
                                _7013 = mem[mem[(32 * idx) + 128]]
                                require idx < ('cd', 164).length
                                require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
                                _7041 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
                                mem[_7041] = cd[((160 * idx) + cd[164] + 36)]
                                require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                                mem[_7041 + 32] = cd[((160 * idx) + cd[164] + 68)]
                                require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
                                mem[_7041 + 64] = cd[((160 * idx) + cd[164] + 100)]
                                require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
                                mem[_7041 + 96] = cd[((160 * idx) + cd[164] + 132)]
                                require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
                                mem[_7041 + 128] = cd[((160 * idx) + cd[164] + 164)]
                                require idx + 1 < mem[96]
                                if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                    if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _7013
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _7013, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                            if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _7013
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _7013, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = address(s)
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = bool(cd[100])
                                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                                 gas gas_remaining wei
                                                args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < ('cd', 164).length
                                    require cd[((160 * idx) + cd[164] + 196)] == address(cd[((160 * idx) + cd[164] + 196)])
                                    if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _7013
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _7013, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                            if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _7013
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                                mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _7013, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = address(s)
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 132] = address(cd[((160 * idx) + cd[164] + 196)])
                                            mem[mem[64] + 164] = bool(cd[100])
                                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                                 gas gas_remaining wei
                                                args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                require idx < mem[96]
                                require idx < ('cd', 164).length
                                require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[164] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            require ('cd', 164).length - 1 < mem[96]
                            _7011 = mem[mem[(32 * ('cd', 164).length - 1) + 128]]
                            require ('cd', 164).length - 1 < ('cd', 164).length
                            require calldata.size + (-160 * ('cd', 164).length) + -cd[164] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff84 >= 160
                            _7040 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * ('cd', 164).length) + cd[164] - 124)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                            mem[_7040] = cd[((160 * ('cd', 164).length) + cd[164] - 124)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                            mem[_7040 + 32] = cd[((160 * ('cd', 164).length) + cd[164] - 92)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 60)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)])
                            mem[_7040 + 64] = cd[((160 * ('cd', 164).length) + cd[164] - 60)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 28)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                            mem[_7040 + 96] = cd[((160 * ('cd', 164).length) + cd[164] - 28)]
                            require cd[((160 * ('cd', 164).length) + cd[164] + 4)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] + 4)])
                            mem[_7040 + 128] = cd[((160 * ('cd', 164).length) + cd[164] + 4)]
                            if not uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]):
                                mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                mem[mem[64] + 100] = bool(cd[100])
                                mem[mem[64] + 132] = uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                     gas gas_remaining wei
                                    args _7011, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100]), uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
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
                                _7695 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7695] <= _5958:
                                    revert with 0, 'no profit'
                            else:
                                if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 3:
                                    if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 32:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7562 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_7562] <= _5958:
                                            revert with 0, 'no profit'
                                    else:
                                        mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                        mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                        mem[mem[64] + 100] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                             gas gas_remaining wei
                                            args _7011, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                        _7746 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_7746] <= _5958:
                                            revert with 0, 'no profit'
                                else:
                                    mem[mem[64] + 36] = address(s)
                                    mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                    mem[mem[64] + 100] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                    mem[mem[64] + 132] = bool(cd[100])
                                    require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                    delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xcb471787 with:
                                         gas gas_remaining wei
                                        args t, address(s), address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                    _7715 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7715] <= _5958:
                                        revert with 0, 'no profit'
                        else:
                            mem[mem[64]] = 0x5ce9750800000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            mem[mem[64] + 36] = cd[4]
                            mem[mem[64] + 68] = _5961
                            mem[mem[64] + 100] = address(('cd', 164)[1])
                            mem[mem[64] + 132] = address(('cd', 164)[0])
                            mem[mem[64] + 164] = this.address
                            mem[mem[64] + 196] = bool(cd[100])
                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x5ce97508 with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, cd[4], _5961, address(('cd', 164)[1]), address(('cd', 164)[0]), address(this.address), bool(cd[100])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[96]
                            require 0 < ('cd', 164).length
                            require ('cd', 164)[1] == address(('cd', 164)[1])
                            idx = 1
                            s = ('cd', 164)[1]
                            t = mem[mem[128]]
                            while idx < ('cd', 164).length - 1:
                                require idx < mem[96]
                                _7017 = mem[mem[(32 * idx) + 128]]
                                require idx < ('cd', 164).length
                                require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
                                _7043 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
                                mem[_7043] = cd[((160 * idx) + cd[164] + 36)]
                                require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                                mem[_7043 + 32] = cd[((160 * idx) + cd[164] + 68)]
                                require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
                                mem[_7043 + 64] = cd[((160 * idx) + cd[164] + 100)]
                                require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
                                mem[_7043 + 96] = cd[((160 * idx) + cd[164] + 132)]
                                require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
                                mem[_7043 + 128] = cd[((160 * idx) + cd[164] + 164)]
                                require idx + 1 < mem[96]
                                if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                    if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _7017
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _7017, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                            if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _7017
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _7017, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = address(s)
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = bool(cd[100])
                                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                                 gas gas_remaining wei
                                                args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < ('cd', 164).length
                                    require cd[((160 * idx) + cd[164] + 196)] == address(cd[((160 * idx) + cd[164] + 196)])
                                    if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _7017
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _7017, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                            if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _7017
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                                mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _7017, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = address(s)
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 132] = address(cd[((160 * idx) + cd[164] + 196)])
                                            mem[mem[64] + 164] = bool(cd[100])
                                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                                 gas gas_remaining wei
                                                args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                require idx < mem[96]
                                require idx < ('cd', 164).length
                                require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[164] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            require ('cd', 164).length - 1 < mem[96]
                            _7015 = mem[mem[(32 * ('cd', 164).length - 1) + 128]]
                            require ('cd', 164).length - 1 < ('cd', 164).length
                            require calldata.size + (-160 * ('cd', 164).length) + -cd[164] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff84 >= 160
                            _7042 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * ('cd', 164).length) + cd[164] - 124)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                            mem[_7042] = cd[((160 * ('cd', 164).length) + cd[164] - 124)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                            mem[_7042 + 32] = cd[((160 * ('cd', 164).length) + cd[164] - 92)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 60)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)])
                            mem[_7042 + 64] = cd[((160 * ('cd', 164).length) + cd[164] - 60)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 28)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                            mem[_7042 + 96] = cd[((160 * ('cd', 164).length) + cd[164] - 28)]
                            require cd[((160 * ('cd', 164).length) + cd[164] + 4)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] + 4)])
                            mem[_7042 + 128] = cd[((160 * ('cd', 164).length) + cd[164] + 4)]
                            if not uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]):
                                mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                mem[mem[64] + 100] = bool(cd[100])
                                mem[mem[64] + 132] = uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                     gas gas_remaining wei
                                    args _7015, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100]), uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
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
                                _7697 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7697] <= _5958:
                                    revert with 0, 'no profit'
                            else:
                                if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 3:
                                    if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 32:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7571 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_7571] <= _5958:
                                            revert with 0, 'no profit'
                                    else:
                                        mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                        mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                        mem[mem[64] + 100] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                             gas gas_remaining wei
                                            args _7015, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                        _7751 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_7751] <= _5958:
                                            revert with 0, 'no profit'
                                else:
                                    mem[mem[64] + 36] = address(s)
                                    mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                    mem[mem[64] + 100] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                    mem[mem[64] + 132] = bool(cd[100])
                                    require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                    delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xcb471787 with:
                                         gas gas_remaining wei
                                        args t, address(s), address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                    _7718 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7718] <= _5958:
                                        revert with 0, 'no profit'
            else:
                require 1 < ('cd', 164).length
                require ('cd', 164)[5] == address(('cd', 164)[5])
                if not uint16(('cd', 164)[2]):
                    mem[mem[64]] = 0x1d1f04fb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = _5961
                    mem[mem[64] + 100] = address(('cd', 164)[1])
                    mem[mem[64] + 132] = address(('cd', 164)[0])
                    mem[mem[64] + 164] = address(('cd', 164)[5])
                    mem[mem[64] + 196] = bool(cd[100])
                    mem[mem[64] + 228] = uint16(('cd', 164)[3])
                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0x1d1f04fb with:
                         gas gas_remaining wei
                        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, cd[4], _5961, address(('cd', 164)[1]), address(('cd', 164)[0]), address(('cd', 164)[5]), bool(cd[100]), uint16(('cd', 164)[3])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 < mem[96]
                    require 0 < ('cd', 164).length
                    require ('cd', 164)[1] == address(('cd', 164)[1])
                    idx = 1
                    s = ('cd', 164)[1]
                    t = mem[mem[128]]
                    while idx < ('cd', 164).length - 1:
                        require idx < mem[96]
                        _7009 = mem[mem[(32 * idx) + 128]]
                        require idx < ('cd', 164).length
                        require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
                        _7039 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
                        mem[_7039] = cd[((160 * idx) + cd[164] + 36)]
                        require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                        mem[_7039 + 32] = cd[((160 * idx) + cd[164] + 68)]
                        require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
                        mem[_7039 + 64] = cd[((160 * idx) + cd[164] + 100)]
                        require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
                        mem[_7039 + 96] = cd[((160 * idx) + cd[164] + 132)]
                        require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
                        mem[_7039 + 128] = cd[((160 * idx) + cd[164] + 164)]
                        require idx + 1 < mem[96]
                        if not mem[mem[(32 * idx + 1) + 128] + 32]:
                            if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _7009
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = bool(cd[100])
                                mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                     gas gas_remaining wei
                                    args _7009, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                    if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _7009
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _7009, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = t
                                    mem[mem[64] + 36] = address(s)
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                    mem[mem[64] + 132] = this.address
                                    mem[mem[64] + 164] = bool(cd[100])
                                    require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                    delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                         gas gas_remaining wei
                                        args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require idx + 1 < ('cd', 164).length
                            require cd[((160 * idx) + cd[164] + 196)] == address(cd[((160 * idx) + cd[164] + 196)])
                            if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _7009
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                mem[mem[64] + 132] = bool(cd[100])
                                mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                     gas gas_remaining wei
                                    args _7009, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                    if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _7009
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                        mem[mem[64] + 132] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                             gas gas_remaining wei
                                            args _7009, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = t
                                    mem[mem[64] + 36] = address(s)
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                    mem[mem[64] + 132] = address(cd[((160 * idx) + cd[164] + 196)])
                                    mem[mem[64] + 164] = bool(cd[100])
                                    require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                    delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                         gas gas_remaining wei
                                        args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                        require idx < mem[96]
                        require idx < ('cd', 164).length
                        require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                        idx = idx + 1
                        s = cd[((160 * idx) + cd[164] + 68)]
                        t = mem[mem[(32 * idx) + 128]]
                        continue 
                    require ('cd', 164).length - 1 < mem[96]
                    _7007 = mem[mem[(32 * ('cd', 164).length - 1) + 128]]
                    require ('cd', 164).length - 1 < ('cd', 164).length
                    require calldata.size + (-160 * ('cd', 164).length) + -cd[164] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff84 >= 160
                    _7038 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * ('cd', 164).length) + cd[164] - 124)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                    mem[_7038] = cd[((160 * ('cd', 164).length) + cd[164] - 124)]
                    require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                    mem[_7038 + 32] = cd[((160 * ('cd', 164).length) + cd[164] - 92)]
                    require cd[((160 * ('cd', 164).length) + cd[164] - 60)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)])
                    mem[_7038 + 64] = cd[((160 * ('cd', 164).length) + cd[164] - 60)]
                    require cd[((160 * ('cd', 164).length) + cd[164] - 28)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                    mem[_7038 + 96] = cd[((160 * ('cd', 164).length) + cd[164] - 28)]
                    require cd[((160 * ('cd', 164).length) + cd[164] + 4)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] + 4)])
                    mem[_7038 + 128] = cd[((160 * ('cd', 164).length) + cd[164] + 4)]
                    if not uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]):
                        mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                        mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                        mem[mem[64] + 100] = bool(cd[100])
                        mem[mem[64] + 132] = uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                             gas gas_remaining wei
                            args _7007, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100]), uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
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
                        _7693 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_7693] <= _5958:
                            revert with 0, 'no profit'
                    else:
                        if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 3:
                            if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 32:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7553 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7553] <= _5958:
                                    revert with 0, 'no profit'
                            else:
                                mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                mem[mem[64] + 100] = bool(cd[100])
                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                     gas gas_remaining wei
                                    args _7007, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                _7741 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7741] <= _5958:
                                    revert with 0, 'no profit'
                        else:
                            mem[mem[64] + 36] = address(s)
                            mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                            mem[mem[64] + 100] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                            mem[mem[64] + 132] = bool(cd[100])
                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xcb471787 with:
                                 gas gas_remaining wei
                                args t, address(s), address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                            _7712 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7712] <= _5958:
                                revert with 0, 'no profit'
                else:
                    if 3 == uint16(('cd', 164)[2]):
                        mem[mem[64]] = 0xfdcba57c00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[4]
                        mem[mem[64] + 36] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[mem[64] + 68] = address(('cd', 164)[1])
                        mem[mem[64] + 100] = address(('cd', 164)[0])
                        mem[mem[64] + 132] = address(('cd', 164)[5])
                        require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                        delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xfdcba57c with:
                             gas gas_remaining wei
                            args cd[4], 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(('cd', 164)[1]), address(('cd', 164)[0]), address(('cd', 164)[5])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < mem[96]
                        require 0 < ('cd', 164).length
                        require ('cd', 164)[1] == address(('cd', 164)[1])
                        idx = 1
                        s = ('cd', 164)[1]
                        t = mem[mem[128]]
                        while idx < ('cd', 164).length - 1:
                            require idx < mem[96]
                            _7005 = mem[mem[(32 * idx) + 128]]
                            require idx < ('cd', 164).length
                            require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
                            _7037 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
                            mem[_7037] = cd[((160 * idx) + cd[164] + 36)]
                            require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                            mem[_7037 + 32] = cd[((160 * idx) + cd[164] + 68)]
                            require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
                            mem[_7037 + 64] = cd[((160 * idx) + cd[164] + 100)]
                            require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
                            mem[_7037 + 96] = cd[((160 * idx) + cd[164] + 132)]
                            require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
                            mem[_7037 + 128] = cd[((160 * idx) + cd[164] + 164)]
                            require idx + 1 < mem[96]
                            if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7005
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _7005, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                        if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _7005
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _7005, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = t
                                        mem[mem[64] + 36] = address(s)
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = bool(cd[100])
                                        require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                        delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                             gas gas_remaining wei
                                            args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < ('cd', 164).length
                                require cd[((160 * idx) + cd[164] + 196)] == address(cd[((160 * idx) + cd[164] + 196)])
                                if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7005
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                    require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                    delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _7005, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                        if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _7005
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _7005, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = t
                                        mem[mem[64] + 36] = address(s)
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 132] = address(cd[((160 * idx) + cd[164] + 196)])
                                        mem[mem[64] + 164] = bool(cd[100])
                                        require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                        delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                             gas gas_remaining wei
                                            args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                            require idx < mem[96]
                            require idx < ('cd', 164).length
                            require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                            idx = idx + 1
                            s = cd[((160 * idx) + cd[164] + 68)]
                            t = mem[mem[(32 * idx) + 128]]
                            continue 
                        require ('cd', 164).length - 1 < mem[96]
                        _7003 = mem[mem[(32 * ('cd', 164).length - 1) + 128]]
                        require ('cd', 164).length - 1 < ('cd', 164).length
                        require calldata.size + (-160 * ('cd', 164).length) + -cd[164] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff84 >= 160
                        _7036 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * ('cd', 164).length) + cd[164] - 124)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                        mem[_7036] = cd[((160 * ('cd', 164).length) + cd[164] - 124)]
                        require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                        mem[_7036 + 32] = cd[((160 * ('cd', 164).length) + cd[164] - 92)]
                        require cd[((160 * ('cd', 164).length) + cd[164] - 60)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)])
                        mem[_7036 + 64] = cd[((160 * ('cd', 164).length) + cd[164] - 60)]
                        require cd[((160 * ('cd', 164).length) + cd[164] - 28)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                        mem[_7036 + 96] = cd[((160 * ('cd', 164).length) + cd[164] - 28)]
                        require cd[((160 * ('cd', 164).length) + cd[164] + 4)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] + 4)])
                        mem[_7036 + 128] = cd[((160 * ('cd', 164).length) + cd[164] + 4)]
                        if not uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]):
                            mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                            mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                            mem[mem[64] + 100] = bool(cd[100])
                            mem[mem[64] + 132] = uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                            require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                            delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                 gas gas_remaining wei
                                args _7003, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100]), uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
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
                            _7691 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_7691] <= _5958:
                                revert with 0, 'no profit'
                        else:
                            if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 3:
                                if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 32:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7544 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7544] <= _5958:
                                        revert with 0, 'no profit'
                                else:
                                    mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                    mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                    mem[mem[64] + 100] = bool(cd[100])
                                    require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                    delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                         gas gas_remaining wei
                                        args _7003, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                    _7736 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7736] <= _5958:
                                        revert with 0, 'no profit'
                            else:
                                mem[mem[64] + 36] = address(s)
                                mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                mem[mem[64] + 100] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                mem[mem[64] + 132] = bool(cd[100])
                                require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xcb471787 with:
                                     gas gas_remaining wei
                                    args t, address(s), address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                _7709 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7709] <= _5958:
                                    revert with 0, 'no profit'
                    else:
                        if uint16(('cd', 164)[2]) != 32:
                            require 0 < mem[96]
                            require 0 < ('cd', 164).length
                            require ('cd', 164)[1] == address(('cd', 164)[1])
                            idx = 1
                            s = ('cd', 164)[1]
                            t = mem[mem[128]]
                            while idx < ('cd', 164).length - 1:
                                require idx < mem[96]
                                _6997 = mem[mem[(32 * idx) + 128]]
                                require idx < ('cd', 164).length
                                require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
                                _7033 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
                                mem[_7033] = cd[((160 * idx) + cd[164] + 36)]
                                require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                                mem[_7033 + 32] = cd[((160 * idx) + cd[164] + 68)]
                                require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
                                mem[_7033 + 64] = cd[((160 * idx) + cd[164] + 100)]
                                require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
                                mem[_7033 + 96] = cd[((160 * idx) + cd[164] + 132)]
                                require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
                                mem[_7033 + 128] = cd[((160 * idx) + cd[164] + 164)]
                                require idx + 1 < mem[96]
                                if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                    if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6997
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _6997, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                            if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6997
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _6997, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = address(s)
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = bool(cd[100])
                                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                                 gas gas_remaining wei
                                                args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < ('cd', 164).length
                                    require cd[((160 * idx) + cd[164] + 196)] == address(cd[((160 * idx) + cd[164] + 196)])
                                    if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6997
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _6997, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                            if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6997
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                                mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _6997, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = address(s)
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 132] = address(cd[((160 * idx) + cd[164] + 196)])
                                            mem[mem[64] + 164] = bool(cd[100])
                                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                                 gas gas_remaining wei
                                                args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                require idx < mem[96]
                                require idx < ('cd', 164).length
                                require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[164] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            require ('cd', 164).length - 1 < mem[96]
                            _6995 = mem[mem[(32 * ('cd', 164).length - 1) + 128]]
                            require ('cd', 164).length - 1 < ('cd', 164).length
                            require calldata.size + (-160 * ('cd', 164).length) + -cd[164] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff84 >= 160
                            _7032 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * ('cd', 164).length) + cd[164] - 124)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                            mem[_7032] = cd[((160 * ('cd', 164).length) + cd[164] - 124)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                            mem[_7032 + 32] = cd[((160 * ('cd', 164).length) + cd[164] - 92)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 60)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)])
                            mem[_7032 + 64] = cd[((160 * ('cd', 164).length) + cd[164] - 60)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 28)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                            mem[_7032 + 96] = cd[((160 * ('cd', 164).length) + cd[164] - 28)]
                            require cd[((160 * ('cd', 164).length) + cd[164] + 4)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] + 4)])
                            mem[_7032 + 128] = cd[((160 * ('cd', 164).length) + cd[164] + 4)]
                            if not uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]):
                                mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                mem[mem[64] + 100] = bool(cd[100])
                                mem[mem[64] + 132] = uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                     gas gas_remaining wei
                                    args _6995, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100]), uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
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
                                _7687 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7687] <= _5958:
                                    revert with 0, 'no profit'
                            else:
                                if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 3:
                                    if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 32:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7526 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_7526] <= _5958:
                                            revert with 0, 'no profit'
                                    else:
                                        mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                        mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                        mem[mem[64] + 100] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                             gas gas_remaining wei
                                            args _6995, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                        _7726 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_7726] <= _5958:
                                            revert with 0, 'no profit'
                                else:
                                    mem[mem[64] + 36] = address(s)
                                    mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                    mem[mem[64] + 100] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                    mem[mem[64] + 132] = bool(cd[100])
                                    require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                    delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xcb471787 with:
                                         gas gas_remaining wei
                                        args t, address(s), address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                    _7703 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7703] <= _5958:
                                        revert with 0, 'no profit'
                        else:
                            mem[mem[64]] = 0x5ce9750800000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            mem[mem[64] + 36] = cd[4]
                            mem[mem[64] + 68] = _5961
                            mem[mem[64] + 100] = address(('cd', 164)[1])
                            mem[mem[64] + 132] = address(('cd', 164)[0])
                            mem[mem[64] + 164] = address(('cd', 164)[5])
                            mem[mem[64] + 196] = bool(cd[100])
                            require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                            delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x5ce97508 with:
                                 gas gas_remaining wei
                                args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, cd[4], _5961, address(('cd', 164)[1]), address(('cd', 164)[0]), address(('cd', 164)[5]), bool(cd[100])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[96]
                            require 0 < ('cd', 164).length
                            require ('cd', 164)[1] == address(('cd', 164)[1])
                            idx = 1
                            s = ('cd', 164)[1]
                            t = mem[mem[128]]
                            while idx < ('cd', 164).length - 1:
                                require idx < mem[96]
                                _7001 = mem[mem[(32 * idx) + 128]]
                                require idx < ('cd', 164).length
                                require calldata.size + (-160 * idx) + -cd[164] - 36 >= 160
                                _7035 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[164] + 36)] == address(cd[((160 * idx) + cd[164] + 36)])
                                mem[_7035] = cd[((160 * idx) + cd[164] + 36)]
                                require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                                mem[_7035 + 32] = cd[((160 * idx) + cd[164] + 68)]
                                require cd[((160 * idx) + cd[164] + 100)] == uint16(cd[((160 * idx) + cd[164] + 100)])
                                mem[_7035 + 64] = cd[((160 * idx) + cd[164] + 100)]
                                require cd[((160 * idx) + cd[164] + 132)] == uint16(cd[((160 * idx) + cd[164] + 132)])
                                mem[_7035 + 96] = cd[((160 * idx) + cd[164] + 132)]
                                require cd[((160 * idx) + cd[164] + 164)] == uint16(cd[((160 * idx) + cd[164] + 164)])
                                mem[_7035 + 128] = cd[((160 * idx) + cd[164] + 164)]
                                require idx + 1 < mem[96]
                                if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                    if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _7001
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _7001, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                            if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _7001
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _7001, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = address(s)
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = bool(cd[100])
                                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                                 gas gas_remaining wei
                                                args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(this.address), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < ('cd', 164).length
                                    require cd[((160 * idx) + cd[164] + 196)] == address(cd[((160 * idx) + cd[164] + 196)])
                                    if not uint16(cd[((160 * idx) + cd[164] + 100)]):
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _7001
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(cd[((160 * idx) + cd[164] + 132)])
                                        require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                        delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _7001, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100]), uint16(cd[((160 * idx) + cd[164] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint16(cd[((160 * idx) + cd[164] + 100)]) != 3:
                                            if 32 == uint16(cd[((160 * idx) + cd[164] + 100)]):
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _7001
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[164] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 36)])
                                                mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 196)])
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                                delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _7001, address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[mem[64]] = 0x76601a0100000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = t
                                            mem[mem[64] + 36] = address(s)
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[164] + 68)])
                                            mem[mem[64] + 100] = address(cd[((160 * idx) + cd[164] + 36)])
                                            mem[mem[64] + 132] = address(cd[((160 * idx) + cd[164] + 196)])
                                            mem[mem[64] + 164] = bool(cd[100])
                                            require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                            delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0x76601a01 with:
                                                 gas gas_remaining wei
                                                args t, address(s), address(cd[((160 * idx) + cd[164] + 68)]), address(cd[((160 * idx) + cd[164] + 36)]), address(cd[((160 * idx) + cd[164] + 196)]), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                require idx < mem[96]
                                require idx < ('cd', 164).length
                                require cd[((160 * idx) + cd[164] + 68)] == address(cd[((160 * idx) + cd[164] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[164] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            require ('cd', 164).length - 1 < mem[96]
                            _6999 = mem[mem[(32 * ('cd', 164).length - 1) + 128]]
                            require ('cd', 164).length - 1 < ('cd', 164).length
                            require calldata.size + (-160 * ('cd', 164).length) + -cd[164] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff84 >= 160
                            _7034 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * ('cd', 164).length) + cd[164] - 124)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                            mem[_7034] = cd[((160 * ('cd', 164).length) + cd[164] - 124)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 92)] == address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                            mem[_7034 + 32] = cd[((160 * ('cd', 164).length) + cd[164] - 92)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 60)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)])
                            mem[_7034 + 64] = cd[((160 * ('cd', 164).length) + cd[164] - 60)]
                            require cd[((160 * ('cd', 164).length) + cd[164] - 28)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                            mem[_7034 + 96] = cd[((160 * ('cd', 164).length) + cd[164] - 28)]
                            require cd[((160 * ('cd', 164).length) + cd[164] + 4)] == uint16(cd[((160 * ('cd', 164).length) + cd[164] + 4)])
                            mem[_7034 + 128] = cd[((160 * ('cd', 164).length) + cd[164] + 4)]
                            if not uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]):
                                mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                mem[mem[64] + 100] = bool(cd[100])
                                mem[mem[64] + 132] = uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
                                require ext_code.size(0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99)
                                delegate 0xc4a6bdc15d9cd7091cf3ccd5646cb3b6ef3d7b99.0xc951b8b with:
                                     gas gas_remaining wei
                                    args _6999, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100]), uint16(cd[((160 * ('cd', 164).length) + cd[164] - 28)])
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
                                _7689 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_7689] <= _5958:
                                    revert with 0, 'no profit'
                            else:
                                if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 3:
                                    if uint16(cd[((160 * ('cd', 164).length) + cd[164] - 60)]) != 32:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7535 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_7535] <= _5958:
                                            revert with 0, 'no profit'
                                    else:
                                        mem[mem[64] + 36] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                        mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                        mem[mem[64] + 100] = bool(cd[100])
                                        require ext_code.size(0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5)
                                        delegate 0x1e794f8fc36e75d42bdfcae01a626e2aab7c2cd5.0x171c3c6a with:
                                             gas gas_remaining wei
                                            args _6999, address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                        _7731 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_7731] <= _5958:
                                            revert with 0, 'no profit'
                                else:
                                    mem[mem[64] + 36] = address(s)
                                    mem[mem[64] + 68] = address(cd[((160 * ('cd', 164).length) + cd[164] - 92)])
                                    mem[mem[64] + 100] = address(cd[((160 * ('cd', 164).length) + cd[164] - 124)])
                                    mem[mem[64] + 132] = bool(cd[100])
                                    require ext_code.size(0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e)
                                    delegate 0x95c8cb9546072b67dd60a6fd3c72690cf09fcf8e.0xcb471787 with:
                                         gas gas_remaining wei
                                        args t, address(s), address(cd[((160 * ('cd', 164).length) + cd[164] - 92)]), address(cd[((160 * ('cd', 164).length) + cd[164] - 124)]), bool(cd[100])
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
                                    _7706 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_7706] <= _5958:
                                        revert with 0, 'no profit'
}



}
