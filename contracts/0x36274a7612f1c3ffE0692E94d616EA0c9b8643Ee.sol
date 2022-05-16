contract main {




// =====================  Runtime code  =====================


#
#  - sub_8353e254(?)
#
address owner;
address stor1;
mapping of uint8 stor2;
address stor3;

function owner() payable {
    return owner
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function _fallback() payable {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    mem[64] = 352
    mem[96 len 256] = call.data[calldata.size len 256]
    idx = 0
    s = 0
    while idx < calldata.size - 4 / 30:
        _116 = mem[64]
        mem[64] = mem[64] + 256
        mem[_116 len 256] = call.data[calldata.size len 256]
        require 30 * idx <= calldata.size - 4
        _119 = mem[64]
        mem[64] = mem[64] + floor32(calldata.size + (-30 * idx) + 27) + 32
        mem[_119] = calldata.size + (-30 * idx) - 4
        mem[_119 + 32 len calldata.size + (-30 * idx) - 4] = call.data[(30 * idx) + 4 len calldata.size + (-30 * idx) - 4]
        mem[_119 + calldata.size + (-30 * idx) + 28] = 0
        _120 = mem[64]
        mem[64] = mem[64] + 256
        mem[_120 len 256] = call.data[calldata.size len 256]
        _121 = Mask(248, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 1]
        _122 = Mask(240, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 2]
        mem[mem[64]] = 20
        mem[mem[64] + 32 len 8] = Mask(232, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 3]
        mem[mem[64] + 33 len 8] = Mask(224, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 4]
        mem[mem[64] + 34 len 8] = Mask(216, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 5]
        mem[mem[64] + 35 len 8] = Mask(184, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 9]
        mem[mem[64] + 36 len 8] = Mask(200, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 7]
        mem[mem[64] + 37 len 8] = Mask(192, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 8]
        mem[mem[64] + 38 len 8] = Mask(208, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 6]
        mem[mem[64] + 39 len 8] = Mask(176, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 10]
        mem[mem[64] + 40 len 8] = Mask(168, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 11]
        mem[mem[64] + 41 len 8] = address(calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 12]
        mem[mem[64] + 42 len 8] = Mask(152, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 13]
        mem[mem[64] + 43 len 8] = Mask(144, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 14]
        mem[mem[64] + 44 len 8] = Mask(136, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 15]
        mem[mem[64] + 45 len 8] = uint128(calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 16]
        mem[mem[64] + 46 len 8] = Mask(120, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 17]
        mem[mem[64] + 47 len 8] = Mask(112, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 18]
        mem[mem[64] + 48 len 8] = Mask(104, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 19]
        mem[mem[64] + 49 len 8] = Mask(96, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 20]
        mem[mem[64] + 50 len 8] = Mask(88, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 21]
        mem[mem[64] + 51 len 8] = Mask(80, 0, calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 22]
        _146 = mem[mem[64] + 32]
        _151 = uint64(calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 24]
        _152 = calldata.size + (-30 * idx) - 4 % 72057594037927936, mem[_119 + 32 len 25]
        _153 = calldata.size + (-30 * idx) - 4 % 281474976710656, mem[_119 + 32 len 26]
        _154 = calldata.size + (-30 * idx) - 4 % 1099511627776, mem[_119 + 32 len 27]
        _155 = uint32(calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 28]
        _156 = calldata.size + (-30 * idx) - 4 % 16777216, mem[_119 + 32 len 29]
        _157 = uint16(calldata.size + (-30 * idx) - 4), mem[_119 + 32 len 30]
        mem[_120] = 1 == mem[_119 + 54 len 1]
        mem[_120 + 32] = 1 == uint8(_151)
        mem[_120 + 64] = 1 == uint8(_152)
        mem[_120 + 96] = 1 == uint8(_153)
        mem[_120 + 128] = 1 == uint8(_154)
        mem[_120 + 160] = 1 == uint8(_155)
        mem[_120 + 192] = 1 == uint8(_156)
        mem[_120 + 224] = uint8(_157) == 1
        require ext_code.size(stor3)
        staticcall stor3.0xb03f429e with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _168 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_168] == bool(mem[_168])
        if not mem[_168]:
            _181 = mem[64]
            mem[mem[64] + 32] = uint8(_121)
            mem[mem[64] + 64] = uint8(_122)
            mem[mem[64] + 96] = Mask(160, 96, _146) >> 96
            _189 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            mem[_181 + 160] = 0x8353e25400000000000000000000000000000000000000000000000000000000
            _191 = mem[_189]
            t = 0
            while t < _191:
                mem[t + _181 + 164] = mem[t + _189 + 32]
                t = t + 32
                continue 
            if ceil32(_191) > _191:
                mem[_181 + _191 + 164] = 0
            mem[_181 + 128] = _191 + 4
            mem[64] = _191 + _181 + 164
            t = 0
            while t < _191 + 4:
                mem[t + _191 + _181 + 164] = mem[t + _181 + 160]
                t = t + 32
                continue 
            if floor32(_191 + 35) > _191 + 4:
                mem[(2 * _191) + _181 + 168] = 0
            call this.address.mem[_191 + _181 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_191 + _181 + 168 len _191]
            if return_data.size:
                mem[64] = _191 + _181 + ceil32(return_data.size) + 165
                mem[_191 + _181 + 164] = return_data.size
                mem[_191 + _181 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            t = 0
            u = 0
            while uint8(t) < 8:
                if not mem[(32 * uint8(t)) + _120]:
                    t = t + 1
                    u = u
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.priceOracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _274 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _280 = mem[_274]
                require mem[_274] == mem[_274 + 12 len 20]
                require ext_code.size(stor3)
                staticcall stor3.getAsset(uint256 arg1) with:
                        gas gas_remaining wei
                       args (t << 248)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _311 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _317 = mem[64]
                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                mem[64] = mem[64] + 96
                require mem[_311] == mem[_311 + 30 len 2]
                mem[_317] = mem[_311]
                require mem[_311 + 32] == mem[_311 + 60 len 4]
                mem[_317 + 32] = mem[_311 + 32]
                require mem[_311 + 64] == mem[_311 + 76 len 20]
                mem[_317 + 64] = mem[_311 + 64]
                _331 = mem[_317 + 64]
                mem[mem[64] + 4] = mem[_317 + 76 len 20]
                require ext_code.size(address(_280))
                staticcall address(_280).getAssetPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_331)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _345 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                t = t + 1
                u = u + mem[_345]
                continue 
            _259 = mem[64]
            mem[mem[64] + 32] = block.number
            mem[mem[64] + 64] = u
            mem[mem[64] + 96] = Mask(160, 96, _146)
            _264 = mem[64]
            mem[mem[64]] = 84
            mem[64] = mem[64] + 116
            _266 = sha3(mem[_264 + 32 len mem[_264]])
            mem[0] = sha3(mem[_264 + 32 len mem[_264]])
            mem[32] = 2
            if stor2[mem[0]]:
                idx = idx + 1
                s = s
                continue 
            mem[0] = _266
            mem[32] = 2
            stor2[_266] = 1
            mem[_259 + 148] = uint8(_121)
            mem[_259 + 180] = uint8(_122)
            mem[_259 + 212] = Mask(160, 96, _146) >> 96
            mem[_259 + 116] = 96
            mem[_259 + 276] = 0x8353e25400000000000000000000000000000000000000000000000000000000
            t = 0
            while t < 96:
                mem[t + _259 + 280] = mem[t + _259 + 148]
                t = t + 32
                continue 
            mem[_259 + 244] = 100
            mem[64] = _259 + 376
            t = 0
            while t < 100:
                mem[t + _259 + 376] = mem[t + _259 + 276]
                t = t + 32
                continue 
            mem[_259 + 476] = 0
            call this.address.mem[_259 + 376 len 4] with:
                 gas gas_remaining wei
                args mem[_259 + 380 len 96]
            if return_data.size:
                mem[64] = _259 + ceil32(return_data.size) + 377
                mem[_259 + 376] = return_data.size
                mem[_259 + 408 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            idx = idx + 1
            s = s
            continue 
        require uint8(_121) < 8
        mem[(32 * uint8(_121)) + 96] = 1
        idx = idx + 1
        s = s + 1
        continue 
    require ext_code.size(stor3)
    staticcall stor3.0xb03f429e with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        _117 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_117] == bool(mem[_117])
        if mem[_117]:
            mem[mem[64]] = 0xa46fe83b00000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor3)
            staticcall stor3.mem[var80003 len 4] with:
                    gas gas_remaining wei
                   args mem[var80003 + 4 len var80004 - 4]
            mem[var80005] = ext_call.return_data[0]
            if ext_call.success:
                mem[64] = mem[64] + ceil32(return_data.size)
                require var84002 - var84001 >= 32
                if var88002 >= var88001:
                require var90001 < 8
                if not mem[(32 * var92001) + 96]:
                    require ext_code.size(stor3)
                    staticcall stor3.numAssets() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    s = var92003
                    while ext_call.success:
                        _930 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s + 1 >= mem[_930]:
                        require s + 1 < 8
                        if mem[(32 * s + 1) + 96]:
                            require ext_code.size(stor3)
                            staticcall stor3.getAsset(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (s + 1)
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _950 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _954 = mem[64]
                            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                            mem[64] = mem[64] + 96
                            require mem[_950] == mem[_950 + 30 len 2]
                            mem[_954] = mem[_950]
                            require mem[_950 + 32] == mem[_950 + 60 len 4]
                            mem[_954 + 32] = mem[_950 + 32]
                            require mem[_950 + 64] == mem[_950 + 76 len 20]
                            mem[_954 + 64] = mem[_950 + 64]
                            _970 = mem[_954 + 64]
                            require ext_code.size(stor3)
                            staticcall stor3.getAsset(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (s + 1)
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _982 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _988 = mem[64]
                            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                            mem[64] = mem[64] + 96
                            require mem[_982] == mem[_982 + 30 len 2]
                            mem[_988] = mem[_982]
                            require mem[_982 + 32] == mem[_982 + 60 len 4]
                            mem[_988 + 32] = mem[_982 + 32]
                            require mem[_982 + 64] == mem[_982 + 76 len 20]
                            mem[_988 + 64] = mem[_982 + 64]
                            _1004 = mem[_988 + 64]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1004))
                            staticcall address(_1004).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1014 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1018 = mem[_1014]
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _1018 - 1
                            require ext_code.size(address(_970))
                            call address(_970).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _1018 - 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1028 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1028] == bool(mem[_1028])
                        require ext_code.size(stor3)
                        staticcall stor3.numAssets() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        s = s + 1
                        continue 
                else:
                    mem[mem[64]] = 0xeac8f5b800000000000000000000000000000000000000000000000000000000
                    mem[var96001] = var96002
                    require ext_code.size(stor3)
                    staticcall stor3.mem[var100003 len 4] with:
                            gas gas_remaining wei
                           args mem[var100003 + 4 len var100004 - 4]
                    mem[var100005 len 96] = ext_call.return_data[0 len 96]
                    if ext_call.success:
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require var104002 - var104001 >= 96
                        _1334 = mem[64]
                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                        mem[64] = mem[64] + 96
                        require mem[var106002] == mem[var106002 + 30 len 2]
                        mem[_1334] = mem[var106002]
                        require mem[var106002 + 32] == mem[var106002 + 60 len 4]
                        mem[_1334 + 32] = mem[var106002 + 32]
                        require mem[var106002 + 64] == mem[var106002 + 76 len 20]
                        mem[_1334 + 64] = mem[var106002 + 64]
                        _1400 = mem[_1334 + 64]
                        require ext_code.size(stor3)
                        staticcall stor3.getAsset(uint256 arg1) with:
                                gas gas_remaining wei
                               args var106005
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        s = _1334 + 96
                        t = _1334
                        u = var106002
                        v = var106003
                        v = var106005
                        while ext_call.success:
                            _1406 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1408 = mem[64]
                            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                            mem[64] = mem[64] + 96
                            require mem[_1406] == mem[_1406 + 30 len 2]
                            mem[_1408] = mem[_1406]
                            require mem[_1406 + 32] == mem[_1406 + 60 len 4]
                            mem[_1408 + 32] = mem[_1406 + 32]
                            require mem[_1406 + 64] == mem[_1406 + 76 len 20]
                            mem[_1408 + 64] = mem[_1406 + 64]
                            _1416 = mem[_1408 + 64]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1416))
                            staticcall address(_1416).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if ext_call.success:
                                _1422 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1424 = mem[_1422]
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _1424 - 1
                                require ext_code.size(address(_1400))
                                call address(_1400).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _1424 - 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if ext_call.success:
                                    _1430 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1430] == bool(mem[_1430])
                                    require ext_code.size(stor3)
                                    staticcall stor3.numAssets() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    w = v
                                    while ext_call.success:
                                        _1456 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if w + 1 >= mem[_1456]:
                                        require w + 1 < 8
                                        if not mem[(32 * w + 1) + 96]:
                                            mem[64] = s
                                            require mem[u] == mem[u + 30 len 2]
                                            mem[t] = mem[u]
                                            require mem[u + 32] == mem[u + 60 len 4]
                                            mem[t + 32] = mem[u + 32]
                                            require mem[u + 64] == mem[u + 76 len 20]
                                            mem[t + 64] = mem[u + 64]
                                            require ext_code.size(stor3)
                                            staticcall stor3.getAsset(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args v
                                            mem[s len 96] = ext_call.return_data[0 len 96]
                                            require ext_code.size(stor3)
                                            staticcall stor3.numAssets() with:
                                                    gas gas_remaining wei
                                            mem[s] = ext_call.return_data[0]
                                            w = w + 1
                                            continue 
                                        require ext_code.size(stor3)
                                        staticcall stor3.getAsset(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (w + 1)
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1466 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        _1468 = mem[64]
                                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                        mem[64] = mem[64] + 96
                                        require mem[_1466] == mem[_1466 + 30 len 2]
                                        mem[_1468] = mem[_1466]
                                        require mem[_1466 + 32] == mem[_1466 + 60 len 4]
                                        mem[_1468 + 32] = mem[_1466 + 32]
                                        require mem[_1466 + 64] == mem[_1466 + 76 len 20]
                                        mem[_1468 + 64] = mem[_1466 + 64]
                                        require ext_code.size(stor3)
                                        staticcall stor3.getAsset(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (w + 1)
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        require ext_code.size(stor3)
                                        staticcall stor3.numAssets() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        s = _1468 + 96
                                        t = _1468
                                        u = _1466
                                        v = _1466 + return_data.size
                                        v = w + 1
                                        continue 
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if not s:
                revert with 0, '01'
            mem[mem[64]] = 0xa46fe83b00000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor3)
            staticcall stor3.mem[var81003 len 4] with:
                    gas gas_remaining wei
                   args mem[var81003 + 4 len var81004 - 4]
            mem[var81005] = ext_call.return_data[0]
            if ext_call.success:
                mem[64] = mem[64] + ceil32(return_data.size)
                require var85002 - var85001 >= 32
                if var89002 >= var89001:
                require var91001 < 8
                if not mem[(32 * var93001) + 96]:
                    require ext_code.size(stor3)
                    staticcall stor3.numAssets() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    s = var93003
                    while ext_call.success:
                        _931 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s + 1 >= mem[_931]:
                        require s + 1 < 8
                        if mem[(32 * s + 1) + 96]:
                            require ext_code.size(stor3)
                            staticcall stor3.getAsset(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (s + 1)
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _952 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _956 = mem[64]
                            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                            mem[64] = mem[64] + 96
                            require mem[_952] == mem[_952 + 30 len 2]
                            mem[_956] = mem[_952]
                            require mem[_952 + 32] == mem[_952 + 60 len 4]
                            mem[_956 + 32] = mem[_952 + 32]
                            require mem[_952 + 64] == mem[_952 + 76 len 20]
                            mem[_956 + 64] = mem[_952 + 64]
                            _972 = mem[_956 + 64]
                            require ext_code.size(stor3)
                            staticcall stor3.getAsset(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (s + 1)
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _985 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _990 = mem[64]
                            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                            mem[64] = mem[64] + 96
                            require mem[_985] == mem[_985 + 30 len 2]
                            mem[_990] = mem[_985]
                            require mem[_985 + 32] == mem[_985 + 60 len 4]
                            mem[_990 + 32] = mem[_985 + 32]
                            require mem[_985 + 64] == mem[_985 + 76 len 20]
                            mem[_990 + 64] = mem[_985 + 64]
                            _1007 = mem[_990 + 64]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1007))
                            staticcall address(_1007).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1015 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1019 = mem[_1015]
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _1019 - 1
                            require ext_code.size(address(_972))
                            call address(_972).0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _1019 - 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1029 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1029] == bool(mem[_1029])
                        require ext_code.size(stor3)
                        staticcall stor3.numAssets() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        s = s + 1
                        continue 
                else:
                    mem[mem[64]] = 0xeac8f5b800000000000000000000000000000000000000000000000000000000
                    mem[var97001] = var97002
                    require ext_code.size(stor3)
                    staticcall stor3.mem[var101003 len 4] with:
                            gas gas_remaining wei
                           args mem[var101003 + 4 len var101004 - 4]
                    mem[var101005 len 96] = ext_call.return_data[0 len 96]
                    if ext_call.success:
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require var105002 - var105001 >= 96
                        _1335 = mem[64]
                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                        mem[64] = mem[64] + 96
                        require mem[var107002] == mem[var107002 + 30 len 2]
                        mem[_1335] = mem[var107002]
                        require mem[var107002 + 32] == mem[var107002 + 60 len 4]
                        mem[_1335 + 32] = mem[var107002 + 32]
                        require mem[var107002 + 64] == mem[var107002 + 76 len 20]
                        mem[_1335 + 64] = mem[var107002 + 64]
                        _1401 = mem[_1335 + 64]
                        require ext_code.size(stor3)
                        staticcall stor3.getAsset(uint256 arg1) with:
                                gas gas_remaining wei
                               args var107005
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        s = _1335 + 96
                        t = _1335
                        u = var107002
                        v = var107003
                        v = var107005
                        while ext_call.success:
                            _1407 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1409 = mem[64]
                            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                            mem[64] = mem[64] + 96
                            require mem[_1407] == mem[_1407 + 30 len 2]
                            mem[_1409] = mem[_1407]
                            require mem[_1407 + 32] == mem[_1407 + 60 len 4]
                            mem[_1409 + 32] = mem[_1407 + 32]
                            require mem[_1407 + 64] == mem[_1407 + 76 len 20]
                            mem[_1409 + 64] = mem[_1407 + 64]
                            _1418 = mem[_1409 + 64]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_1418))
                            staticcall address(_1418).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if ext_call.success:
                                _1423 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1425 = mem[_1423]
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _1425 - 1
                                require ext_code.size(address(_1401))
                                call address(_1401).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _1425 - 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if ext_call.success:
                                    _1431 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1431] == bool(mem[_1431])
                                    require ext_code.size(stor3)
                                    staticcall stor3.numAssets() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    w = v
                                    while ext_call.success:
                                        _1457 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if w + 1 >= mem[_1457]:
                                        require w + 1 < 8
                                        if not mem[(32 * w + 1) + 96]:
                                            mem[64] = s
                                            require mem[u] == mem[u + 30 len 2]
                                            mem[t] = mem[u]
                                            require mem[u + 32] == mem[u + 60 len 4]
                                            mem[t + 32] = mem[u + 32]
                                            require mem[u + 64] == mem[u + 76 len 20]
                                            mem[t + 64] = mem[u + 64]
                                            require ext_code.size(stor3)
                                            staticcall stor3.getAsset(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args v
                                            mem[s len 96] = ext_call.return_data[0 len 96]
                                            require ext_code.size(stor3)
                                            staticcall stor3.numAssets() with:
                                                    gas gas_remaining wei
                                            mem[s] = ext_call.return_data[0]
                                            w = w + 1
                                            continue 
                                        require ext_code.size(stor3)
                                        staticcall stor3.getAsset(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (w + 1)
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1467 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        _1469 = mem[64]
                                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                        mem[64] = mem[64] + 96
                                        require mem[_1467] == mem[_1467 + 30 len 2]
                                        mem[_1469] = mem[_1467]
                                        require mem[_1467 + 32] == mem[_1467 + 60 len 4]
                                        mem[_1469 + 32] = mem[_1467 + 32]
                                        require mem[_1467 + 64] == mem[_1467 + 76 len 20]
                                        mem[_1469 + 64] = mem[_1467 + 64]
                                        require ext_code.size(stor3)
                                        staticcall stor3.getAsset(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args (w + 1)
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        require ext_code.size(stor3)
                                        staticcall stor3.numAssets() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        s = _1469 + 96
                                        t = _1469
                                        u = _1467
                                        v = _1467 + return_data.size
                                        v = w + 1
                                        continue 
                            revert with ext_call.return_data[0 len return_data.size]
    revert with ext_call.return_data[0 len return_data.size]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if stor1 != msg.sender:
        revert with 0, '03'
    else:
        if arg1 != this.address:
            revert with 0, '04'
        else:
            require arg4.length >= 160
            require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
            require ext_code.size(stor3)
            staticcall stor3.lendingPool() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor3)
                staticcall stor3.getAsset(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[(arg4 + 68)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 96
                    require bool((2 * ceil32(return_data.size)) + 192 <= test266151307())
                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                    require ext_code.size(stor3)
                    staticcall stor3.getAsset(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[(arg4 + 100)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 96
                        require bool((4 * ceil32(return_data.size)) + 288 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                        require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[64]), address(ext_call.return_data[64]), address(cd[(arg4 + 132)]), cd[(arg4 + 164)], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if cd[(arg4 + 36)]:
                                if cd[(arg4 + 36)] != 1:
                                    if cd[(arg4 + 36)] != 2:
                                    else:
                                        require ext_code.size(stor3)
                                        staticcall stor3.getAsset(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args cd[(arg4 + 100)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 96
                                            require bool((6 * ceil32(return_data.size)) + 384 <= test266151307())
                                            require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                            require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                            require ext_code.size(address(ext_call.return_data[64]))
                                            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args stor1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_code.size(stor3)
                                                staticcall stor3.getAsset(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 96
                                                    require bool((8 * ceil32(return_data.size)) + 480 <= test266151307())
                                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                    require ext_code.size(address(ext_call.return_data[64]))
                                                    staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args stor1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require 997 * ext_call.return_data[0]
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.getAsset(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args cd[(arg4 + 68)]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 96
                                                            require bool((11 * ceil32(return_data.size)) + 576 <= test266151307())
                                                            require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                            require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                            require ext_code.size(stor3)
                                                            staticcall stor3.getAsset(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 96
                                                                require bool((12 * ceil32(return_data.size)) + 672 <= test266151307())
                                                                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                if address(ext_call.return_data[64]) < ext_call.return_data[76 len 20]:
                                                                    if cd[(arg4 + 68)]:
                                                                        if cd[(arg4 + 68)] != 2:
                                                                            if cd[(arg4 + 68)] != 3:
                                                                                if cd[(arg4 + 68)] != 1:
                                                                                    if cd[(arg4 + 68)] != 2:
                                                                                        if cd[(arg4 + 68)] != 3:
                                                                                            if not cd[(arg4 + 68)]:
                                                                                                revert with 0, '06'
                                                                                            else:
                                                                                                revert with 0, '06'
                                                                                        else:
                                                                                            if cd[(arg4 + 68)] != 3:
                                                                                                if not cd[(arg4 + 68)]:
                                                                                                    revert with 0, '06'
                                                                                                else:
                                                                                                    revert with 0, '06'
                                                                                            else:
                                                                                                if not cd[(arg4 + 68)]:
                                                                                                    revert with 0, '06'
                                                                                                else:
                                                                                                    revert with 0, '06'
                                                                                    else:
                                                                                        if cd[(arg4 + 68)] != 3:
                                                                                            if not cd[(arg4 + 68)]:
                                                                                                revert with 0, '06'
                                                                                            else:
                                                                                                revert with 0, '06'
                                                                                        else:
                                                                                            if cd[(arg4 + 68)] != 3:
                                                                                                if not cd[(arg4 + 68)]:
                                                                                                    revert with 0, '06'
                                                                                                else:
                                                                                                    revert with 0, '06'
                                                                                            else:
                                                                                                if not cd[(arg4 + 68)]:
                                                                                                    revert with 0, '06'
                                                                                                else:
                                                                                                    revert with 0, '06'
                                                                                else:
                                                                                    if cd[(arg4 + 68)] != 1:
                                                                                        if cd[(arg4 + 68)] != 2:
                                                                                            if cd[(arg4 + 68)] != 3:
                                                                                                if not cd[(arg4 + 68)]:
                                                                                                    revert with 0, '06'
                                                                                                else:
                                                                                                    revert with 0, '06'
                                                                                            else:
                                                                                                if cd[(arg4 + 68)] != 3:
                                                                                                    if not cd[(arg4 + 68)]:
                                                                                                        revert with 0, '06'
                                                                                                    else:
                                                                                                        revert with 0, '06'
                                                                                                else:
                                                                                                    if not cd[(arg4 + 68)]:
                                                                                                        revert with 0, '06'
                                                                                                    else:
                                                                                                        revert with 0, '06'
                                                                                        else:
                                                                                            if cd[(arg4 + 68)] != 3:
                                                                                                if not cd[(arg4 + 68)]:
                                                                                                    revert with 0, '06'
                                                                                                else:
                                                                                                    revert with 0, '06'
                                                                                            else:
                                                                                                if cd[(arg4 + 68)] != 3:
                                                                                                    if not cd[(arg4 + 68)]:
                                                                                                        revert with 0, '06'
                                                                                                    else:
                                                                                                        revert with 0, '06'
                                                                                                else:
                                                                                                    if not cd[(arg4 + 68)]:
                                                                                                        revert with 0, '06'
                                                                                                    else:
                                                                                                        revert with 0, '06'
                                                                                    else:
                                                                                        if cd[(arg4 + 68)] != 2:
                                                                                            if cd[(arg4 + 68)] != 3:
                                                                                                if not cd[(arg4 + 68)]:
                                                                                                    revert with 0, '06'
                                                                                                else:
                                                                                                    revert with 0, '06'
                                                                                            else:
                                                                                                if cd[(arg4 + 68)] != 3:
                                                                                                    if not cd[(arg4 + 68)]:
                                                                                                        revert with 0, '06'
                                                                                                    else:
                                                                                                        revert with 0, '06'
                                                                                                else:
                                                                                                    if not cd[(arg4 + 68)]:
                                                                                                        revert with 0, '06'
                                                                                                    else:
                                                                                                        revert with 0, '06'
                                                                                        else:
                                                                                            if cd[(arg4 + 68)] != 3:
                                                                                                if not cd[(arg4 + 68)]:
                                                                                                    revert with 0, '06'
                                                                                                else:
                                                                                                    revert with 0, '06'
                                                                                            else:
                                                                                                if cd[(arg4 + 68)] != 3:
                                                                                                    if not cd[(arg4 + 68)]:
                                                                                                        revert with 0, '06'
                                                                                                    else:
                                                                                                        revert with 0, '06'
                                                                                                else:
                                                                                                    if not cd[(arg4 + 68)]:
                                                                                                        revert with 0, '06'
                                                                                                    else:
                                                                                                        revert with 0, '06'
                                                                            else:
                                                                                require ext_code.size(stor3)
                                                                                staticcall stor3.getAsset(uint256 arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args cd[(arg4 + 68)]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    require bool((13 * ceil32(return_data.size)) + 768 <= test266151307())
                                                                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                    require ext_code.size(address(ext_call.return_data[64]))
                                                                                    staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args 0xa389f9430876455c36478deea9769b7ca4e3ddb1
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_code.size(stor3)
                                                                                        staticcall stor3.getAsset(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args 1
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 96
                                                                                            require bool((15 * ceil32(return_data.size)) + 864 <= test266151307())
                                                                                            require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                            require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                            require ext_code.size(address(ext_call.return_data[64]))
                                                                                            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 0xa389f9430876455c36478deea9769b7ca4e3ddb1
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require (997 * ext_call.return_data[0]) + (-997 * 1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) - 997
                                                                                                require ext_code.size(stor3)
                                                                                                staticcall stor3.getAsset(uint256 arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args cd[(arg4 + 68)]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 96
                                                                                                    require bool((18 * ceil32(return_data.size)) + 960 <= test266151307())
                                                                                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                                    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                                    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                                    require ext_code.size(stor3)
                                                                                                    staticcall stor3.getAsset(uint256 arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args 1
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 96
                                                                                                        require bool((19 * ceil32(return_data.size)) + 1056 <= test266151307())
                                                                                                        require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                                        require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                                        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                                        require ext_code.size(stor3)
                                                                                                        staticcall stor3.getAsset(uint256 arg1) with:
                                                                                                                gas gas_remaining wei
                                                                                                               args cd[(arg4 + 68)]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 96
                                                                                                            require bool((20 * ceil32(return_data.size)) + 1152 <= test266151307())
                                                                                                            require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                                            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                                            require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                                            require ext_code.size(address(ext_call.return_data[64]))
                                                                                                            call address(ext_call.return_data[64]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0xa389f9430876455c36478deea9769b7ca4e3ddb1, ((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0] * ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (-997 * 1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) - 997) + 1
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                if ext_call.return_data[76 len 20] < address(ext_call.return_data[64]):
                                                                                                                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                                                                                                                    call 0xa389f9430876455c36478deea9769b7ca4e3ddb1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args (1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) + 1, 0, msg.sender, 128, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                                                                                                                    call 0xa389f9430876455c36478deea9769b7ca4e3ddb1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, (1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) + 1, msg.sender, 128, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                        else:
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.getAsset(uint256 arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args cd[(arg4 + 68)]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 96
                                                                                require bool((13 * ceil32(return_data.size)) + 768 <= test266151307())
                                                                                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                require ext_code.size(address(ext_call.return_data[64]))
                                                                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args 0xd5a37dc5c9a396a03dd1136fc76a1a02b1c88ffa
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_code.size(stor3)
                                                                                    staticcall stor3.getAsset(uint256 arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args 1
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 96
                                                                                        require bool((15 * ceil32(return_data.size)) + 864 <= test266151307())
                                                                                        require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                        require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                        require ext_code.size(address(ext_call.return_data[64]))
                                                                                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                                                                                gas gas_remaining wei
                                                                                               args 0xd5a37dc5c9a396a03dd1136fc76a1a02b1c88ffa
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require (997 * ext_call.return_data[0]) + (-997 * 1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) - 997
                                                                                            require ext_code.size(stor3)
                                                                                            staticcall stor3.getAsset(uint256 arg1) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args cd[(arg4 + 68)]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 96
                                                                                                require bool((18 * ceil32(return_data.size)) + 960 <= test266151307())
                                                                                                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                                require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                                require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                                require ext_code.size(stor3)
                                                                                                staticcall stor3.getAsset(uint256 arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args 1
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 96
                                                                                                    require bool((19 * ceil32(return_data.size)) + 1056 <= test266151307())
                                                                                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                                    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                                    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                                    require ext_code.size(stor3)
                                                                                                    staticcall stor3.getAsset(uint256 arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args cd[(arg4 + 68)]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 96
                                                                                                        require bool((20 * ceil32(return_data.size)) + 1152 <= test266151307())
                                                                                                        require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                                        require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                                        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                                        require ext_code.size(address(ext_call.return_data[64]))
                                                                                                        call address(ext_call.return_data[64]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args 0xd5a37dc5c9a396a03dd1136fc76a1a02b1c88ffa, ((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0] * ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (-997 * 1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) - 997) + 1
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                            if ext_call.return_data[76 len 20] < address(ext_call.return_data[64]):
                                                                                                                require ext_code.size(0xd5a37dc5c9a396a03dd1136fc76a1a02b1c88ffa)
                                                                                                                call 0xd5a37dc5c9a396a03dd1136fc76a1a02b1c88ffa.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args (1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) + 1, 0, msg.sender, 128, 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                            else:
                                                                                                                require ext_code.size(0xd5a37dc5c9a396a03dd1136fc76a1a02b1c88ffa)
                                                                                                                call 0xd5a37dc5c9a396a03dd1136fc76a1a02b1c88ffa.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args 0, (1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) + 1, msg.sender, 128, 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                    else:
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.getAsset(uint256 arg1) with:
                                                                                gas gas_remaining wei
                                                                               args cd[(arg4 + 68)]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            require bool((13 * ceil32(return_data.size)) + 768 <= test266151307())
                                                                            require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                            require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                            require ext_code.size(address(ext_call.return_data[64]))
                                                                            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args 0xfe15c2695f1f920da45c30aae47d11de51007af9
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_code.size(stor3)
                                                                                staticcall stor3.getAsset(uint256 arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args 1
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    require bool((15 * ceil32(return_data.size)) + 864 <= test266151307())
                                                                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                    require ext_code.size(address(ext_call.return_data[64]))
                                                                                    staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args 0xfe15c2695f1f920da45c30aae47d11de51007af9
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require (997 * ext_call.return_data[0]) + (-997 * 1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) - 997
                                                                                        require ext_code.size(stor3)
                                                                                        staticcall stor3.getAsset(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args cd[(arg4 + 68)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 96
                                                                                            require bool((18 * ceil32(return_data.size)) + 960 <= test266151307())
                                                                                            require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                            require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                            require ext_code.size(stor3)
                                                                                            staticcall stor3.getAsset(uint256 arg1) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 1
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 96
                                                                                                require bool((19 * ceil32(return_data.size)) + 1056 <= test266151307())
                                                                                                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                                require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                                require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                                require ext_code.size(stor3)
                                                                                                staticcall stor3.getAsset(uint256 arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args cd[(arg4 + 68)]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 96
                                                                                                    require bool((20 * ceil32(return_data.size)) + 1152 <= test266151307())
                                                                                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                                    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                                    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                                    require ext_code.size(address(ext_call.return_data[64]))
                                                                                                    call address(ext_call.return_data[64]).0xa9059cbb with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 0xfe15c2695f1f920da45c30aae47d11de51007af9, ((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0] * ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (-997 * 1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) - 997) + 1
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                        if ext_call.return_data[76 len 20] < address(ext_call.return_data[64]):
                                                                                                            require ext_code.size(0xfe15c2695f1f920da45c30aae47d11de51007af9)
                                                                                                            call 0xfe15c2695f1f920da45c30aae47d11de51007af9.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args (1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) + 1, 0, msg.sender, 128, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                        else:
                                                                                                            require ext_code.size(0xfe15c2695f1f920da45c30aae47d11de51007af9)
                                                                                                            call 0xfe15c2695f1f920da45c30aae47d11de51007af9.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, (1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) + 1, msg.sender, 128, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                else:
                                                                    if cd[(arg4 + 68)] != 4:
                                                                        if cd[(arg4 + 68)] != 5:
                                                                            revert with 0, '06'
                                                                        else:
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.getAsset(uint256 arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args cd[(arg4 + 68)]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 96
                                                                                require bool((13 * ceil32(return_data.size)) + 768 <= test266151307())
                                                                                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                require ext_code.size(address(ext_call.return_data[64]))
                                                                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_code.size(stor3)
                                                                                    staticcall stor3.getAsset(uint256 arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args 1
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 96
                                                                                        require bool((15 * ceil32(return_data.size)) + 864 <= test266151307())
                                                                                        require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                        require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                        require ext_code.size(address(ext_call.return_data[64]))
                                                                                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                                                                                gas gas_remaining wei
                                                                                               args 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require (997 * ext_call.return_data[0]) + (-997 * 1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) - 997
                                                                                            require ext_code.size(stor3)
                                                                                            staticcall stor3.getAsset(uint256 arg1) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args cd[(arg4 + 68)]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 96
                                                                                                require bool((18 * ceil32(return_data.size)) + 960 <= test266151307())
                                                                                                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                                require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                                require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                                require ext_code.size(stor3)
                                                                                                staticcall stor3.getAsset(uint256 arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args 1
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 96
                                                                                                    require bool((19 * ceil32(return_data.size)) + 1056 <= test266151307())
                                                                                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                                    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                                    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                                    require ext_code.size(stor3)
                                                                                                    staticcall stor3.getAsset(uint256 arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args cd[(arg4 + 68)]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 96
                                                                                                        require bool((20 * ceil32(return_data.size)) + 1152 <= test266151307())
                                                                                                        require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                                        require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                                        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                                        require ext_code.size(address(ext_call.return_data[64]))
                                                                                                        call address(ext_call.return_data[64]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256, ((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0] * ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (-997 * 1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) - 997) + 1
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                            if ext_call.return_data[76 len 20] < address(ext_call.return_data[64]):
                                                                                                                require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
                                                                                                                call 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args (1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) + 1, 0, msg.sender, 128, 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                            else:
                                                                                                                require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
                                                                                                                call 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args 0, (1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) + 1, msg.sender, 128, 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                    else:
                                                                        require ext_code.size(stor3)
                                                                        staticcall stor3.getAsset(uint256 arg1) with:
                                                                                gas gas_remaining wei
                                                                               args cd[(arg4 + 68)]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            require bool((13 * ceil32(return_data.size)) + 768 <= test266151307())
                                                                            require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                            require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                            require ext_code.size(address(ext_call.return_data[64]))
                                                                            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args 0x87dee1cc9ffd464b79e058ba20387c1984aed86a
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_code.size(stor3)
                                                                                staticcall stor3.getAsset(uint256 arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args 1
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    require bool((15 * ceil32(return_data.size)) + 864 <= test266151307())
                                                                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                    require ext_code.size(address(ext_call.return_data[64]))
                                                                                    staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args 0x87dee1cc9ffd464b79e058ba20387c1984aed86a
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require (997 * ext_call.return_data[0]) + (-997 * 1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) - 997
                                                                                        require ext_code.size(stor3)
                                                                                        staticcall stor3.getAsset(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args cd[(arg4 + 68)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 96
                                                                                            require bool((18 * ceil32(return_data.size)) + 960 <= test266151307())
                                                                                            require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                            require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                            require ext_code.size(stor3)
                                                                                            staticcall stor3.getAsset(uint256 arg1) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 1
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 96
                                                                                                require bool((19 * ceil32(return_data.size)) + 1056 <= test266151307())
                                                                                                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                                require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                                require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                                require ext_code.size(stor3)
                                                                                                staticcall stor3.getAsset(uint256 arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args cd[(arg4 + 68)]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 96
                                                                                                    require bool((20 * ceil32(return_data.size)) + 1152 <= test266151307())
                                                                                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                                                                    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                                                                    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                                                                    require ext_code.size(address(ext_call.return_data[64]))
                                                                                                    call address(ext_call.return_data[64]).0xa9059cbb with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 0x87dee1cc9ffd464b79e058ba20387c1984aed86a, ((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0] * ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (-997 * 1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) - 997) + 1
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                        if ext_call.return_data[76 len 20] < address(ext_call.return_data[64]):
                                                                                                            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
                                                                                                            call 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args (1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) + 1, 0, msg.sender, 128, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                        else:
                                                                                                            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
                                                                                                            call 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, (1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) + 1, msg.sender, 128, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                else:
                                    require ext_code.size(stor3)
                                    staticcall stor3.getAsset(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args cd[(arg4 + 100)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        require bool((6 * ceil32(return_data.size)) + 384 <= test266151307())
                                        require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                        require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                        require ext_code.size(address(ext_call.return_data[64]))
                                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args stor1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_code.size(stor3)
                                            staticcall stor3.getAsset(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args cd[(arg4 + 68)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                require bool((8 * ceil32(return_data.size)) + 480 <= test266151307())
                                                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                require ext_code.size(address(ext_call.return_data[64]))
                                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args stor1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require 997 * ext_call.return_data[0]
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.getAsset(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args cd[(arg4 + 68)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        require bool((11 * ceil32(return_data.size)) + 576 <= test266151307())
                                                        require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                                        require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                                        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                                        require ext_code.size(address(ext_call.return_data[64]))
                                                        call address(ext_call.return_data[64]).0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 164)] / 997 * ext_call.return_data[0]) + 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                require ext_code.size(stor3)
                                staticcall stor3.getAsset(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[(arg4 + 68)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    require bool((6 * ceil32(return_data.size)) + 384 <= test266151307())
                                    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                                    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                                    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                                    require ext_code.size(address(ext_call.return_data[64]))
                                    call address(ext_call.return_data[64]).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[(arg4 + 164)] + (3 * cd[(arg4 + 164)] / 997) + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
