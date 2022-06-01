contract main {




// =====================  Runtime code  =====================


#
#  - sub_4bc29929(?)
#
address adminAddress;
mapping of uint8 stor1;

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function transferAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    adminAddress = arg1
}

function addOperator(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    stor1[address(arg1)] = 1
}

function withdrawEther(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    call arg2 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function executeTransaction(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    call arg1 with:
       value msg.value wei
         gas gas_remaining wei
        args arg2[all]
    if not ext_call.success:
        revert with 0, 'call failed'
}

function withdrawToken(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, arg2
        if not transfer(address arg1, uint256 arg2), address(arg3) << 64:
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_9bfc4f15(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    idx = 0
    while idx < ('cd', 4).length:
        s = 0
        while s < ('cd', 36).length:
            require idx < ('cd', 4).length
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, address(cd[((32 * s) + cd[36] + 36)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[mem[64] + 122 len 10]
            _117 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * s) + cd[36] + 36)])
            mem[mem[64] + 68] = -1
            _118 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_118 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_118 + 36 len 28]
            mem[64] = _117 + 164
            mem[_117 + 100] = 32
            mem[_117 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])):
                revert with 0, 'Address: call to non-contract'
            _124 = mem[_118]
            u = _118 + 32
            v = _117 + 164
            t = mem[_118]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_117 + floor32(mem[_118]) + 164] = mem[_118 + -(mem[_118] % 32) + floor32(mem[_118]) + 64 len mem[_118] % 32] or Mask(8 * -(mem[_118] % 32) + 32, -(8 * -(mem[_118] % 32) + 32) + 256, mem[_117 + floor32(mem[_118]) + 164])
            call address(cd[((32 * idx) + cd[4] + 36)]).mem[_117 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_117 + 168 len _124 - 4]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_117 + 274 len 22]
                    s = s + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_117 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_117 + 168] = 32
                idx = 32
                while idx < 32:
                    mem[idx + _117 + 232] = mem[idx + _117 + 132]
                    idx = idx + 32
                    continue 
            else:
                mem[64] = _117 + ceil32(return_data.size) + 165
                mem[_117 + 164] = return_data.size
                mem[_117 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_117 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_117 + ceil32(return_data.size) + 275 len 22]
                    s = s + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_117 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_117 + ceil32(return_data.size) + 169] = 32
                idx = 32
                while idx < 32:
                    mem[idx + _117 + ceil32(return_data.size) + 233] = mem[idx + _117 + 132]
                    idx = idx + 32
                    continue 
            revert with 0, 32, 32, mem[_117 + 132]
        idx = idx + 1
        continue 
}

function sub_c810ccac(?) {
    require calldata.size - 4 >= 224
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    require cd[196] <= 4294967296
    require cd[196] + 36 <= calldata.size
    require ('cd', 196).length <= 4294967296 and cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    if msg.sender == address(cd[36]):
        require 0 < ('cd', 196).length
        require 0 < ('cd', 164).length
        mem[132] = address(cd[36])
        mem[164] = address(('cd', 196)[0])
        mem[196] = cd[68]
        mem[96] = 100
        mem[132 len 28] = address(cd[36]) << 64
        mem[128 len 4] = unknown_0x23b872dd(?????)
        mem[228] = 32
        mem[260] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(('cd', 164)[0])):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), address(cd[36]) << 64, 0, address(('cd', 196)[0]), Mask(224, 32, cd[68]) >> 32
        mem[416 len 4] = 0
        call address(('cd', 164)[0]) with:
             gas gas_remaining wei
            args Mask(224, 32, cd[68]) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), address(cd[36]) << 64, 0, address(('cd', 196)[0]), cd[68]
            if not unknown_0x23b872dd(?????), address(cd[36]) << 64:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            require ('cd', 164).length - 1 < ('cd', 164).length
            mem[296] = address(cd[132])
            require ext_code.size(address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]))
            staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[132])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[292] = ('cd', 164).length
            mem[324 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[64] = (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + 356
            mem[(32 * ('cd', 164).length) + 324] = ('cd', 196).length
            mem[(32 * ('cd', 164).length) + 356 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
            mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 356] = 0
            idx = 0
            while idx < ('cd', 164).length - 1:
                require idx < mem[(32 * ('cd', 164).length) + 324]
                _3121 = mem[(32 * idx) + (32 * ('cd', 164).length) + 356]
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 164).length) + 368 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 164).length) + 368 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx + 1 < mem[292]
                require idx < mem[292]
                require idx < mem[292]
                if mem[(32 * idx) + 336 len 20] < mem[(32 * idx + 1) + 336 len 20]:
                    _3294 = mem[(32 * idx) + 324]
                    mem[mem[64] + 4] = address(_3121)
                    require ext_code.size(address(_3294))
                    staticcall address(_3294).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_3121)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _3418 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3418] = 30
                    mem[_3418 + 32] = 'SafeMath: subtraction overflow'
                    if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                        _3438 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3438 + 68] = mem[idx + _3418 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3438 + 68] = mem[_3438 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3438 + -mem[64] + 100
                    require idx < mem[292]
                    _3520 = mem[(32 * idx) + 324]
                    require idx + 1 < mem[292]
                    _3582 = mem[(32 * idx + 1) + 324]
                    require idx < mem[(32 * ('cd', 164).length) + 324]
                    _3626 = mem[(32 * idx) + (32 * ('cd', 164).length) + 356]
                    _3644 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_3644]
                    require 1 < mem[_3644]
                    mem[_3644 + 64] = address(_3582)
                    mem[_3644 + 32] = address(_3520)
                    mem[_3644 + 96] = 1
                    mem[64] = _3644 + 160
                    mem[_3644 + 128] = address(_3626)
                    mem[_3644 + 160] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
                    mem[_3644 + 164] = Mask(144, 112, ext_call.return_data[0])
                    mem[_3644 + 196] = 96
                    mem[_3644 + 260] = 1
                    s = 0
                    while s < 32:
                        mem[s + _3644 + 292] = mem[s + _3644 + 128]
                        s = s + 32
                        continue 
                    mem[_3644 + 228] = 160
                    mem[_3644 + 324] = mem[_3644]
                    s = 0
                    while s < 32 * mem[_3644]:
                        mem[s + _3644 + 356] = mem[s + _3644 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0xa8312b1d with:
                            gas gas_remaining wei
                           args Mask(144, 112, ext_call.return_data[0]), 96, 160, 1, mem[_3644 + 292 len (32 * mem[_3644]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3644 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3644 + ceil32(return_data.size) + 160
                    require return_data.size >= 32
                    _5420 = mem[_3644 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32
                    require mem[_3644 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[_3644 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[_3644 + mem[_3644 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160] <= 4294967296 and mem[_3644 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + (32 * mem[_3644 + mem[_3644 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160]) + 32 <= return_data.size
                    mem[_3644 + ceil32(return_data.size) + 160] = mem[_3644 + mem[_3644 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160]
                    _5466 = mem[_3644 + _5420 + 160]
                    s = 0
                    while s < 32 * _5466:
                        mem[s + _3644 + ceil32(return_data.size) + 192] = mem[s + _3644 + _5420 + 192]
                        s = s + 32
                        continue 
                    require 1 < mem[_3644 + ceil32(return_data.size) + 160]
                    _6106 = mem[_3644 + ceil32(return_data.size) + 224]
                    require idx + 1 < mem[292]
                    require idx < mem[292]
                    if mem[(32 * idx) + 336 len 20] < mem[(32 * idx + 1) + 336 len 20]:
                        if idx >= mem[292] - 2:
                            mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5466) + _3644 + ceil32(return_data.size) + 224
                            mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 228] = 0
                            mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 260] = _6106
                            mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 292] = address(cd[132])
                            mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5466) + _3644 + ceil32(return_data.size) + 388] = mem[s + (32 * _5466) + _3644 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3121))
                            call address(_3121).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6106, address(cd[132]), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 1
                            continue 
                        require idx + 1 < mem[(32 * ('cd', 164).length) + 324]
                        _6260 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + 356]
                        mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 192] = 0
                        mem[64] = (32 * _5466) + _3644 + ceil32(return_data.size) + 224
                        mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 228] = 0
                        mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 260] = _6106
                        mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 292] = address(_6260)
                        mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 324] = 128
                        mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 356] = 0
                        s = 0
                        while s < 0:
                            mem[s + (32 * _5466) + _3644 + ceil32(return_data.size) + 388] = mem[s + (32 * _5466) + _3644 + ceil32(return_data.size) + 224]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_3121))
                        call address(_3121).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _6106, address(_6260), 128, 0
                    else:
                        if idx >= mem[292] - 2:
                            mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5466) + _3644 + ceil32(return_data.size) + 224
                            mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 228] = _6106
                            mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 292] = address(cd[132])
                            mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5466) + _3644 + ceil32(return_data.size) + 388] = mem[s + (32 * _5466) + _3644 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3121))
                            call address(_3121).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6106, 0, address(cd[132]), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 1
                            continue 
                        require idx + 1 < mem[(32 * ('cd', 164).length) + 324]
                        _6263 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + 356]
                        mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 192] = 0
                        mem[64] = (32 * _5466) + _3644 + ceil32(return_data.size) + 224
                        mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 228] = _6106
                        mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 260] = 0
                        mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 292] = address(_6263)
                        mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 324] = 128
                        mem[(32 * _5466) + _3644 + ceil32(return_data.size) + 356] = 0
                        s = 0
                        while s < 0:
                            mem[s + (32 * _5466) + _3644 + ceil32(return_data.size) + 388] = mem[s + (32 * _5466) + _3644 + ceil32(return_data.size) + 224]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_3121))
                        call address(_3121).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _6106, 0, address(_6263), 128, 0
                else:
                    _3297 = mem[(32 * idx) + 324]
                    mem[mem[64] + 4] = address(_3121)
                    require ext_code.size(address(_3297))
                    staticcall address(_3297).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_3121)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _3419 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3419] = 30
                    mem[_3419 + 32] = 'SafeMath: subtraction overflow'
                    if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                        _3441 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3441 + 68] = mem[idx + _3419 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3441 + 68] = mem[_3441 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3441 + -mem[64] + 100
                    require idx < mem[292]
                    _3524 = mem[(32 * idx) + 324]
                    require idx + 1 < mem[292]
                    _3585 = mem[(32 * idx + 1) + 324]
                    require idx < mem[(32 * ('cd', 164).length) + 324]
                    _3627 = mem[(32 * idx) + (32 * ('cd', 164).length) + 356]
                    _3646 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_3646]
                    require 1 < mem[_3646]
                    mem[_3646 + 64] = address(_3585)
                    mem[_3646 + 32] = address(_3524)
                    mem[_3646 + 96] = 1
                    mem[64] = _3646 + 160
                    mem[_3646 + 128] = address(_3627)
                    mem[_3646 + 160] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
                    mem[_3646 + 164] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                    mem[_3646 + 196] = 96
                    mem[_3646 + 260] = 1
                    s = 0
                    while s < 32:
                        mem[s + _3646 + 292] = mem[s + _3646 + 128]
                        s = s + 32
                        continue 
                    mem[_3646 + 228] = 160
                    mem[_3646 + 324] = mem[_3646]
                    s = 0
                    while s < 32 * mem[_3646]:
                        mem[s + _3646 + 356] = mem[s + _3646 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0xa8312b1d with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), 96, 160, 1, mem[_3646 + 292 len (32 * mem[_3646]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3646 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3646 + ceil32(return_data.size) + 160
                    require return_data.size >= 32
                    _5422 = mem[_3646 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32
                    require mem[_3646 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 <= 4294967296
                    require mem[_3646 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 32 <= return_data.size
                    require mem[_3646 + mem[_3646 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160] <= 4294967296 and mem[_3646 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + (32 * mem[_3646 + mem[_3646 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160]) + 32 <= return_data.size
                    mem[_3646 + ceil32(return_data.size) + 160] = mem[_3646 + mem[_3646 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160]
                    _5467 = mem[_3646 + _5422 + 160]
                    s = 0
                    while s < 32 * _5467:
                        mem[s + _3646 + ceil32(return_data.size) + 192] = mem[s + _3646 + _5422 + 192]
                        s = s + 32
                        continue 
                    require 1 < mem[_3646 + ceil32(return_data.size) + 160]
                    _6107 = mem[_3646 + ceil32(return_data.size) + 224]
                    require idx + 1 < mem[292]
                    require idx < mem[292]
                    if mem[(32 * idx) + 336 len 20] < mem[(32 * idx + 1) + 336 len 20]:
                        if idx >= mem[292] - 2:
                            mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5467) + _3646 + ceil32(return_data.size) + 224
                            mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 228] = 0
                            mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 260] = _6107
                            mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 292] = address(cd[132])
                            mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5467) + _3646 + ceil32(return_data.size) + 388] = mem[s + (32 * _5467) + _3646 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3121))
                            call address(_3121).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6107, address(cd[132]), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 1
                            continue 
                        require idx + 1 < mem[(32 * ('cd', 164).length) + 324]
                        _6266 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + 356]
                        mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 192] = 0
                        mem[64] = (32 * _5467) + _3646 + ceil32(return_data.size) + 224
                        mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 228] = 0
                        mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 260] = _6107
                        mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 292] = address(_6266)
                        mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 324] = 128
                        mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 356] = 0
                        s = 0
                        while s < 0:
                            mem[s + (32 * _5467) + _3646 + ceil32(return_data.size) + 388] = mem[s + (32 * _5467) + _3646 + ceil32(return_data.size) + 224]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_3121))
                        call address(_3121).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _6107, address(_6266), 128, 0
                    else:
                        if idx >= mem[292] - 2:
                            mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5467) + _3646 + ceil32(return_data.size) + 224
                            mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 228] = _6107
                            mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 292] = address(cd[132])
                            mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5467) + _3646 + ceil32(return_data.size) + 388] = mem[s + (32 * _5467) + _3646 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3121))
                            call address(_3121).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6107, 0, address(cd[132]), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 1
                            continue 
                        require idx + 1 < mem[(32 * ('cd', 164).length) + 324]
                        _6269 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + 356]
                        mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 192] = 0
                        mem[64] = (32 * _5467) + _3646 + ceil32(return_data.size) + 224
                        mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 228] = _6107
                        mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 260] = 0
                        mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 292] = address(_6269)
                        mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 324] = 128
                        mem[(32 * _5467) + _3646 + ceil32(return_data.size) + 356] = 0
                        s = 0
                        while s < 0:
                            mem[s + (32 * _5467) + _3646 + ceil32(return_data.size) + 388] = mem[s + (32 * _5467) + _3646 + ceil32(return_data.size) + 224]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_3121))
                        call address(_3121).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _6107, 0, address(_6269), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[292] = return_data.size
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                require ('cd', 164).length - 1 < ('cd', 164).length
                mem[ceil32(return_data.size) + 297] = address(cd[132])
                require ext_code.size(address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]))
                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[132])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 293] = ('cd', 164).length
                mem[ceil32(return_data.size) + 325 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[64] = (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357
                mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325] = ('cd', 196).length
                mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + (32 * ('cd', 196).length) + 357] = 0
                idx = 0
                while idx < ('cd', 164).length - 1:
                    require idx < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                    _3126 = mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 369 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 369 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require idx + 1 < mem[ceil32(return_data.size) + 293]
                    require idx < mem[ceil32(return_data.size) + 293]
                    require idx < mem[ceil32(return_data.size) + 293]
                    if mem[(32 * idx) + ceil32(return_data.size) + 337 len 20] < mem[(32 * idx + 1) + ceil32(return_data.size) + 337 len 20]:
                        _3300 = mem[(32 * idx) + ceil32(return_data.size) + 325]
                        mem[mem[64] + 4] = address(_3126)
                        require ext_code.size(address(_3300))
                        staticcall address(_3300).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3126)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3420 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3420] = 30
                        mem[_3420 + 32] = 'SafeMath: subtraction overflow'
                        if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                            _3444 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3444 + 68] = mem[idx + _3420 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3444 + 68] = mem[_3444 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3444 + -mem[64] + 100
                        require idx < mem[ceil32(return_data.size) + 293]
                        _3528 = mem[(32 * idx) + ceil32(return_data.size) + 325]
                        require idx + 1 < mem[ceil32(return_data.size) + 293]
                        _3588 = mem[(32 * idx + 1) + ceil32(return_data.size) + 325]
                        require idx < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                        _3628 = mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                        _3648 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_3648]
                        require 1 < mem[_3648]
                        mem[_3648 + 64] = address(_3588)
                        mem[_3648 + 32] = address(_3528)
                        mem[_3648 + 96] = 1
                        mem[64] = _3648 + 160
                        mem[_3648 + 128] = address(_3628)
                        mem[_3648 + 160] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
                        mem[_3648 + 164] = Mask(144, 112, ext_call.return_data[0])
                        mem[_3648 + 196] = 96
                        mem[_3648 + 260] = 1
                        s = 0
                        while s < 32:
                            mem[s + _3648 + 292] = mem[s + _3648 + 128]
                            s = s + 32
                            continue 
                        mem[_3648 + 228] = 160
                        mem[_3648 + 324] = mem[_3648]
                        s = 0
                        while s < 32 * mem[_3648]:
                            mem[s + _3648 + 356] = mem[s + _3648 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0xa8312b1d with:
                                gas gas_remaining wei
                               args Mask(144, 112, ext_call.return_data[0]), 96, 160, 1, mem[_3648 + 292 len (32 * mem[_3648]) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3648 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _3648 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        _5424 = mem[_3648 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32
                        require mem[_3648 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 <= 4294967296
                        require mem[_3648 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                        require mem[_3648 + mem[_3648 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160] <= 4294967296 and mem[_3648 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + (32 * mem[_3648 + mem[_3648 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160]) + 32 <= return_data.size
                        mem[_3648 + ceil32(return_data.size) + 160] = mem[_3648 + mem[_3648 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160]
                        _5468 = mem[_3648 + _5424 + 160]
                        s = 0
                        while s < 32 * _5468:
                            mem[s + _3648 + ceil32(return_data.size) + 192] = mem[s + _3648 + _5424 + 192]
                            s = s + 32
                            continue 
                        require 1 < mem[_3648 + ceil32(return_data.size) + 160]
                        _6108 = mem[_3648 + ceil32(return_data.size) + 224]
                        require idx + 1 < mem[ceil32(return_data.size) + 293]
                        require idx < mem[ceil32(return_data.size) + 293]
                        if mem[(32 * idx) + ceil32(return_data.size) + 337 len 20] < mem[(32 * idx + 1) + ceil32(return_data.size) + 337 len 20]:
                            if idx >= mem[ceil32(return_data.size) + 293] - 2:
                                mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 192] = 0
                                mem[64] = (32 * _5468) + _3648 + ceil32(return_data.size) + 224
                                mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 228] = 0
                                mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 260] = _6108
                                mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 292] = address(cd[132])
                                mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 324] = 128
                                mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 356] = 0
                                s = 0
                                while s < 0:
                                    mem[s + (32 * _5468) + _3648 + ceil32(return_data.size) + 388] = mem[s + (32 * _5468) + _3648 + ceil32(return_data.size) + 224]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_3126))
                                call address(_3126).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _6108, address(cd[132]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 1
                                continue 
                            require idx + 1 < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                            _6272 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                            mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5468) + _3648 + ceil32(return_data.size) + 224
                            mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 228] = 0
                            mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 260] = _6108
                            mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 292] = address(_6272)
                            mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5468) + _3648 + ceil32(return_data.size) + 388] = mem[s + (32 * _5468) + _3648 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3126))
                            call address(_3126).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6108, address(_6272), 128, 0
                        else:
                            if idx >= mem[ceil32(return_data.size) + 293] - 2:
                                mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 192] = 0
                                mem[64] = (32 * _5468) + _3648 + ceil32(return_data.size) + 224
                                mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 228] = _6108
                                mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 260] = 0
                                mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 292] = address(cd[132])
                                mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 324] = 128
                                mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 356] = 0
                                s = 0
                                while s < 0:
                                    mem[s + (32 * _5468) + _3648 + ceil32(return_data.size) + 388] = mem[s + (32 * _5468) + _3648 + ceil32(return_data.size) + 224]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_3126))
                                call address(_3126).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _6108, 0, address(cd[132]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 1
                                continue 
                            require idx + 1 < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                            _6275 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                            mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5468) + _3648 + ceil32(return_data.size) + 224
                            mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 228] = _6108
                            mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 292] = address(_6275)
                            mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5468) + _3648 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5468) + _3648 + ceil32(return_data.size) + 388] = mem[s + (32 * _5468) + _3648 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3126))
                            call address(_3126).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6108, 0, address(_6275), 128, 0
                    else:
                        _3303 = mem[(32 * idx) + ceil32(return_data.size) + 325]
                        mem[mem[64] + 4] = address(_3126)
                        require ext_code.size(address(_3303))
                        staticcall address(_3303).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3126)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3421 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3421] = 30
                        mem[_3421 + 32] = 'SafeMath: subtraction overflow'
                        if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            _3447 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3447 + 68] = mem[idx + _3421 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3447 + 68] = mem[_3447 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3447 + -mem[64] + 100
                        require idx < mem[ceil32(return_data.size) + 293]
                        _3532 = mem[(32 * idx) + ceil32(return_data.size) + 325]
                        require idx + 1 < mem[ceil32(return_data.size) + 293]
                        _3591 = mem[(32 * idx + 1) + ceil32(return_data.size) + 325]
                        require idx < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                        _3629 = mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                        _3650 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_3650]
                        require 1 < mem[_3650]
                        mem[_3650 + 64] = address(_3591)
                        mem[_3650 + 32] = address(_3532)
                        mem[_3650 + 96] = 1
                        mem[64] = _3650 + 160
                        mem[_3650 + 128] = address(_3629)
                        mem[_3650 + 160] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
                        mem[_3650 + 164] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                        mem[_3650 + 196] = 96
                        mem[_3650 + 260] = 1
                        s = 0
                        while s < 32:
                            mem[s + _3650 + 292] = mem[s + _3650 + 128]
                            s = s + 32
                            continue 
                        mem[_3650 + 228] = 160
                        mem[_3650 + 324] = mem[_3650]
                        s = 0
                        while s < 32 * mem[_3650]:
                            mem[s + _3650 + 356] = mem[s + _3650 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0xa8312b1d with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), 96, 160, 1, mem[_3650 + 292 len (32 * mem[_3650]) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3650 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _3650 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        _5426 = mem[_3650 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32
                        require mem[_3650 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 <= 4294967296
                        require mem[_3650 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 32 <= return_data.size
                        require mem[_3650 + mem[_3650 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160] <= 4294967296 and mem[_3650 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + (32 * mem[_3650 + mem[_3650 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160]) + 32 <= return_data.size
                        mem[_3650 + ceil32(return_data.size) + 160] = mem[_3650 + mem[_3650 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160]
                        _5469 = mem[_3650 + _5426 + 160]
                        s = 0
                        while s < 32 * _5469:
                            mem[s + _3650 + ceil32(return_data.size) + 192] = mem[s + _3650 + _5426 + 192]
                            s = s + 32
                            continue 
                        require 1 < mem[_3650 + ceil32(return_data.size) + 160]
                        _6109 = mem[_3650 + ceil32(return_data.size) + 224]
                        require idx + 1 < mem[ceil32(return_data.size) + 293]
                        require idx < mem[ceil32(return_data.size) + 293]
                        if mem[(32 * idx) + ceil32(return_data.size) + 337 len 20] < mem[(32 * idx + 1) + ceil32(return_data.size) + 337 len 20]:
                            if idx >= mem[ceil32(return_data.size) + 293] - 2:
                                mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 192] = 0
                                mem[64] = (32 * _5469) + _3650 + ceil32(return_data.size) + 224
                                mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 228] = 0
                                mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 260] = _6109
                                mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 292] = address(cd[132])
                                mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 324] = 128
                                mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 356] = 0
                                s = 0
                                while s < 0:
                                    mem[s + (32 * _5469) + _3650 + ceil32(return_data.size) + 388] = mem[s + (32 * _5469) + _3650 + ceil32(return_data.size) + 224]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_3126))
                                call address(_3126).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _6109, address(cd[132]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 1
                                continue 
                            require idx + 1 < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                            _6278 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                            mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5469) + _3650 + ceil32(return_data.size) + 224
                            mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 228] = 0
                            mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 260] = _6109
                            mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 292] = address(_6278)
                            mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5469) + _3650 + ceil32(return_data.size) + 388] = mem[s + (32 * _5469) + _3650 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3126))
                            call address(_3126).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6109, address(_6278), 128, 0
                        else:
                            if idx >= mem[ceil32(return_data.size) + 293] - 2:
                                mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 192] = 0
                                mem[64] = (32 * _5469) + _3650 + ceil32(return_data.size) + 224
                                mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 228] = _6109
                                mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 260] = 0
                                mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 292] = address(cd[132])
                                mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 324] = 128
                                mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 356] = 0
                                s = 0
                                while s < 0:
                                    mem[s + (32 * _5469) + _3650 + ceil32(return_data.size) + 388] = mem[s + (32 * _5469) + _3650 + ceil32(return_data.size) + 224]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_3126))
                                call address(_3126).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _6109, 0, address(cd[132]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 1
                                continue 
                            require idx + 1 < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                            _6281 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                            mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5469) + _3650 + ceil32(return_data.size) + 224
                            mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 228] = _6109
                            mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 292] = address(_6281)
                            mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5469) + _3650 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5469) + _3650 + ceil32(return_data.size) + 388] = mem[s + (32 * _5469) + _3650 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3126))
                            call address(_3126).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6109, 0, address(_6281), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
                require ('cd', 164).length - 1 < ('cd', 164).length
                mem[ceil32(return_data.size) + 297] = address(cd[132])
                require ext_code.size(address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]))
                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[132])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 293] = ('cd', 164).length
                mem[ceil32(return_data.size) + 325 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[64] = (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357
                mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325] = ('cd', 196).length
                mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + (32 * ('cd', 196).length) + 357] = 0
                idx = 0
                while idx < ('cd', 164).length - 1:
                    require idx < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                    _3129 = mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 369 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 369 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require idx + 1 < mem[ceil32(return_data.size) + 293]
                    require idx < mem[ceil32(return_data.size) + 293]
                    require idx < mem[ceil32(return_data.size) + 293]
                    if mem[(32 * idx) + ceil32(return_data.size) + 337 len 20] < mem[(32 * idx + 1) + ceil32(return_data.size) + 337 len 20]:
                        _3306 = mem[(32 * idx) + ceil32(return_data.size) + 325]
                        mem[mem[64] + 4] = address(_3129)
                        require ext_code.size(address(_3306))
                        staticcall address(_3306).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3129)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3422 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3422] = 30
                        mem[_3422 + 32] = 'SafeMath: subtraction overflow'
                        if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                            _3450 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3450 + 68] = mem[idx + _3422 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3450 + 68] = mem[_3450 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3450 + -mem[64] + 100
                        require idx < mem[ceil32(return_data.size) + 293]
                        _3536 = mem[(32 * idx) + ceil32(return_data.size) + 325]
                        require idx + 1 < mem[ceil32(return_data.size) + 293]
                        _3594 = mem[(32 * idx + 1) + ceil32(return_data.size) + 325]
                        require idx < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                        _3630 = mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                        _3652 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_3652]
                        require 1 < mem[_3652]
                        mem[_3652 + 64] = address(_3594)
                        mem[_3652 + 32] = address(_3536)
                        mem[_3652 + 96] = 1
                        mem[64] = _3652 + 160
                        mem[_3652 + 128] = address(_3630)
                        mem[_3652 + 160] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
                        mem[_3652 + 164] = Mask(144, 112, ext_call.return_data[0])
                        mem[_3652 + 196] = 96
                        mem[_3652 + 260] = 1
                        s = 0
                        while s < 32:
                            mem[s + _3652 + 292] = mem[s + _3652 + 128]
                            s = s + 32
                            continue 
                        mem[_3652 + 228] = 160
                        mem[_3652 + 324] = mem[_3652]
                        s = 0
                        while s < 32 * mem[_3652]:
                            mem[s + _3652 + 356] = mem[s + _3652 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0xa8312b1d with:
                                gas gas_remaining wei
                               args Mask(144, 112, ext_call.return_data[0]), 96, 160, 1, mem[_3652 + 292 len (32 * mem[_3652]) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3652 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _3652 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        _5428 = mem[_3652 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32
                        require mem[_3652 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 <= 4294967296
                        require mem[_3652 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                        require mem[_3652 + mem[_3652 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160] <= 4294967296 and mem[_3652 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + (32 * mem[_3652 + mem[_3652 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160]) + 32 <= return_data.size
                        mem[_3652 + ceil32(return_data.size) + 160] = mem[_3652 + mem[_3652 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160]
                        _5470 = mem[_3652 + _5428 + 160]
                        s = 0
                        while s < 32 * _5470:
                            mem[s + _3652 + ceil32(return_data.size) + 192] = mem[s + _3652 + _5428 + 192]
                            s = s + 32
                            continue 
                        require 1 < mem[_3652 + ceil32(return_data.size) + 160]
                        _6110 = mem[_3652 + ceil32(return_data.size) + 224]
                        require idx + 1 < mem[ceil32(return_data.size) + 293]
                        require idx < mem[ceil32(return_data.size) + 293]
                        if mem[(32 * idx) + ceil32(return_data.size) + 337 len 20] < mem[(32 * idx + 1) + ceil32(return_data.size) + 337 len 20]:
                            if idx >= mem[ceil32(return_data.size) + 293] - 2:
                                mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 192] = 0
                                mem[64] = (32 * _5470) + _3652 + ceil32(return_data.size) + 224
                                mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 228] = 0
                                mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 260] = _6110
                                mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 292] = address(cd[132])
                                mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 324] = 128
                                mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 356] = 0
                                s = 0
                                while s < 0:
                                    mem[s + (32 * _5470) + _3652 + ceil32(return_data.size) + 388] = mem[s + (32 * _5470) + _3652 + ceil32(return_data.size) + 224]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_3129))
                                call address(_3129).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _6110, address(cd[132]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 1
                                continue 
                            require idx + 1 < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                            _6284 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                            mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5470) + _3652 + ceil32(return_data.size) + 224
                            mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 228] = 0
                            mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 260] = _6110
                            mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 292] = address(_6284)
                            mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5470) + _3652 + ceil32(return_data.size) + 388] = mem[s + (32 * _5470) + _3652 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3129))
                            call address(_3129).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6110, address(_6284), 128, 0
                        else:
                            if idx >= mem[ceil32(return_data.size) + 293] - 2:
                                mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 192] = 0
                                mem[64] = (32 * _5470) + _3652 + ceil32(return_data.size) + 224
                                mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 228] = _6110
                                mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 260] = 0
                                mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 292] = address(cd[132])
                                mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 324] = 128
                                mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 356] = 0
                                s = 0
                                while s < 0:
                                    mem[s + (32 * _5470) + _3652 + ceil32(return_data.size) + 388] = mem[s + (32 * _5470) + _3652 + ceil32(return_data.size) + 224]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_3129))
                                call address(_3129).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _6110, 0, address(cd[132]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 1
                                continue 
                            require idx + 1 < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                            _6287 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                            mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5470) + _3652 + ceil32(return_data.size) + 224
                            mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 228] = _6110
                            mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 292] = address(_6287)
                            mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5470) + _3652 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5470) + _3652 + ceil32(return_data.size) + 388] = mem[s + (32 * _5470) + _3652 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3129))
                            call address(_3129).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6110, 0, address(_6287), 128, 0
                    else:
                        _3309 = mem[(32 * idx) + ceil32(return_data.size) + 325]
                        mem[mem[64] + 4] = address(_3129)
                        require ext_code.size(address(_3309))
                        staticcall address(_3309).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3129)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3423 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3423] = 30
                        mem[_3423 + 32] = 'SafeMath: subtraction overflow'
                        if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            _3453 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3453 + 68] = mem[idx + _3423 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3453 + 68] = mem[_3453 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3453 + -mem[64] + 100
                        require idx < mem[ceil32(return_data.size) + 293]
                        _3540 = mem[(32 * idx) + ceil32(return_data.size) + 325]
                        require idx + 1 < mem[ceil32(return_data.size) + 293]
                        _3597 = mem[(32 * idx + 1) + ceil32(return_data.size) + 325]
                        require idx < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                        _3631 = mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                        _3654 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_3654]
                        require 1 < mem[_3654]
                        mem[_3654 + 64] = address(_3597)
                        mem[_3654 + 32] = address(_3540)
                        mem[_3654 + 96] = 1
                        mem[64] = _3654 + 160
                        mem[_3654 + 128] = address(_3631)
                        mem[_3654 + 160] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
                        mem[_3654 + 164] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                        mem[_3654 + 196] = 96
                        mem[_3654 + 260] = 1
                        s = 0
                        while s < 32:
                            mem[s + _3654 + 292] = mem[s + _3654 + 128]
                            s = s + 32
                            continue 
                        mem[_3654 + 228] = 160
                        mem[_3654 + 324] = mem[_3654]
                        s = 0
                        while s < 32 * mem[_3654]:
                            mem[s + _3654 + 356] = mem[s + _3654 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0xa8312b1d with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), 96, 160, 1, mem[_3654 + 292 len (32 * mem[_3654]) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3654 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _3654 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        _5430 = mem[_3654 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32
                        require mem[_3654 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 <= 4294967296
                        require mem[_3654 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 32 <= return_data.size
                        require mem[_3654 + mem[_3654 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160] <= 4294967296 and mem[_3654 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + (32 * mem[_3654 + mem[_3654 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160]) + 32 <= return_data.size
                        mem[_3654 + ceil32(return_data.size) + 160] = mem[_3654 + mem[_3654 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160]
                        _5471 = mem[_3654 + _5430 + 160]
                        s = 0
                        while s < 32 * _5471:
                            mem[s + _3654 + ceil32(return_data.size) + 192] = mem[s + _3654 + _5430 + 192]
                            s = s + 32
                            continue 
                        require 1 < mem[_3654 + ceil32(return_data.size) + 160]
                        _6111 = mem[_3654 + ceil32(return_data.size) + 224]
                        require idx + 1 < mem[ceil32(return_data.size) + 293]
                        require idx < mem[ceil32(return_data.size) + 293]
                        if mem[(32 * idx) + ceil32(return_data.size) + 337 len 20] < mem[(32 * idx + 1) + ceil32(return_data.size) + 337 len 20]:
                            if idx >= mem[ceil32(return_data.size) + 293] - 2:
                                mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 192] = 0
                                mem[64] = (32 * _5471) + _3654 + ceil32(return_data.size) + 224
                                mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 228] = 0
                                mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 260] = _6111
                                mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 292] = address(cd[132])
                                mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 324] = 128
                                mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 356] = 0
                                s = 0
                                while s < 0:
                                    mem[s + (32 * _5471) + _3654 + ceil32(return_data.size) + 388] = mem[s + (32 * _5471) + _3654 + ceil32(return_data.size) + 224]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_3129))
                                call address(_3129).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _6111, address(cd[132]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 1
                                continue 
                            require idx + 1 < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                            _6290 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                            mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5471) + _3654 + ceil32(return_data.size) + 224
                            mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 228] = 0
                            mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 260] = _6111
                            mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 292] = address(_6290)
                            mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5471) + _3654 + ceil32(return_data.size) + 388] = mem[s + (32 * _5471) + _3654 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3129))
                            call address(_3129).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6111, address(_6290), 128, 0
                        else:
                            if idx >= mem[ceil32(return_data.size) + 293] - 2:
                                mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 192] = 0
                                mem[64] = (32 * _5471) + _3654 + ceil32(return_data.size) + 224
                                mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 228] = _6111
                                mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 260] = 0
                                mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 292] = address(cd[132])
                                mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 324] = 128
                                mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 356] = 0
                                s = 0
                                while s < 0:
                                    mem[s + (32 * _5471) + _3654 + ceil32(return_data.size) + 388] = mem[s + (32 * _5471) + _3654 + ceil32(return_data.size) + 224]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_3129))
                                call address(_3129).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _6111, 0, address(cd[132]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 1
                                continue 
                            require idx + 1 < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                            _6293 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                            mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5471) + _3654 + ceil32(return_data.size) + 224
                            mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 228] = _6111
                            mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 292] = address(_6293)
                            mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5471) + _3654 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5471) + _3654 + ceil32(return_data.size) + 388] = mem[s + (32 * _5471) + _3654 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3129))
                            call address(_3129).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6111, 0, address(_6293), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    else:
        mem[0] = msg.sender
        mem[32] = 1
        if not stor1[msg.sender]:
            revert with 0, 'UNAUTHORIZED'
        require 0 < ('cd', 196).length
        require 0 < ('cd', 164).length
        mem[132] = address(cd[36])
        mem[164] = address(('cd', 196)[0])
        mem[196] = cd[68]
        mem[96] = 100
        mem[132 len 28] = address(cd[36]) << 64
        mem[128 len 4] = unknown_0x23b872dd(?????)
        mem[228] = 32
        mem[260] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(('cd', 164)[0])):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), address(cd[36]) << 64, 0, address(('cd', 196)[0]), Mask(224, 32, cd[68]) >> 32
        mem[416 len 4] = 0
        call address(('cd', 164)[0]) with:
             gas gas_remaining wei
            args Mask(224, 32, cd[68]) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), address(cd[36]) << 64, 0, address(('cd', 196)[0]), cd[68]
            if not unknown_0x23b872dd(?????), address(cd[36]) << 64:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            require ('cd', 164).length - 1 < ('cd', 164).length
            mem[296] = address(cd[132])
            require ext_code.size(address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]))
            staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[132])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[292] = ('cd', 164).length
            mem[324 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
            mem[64] = (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + 356
            mem[(32 * ('cd', 164).length) + 324] = ('cd', 196).length
            mem[(32 * ('cd', 164).length) + 356 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
            mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 356] = 0
            idx = 0
            while idx < ('cd', 164).length - 1:
                require idx < mem[(32 * ('cd', 164).length) + 324]
                _3137 = mem[(32 * idx) + (32 * ('cd', 164).length) + 356]
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 164).length) + 368 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 164).length) + 368 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx + 1 < mem[292]
                require idx < mem[292]
                require idx < mem[292]
                if mem[(32 * idx) + 336 len 20] < mem[(32 * idx + 1) + 336 len 20]:
                    _3318 = mem[(32 * idx) + 324]
                    mem[mem[64] + 4] = address(_3137)
                    require ext_code.size(address(_3318))
                    staticcall address(_3318).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_3137)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _3426 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3426] = 30
                    mem[_3426 + 32] = 'SafeMath: subtraction overflow'
                    if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                        _3462 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3462 + 68] = mem[idx + _3426 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3462 + 68] = mem[_3462 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3462 + -mem[64] + 100
                    require idx < mem[292]
                    _3552 = mem[(32 * idx) + 324]
                    require idx + 1 < mem[292]
                    _3606 = mem[(32 * idx + 1) + 324]
                    require idx < mem[(32 * ('cd', 164).length) + 324]
                    _3634 = mem[(32 * idx) + (32 * ('cd', 164).length) + 356]
                    _3660 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_3660]
                    require 1 < mem[_3660]
                    mem[_3660 + 64] = address(_3606)
                    mem[_3660 + 32] = address(_3552)
                    mem[_3660 + 96] = 1
                    mem[64] = _3660 + 160
                    mem[_3660 + 128] = address(_3634)
                    mem[_3660 + 160] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
                    mem[_3660 + 164] = Mask(144, 112, ext_call.return_data[0])
                    mem[_3660 + 196] = 96
                    mem[_3660 + 260] = 1
                    s = 0
                    while s < 32:
                        mem[s + _3660 + 292] = mem[s + _3660 + 128]
                        s = s + 32
                        continue 
                    mem[_3660 + 228] = 160
                    mem[_3660 + 324] = mem[_3660]
                    s = 0
                    while s < 32 * mem[_3660]:
                        mem[s + _3660 + 356] = mem[s + _3660 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0xa8312b1d with:
                            gas gas_remaining wei
                           args Mask(144, 112, ext_call.return_data[0]), 96, 160, 1, mem[_3660 + 292 len (32 * mem[_3660]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3660 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3660 + ceil32(return_data.size) + 160
                    require return_data.size >= 32
                    _5436 = mem[_3660 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32
                    require mem[_3660 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[_3660 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[_3660 + mem[_3660 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160] <= 4294967296 and mem[_3660 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + (32 * mem[_3660 + mem[_3660 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160]) + 32 <= return_data.size
                    mem[_3660 + ceil32(return_data.size) + 160] = mem[_3660 + mem[_3660 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160]
                    _5474 = mem[_3660 + _5436 + 160]
                    s = 0
                    while s < 32 * _5474:
                        mem[s + _3660 + ceil32(return_data.size) + 192] = mem[s + _3660 + _5436 + 192]
                        s = s + 32
                        continue 
                    require 1 < mem[_3660 + ceil32(return_data.size) + 160]
                    _6114 = mem[_3660 + ceil32(return_data.size) + 224]
                    require idx + 1 < mem[292]
                    require idx < mem[292]
                    if mem[(32 * idx) + 336 len 20] < mem[(32 * idx + 1) + 336 len 20]:
                        if idx >= mem[292] - 2:
                            mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5474) + _3660 + ceil32(return_data.size) + 224
                            mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 228] = 0
                            mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 260] = _6114
                            mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 292] = address(cd[132])
                            mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5474) + _3660 + ceil32(return_data.size) + 388] = mem[s + (32 * _5474) + _3660 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3137))
                            call address(_3137).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6114, address(cd[132]), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 1
                            continue 
                        require idx + 1 < mem[(32 * ('cd', 164).length) + 324]
                        _6308 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + 356]
                        mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 192] = 0
                        mem[64] = (32 * _5474) + _3660 + ceil32(return_data.size) + 224
                        mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 228] = 0
                        mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 260] = _6114
                        mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 292] = address(_6308)
                        mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 324] = 128
                        mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 356] = 0
                        s = 0
                        while s < 0:
                            mem[s + (32 * _5474) + _3660 + ceil32(return_data.size) + 388] = mem[s + (32 * _5474) + _3660 + ceil32(return_data.size) + 224]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_3137))
                        call address(_3137).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _6114, address(_6308), 128, 0
                    else:
                        if idx >= mem[292] - 2:
                            mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5474) + _3660 + ceil32(return_data.size) + 224
                            mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 228] = _6114
                            mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 292] = address(cd[132])
                            mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5474) + _3660 + ceil32(return_data.size) + 388] = mem[s + (32 * _5474) + _3660 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3137))
                            call address(_3137).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6114, 0, address(cd[132]), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 1
                            continue 
                        require idx + 1 < mem[(32 * ('cd', 164).length) + 324]
                        _6311 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + 356]
                        mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 192] = 0
                        mem[64] = (32 * _5474) + _3660 + ceil32(return_data.size) + 224
                        mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 228] = _6114
                        mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 260] = 0
                        mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 292] = address(_6311)
                        mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 324] = 128
                        mem[(32 * _5474) + _3660 + ceil32(return_data.size) + 356] = 0
                        s = 0
                        while s < 0:
                            mem[s + (32 * _5474) + _3660 + ceil32(return_data.size) + 388] = mem[s + (32 * _5474) + _3660 + ceil32(return_data.size) + 224]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_3137))
                        call address(_3137).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _6114, 0, address(_6311), 128, 0
                else:
                    _3321 = mem[(32 * idx) + 324]
                    mem[mem[64] + 4] = address(_3137)
                    require ext_code.size(address(_3321))
                    staticcall address(_3321).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_3137)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _3427 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3427] = 30
                    mem[_3427 + 32] = 'SafeMath: subtraction overflow'
                    if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                        _3465 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3465 + 68] = mem[idx + _3427 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3465 + 68] = mem[_3465 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3465 + -mem[64] + 100
                    require idx < mem[292]
                    _3556 = mem[(32 * idx) + 324]
                    require idx + 1 < mem[292]
                    _3609 = mem[(32 * idx + 1) + 324]
                    require idx < mem[(32 * ('cd', 164).length) + 324]
                    _3635 = mem[(32 * idx) + (32 * ('cd', 164).length) + 356]
                    _3662 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_3662]
                    require 1 < mem[_3662]
                    mem[_3662 + 64] = address(_3609)
                    mem[_3662 + 32] = address(_3556)
                    mem[_3662 + 96] = 1
                    mem[64] = _3662 + 160
                    mem[_3662 + 128] = address(_3635)
                    mem[_3662 + 160] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
                    mem[_3662 + 164] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                    mem[_3662 + 196] = 96
                    mem[_3662 + 260] = 1
                    s = 0
                    while s < 32:
                        mem[s + _3662 + 292] = mem[s + _3662 + 128]
                        s = s + 32
                        continue 
                    mem[_3662 + 228] = 160
                    mem[_3662 + 324] = mem[_3662]
                    s = 0
                    while s < 32 * mem[_3662]:
                        mem[s + _3662 + 356] = mem[s + _3662 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0xa8312b1d with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), 96, 160, 1, mem[_3662 + 292 len (32 * mem[_3662]) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3662 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _3662 + ceil32(return_data.size) + 160
                    require return_data.size >= 32
                    _5438 = mem[_3662 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32
                    require mem[_3662 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 <= 4294967296
                    require mem[_3662 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 32 <= return_data.size
                    require mem[_3662 + mem[_3662 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160] <= 4294967296 and mem[_3662 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + (32 * mem[_3662 + mem[_3662 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160]) + 32 <= return_data.size
                    mem[_3662 + ceil32(return_data.size) + 160] = mem[_3662 + mem[_3662 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160]
                    _5475 = mem[_3662 + _5438 + 160]
                    s = 0
                    while s < 32 * _5475:
                        mem[s + _3662 + ceil32(return_data.size) + 192] = mem[s + _3662 + _5438 + 192]
                        s = s + 32
                        continue 
                    require 1 < mem[_3662 + ceil32(return_data.size) + 160]
                    _6115 = mem[_3662 + ceil32(return_data.size) + 224]
                    require idx + 1 < mem[292]
                    require idx < mem[292]
                    if mem[(32 * idx) + 336 len 20] < mem[(32 * idx + 1) + 336 len 20]:
                        if idx >= mem[292] - 2:
                            mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5475) + _3662 + ceil32(return_data.size) + 224
                            mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 228] = 0
                            mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 260] = _6115
                            mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 292] = address(cd[132])
                            mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5475) + _3662 + ceil32(return_data.size) + 388] = mem[s + (32 * _5475) + _3662 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3137))
                            call address(_3137).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6115, address(cd[132]), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 1
                            continue 
                        require idx + 1 < mem[(32 * ('cd', 164).length) + 324]
                        _6314 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + 356]
                        mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 192] = 0
                        mem[64] = (32 * _5475) + _3662 + ceil32(return_data.size) + 224
                        mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 228] = 0
                        mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 260] = _6115
                        mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 292] = address(_6314)
                        mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 324] = 128
                        mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 356] = 0
                        s = 0
                        while s < 0:
                            mem[s + (32 * _5475) + _3662 + ceil32(return_data.size) + 388] = mem[s + (32 * _5475) + _3662 + ceil32(return_data.size) + 224]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_3137))
                        call address(_3137).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _6115, address(_6314), 128, 0
                    else:
                        if idx >= mem[292] - 2:
                            mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5475) + _3662 + ceil32(return_data.size) + 224
                            mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 228] = _6115
                            mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 292] = address(cd[132])
                            mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5475) + _3662 + ceil32(return_data.size) + 388] = mem[s + (32 * _5475) + _3662 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3137))
                            call address(_3137).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6115, 0, address(cd[132]), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 1
                            continue 
                        require idx + 1 < mem[(32 * ('cd', 164).length) + 324]
                        _6317 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + 356]
                        mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 192] = 0
                        mem[64] = (32 * _5475) + _3662 + ceil32(return_data.size) + 224
                        mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 228] = _6115
                        mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 260] = 0
                        mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 292] = address(_6317)
                        mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 324] = 128
                        mem[(32 * _5475) + _3662 + ceil32(return_data.size) + 356] = 0
                        s = 0
                        while s < 0:
                            mem[s + (32 * _5475) + _3662 + ceil32(return_data.size) + 388] = mem[s + (32 * _5475) + _3662 + ceil32(return_data.size) + 224]
                            s = s + 32
                            continue 
                        require ext_code.size(address(_3137))
                        call address(_3137).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _6115, 0, address(_6317), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[292] = return_data.size
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                require ('cd', 164).length - 1 < ('cd', 164).length
                mem[ceil32(return_data.size) + 297] = address(cd[132])
                require ext_code.size(address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]))
                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[132])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 293] = ('cd', 164).length
                mem[ceil32(return_data.size) + 325 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[64] = (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357
                mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325] = ('cd', 196).length
                mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + (32 * ('cd', 196).length) + 357] = 0
                idx = 0
                while idx < ('cd', 164).length - 1:
                    require idx < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                    _3142 = mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 369 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 369 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require idx + 1 < mem[ceil32(return_data.size) + 293]
                    require idx < mem[ceil32(return_data.size) + 293]
                    require idx < mem[ceil32(return_data.size) + 293]
                    if mem[(32 * idx) + ceil32(return_data.size) + 337 len 20] < mem[(32 * idx + 1) + ceil32(return_data.size) + 337 len 20]:
                        _3324 = mem[(32 * idx) + ceil32(return_data.size) + 325]
                        mem[mem[64] + 4] = address(_3142)
                        require ext_code.size(address(_3324))
                        staticcall address(_3324).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3142)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3428 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3428] = 30
                        mem[_3428 + 32] = 'SafeMath: subtraction overflow'
                        if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                            _3468 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3468 + 68] = mem[idx + _3428 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3468 + 68] = mem[_3468 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3468 + -mem[64] + 100
                        require idx < mem[ceil32(return_data.size) + 293]
                        _3560 = mem[(32 * idx) + ceil32(return_data.size) + 325]
                        require idx + 1 < mem[ceil32(return_data.size) + 293]
                        _3612 = mem[(32 * idx + 1) + ceil32(return_data.size) + 325]
                        require idx < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                        _3636 = mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                        _3664 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_3664]
                        require 1 < mem[_3664]
                        mem[_3664 + 64] = address(_3612)
                        mem[_3664 + 32] = address(_3560)
                        mem[_3664 + 96] = 1
                        mem[64] = _3664 + 160
                        mem[_3664 + 128] = address(_3636)
                        mem[_3664 + 160] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
                        mem[_3664 + 164] = Mask(144, 112, ext_call.return_data[0])
                        mem[_3664 + 196] = 96
                        mem[_3664 + 260] = 1
                        s = 0
                        while s < 32:
                            mem[s + _3664 + 292] = mem[s + _3664 + 128]
                            s = s + 32
                            continue 
                        mem[_3664 + 228] = 160
                        mem[_3664 + 324] = mem[_3664]
                        s = 0
                        while s < 32 * mem[_3664]:
                            mem[s + _3664 + 356] = mem[s + _3664 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0xa8312b1d with:
                                gas gas_remaining wei
                               args Mask(144, 112, ext_call.return_data[0]), 96, 160, 1, mem[_3664 + 292 len (32 * mem[_3664]) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3664 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _3664 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        _5440 = mem[_3664 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32
                        require mem[_3664 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 <= 4294967296
                        require mem[_3664 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                        require mem[_3664 + mem[_3664 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160] <= 4294967296 and mem[_3664 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + (32 * mem[_3664 + mem[_3664 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160]) + 32 <= return_data.size
                        mem[_3664 + ceil32(return_data.size) + 160] = mem[_3664 + mem[_3664 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160]
                        _5476 = mem[_3664 + _5440 + 160]
                        s = 0
                        while s < 32 * _5476:
                            mem[s + _3664 + ceil32(return_data.size) + 192] = mem[s + _3664 + _5440 + 192]
                            s = s + 32
                            continue 
                        require 1 < mem[_3664 + ceil32(return_data.size) + 160]
                        _6116 = mem[_3664 + ceil32(return_data.size) + 224]
                        require idx + 1 < mem[ceil32(return_data.size) + 293]
                        require idx < mem[ceil32(return_data.size) + 293]
                        if mem[(32 * idx) + ceil32(return_data.size) + 337 len 20] < mem[(32 * idx + 1) + ceil32(return_data.size) + 337 len 20]:
                            if idx >= mem[ceil32(return_data.size) + 293] - 2:
                                mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 192] = 0
                                mem[64] = (32 * _5476) + _3664 + ceil32(return_data.size) + 224
                                mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 228] = 0
                                mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 260] = _6116
                                mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 292] = address(cd[132])
                                mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 324] = 128
                                mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 356] = 0
                                s = 0
                                while s < 0:
                                    mem[s + (32 * _5476) + _3664 + ceil32(return_data.size) + 388] = mem[s + (32 * _5476) + _3664 + ceil32(return_data.size) + 224]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_3142))
                                call address(_3142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _6116, address(cd[132]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 1
                                continue 
                            require idx + 1 < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                            _6320 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                            mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5476) + _3664 + ceil32(return_data.size) + 224
                            mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 228] = 0
                            mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 260] = _6116
                            mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 292] = address(_6320)
                            mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5476) + _3664 + ceil32(return_data.size) + 388] = mem[s + (32 * _5476) + _3664 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3142))
                            call address(_3142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6116, address(_6320), 128, 0
                        else:
                            if idx >= mem[ceil32(return_data.size) + 293] - 2:
                                mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 192] = 0
                                mem[64] = (32 * _5476) + _3664 + ceil32(return_data.size) + 224
                                mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 228] = _6116
                                mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 260] = 0
                                mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 292] = address(cd[132])
                                mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 324] = 128
                                mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 356] = 0
                                s = 0
                                while s < 0:
                                    mem[s + (32 * _5476) + _3664 + ceil32(return_data.size) + 388] = mem[s + (32 * _5476) + _3664 + ceil32(return_data.size) + 224]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_3142))
                                call address(_3142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _6116, 0, address(cd[132]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 1
                                continue 
                            require idx + 1 < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                            _6323 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                            mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5476) + _3664 + ceil32(return_data.size) + 224
                            mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 228] = _6116
                            mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 292] = address(_6323)
                            mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5476) + _3664 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5476) + _3664 + ceil32(return_data.size) + 388] = mem[s + (32 * _5476) + _3664 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3142))
                            call address(_3142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6116, 0, address(_6323), 128, 0
                    else:
                        _3327 = mem[(32 * idx) + ceil32(return_data.size) + 325]
                        mem[mem[64] + 4] = address(_3142)
                        require ext_code.size(address(_3327))
                        staticcall address(_3327).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3142)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3429 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3429] = 30
                        mem[_3429 + 32] = 'SafeMath: subtraction overflow'
                        if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            _3471 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3471 + 68] = mem[idx + _3429 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3471 + 68] = mem[_3471 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3471 + -mem[64] + 100
                        require idx < mem[ceil32(return_data.size) + 293]
                        _3564 = mem[(32 * idx) + ceil32(return_data.size) + 325]
                        require idx + 1 < mem[ceil32(return_data.size) + 293]
                        _3615 = mem[(32 * idx + 1) + ceil32(return_data.size) + 325]
                        require idx < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                        _3637 = mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                        _3666 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_3666]
                        require 1 < mem[_3666]
                        mem[_3666 + 64] = address(_3615)
                        mem[_3666 + 32] = address(_3564)
                        mem[_3666 + 96] = 1
                        mem[64] = _3666 + 160
                        mem[_3666 + 128] = address(_3637)
                        mem[_3666 + 160] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
                        mem[_3666 + 164] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                        mem[_3666 + 196] = 96
                        mem[_3666 + 260] = 1
                        s = 0
                        while s < 32:
                            mem[s + _3666 + 292] = mem[s + _3666 + 128]
                            s = s + 32
                            continue 
                        mem[_3666 + 228] = 160
                        mem[_3666 + 324] = mem[_3666]
                        s = 0
                        while s < 32 * mem[_3666]:
                            mem[s + _3666 + 356] = mem[s + _3666 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0xa8312b1d with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), 96, 160, 1, mem[_3666 + 292 len (32 * mem[_3666]) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3666 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _3666 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        _5442 = mem[_3666 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32
                        require mem[_3666 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 <= 4294967296
                        require mem[_3666 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 32 <= return_data.size
                        require mem[_3666 + mem[_3666 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160] <= 4294967296 and mem[_3666 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + (32 * mem[_3666 + mem[_3666 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160]) + 32 <= return_data.size
                        mem[_3666 + ceil32(return_data.size) + 160] = mem[_3666 + mem[_3666 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160]
                        _5477 = mem[_3666 + _5442 + 160]
                        s = 0
                        while s < 32 * _5477:
                            mem[s + _3666 + ceil32(return_data.size) + 192] = mem[s + _3666 + _5442 + 192]
                            s = s + 32
                            continue 
                        require 1 < mem[_3666 + ceil32(return_data.size) + 160]
                        _6117 = mem[_3666 + ceil32(return_data.size) + 224]
                        require idx + 1 < mem[ceil32(return_data.size) + 293]
                        require idx < mem[ceil32(return_data.size) + 293]
                        if mem[(32 * idx) + ceil32(return_data.size) + 337 len 20] < mem[(32 * idx + 1) + ceil32(return_data.size) + 337 len 20]:
                            if idx >= mem[ceil32(return_data.size) + 293] - 2:
                                mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 192] = 0
                                mem[64] = (32 * _5477) + _3666 + ceil32(return_data.size) + 224
                                mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 228] = 0
                                mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 260] = _6117
                                mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 292] = address(cd[132])
                                mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 324] = 128
                                mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 356] = 0
                                s = 0
                                while s < 0:
                                    mem[s + (32 * _5477) + _3666 + ceil32(return_data.size) + 388] = mem[s + (32 * _5477) + _3666 + ceil32(return_data.size) + 224]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_3142))
                                call address(_3142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _6117, address(cd[132]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 1
                                continue 
                            require idx + 1 < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                            _6326 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                            mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5477) + _3666 + ceil32(return_data.size) + 224
                            mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 228] = 0
                            mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 260] = _6117
                            mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 292] = address(_6326)
                            mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5477) + _3666 + ceil32(return_data.size) + 388] = mem[s + (32 * _5477) + _3666 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3142))
                            call address(_3142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6117, address(_6326), 128, 0
                        else:
                            if idx >= mem[ceil32(return_data.size) + 293] - 2:
                                mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 192] = 0
                                mem[64] = (32 * _5477) + _3666 + ceil32(return_data.size) + 224
                                mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 228] = _6117
                                mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 260] = 0
                                mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 292] = address(cd[132])
                                mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 324] = 128
                                mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 356] = 0
                                s = 0
                                while s < 0:
                                    mem[s + (32 * _5477) + _3666 + ceil32(return_data.size) + 388] = mem[s + (32 * _5477) + _3666 + ceil32(return_data.size) + 224]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_3142))
                                call address(_3142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _6117, 0, address(cd[132]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 1
                                continue 
                            require idx + 1 < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                            _6329 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                            mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5477) + _3666 + ceil32(return_data.size) + 224
                            mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 228] = _6117
                            mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 292] = address(_6329)
                            mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5477) + _3666 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5477) + _3666 + ceil32(return_data.size) + 388] = mem[s + (32 * _5477) + _3666 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3142))
                            call address(_3142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6117, 0, address(_6329), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
                require ('cd', 164).length - 1 < ('cd', 164).length
                mem[ceil32(return_data.size) + 297] = address(cd[132])
                require ext_code.size(address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]))
                staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[132])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 293] = ('cd', 164).length
                mem[ceil32(return_data.size) + 325 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                mem[64] = (32 * ('cd', 196).length) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357
                mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325] = ('cd', 196).length
                mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 357 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + (32 * ('cd', 196).length) + 357] = 0
                idx = 0
                while idx < ('cd', 164).length - 1:
                    require idx < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                    _3145 = mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 369 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 369 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require idx + 1 < mem[ceil32(return_data.size) + 293]
                    require idx < mem[ceil32(return_data.size) + 293]
                    require idx < mem[ceil32(return_data.size) + 293]
                    if mem[(32 * idx) + ceil32(return_data.size) + 337 len 20] < mem[(32 * idx + 1) + ceil32(return_data.size) + 337 len 20]:
                        _3330 = mem[(32 * idx) + ceil32(return_data.size) + 325]
                        mem[mem[64] + 4] = address(_3145)
                        require ext_code.size(address(_3330))
                        staticcall address(_3330).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3145)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3430 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3430] = 30
                        mem[_3430 + 32] = 'SafeMath: subtraction overflow'
                        if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                            _3474 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3474 + 68] = mem[idx + _3430 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3474 + 68] = mem[_3474 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3474 + -mem[64] + 100
                        require idx < mem[ceil32(return_data.size) + 293]
                        _3568 = mem[(32 * idx) + ceil32(return_data.size) + 325]
                        require idx + 1 < mem[ceil32(return_data.size) + 293]
                        _3618 = mem[(32 * idx + 1) + ceil32(return_data.size) + 325]
                        require idx < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                        _3638 = mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                        _3668 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_3668]
                        require 1 < mem[_3668]
                        mem[_3668 + 64] = address(_3618)
                        mem[_3668 + 32] = address(_3568)
                        mem[_3668 + 96] = 1
                        mem[64] = _3668 + 160
                        mem[_3668 + 128] = address(_3638)
                        mem[_3668 + 160] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
                        mem[_3668 + 164] = Mask(144, 112, ext_call.return_data[0])
                        mem[_3668 + 196] = 96
                        mem[_3668 + 260] = 1
                        s = 0
                        while s < 32:
                            mem[s + _3668 + 292] = mem[s + _3668 + 128]
                            s = s + 32
                            continue 
                        mem[_3668 + 228] = 160
                        mem[_3668 + 324] = mem[_3668]
                        s = 0
                        while s < 32 * mem[_3668]:
                            mem[s + _3668 + 356] = mem[s + _3668 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0xa8312b1d with:
                                gas gas_remaining wei
                               args Mask(144, 112, ext_call.return_data[0]), 96, 160, 1, mem[_3668 + 292 len (32 * mem[_3668]) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3668 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _3668 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        _5444 = mem[_3668 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32
                        require mem[_3668 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 <= 4294967296
                        require mem[_3668 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                        require mem[_3668 + mem[_3668 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160] <= 4294967296 and mem[_3668 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + (32 * mem[_3668 + mem[_3668 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160]) + 32 <= return_data.size
                        mem[_3668 + ceil32(return_data.size) + 160] = mem[_3668 + mem[_3668 + 160 len 4], Mask(144, 112, ext_call.return_data[0]) >> 32 + 160]
                        _5478 = mem[_3668 + _5444 + 160]
                        s = 0
                        while s < 32 * _5478:
                            mem[s + _3668 + ceil32(return_data.size) + 192] = mem[s + _3668 + _5444 + 192]
                            s = s + 32
                            continue 
                        require 1 < mem[_3668 + ceil32(return_data.size) + 160]
                        _6118 = mem[_3668 + ceil32(return_data.size) + 224]
                        require idx + 1 < mem[ceil32(return_data.size) + 293]
                        require idx < mem[ceil32(return_data.size) + 293]
                        if mem[(32 * idx) + ceil32(return_data.size) + 337 len 20] < mem[(32 * idx + 1) + ceil32(return_data.size) + 337 len 20]:
                            if idx >= mem[ceil32(return_data.size) + 293] - 2:
                                mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 192] = 0
                                mem[64] = (32 * _5478) + _3668 + ceil32(return_data.size) + 224
                                mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 228] = 0
                                mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 260] = _6118
                                mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 292] = address(cd[132])
                                mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 324] = 128
                                mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 356] = 0
                                s = 0
                                while s < 0:
                                    mem[s + (32 * _5478) + _3668 + ceil32(return_data.size) + 388] = mem[s + (32 * _5478) + _3668 + ceil32(return_data.size) + 224]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_3145))
                                call address(_3145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _6118, address(cd[132]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 1
                                continue 
                            require idx + 1 < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                            _6332 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                            mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5478) + _3668 + ceil32(return_data.size) + 224
                            mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 228] = 0
                            mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 260] = _6118
                            mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 292] = address(_6332)
                            mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5478) + _3668 + ceil32(return_data.size) + 388] = mem[s + (32 * _5478) + _3668 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3145))
                            call address(_3145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6118, address(_6332), 128, 0
                        else:
                            if idx >= mem[ceil32(return_data.size) + 293] - 2:
                                mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 192] = 0
                                mem[64] = (32 * _5478) + _3668 + ceil32(return_data.size) + 224
                                mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 228] = _6118
                                mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 260] = 0
                                mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 292] = address(cd[132])
                                mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 324] = 128
                                mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 356] = 0
                                s = 0
                                while s < 0:
                                    mem[s + (32 * _5478) + _3668 + ceil32(return_data.size) + 388] = mem[s + (32 * _5478) + _3668 + ceil32(return_data.size) + 224]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_3145))
                                call address(_3145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _6118, 0, address(cd[132]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 1
                                continue 
                            require idx + 1 < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                            _6335 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                            mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5478) + _3668 + ceil32(return_data.size) + 224
                            mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 228] = _6118
                            mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 292] = address(_6335)
                            mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5478) + _3668 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5478) + _3668 + ceil32(return_data.size) + 388] = mem[s + (32 * _5478) + _3668 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3145))
                            call address(_3145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6118, 0, address(_6335), 128, 0
                    else:
                        _3333 = mem[(32 * idx) + ceil32(return_data.size) + 325]
                        mem[mem[64] + 4] = address(_3145)
                        require ext_code.size(address(_3333))
                        staticcall address(_3333).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3145)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3431 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3431] = 30
                        mem[_3431 + 32] = 'SafeMath: subtraction overflow'
                        if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            _3477 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3477 + 68] = mem[idx + _3431 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3477 + 68] = mem[_3477 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3477 + -mem[64] + 100
                        require idx < mem[ceil32(return_data.size) + 293]
                        _3572 = mem[(32 * idx) + ceil32(return_data.size) + 325]
                        require idx + 1 < mem[ceil32(return_data.size) + 293]
                        _3621 = mem[(32 * idx + 1) + ceil32(return_data.size) + 325]
                        require idx < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                        _3639 = mem[(32 * idx) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                        _3670 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_3670]
                        require 1 < mem[_3670]
                        mem[_3670 + 64] = address(_3621)
                        mem[_3670 + 32] = address(_3572)
                        mem[_3670 + 96] = 1
                        mem[64] = _3670 + 160
                        mem[_3670 + 128] = address(_3639)
                        mem[_3670 + 160] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
                        mem[_3670 + 164] = ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
                        mem[_3670 + 196] = 96
                        mem[_3670 + 260] = 1
                        s = 0
                        while s < 32:
                            mem[s + _3670 + 292] = mem[s + _3670 + 128]
                            s = s + 32
                            continue 
                        mem[_3670 + 228] = 160
                        mem[_3670 + 324] = mem[_3670]
                        s = 0
                        while s < 32 * mem[_3670]:
                            mem[s + _3670 + 356] = mem[s + _3670 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0xa8312b1d with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), 96, 160, 1, mem[_3670 + 292 len (32 * mem[_3670]) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3670 + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _3670 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        _5446 = mem[_3670 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32
                        require mem[_3670 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 <= 4294967296
                        require mem[_3670 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 32 <= return_data.size
                        require mem[_3670 + mem[_3670 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160] <= 4294967296 and mem[_3670 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + (32 * mem[_3670 + mem[_3670 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160]) + 32 <= return_data.size
                        mem[_3670 + ceil32(return_data.size) + 160] = mem[_3670 + mem[_3670 + 160 len 4], Mask(224, 32, ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])) >> 32 + 160]
                        _5479 = mem[_3670 + _5446 + 160]
                        s = 0
                        while s < 32 * _5479:
                            mem[s + _3670 + ceil32(return_data.size) + 192] = mem[s + _3670 + _5446 + 192]
                            s = s + 32
                            continue 
                        require 1 < mem[_3670 + ceil32(return_data.size) + 160]
                        _6119 = mem[_3670 + ceil32(return_data.size) + 224]
                        require idx + 1 < mem[ceil32(return_data.size) + 293]
                        require idx < mem[ceil32(return_data.size) + 293]
                        if mem[(32 * idx) + ceil32(return_data.size) + 337 len 20] < mem[(32 * idx + 1) + ceil32(return_data.size) + 337 len 20]:
                            if idx >= mem[ceil32(return_data.size) + 293] - 2:
                                mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 192] = 0
                                mem[64] = (32 * _5479) + _3670 + ceil32(return_data.size) + 224
                                mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 228] = 0
                                mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 260] = _6119
                                mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 292] = address(cd[132])
                                mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 324] = 128
                                mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 356] = 0
                                s = 0
                                while s < 0:
                                    mem[s + (32 * _5479) + _3670 + ceil32(return_data.size) + 388] = mem[s + (32 * _5479) + _3670 + ceil32(return_data.size) + 224]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_3145))
                                call address(_3145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _6119, address(cd[132]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 1
                                continue 
                            require idx + 1 < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                            _6338 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                            mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5479) + _3670 + ceil32(return_data.size) + 224
                            mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 228] = 0
                            mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 260] = _6119
                            mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 292] = address(_6338)
                            mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5479) + _3670 + ceil32(return_data.size) + 388] = mem[s + (32 * _5479) + _3670 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3145))
                            call address(_3145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _6119, address(_6338), 128, 0
                        else:
                            if idx >= mem[ceil32(return_data.size) + 293] - 2:
                                mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 192] = 0
                                mem[64] = (32 * _5479) + _3670 + ceil32(return_data.size) + 224
                                mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 228] = _6119
                                mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 260] = 0
                                mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 292] = address(cd[132])
                                mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 324] = 128
                                mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 356] = 0
                                s = 0
                                while s < 0:
                                    mem[s + (32 * _5479) + _3670 + ceil32(return_data.size) + 388] = mem[s + (32 * _5479) + _3670 + ceil32(return_data.size) + 224]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(_3145))
                                call address(_3145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _6119, 0, address(cd[132]), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 1
                                continue 
                            require idx + 1 < mem[(32 * ('cd', 164).length) + ceil32(return_data.size) + 325]
                            _6341 = mem[(32 * idx + 1) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 357]
                            mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 192] = 0
                            mem[64] = (32 * _5479) + _3670 + ceil32(return_data.size) + 224
                            mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 228] = _6119
                            mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 292] = address(_6341)
                            mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 324] = 128
                            mem[(32 * _5479) + _3670 + ceil32(return_data.size) + 356] = 0
                            s = 0
                            while s < 0:
                                mem[s + (32 * _5479) + _3670 + ceil32(return_data.size) + 388] = mem[s + (32 * _5479) + _3670 + ceil32(return_data.size) + 224]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_3145))
                            call address(_3145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _6119, 0, address(_6341), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    require ('cd', 164).length - 1 < ('cd', 164).length
    require ext_code.size(address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]))
    staticcall address(cd[((32 * ('cd', 164).length - 1) + cd[164] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[132])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if 0 < cd[100]:
        revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
}



}
